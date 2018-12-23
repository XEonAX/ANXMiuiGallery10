package com.miui.gallery.ui;

import android.app.Fragment;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.miui.account.AccountHelper;
import com.miui.gallery.R;
import com.miui.gallery.activity.AlbumLocalPageActivity;
import com.miui.gallery.adapter.AlbumPageRecyclerAdapter;
import com.miui.gallery.adapter.BaseViewHolder;
import com.miui.gallery.adapter.HeaderFooterRecyclerAdapterWrapper;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.search.widget.BannerSearchBar;
import com.miui.gallery.ui.AIAlbumDisplayHelper.DisplayStatusCallback;
import com.miui.gallery.ui.AIAlbumDisplayHelper.WeakReferencedAIAlbumDisplayStatusObserver;
import com.miui.gallery.ui.BaseAlbumOperationDialogFragment.OnAlbumOperationDoneListener;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.widget.DividerTypeProvider;
import com.miui.gallery.widget.TwoStageDrawer;
import com.miui.gallery.widget.TwoStageDrawer.TriggerListener;
import com.miui.gallery.widget.recyclerview.ExtendedRecyclerView;
import com.miui.gallery.widget.recyclerview.GalleryRecyclerView;
import com.miui.gallery.widget.recyclerview.GalleryRecyclerView.RecyclerContextMenuInfo;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemClickListener;
import com.miui.gallery.widget.recyclerview.SectionedDividerItemDecoration;
import java.util.HashMap;

public class AlbumPageFragment extends BaseAlbumPageFragment implements DisplayStatusCallback {
    private AlbumPageAdapterWrapper mAlbumPageAdapterWrapper;
    private AlbumPageHeaderController mAlbumPageHeaderController;
    private AlbumPagePhotoLoaderCallback mAlbumPagePhotoLoaderCallback;
    private ExtendedRecyclerView mAlbumRecyclerView;
    private BannerSearchBar mBannerSearchBar;
    private View mCreateAlbumButton;
    private TwoStageDrawer mDrawer;
    private boolean mHasEnterPrivateEntry;
    private boolean mLoaderInitialized;
    private OnAlbumOperationDoneListener mOnAlbumCreatedListener = new OnAlbumOperationDoneListener() {
        public void onOperationDone(long id, String albumName) {
            if (id > 0 && AlbumPageFragment.this.isAdded()) {
                AlbumPageFragment.this.mPendingDisplayCreateAlbum = true;
                AddPhotosFragment.addPhotos(AlbumPageFragment.this, id);
            }
        }
    };
    private boolean mPendingDisplayCreateAlbum;
    private boolean mPendingLoadExtraInfo;
    private TriggerListener mPrivateEntryTriggerListener = new TriggerListener() {
        public void onTriggerSlide(TwoStageDrawer drawer, float slideOffset) {
        }

        public void onTriggerOpen(TwoStageDrawer drawer) {
            if (!AlbumPageFragment.this.mHasEnterPrivateEntry) {
                AlbumPageFragment.this.enterPrivateEntry();
                AlbumPageFragment.this.mHasEnterPrivateEntry = true;
                GallerySamplingStatHelper.recordCountEvent("album", "enter_privacy_mode");
            }
        }
    };
    private TopSearchBarController mSearchBarController;
    private WeakReferencedAIAlbumDisplayStatusObserver mSearchStatusObserver = new WeakReferencedAIAlbumDisplayStatusObserver(this);
    private boolean mShowAIAlbum = false;

    private static class AlbumPageAdapterWrapper extends HeaderFooterRecyclerAdapterWrapper<AlbumPageRecyclerAdapter, BaseViewHolder> implements DividerTypeProvider, OnItemClickListener {
        private Fragment mHostFragment;

        public AlbumPageAdapterWrapper(Fragment fragment, AlbumPageRecyclerAdapter wrapped) {
            super(wrapped);
            this.mHostFragment = fragment;
        }

        protected BaseViewHolder onCreateHeaderFooterViewHolder(View itemView) {
            BaseViewHolder holder = new BaseViewHolder(itemView);
            holder.setIsRecyclable(false);
            return holder;
        }

        public int getTopDividerType(int adapterPosition) {
            if (!hasHeader() && adapterPosition == 0) {
                return 3;
            }
            AlbumPageRecyclerAdapter albumPageRecyclerAdapter = (AlbumPageRecyclerAdapter) this.mWrapped;
            if (hasHeader()) {
                adapterPosition--;
            }
            return albumPageRecyclerAdapter.getTopDividerType(adapterPosition);
        }

        public int getBottomDividerType(int adapterPosition) {
            if (hasHeader() && adapterPosition == 0) {
                return 3;
            }
            if (hasFooter() && adapterPosition == getItemCount() - 1) {
                return 0;
            }
            AlbumPageRecyclerAdapter albumPageRecyclerAdapter = (AlbumPageRecyclerAdapter) this.mWrapped;
            if (hasHeader()) {
                adapterPosition--;
            }
            return albumPageRecyclerAdapter.getBottomDividerType(adapterPosition);
        }

        public boolean onItemClick(RecyclerView parent, View view, int position, long id) {
            if (hasHeader() && position == 0) {
                return false;
            }
            if (hasFooter() && position == getItemCount() - 1) {
                Object tag = view.getTag();
                if (tag != null && "other_album_item".equals(tag)) {
                    this.mHostFragment.startActivity(new Intent(this.mHostFragment.getActivity(), AlbumLocalPageActivity.class));
                }
                return true;
            }
            int realPosition;
            if (hasHeader()) {
                realPosition = position - 1;
            } else {
                realPosition = position;
            }
            recordViewAlbum(realPosition);
            return ((AlbumPageRecyclerAdapter) this.mWrapped).onItemClick(parent, view, realPosition, id);
        }

        private void recordViewAlbum(int position) {
            String localPath = ((AlbumPageRecyclerAdapter) this.mWrapped).getAlbumLocalPath(position);
            HashMap<String, String> params;
            if (((AlbumPageRecyclerAdapter) this.mWrapped).isSystemAlbum(position)) {
                params = new HashMap();
                params.put("album_name", ((AlbumPageRecyclerAdapter) this.mWrapped).getAlbumName(position));
                params.put("album_server_id", ((AlbumPageRecyclerAdapter) this.mWrapped).getServerId(position));
                params.put("album_image_count", String.valueOf(((AlbumPageRecyclerAdapter) this.mWrapped).getAlbumCount(position)));
                GallerySamplingStatHelper.recordCountEvent("album", "view_system_album", params);
            } else if (!TextUtils.isEmpty(localPath)) {
                params = new HashMap();
                params.put("album_path", localPath.toLowerCase());
                params.put("album_attribute", String.valueOf(((AlbumPageRecyclerAdapter) this.mWrapped).getAttributes(position)));
                params.put("album_image_count", String.valueOf(((AlbumPageRecyclerAdapter) this.mWrapped).getAlbumCount(position)));
                params.put("baby_album", String.valueOf(((AlbumPageRecyclerAdapter) this.mWrapped).isBabyAlbum(position)));
                GallerySamplingStatHelper.recordCountEvent("album", "view_album", params);
            } else if (((AlbumPageRecyclerAdapter) this.mWrapped).isOtherShareAlbum(position)) {
                params = new HashMap();
                params.put("album_image_count", String.valueOf(((AlbumPageRecyclerAdapter) this.mWrapped).getAlbumCount(position)));
                params.put("baby_album", String.valueOf(((AlbumPageRecyclerAdapter) this.mWrapped).isBabyAlbum(position)));
                GallerySamplingStatHelper.recordCountEvent("album", "view_share_album", params);
            }
        }

        public int getMostlyRecentCreatedAlbumPosition() {
            return (hasHeader() ? 1 : 0) + ((AlbumPageRecyclerAdapter) this.mWrapped).getMostlyRecentCreatedAlbumPosition();
        }
    }

    private class AlbumPagePhotoLoaderCallback implements LoaderCallbacks {
        View mFootView;
        private boolean mHaveOtherAlbum;
        Cursor mOtherAlbumCursor;

        private AlbumPagePhotoLoaderCallback() {
        }

        /* synthetic */ AlbumPagePhotoLoaderCallback(AlbumPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(AlbumPageFragment.this.mActivity);
            if (i == 1) {
                loader.setUri(AlbumPageFragment.this.getAlbumQueryUri());
                loader.setProjection(AlbumPageFragment.this.mAlbumPageAdapter.getProjection());
                loader.setSortOrder("sortBy ASC ");
            } else if (i == 2) {
                loader.setUri(Album.URI_SHARE_ALL);
                loader.setProjection(AlbumPageRecyclerAdapter.SHARED_ALBUM_PROJECTION);
                loader.setSelection("count > 0");
            } else if (i == 3) {
                loader.setUri(PeopleFace.PEOPLE_FACE_COVER_URI);
            }
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            boolean z = true;
            if (loader.getId() == 1) {
                Cursor albumCursor = cursorFilter((Cursor) o);
                if (albumCursor == null || albumCursor.getCount() == 0) {
                    AlbumPageFragment.this.mAlbumRecyclerView.inflateEmptyView();
                }
                AlbumPageFragment.this.mAlbumPageAdapter.swapCursor(albumCursor);
                TwoStageDrawer access$200 = AlbumPageFragment.this.mDrawer;
                if ((albumCursor == null || albumCursor.getCount() <= 0) && !this.mHaveOtherAlbum) {
                    z = false;
                }
                access$200.setDragEnabled(z);
                AlbumPageFragment.this.addHeaderAlbumUI();
                addOtherAlbumDisplayUI();
                if (AlbumPageFragment.this.mPendingLoadExtraInfo) {
                    AlbumPageFragment.this.mPendingLoadExtraInfo = false;
                    AlbumPageFragment.this.startToLoadAlbumExtraInfo();
                }
            } else if (loader.getId() == 2) {
                AlbumPageFragment.this.mAlbumPageAdapter.setSharedAlbums((Cursor) o);
            } else if (loader.getId() == 3) {
                AlbumPageFragment.this.mAlbumPageAdapter.setPeopleFaceCover((Cursor) o);
            }
            if (AlbumPageFragment.this.mPendingDisplayCreateAlbum) {
                AlbumPageFragment.this.mPendingDisplayCreateAlbum = false;
                AlbumPageFragment.this.mAlbumRecyclerView.smoothScrollToPosition(AlbumPageFragment.this.getNewCreateAlbumPosition());
            }
        }

        public void onLoaderReset(Loader loader) {
        }

        private Cursor cursorFilter(Cursor cursor) {
            this.mHaveOtherAlbum = false;
            MatrixCursor[] classifiedCursor = AlbumPageFragment.this.mAlbumPageAdapter.classifyCursor(cursor);
            MatrixCursor albumPageCursor = classifiedCursor[0];
            MatrixCursor otherAlbumPageCursor = classifiedCursor[1];
            if (otherAlbumPageCursor != null) {
                if (otherAlbumPageCursor.getCount() > 0) {
                    this.mHaveOtherAlbum = true;
                }
                this.mOtherAlbumCursor = otherAlbumPageCursor;
            }
            if (!(albumPageCursor == null || cursor.getExtras() == null)) {
                albumPageCursor.setExtras(cursor.getExtras());
            }
            return albumPageCursor;
        }

        protected void addOtherAlbumDisplayUI() {
            if (this.mFootView != null) {
                AlbumPageFragment.this.mAlbumPageAdapterWrapper.removeFooterView();
            }
            this.mFootView = null;
            int recyclerPaddingBottom = AlbumPageFragment.this.getRecyclerPaddingBottom();
            if (this.mHaveOtherAlbum) {
                View view = LayoutInflater.from(AlbumPageFragment.this.mActivity).inflate(R.layout.album_page_list_other_album_footer, null, false);
                view.setTag("other_album_item");
                AlbumPageListLocalItem otherAlbumsItem = (AlbumPageListLocalItem) view.findViewById(R.id.other_albums_item);
                otherAlbumsItem.bindAlbumNameDesc(AlbumPageFragment.this.mAlbumPageAdapter.getFormedNameNotExceedMaxWidth(this.mOtherAlbumCursor, otherAlbumsItem.mAlbumNameDesc, R.dimen.album_name_max_len));
                if (this.mOtherAlbumCursor.getCount() > 1) {
                    otherAlbumsItem.mMoreAlbumHint.setVisibility(0);
                }
                AlbumPageFragment.this.mAlbumPageAdapterWrapper.setFooterView(view);
                this.mFootView = view;
            } else if ((AlbumPageFragment.this.mAlbumPageAdapterWrapper.getWrappedAdapter() == null || AlbumPageFragment.this.mAlbumPageAdapterWrapper.getWrappedAdapter().getItemCount() <= 0) && SyncUtil.existXiaomiAccount(AlbumPageFragment.this.getActivity()) && AlbumPageFragment.this.mShowAIAlbum) {
                AlbumPageListEmptyItem view2 = (AlbumPageListEmptyItem) LayoutInflater.from(AlbumPageFragment.this.mActivity).inflate(R.layout.album_page_list_empty_item, AlbumPageFragment.this.mRecyclerView, false);
                view2.setTextContainer(AlbumPageFragment.this.mAlbumRecyclerView);
                AlbumPageFragment.this.mAlbumPageAdapterWrapper.setFooterView(view2);
                this.mFootView = view2;
                recyclerPaddingBottom = 0;
            }
            AlbumPageFragment.this.mRecyclerView.setPadding(AlbumPageFragment.this.mRecyclerView.getPaddingLeft(), AlbumPageFragment.this.mRecyclerView.getTop(), AlbumPageFragment.this.mRecyclerView.getPaddingRight(), recyclerPaddingBottom);
            MiscUtil.closeSilently(this.mOtherAlbumCursor);
        }
    }

    private class OnCreateNewAlbumListener implements OnClickListener {
        private OnCreateNewAlbumListener() {
        }

        /* synthetic */ OnCreateNewAlbumListener(AlbumPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onClick(View view) {
            AlbumCreatorDialogFragment creator = new AlbumCreatorDialogFragment();
            creator.setOnAlbumOperationDoneListener(AlbumPageFragment.this.mOnAlbumCreatedListener);
            creator.showAllowingStateLoss(AlbumPageFragment.this.getFragmentManager(), "AlbumCreatorDialogFragment");
            GallerySamplingStatHelper.recordCountEvent("album", "create_album");
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mLoaderInitialized = false;
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.album_page, container, false);
        this.mAlbumRecyclerView = (ExtendedRecyclerView) view.findViewById(R.id.album_list);
        this.mRecyclerView = (GalleryRecyclerView) this.mAlbumRecyclerView.getRecycler();
        this.mAlbumPageAdapter = new AlbumPageRecyclerAdapter(this.mActivity);
        this.mAlbumPageAdapter.registerAdapterDataObserver(new AdapterDataObserver() {
            public void onChanged() {
                AlbumPageFragment.this.getActivity().closeContextMenu();
            }
        });
        this.mAlbumPageAdapterWrapper = new AlbumPageAdapterWrapper(this, this.mAlbumPageAdapter);
        this.mAlbumRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        SectionedDividerItemDecoration decoration = new SectionedDividerItemDecoration(getActivity(), R.drawable.section_divider_bg, R.drawable.item_divider_bg, this.mAlbumPageAdapterWrapper);
        decoration.setItemDividerPadding(new Rect(getResources().getDimensionPixelSize(R.dimen.album_cover_container_size_small), 0, 0, 0));
        this.mAlbumRecyclerView.addItemDecoration(decoration);
        this.mAlbumRecyclerView.setAdapter(this.mAlbumPageAdapterWrapper);
        this.mRecyclerView.setOnItemClickListener(this.mAlbumPageAdapterWrapper);
        this.mAlbumPagePhotoLoaderCallback = new AlbumPagePhotoLoaderCallback(this, null);
        this.mCreateAlbumButton = view.findViewById(R.id.create_album);
        this.mCreateAlbumButton.setOnClickListener(new OnCreateNewAlbumListener(this, null));
        this.mDrawer = (TwoStageDrawer) view;
        this.mDrawer.setTriggerListener(this.mPrivateEntryTriggerListener);
        this.mBannerSearchBar = (BannerSearchBar) view.findViewById(R.id.album_page_search_bar);
        SparseBooleanArray status = AIAlbumDisplayHelper.getInstance().registerAIAlbumDisplayStatusObserver(this.mSearchStatusObserver);
        this.mShowAIAlbum = status.get(2, false);
        boolean showSearchBar = status.get(1, false);
        Log.d("AlbumPageFragment", "Init search bar: %s, ai album: %s", Boolean.valueOf(showSearchBar), Boolean.valueOf(this.mShowAIAlbum));
        if (showSearchBar) {
            this.mBannerSearchBar.setVisibility(0);
            if (this.mSearchBarController == null) {
                this.mSearchBarController = new TopSearchBarController(this, this.mBannerSearchBar, "from_album_page");
            }
            this.mDrawer.post(new Runnable() {
                public void run() {
                    AlbumPageFragment.this.mDrawer.openDrawer();
                }
            });
        } else {
            this.mBannerSearchBar.setVisibility(8);
        }
        if (this.mUserFirstVisible && !this.mLoaderInitialized) {
            startToLoadAlbums();
        }
        return view;
    }

    public void onDestroyView() {
        AIAlbumDisplayHelper.getInstance().unregisterAIAlbumDisplayStatusObserver(this.mSearchStatusObserver);
        super.onDestroyView();
    }

    public void onDestroy() {
        if (this.mAlbumPageHeaderController != null) {
            this.mAlbumPageHeaderController.onDestroy();
        }
        super.onDestroy();
    }

    public void onResume() {
        super.onResume();
        if (this.mSearchBarController != null) {
            this.mSearchBarController.onResume();
        }
        if (this.mAlbumPageHeaderController != null) {
            this.mAlbumPageHeaderController.onResume();
        }
    }

    public void onPause() {
        super.onPause();
        if (this.mSearchBarController != null) {
            this.mSearchBarController.onPause();
        }
    }

    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenuInfo menuInfo) {
        if (menuInfo != null) {
            int position = ((RecyclerContextMenuInfo) menuInfo).position;
            if (!this.mAlbumPageAdapterWrapper.hasHeader() || position != 0) {
                if (!this.mAlbumPageAdapterWrapper.hasFooter() || position != this.mAlbumPageAdapterWrapper.getItemCount() - 1) {
                    if (this.mAlbumPageAdapterWrapper.hasHeader()) {
                        position--;
                    }
                    setContextMenuItems(menu, position);
                }
            }
        }
    }

    private void enterPrivateEntry() {
        Bundle bundle = new Bundle();
        bundle.putInt("check_login_and_sync", 3);
        bundle.putSerializable("cloud_guide_source", CloudGuideSource.SECRET);
        LoginAndSyncCheckFragment.checkLoginAndSyncState(this, bundle);
    }

    private void doEnterPrivateEntry() {
        if (AccountHelper.getXiaomiAccount(this.mActivity) != null) {
            AuthenticatePrivacyPasswordFragment.startAuthenticatePrivacyPassword(this);
        }
    }

    public void onStart() {
        super.onStart();
        this.mHasEnterPrivateEntry = false;
        if (getUserVisibleHint()) {
            onVisibleToUser();
        }
    }

    public String getPageName() {
        return "album";
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            switch (requestCode) {
                case 29:
                    int checkFor = data.getIntExtra("check_login_and_sync", -1);
                    if (checkFor != 1 && checkFor != 2) {
                        if (checkFor == 3) {
                            doEnterPrivateEntry();
                            break;
                        }
                    }
                    super.onActivityResult(requestCode, resultCode, data);
                    return;
                    break;
                case 36:
                    Log.d("AlbumPageFragment", "onActivityResult");
                    IntentUtil.enterPrivateAlbum(getActivity());
                    break;
            }
        }
        this.mHasEnterPrivateEntry = false;
        super.onActivityResult(requestCode, resultCode, data);
    }

    private void addHeaderAlbumUI() {
        if (SyncUtil.existXiaomiAccount(getActivity()) && this.mShowAIAlbum) {
            if (this.mAlbumPageHeaderController == null) {
                this.mAlbumPageHeaderController = new AlbumPageHeaderController(this);
            }
            this.mAlbumPageAdapterWrapper.setHeaderView(this.mAlbumPageHeaderController.getView());
        } else if (this.mAlbumPageAdapterWrapper.hasHeader()) {
            this.mAlbumPageAdapterWrapper.setHeaderView(null);
        }
    }

    private int getRecyclerPaddingBottom() {
        int fabHeight = 0;
        if (!(this.mCreateAlbumButton == null || this.mCreateAlbumButton.getVisibility() == 8)) {
            fabHeight = this.mCreateAlbumButton.getHeight();
        }
        if (fabHeight > 0) {
            return (getResources().getDimensionPixelSize(R.dimen.album_fab_margin) * 2) + fabHeight;
        }
        return getResources().getDimensionPixelSize(R.dimen.album_item_placeholder_height);
    }

    private Uri getAlbumQueryUri() {
        return Album.URI.buildUpon().appendQueryParameter("join_face", String.valueOf(!this.mShowAIAlbum)).appendQueryParameter("join_video", String.valueOf(true)).appendQueryParameter("join_share", String.valueOf(true)).appendQueryParameter("join_recent", String.valueOf(true)).appendQueryParameter("join_favorites", String.valueOf(true)).appendQueryParameter("exclude_empty_album", String.valueOf(true)).build();
    }

    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (getUserVisibleHint()) {
            if (!this.mLoaderInitialized) {
                startToLoadAlbums();
            }
            onVisibleToUser();
        }
    }

    private boolean isEmpty() {
        return (this.mAlbumPageAdapter == null || this.mAlbumPageAdapter.getCursor() == null || this.mAlbumPageAdapter.getItemCount() != 0) ? false : true;
    }

    private void onVisibleToUser() {
        if (isEmpty()) {
            statAlbumEmpty();
        }
    }

    private void statAlbumEmpty() {
        HashMap<String, String> params = new HashMap();
        params.put("login", String.valueOf(AccountCache.getAccount() != null));
        GallerySamplingStatHelper.recordCountEvent("album", "album_empty", params);
    }

    private void startToLoadAlbums() {
        Log.d("AlbumPageFragment", "startToLoadAlbums");
        if (this.mAlbumPagePhotoLoaderCallback != null) {
            getLoaderManager().initLoader(1, null, this.mAlbumPagePhotoLoaderCallback);
            this.mLoaderInitialized = true;
            this.mPendingLoadExtraInfo = true;
        }
    }

    private void startToLoadAlbumExtraInfo() {
        Log.d("AlbumPageFragment", "startToLoadAlbumExtraInfo");
        getLoaderManager().initLoader(2, null, this.mAlbumPagePhotoLoaderCallback);
        if (!this.mShowAIAlbum) {
            getLoaderManager().initLoader(3, null, this.mAlbumPagePhotoLoaderCallback);
        }
    }

    protected boolean recordPageByDefault() {
        return false;
    }

    private int getNewCreateAlbumPosition() {
        return this.mAlbumPageAdapterWrapper.getMostlyRecentCreatedAlbumPosition();
    }

    public void onStatusChanged(SparseBooleanArray changedStatus) {
        if (changedStatus != null) {
            if (changedStatus.indexOfKey(1) >= 0) {
                boolean showSearchBar = changedStatus.get(1);
                Log.d("AlbumPageFragment", "New search bar status %s", Boolean.valueOf(showSearchBar));
                if (showSearchBar) {
                    if (this.mSearchBarController == null) {
                        this.mSearchBarController = new TopSearchBarController(this, this.mBannerSearchBar, "from_album_page");
                    }
                    this.mBannerSearchBar.setVisibility(0);
                    this.mSearchBarController.onResume();
                    this.mBannerSearchBar.post(new Runnable() {
                        public void run() {
                            if (!AlbumPageFragment.this.mDrawer.isDrawerOpen()) {
                                AlbumPageFragment.this.mDrawer.openDrawer();
                            }
                        }
                    });
                } else {
                    if (this.mSearchBarController != null) {
                        this.mSearchBarController.onPause();
                    }
                    this.mBannerSearchBar.setVisibility(8);
                }
            }
            if (changedStatus.indexOfKey(2) >= 0) {
                this.mShowAIAlbum = changedStatus.get(2);
                Log.d("AlbumPageFragment", "New ai album status %s", Boolean.valueOf(this.mShowAIAlbum));
                if (this.mShowAIAlbum) {
                    getLoaderManager().destroyLoader(3);
                } else {
                    getLoaderManager().restartLoader(3, null, this.mAlbumPagePhotoLoaderCallback);
                }
                getLoaderManager().destroyLoader(1);
                getLoaderManager().initLoader(1, null, this.mAlbumPagePhotoLoaderCallback);
            }
        }
    }
}
