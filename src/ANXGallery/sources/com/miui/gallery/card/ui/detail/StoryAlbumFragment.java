package com.miui.gallery.card.ui.detail;

import android.animation.ObjectAnimator;
import android.app.ActionBar.LayoutParams;
import android.app.Activity;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Loader;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.flexbox.FlexboxItemDecoration;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.adapter.BaseViewHolder;
import com.miui.gallery.adapter.HeaderFooterRecyclerAdapterWrapper;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.CardManager;
import com.miui.gallery.card.CardUtil;
import com.miui.gallery.card.core.LayoutParamsHelper.Size;
import com.miui.gallery.card.model.MediaInfo;
import com.miui.gallery.card.model.MediaInfoComparator;
import com.miui.gallery.card.ui.detail.CardDownloadDialog.CallBack;
import com.miui.gallery.card.ui.detail.StoryAlbumRenameDialog.OnRenameDoneListener;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.picker.uri.DownloadConfirmDialog;
import com.miui.gallery.picker.uri.Downloader;
import com.miui.gallery.picker.uri.Downloader.DownloadListener;
import com.miui.gallery.picker.uri.Downloader.DownloadResult;
import com.miui.gallery.picker.uri.Downloader.DownloadTask;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureHandler;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.BaseMediaFragment;
import com.miui.gallery.ui.ConfirmDialog;
import com.miui.gallery.ui.ConfirmDialog.ConfirmDialogInterface;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.uil.CloudUriAdapter;
import com.miui.gallery.widget.EditableListViewWrapper2;
import com.miui.gallery.widget.EditableListViewWrapper2.CheckState.Source;
import com.miui.gallery.widget.EditableListViewWrapper2.MultiChoiceModeListener;
import com.miui.gallery.widget.menu.ImmersionMenu;
import com.miui.gallery.widget.menu.ImmersionMenuItem;
import com.miui.gallery.widget.menu.ImmersionMenuListener;
import com.miui.gallery.widget.menu.PhoneImmersionMenu;
import com.miui.gallery.widget.recyclerview.GalleryRecyclerView;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemClickListener;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class StoryAlbumFragment extends BaseMediaFragment {
    private ActionBarHelper mActionBarHelper;
    private StoryAlbumAdapter mAdapter;
    private StoryAlbumAdapterWrapper mAdapterWrapper;
    private OnClickListener mCancelDownloadListener = new OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
            if (StoryAlbumFragment.this.mDownloader != null) {
                StoryAlbumFragment.this.mDownloader.cancel();
            }
        }
    };
    private Card mCard;
    private TextView mCardDescription;
    private CardDownloadDialog mCardDownloadDialog;
    private long mCardId;
    private TextView mCardTitle;
    private Future<Object> mCheckDownloadFilesFuture;
    private MultiChoiceModeListener mChoiceModeListener = new MultiChoiceModeListener() {
        private MenuItem mRemove;
        private MenuItem mShare;

        public void onAllItemsCheckedStateChanged(ActionMode mode, boolean checked) {
            updateMenuState();
        }

        public void onItemCheckedStateChanged(ActionMode mode, int position, long id, boolean checked) {
            updateMenuState();
        }

        public boolean onCreateActionMode(ActionMode mode, Menu menu) {
            mode.getMenuInflater().inflate(BuildUtil.isMiuiSdkGte15(StoryAlbumFragment.this.mActivity) ? R.menu.v15_story_album_action_menu : R.menu.story_album_action_menu, menu);
            this.mRemove = menu.findItem(R.id.action_remove);
            this.mShare = menu.findItem(R.id.action_share);
            updateMenuState();
            StoryAlbumFragment.this.mIsInActionMode = true;
            StoryAlbumFragment.this.updateSlideHeaderPlayStatus();
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    if (StoryAlbumFragment.this.mActivity != null) {
                        StoryAlbumFragment.this.mRecyclerView.setPadding(0, 0, 0, MiscUtil.getDefaultSplitActionBarHeight(StoryAlbumFragment.this.mActivity));
                    }
                }
            });
            StoryAlbumFragment.this.mActionBarHelper.refreshActionBar();
            return true;
        }

        public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
            return false;
        }

        public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
            int initPos = Integer.MAX_VALUE;
            SparseBooleanArray selectedItems = StoryAlbumFragment.this.mListViewWrapper.getCheckedItemPositions();
            ArrayList<Integer> positions = new ArrayList(selectedItems.size());
            ArrayList<String> sha1s = new ArrayList(selectedItems.size());
            ArrayList<Long> ids = new ArrayList(selectedItems.size());
            for (int i = 0; i < selectedItems.size(); i++) {
                int key = selectedItems.keyAt(i);
                if (selectedItems.get(key)) {
                    key = StoryAlbumFragment.this.mAdapterWrapper.decryptPosition(key);
                    positions.add(Integer.valueOf(key));
                    sha1s.add(StoryAlbumFragment.this.mAdapter.getSha1(key));
                    ids.add(Long.valueOf(StoryAlbumFragment.this.mAdapter.getItemKey(key)));
                    if (key < initPos) {
                        initPos = key;
                    }
                }
            }
            if (initPos == Integer.MAX_VALUE) {
                initPos = 0;
            }
            switch (item.getItemId()) {
                case R.id.action_share /*2131886827*/:
                    gotoPreviewSelectPage(positions, ids, initPos);
                    break;
                case R.id.action_remove /*2131886828*/:
                    removeItemByIds(sha1s);
                    break;
                default:
                    return false;
            }
            return true;
        }

        private void removeItemByIds(final ArrayList<String> sha1s) {
            DialogUtil.showConfirmAlertWithCancel(StoryAlbumFragment.this.mActivity, new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    StoryAlbumFragment.this.mListViewWrapper.stopActionMode();
                    Iterator it = sha1s.iterator();
                    while (it.hasNext()) {
                        StoryAlbumFragment.this.mSelectedPhotoSha1s.remove((String) it.next());
                    }
                    StoryAlbumFragment.this.getLoaderManager().restartLoader(1, null, StoryAlbumFragment.this.mPhotoLoaderCallback);
                    HashMap<String, String> params = new HashMap();
                    params.put("count", String.valueOf(sha1s.size()));
                    params.put("scenarioId", String.valueOf(StoryAlbumFragment.this.mCard.getScenarioId()));
                    GallerySamplingStatHelper.recordCountEvent("assistant", "assistant_card_remove_photos", params);
                }
            }, new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    dialog.cancel();
                }
            }, StoryAlbumFragment.this.getString(R.string.story_remove_confirm_title), StoryAlbumFragment.this.getString(R.string.story_remove_confirm_message), StoryAlbumFragment.this.getString(R.string.story_remove_confirm_positive), 17039360);
        }

        private void gotoPreviewSelectPage(ArrayList<Integer> positions, ArrayList<Long> ids, int initPos) {
            if (positions.size() != 0) {
                int[] selectedPos = new int[positions.size()];
                long[] selectedId = new long[ids.size()];
                for (int i = 0; i < positions.size(); i++) {
                    selectedPos[i] = ((Integer) positions.get(i)).intValue();
                    selectedId[i] = ((Long) ids.get(i)).longValue();
                }
                ImageLoadParams loadParams = new ImageLoadParams(StoryAlbumFragment.this.mAdapter.getItemKey(initPos), StoryAlbumFragment.this.mAdapter.getLocalPath(initPos), ThumbConfig.get().sMicroTargetSize, StoryAlbumFragment.this.mAdapter.getItemDecodeRectF(), initPos, StoryAlbumFragment.this.mAdapter.getMimeType(initPos), StoryAlbumFragment.this.mAdapter.getFileLength(initPos));
                IntentUtil.gotoPreviewSelectPage(StoryAlbumFragment.this, StoryAlbumFragment.this.getUri(), initPos, StoryAlbumFragment.this.mAdapter.getItemCount(), StoryAlbumFragment.this.getSelection(), StoryAlbumFragment.this.getSelectionArgs(), StoryAlbumFragment.this.getOrder(), loadParams, selectedId, selectedPos, null, null);
                StoryAlbumFragment.this.mListViewWrapper.stopActionMode();
                HashMap<String, String> params = new HashMap();
                params.put("scenarioId", String.valueOf(StoryAlbumFragment.this.mCard.getScenarioId()));
                GallerySamplingStatHelper.recordCountEvent("assistant", "assistant_card_share_photos", params);
            }
        }

        public void onDestroyActionMode(ActionMode mode) {
            StoryAlbumFragment.this.mIsInActionMode = false;
            StoryAlbumFragment.this.updateSlideHeaderPlayStatus();
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    if (StoryAlbumFragment.this.mActivity != null) {
                        StoryAlbumFragment.this.mRecyclerView.setPadding(0, 0, 0, 0);
                    }
                }
            });
            StoryAlbumFragment.this.mActionBarHelper.refreshActionBar();
        }

        private void updateMenuState() {
            if (StoryAlbumFragment.this.mListViewWrapper.getCheckedItemCount() < 1) {
                this.mShare.setEnabled(false);
                this.mRemove.setEnabled(false);
                return;
            }
            this.mShare.setEnabled(true);
            this.mRemove.setEnabled(true);
        }
    };
    private CallBack mDowloadCallback = new CallBack() {
        public void cancel() {
            if (StoryAlbumFragment.this.mDownloader != null) {
                StoryAlbumFragment.this.mDownloader.cancel();
            }
        }
    };
    private Future<Object> mDowloadResultFuture;
    private OnClickListener mDownloadListener = new OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
            if (NetworkUtils.isNetworkConnected()) {
                StoryAlbumFragment.this.startDownload();
                return;
            }
            ToastUtils.makeText(StoryAlbumFragment.this.mActivity, (int) R.string.picker_no_network_message);
            StoryAlbumFragment.this.showConfirmDialog(true);
        }
    };
    private ArrayList<DownloadTask> mDownloadPendings = new ArrayList();
    private Downloader mDownloader;
    private int mFlexboxLayoutHeight;
    private FlexboxLayoutManager mFlexboxLayoutManager;
    private View mHeaderView;
    private List<MediaInfo> mImageInfos;
    private boolean mIsInActionMode;
    private boolean mIsPlayIconScrollStateEnable = true;
    private boolean mIsShowTranslucentStatusBar;
    private EditableListViewWrapper2 mListViewWrapper;
    private OnGlobalLayoutListener mOnGlobalLayoutListener = new OnGlobalLayoutListener() {
        public void onGlobalLayout() {
            if (StoryAlbumFragment.this.mFlexboxLayoutHeight == 0) {
                StoryAlbumFragment.this.mRecyclerView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                StoryAlbumFragment.this.updateFlexboxLayoutParamHelper();
            }
        }
    };
    private ArrayList<ParseFileMetaValue> mParseFileMetaValues = new ArrayList();
    private PhotoLoaderCallback mPhotoLoaderCallback;
    private GalleryRecyclerView mRecyclerView;
    private Uri[] mResults;
    private Set<String> mSelectedPhotoSha1s;
    private SlideShowHeaderView mSlideShowHeaderView;

    private class ActionBarHelper {
        private final int[] ATTRS;
        private final long TITLE_ANIM_DURATION;
        private ImageView mBackView;
        private Drawable mDefaultActionBarBg;
        private final ImmersionMenuListener mImmersionMenuListener;
        private Button mMenuView;
        private PhoneImmersionMenu mPhoneImmersionMenu;
        private ObjectAnimator mTitleAlphaAnim;
        private TextView mTitleView;

        private ActionBarHelper() {
            this.ATTRS = new int[]{miui.R.attr.actionBarBackground};
            this.TITLE_ANIM_DURATION = 150;
            this.mImmersionMenuListener = new ImmersionMenuListener() {
                public void onCreateImmersionMenu(ImmersionMenu menu) {
                    if (StoryAlbumFragment.this.mActivity != null) {
                        menu.add(R.id.menu_card_rename, StoryAlbumFragment.this.mActivity.getString(R.string.story_option_menu_rename));
                        if (StoryAlbumFragment.this.mCard.isDeletable()) {
                            menu.add(R.id.menu_card_delete, StoryAlbumFragment.this.mActivity.getString(R.string.story_option_menu_delete));
                        }
                    }
                }

                public boolean onPrepareImmersionMenu(ImmersionMenu menu) {
                    return false;
                }

                public void onImmersionMenuSelected(ImmersionMenu menu, ImmersionMenuItem item) {
                    if (StoryAlbumFragment.this.mActivity != null) {
                        switch (item.getItemId()) {
                            case R.id.menu_card_delete /*2131886090*/:
                                ActionBarHelper.this.showDeleteCardConfirmDialog();
                                return;
                            case R.id.menu_card_rename /*2131886091*/:
                                ActionBarHelper.this.renameCard();
                                return;
                            default:
                                return;
                        }
                    }
                }
            };
        }

        /* synthetic */ ActionBarHelper(StoryAlbumFragment x0, AnonymousClass1 x1) {
            this();
        }

        private void inflateTitle() {
            TypedArray a = StoryAlbumFragment.this.mActivity.obtainStyledAttributes(this.ATTRS);
            this.mDefaultActionBarBg = a.getDrawable(0);
            a.recycle();
            View content = StoryAlbumFragment.this.mActivity.getLayoutInflater().inflate(R.layout.story_album_actionbar_content, null);
            content.setLayoutParams(new LayoutParams(-1, -1));
            this.mBackView = (ImageView) content.findViewById(R.id.back);
            this.mBackView.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    StoryAlbumFragment.this.mActivity.finish();
                }
            });
            this.mTitleView = (TextView) content.findViewById(R.id.title);
            this.mTitleView.setAlpha(0.0f);
            this.mMenuView = (Button) content.findViewById(R.id.more);
            this.mPhoneImmersionMenu = new PhoneImmersionMenu(StoryAlbumFragment.this.mActivity, this.mImmersionMenuListener);
            this.mMenuView.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    ActionBarHelper.this.mPhoneImmersionMenu.show(v, null);
                }
            });
            StoryAlbumFragment.this.mActivity.getActionBar().setDisplayOptions(16, 16);
            StoryAlbumFragment.this.mActivity.getActionBar().setCustomView(content);
            StoryAlbumFragment.this.mIsShowTranslucentStatusBar = true;
            refreshActionBar();
        }

        private void renameCard() {
            StoryAlbumRenameDialog creator = new StoryAlbumRenameDialog();
            Bundle args = new Bundle();
            args.putString("card_name", StoryAlbumFragment.this.mCard.getTitle());
            creator.setArguments(args);
            creator.setOnRenameDoneListener(new OnRenameDoneListener() {
                public void onOperationDone(String albumName) {
                    StoryAlbumFragment.this.mCard.setTitle(albumName);
                    if (StoryAlbumFragment.this.mActivity != null) {
                        StoryAlbumFragment.this.setTitle(albumName);
                    }
                    StoryAlbumFragment.this.saveAndNofity();
                    HashMap<String, String> params = new HashMap();
                    params.put("scenarioId", String.valueOf(StoryAlbumFragment.this.mCard.getScenarioId()));
                    GallerySamplingStatHelper.recordCountEvent("assistant", "assistant_card_rename", params);
                }
            });
            creator.showAllowingStateLoss(StoryAlbumFragment.this.getFragmentManager(), "StoryAlbumRenameDialog");
        }

        private void showDeleteCardConfirmDialog() {
            ConfirmDialog.showConfirmDialog(StoryAlbumFragment.this.mActivity.getFragmentManager(), StoryAlbumFragment.this.mActivity.getString(R.string.card_delete_title), StoryAlbumFragment.this.mActivity.getString(R.string.card_delete_description), StoryAlbumFragment.this.mActivity.getString(R.string.card_delete_negative_text), StoryAlbumFragment.this.mActivity.getString(R.string.card_delete_positive_text), new ConfirmDialogInterface() {
                public void onConfirm(DialogFragment dialog) {
                    ActionBarHelper.this.deleteCard();
                    StoryAlbumFragment.this.mActivity.finish();
                }

                public void onCancel(DialogFragment dialog) {
                }
            });
        }

        private void deleteCard() {
            ThreadManager.getMiscPool().submit(new Job<Object>() {
                public Object run(JobContext jc) {
                    CardManager.getInstance().delete(StoryAlbumFragment.this.mCard, true);
                    return null;
                }
            });
            HashMap<String, String> params = new HashMap();
            params.put("scenarioId", String.valueOf(StoryAlbumFragment.this.mCard.getScenarioId()));
            GallerySamplingStatHelper.recordCountEvent("assistant", "assistant_card_deleted", params);
        }

        private void refreshActionBar() {
            int i = 1;
            if (StoryAlbumFragment.this.mActivity != null) {
                if (StoryAlbumFragment.this.mIsShowTranslucentStatusBar) {
                    Activity activity = StoryAlbumFragment.this.getActivity();
                    if (!StoryAlbumFragment.this.mIsInActionMode) {
                        i = 2;
                    }
                    activity.setTranslucentStatus(i);
                    this.mBackView.setImageResource(miui.R.drawable.action_bar_back_dark);
                    this.mTitleView.setTextColor(StoryAlbumFragment.this.mActivity.getResources().getColor(R.color.action_bar_title_text_color_dark));
                    this.mMenuView.setBackgroundResource(miui.R.drawable.action_mode_immersion_more_dark);
                    StoryAlbumFragment.this.mActivity.getActionBar().setBackgroundDrawable(null);
                    return;
                }
                StoryAlbumFragment.this.getActivity().setTranslucentStatus(1);
                this.mBackView.setImageResource(miui.R.drawable.action_bar_back_light);
                this.mTitleView.setTextColor(StoryAlbumFragment.this.mActivity.getResources().getColor(R.color.action_bar_title_text_color_light));
                this.mMenuView.setBackgroundResource(miui.R.drawable.action_mode_immersion_more_light);
                StoryAlbumFragment.this.mActivity.getActionBar().setBackgroundDrawable(this.mDefaultActionBarBg);
            }
        }

        public void setActionBarTitle(String title) {
            this.mTitleView.setText(title);
        }

        public void startActionBarTitleAnim(boolean isAppear) {
            if (this.mTitleAlphaAnim != null && this.mTitleAlphaAnim.isRunning()) {
                this.mTitleAlphaAnim.cancel();
            }
            if (isAppear) {
                this.mTitleAlphaAnim = ObjectAnimator.ofFloat(this.mTitleView, "alpha", new float[]{this.mTitleView.getAlpha(), 1.0f});
            } else {
                this.mTitleAlphaAnim = ObjectAnimator.ofFloat(this.mTitleView, "alpha", new float[]{this.mTitleView.getAlpha(), 0.0f});
            }
            this.mTitleAlphaAnim.setDuration(150);
            this.mTitleAlphaAnim.start();
        }

        public int getActionBarHeight() {
            return StoryAlbumFragment.this.mActivity.getActionBar().getCustomView().getHeight();
        }
    }

    private class DownloadProgressListener implements DownloadListener {
        private int total;

        private DownloadProgressListener() {
        }

        /* synthetic */ DownloadProgressListener(StoryAlbumFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onStart(List<DownloadTask> tasks) {
            Log.d("StoryAlbumFragment", "download start, %d", Integer.valueOf(tasks.size()));
            this.total = tasks.size();
            StoryAlbumFragment.this.mCardDownloadDialog = new CardDownloadDialog();
            StoryAlbumFragment.this.mCardDownloadDialog.show(StoryAlbumFragment.this.mActivity);
        }

        public void onEnd(List<DownloadResult> success, List<DownloadResult> fails) {
            Log.d("StoryAlbumFragment", "download end, success: %d, fails: %d", Integer.valueOf(success.size()), Integer.valueOf(fails.size()));
            StoryAlbumFragment.this.mCardDownloadDialog.dismissSafely();
            StoryAlbumFragment.this.mCardDownloadDialog = null;
            parseDownloadResult(success, fails);
            if (fails.isEmpty()) {
                StoryAlbumFragment.this.mParseFileMetaValues.clear();
                StoryAlbumFragment.this.gotoPhotoMovie();
            } else if (!NetworkUtils.isNetworkConnected()) {
                ToastUtils.makeText(StoryAlbumFragment.this.mActivity, (int) R.string.story_download_failed_for_notwork);
            } else if (NetworkUtils.isActiveNetworkMetered()) {
                StoryAlbumFragment.this.showNetworkMeteredDialog();
            } else {
                StoryAlbumFragment.this.showConfirmDialog(true);
            }
            StoryAlbumFragment.this.mDownloader.destroy();
            StoryAlbumFragment.this.mDownloader = null;
        }

        public void onCancelled(List<DownloadResult> success, List<DownloadResult> fails) {
            Log.d("StoryAlbumFragment", "download cancelled, success: %d, fails: %d", Integer.valueOf(success.size()), Integer.valueOf(fails.size()));
            StoryAlbumFragment.this.mCardDownloadDialog.dismissSafely();
            StoryAlbumFragment.this.mCardDownloadDialog = null;
            parseDownloadResult(success, fails);
            StoryAlbumFragment.this.mDownloader.destroy();
            StoryAlbumFragment.this.mDownloader = null;
        }

        public void onUpdate(List<DownloadResult> success, List<DownloadResult> list) {
            StoryAlbumFragment.this.mCardDownloadDialog.updateProgress(((float) success.size()) / ((float) this.total));
        }

        private void parseDownloadResult(final List<DownloadResult> success, final List<DownloadResult> fails) {
            StoryAlbumFragment.this.mDowloadResultFuture = ThreadManager.getMiscPool().submit(new Job<Object>() {
                public Object run(JobContext jc) {
                    ArrayList<DownloadResult> tempFails = new ArrayList();
                    tempFails.addAll(fails);
                    for (DownloadResult sucessResult : success) {
                        File file = new File(sucessResult.mPath);
                        if (file.exists()) {
                            StoryAlbumFragment.this.mResults[sucessResult.mTask.mPosition] = Uri.fromFile(file);
                        } else {
                            tempFails.add(sucessResult);
                        }
                    }
                    return null;
                }
            }, new FutureHandler<Object>() {
                public void onPostExecute(Future<Object> future) {
                    StoryAlbumFragment.this.getLoaderManager().restartLoader(1, null, StoryAlbumFragment.this.mPhotoLoaderCallback);
                }
            });
        }
    }

    public class MyOnScrollListener extends OnScrollListener {
        private int mActionBarBackgroundChangedPosition;
        private int mActionBarTitleChangedPosition;
        private View mFirstVisisbleItem;
        private int mHeaderViewBottomPrePosition;
        private boolean mIsChangedPositionInited;
        private int mPlayIconChangedPosition;

        private void initChangedPosition() {
            if (!this.mIsChangedPositionInited && StoryAlbumFragment.this.mHeaderView.getBottom() != 0) {
                this.mIsChangedPositionInited = true;
                int statusBarHeight = MiscUtil.getStatusBarHeight(StoryAlbumFragment.this.mActivity);
                int titleHeaderHeight = StoryAlbumFragment.this.mHeaderView.getBottom() - StoryAlbumFragment.this.mSlideShowHeaderView.getBottom();
                int actionBarHeight = StoryAlbumFragment.this.mActionBarHelper.getActionBarHeight();
                this.mPlayIconChangedPosition = (((statusBarHeight + actionBarHeight) + StoryAlbumFragment.this.mSlideShowHeaderView.getPlayIcon().getHeight()) + StoryAlbumFragment.this.getResources().getDimensionPixelSize(R.dimen.story_slide_header_play_icon_margin)) + titleHeaderHeight;
                this.mActionBarBackgroundChangedPosition = (statusBarHeight + actionBarHeight) + titleHeaderHeight;
                this.mActionBarTitleChangedPosition = (statusBarHeight + actionBarHeight) + StoryAlbumFragment.this.getResources().getDimensionPixelSize(R.dimen.story_header_description_margin_bottom);
            }
        }

        public void onScrollStateChanged(RecyclerView recyclerView, int scrollState) {
        }

        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            if (this.mFirstVisisbleItem == null) {
                this.mFirstVisisbleItem = recyclerView.getChildAt(0);
            }
            if (this.mFirstVisisbleItem != null) {
                int position = this.mFirstVisisbleItem.getBottom();
                if (this.mHeaderViewBottomPrePosition > 0) {
                    initChangedPosition();
                    if (this.mHeaderViewBottomPrePosition >= this.mPlayIconChangedPosition && position <= this.mPlayIconChangedPosition) {
                        StoryAlbumFragment.this.mIsPlayIconScrollStateEnable = false;
                        StoryAlbumFragment.this.updateSlideHeaderPlayStatus();
                    } else if (this.mHeaderViewBottomPrePosition <= this.mPlayIconChangedPosition && position >= this.mPlayIconChangedPosition) {
                        StoryAlbumFragment.this.mIsPlayIconScrollStateEnable = true;
                        StoryAlbumFragment.this.updateSlideHeaderPlayStatus();
                    }
                    if (this.mHeaderViewBottomPrePosition >= this.mActionBarBackgroundChangedPosition && position <= this.mActionBarBackgroundChangedPosition) {
                        StoryAlbumFragment.this.mIsShowTranslucentStatusBar = false;
                    } else if (this.mHeaderViewBottomPrePosition <= this.mActionBarBackgroundChangedPosition && position >= this.mActionBarBackgroundChangedPosition) {
                        StoryAlbumFragment.this.mIsShowTranslucentStatusBar = true;
                    }
                    StoryAlbumFragment.this.mActionBarHelper.refreshActionBar();
                    if (this.mHeaderViewBottomPrePosition >= this.mActionBarTitleChangedPosition && position <= this.mActionBarTitleChangedPosition) {
                        StoryAlbumFragment.this.mActionBarHelper.startActionBarTitleAnim(true);
                    } else if (this.mHeaderViewBottomPrePosition <= this.mActionBarTitleChangedPosition && position >= this.mActionBarTitleChangedPosition) {
                        StoryAlbumFragment.this.mActionBarHelper.startActionBarTitleAnim(false);
                    }
                }
                this.mHeaderViewBottomPrePosition = position;
            }
        }
    }

    private class ParseFileMetaValue {
        Uri downloadUri;
        String originFilePath;
        int position;
        String thumnailFilePath;

        public ParseFileMetaValue(Cursor cursor) {
            if (cursor != null) {
                this.position = cursor.getPosition();
                this.thumnailFilePath = cursor.getString(2);
                this.originFilePath = cursor.getString(3);
                this.downloadUri = CloudUriAdapter.getDownloadUri(cursor.getLong(0));
            }
        }
    }

    private class PhotoLoaderCallback implements LoaderCallbacks {
        private PhotoLoaderCallback() {
        }

        /* synthetic */ PhotoLoaderCallback(StoryAlbumFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int id, Bundle bundle) {
            CursorLoader loader = new CursorLoader(StoryAlbumFragment.this.mActivity);
            loader.setUri(StoryAlbumFragment.this.getUri());
            loader.setProjection(StoryAlbumFragment.this.getProjection());
            loader.setSelection(StoryAlbumFragment.this.getSelection());
            loader.setSortOrder(StoryAlbumFragment.this.getOrder());
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            Cursor cursor = (Cursor) o;
            if (loader.getId() == 1) {
                if (StoryAlbumFragment.this.updateImages(cursor)) {
                    StoryAlbumFragment.this.mAdapter.swapCursor(cursor);
                }
                StoryAlbumFragment.this.parseCursor(cursor);
            }
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    private static class StoryAlbumAdapterWrapper extends HeaderFooterRecyclerAdapterWrapper<StoryAlbumAdapter, BaseViewHolder> implements Source {
        public StoryAlbumAdapterWrapper(StoryAlbumAdapter wrapped) {
            super(wrapped);
        }

        protected BaseViewHolder onCreateHeaderFooterViewHolder(View itemView) {
            BaseViewHolder holder = new BaseViewHolder(itemView);
            holder.setIsRecyclable(false);
            return holder;
        }

        protected int decryptPosition(int wrappedPosition) {
            if (hasHeader()) {
                return wrappedPosition - 1;
            }
            return wrappedPosition;
        }

        protected int encryptPosition(int wrappedPosition) {
            if (hasHeader()) {
                return wrappedPosition + 1;
            }
            return wrappedPosition;
        }

        public int getSourceItemCount() {
            return ((StoryAlbumAdapter) this.mWrapped).getItemCount();
        }

        public long getSourceItemId(int position) {
            decryptPosition(position);
            if (position < 0) {
                return -1;
            }
            return ((StoryAlbumAdapter) this.mWrapped).getItemId(position);
        }

        public int getSourceEncryptPosition(int position) {
            return encryptPosition(position);
        }
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        Bundle args = getArguments();
        this.mCardId = args != null ? args.getLong("card") : 0;
        this.mCard = CardManager.getInstance().getCardByCardId(this.mCardId);
        List<String> selectedSha1s = null;
        if (this.mCard != null) {
            List<String> allSha1s = this.mCard.getAllMediaSha1s();
            selectedSha1s = this.mCard.getSelectedMediaSha1s();
        }
        if (selectedSha1s == null || selectedSha1s.size() == 0) {
            Log.e("StoryAlbumFragment", "LocalIds should not be null %s", getArguments());
            finish();
            return;
        }
        this.mImageInfos = new ArrayList(selectedSha1s.size());
        this.mSelectedPhotoSha1s = new HashSet(selectedSha1s.size());
        this.mSelectedPhotoSha1s.addAll(selectedSha1s);
        this.mActionBarHelper = new ActionBarHelper(this, null);
        this.mActionBarHelper.inflateTitle();
        setTitle(this.mCard.getTitle());
        this.mCardDescription.setText(this.mCard.getDescription());
        this.mPhotoLoaderCallback = new PhotoLoaderCallback(this, null);
        getLoaderManager().initLoader(1, null, this.mPhotoLoaderCallback);
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.story_album_layout, container, false);
        this.mRecyclerView = (GalleryRecyclerView) view.findViewById(R.id.recyclerview);
        this.mFlexboxLayoutManager = new FlexboxLayoutManager(this.mActivity);
        this.mFlexboxLayoutManager.setFlexWrap(1);
        this.mFlexboxLayoutManager.setFlexDirection(0);
        this.mFlexboxLayoutManager.setAlignItems(4);
        this.mFlexboxLayoutManager.setRecycleChildrenOnDetach(true);
        this.mRecyclerView.setLayoutManager(this.mFlexboxLayoutManager);
        FlexboxItemDecoration flexboxItemDecoration = new FlexboxItemDecoration(this.mActivity);
        flexboxItemDecoration.setDrawable(getActivity().getResources().getDrawable(R.drawable.card_item_divider));
        this.mRecyclerView.addItemDecoration(flexboxItemDecoration);
        this.mHeaderView = LayoutInflater.from(this.mActivity).inflate(R.layout.story_album_header, this.mRecyclerView, false);
        initHeaderView();
        this.mAdapter = new StoryAlbumAdapter(this.mActivity);
        this.mAdapter.setHasStableIds(true);
        this.mAdapterWrapper = new StoryAlbumAdapterWrapper(this.mAdapter);
        this.mAdapterWrapper.setHeaderView(this.mHeaderView);
        this.mListViewWrapper = new EditableListViewWrapper2(this.mRecyclerView);
        this.mListViewWrapper.setOnItemClickListener(new OnItemClickListener() {
            public boolean onItemClick(RecyclerView parent, View view, int position, long id) {
                position = StoryAlbumFragment.this.mAdapterWrapper.decryptPosition(position);
                if (position < 0) {
                    return false;
                }
                Uri uri = Media.URI.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).build();
                ImageLoadParams item = new ImageLoadParams(StoryAlbumFragment.this.mAdapter.getItemKey(position), StoryAlbumFragment.this.mAdapter.getLocalPath(position), ThumbConfig.get().sMicroTargetSize, StoryAlbumFragment.this.mAdapter.getItemDecodeRectF(), position, StoryAlbumFragment.this.mAdapter.getMimeType(position), StoryAlbumFragment.this.mAdapter.getFileLength(position));
                IntentUtil.gotoPhotoPage(StoryAlbumFragment.this, StoryAlbumFragment.this.mRecyclerView, uri, position, StoryAlbumFragment.this.mAdapter.getItemCount(), StoryAlbumFragment.this.getSelection(), StoryAlbumFragment.this.getSelectionArgs(), StoryAlbumFragment.this.getOrder(), item);
                return true;
            }
        });
        this.mListViewWrapper.enableChoiceMode(true);
        this.mListViewWrapper.setMultiChoiceModeListener(this.mChoiceModeListener);
        this.mListViewWrapper.setAdapter(this.mAdapterWrapper);
        this.mListViewWrapper.setOnScrollListener(new MyOnScrollListener());
        return view;
    }

    private void initHeaderView() {
        this.mCardTitle = (TextView) this.mHeaderView.findViewById(R.id.title);
        this.mCardDescription = (TextView) this.mHeaderView.findViewById(R.id.description);
        this.mSlideShowHeaderView = (SlideShowHeaderView) this.mHeaderView.findViewById(R.id.header);
        this.mSlideShowHeaderView.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                if (StoryAlbumFragment.this.mActivity != null && StoryAlbumFragment.this.mSlideShowHeaderView.isPlayEnable()) {
                    StoryAlbumFragment.this.mSlideShowHeaderView.setEnabled(false);
                    StoryAlbumFragment.this.mCheckDownloadFilesFuture = ThreadManager.getMiscPool().submit(new Job<Object>() {
                        public Object run(JobContext jc) {
                            if (StoryAlbumFragment.this.mParseFileMetaValues.size() > 0) {
                                Log.d("StoryAlbumFragment", "start check download file.");
                                StoryAlbumFragment.this.checkDowloadPendingFiles();
                            }
                            return null;
                        }
                    }, new FutureHandler<Object>() {
                        public void onPostExecute(Future<Object> future) {
                            try {
                                StoryAlbumFragment.this.mSlideShowHeaderView.setEnabled(true);
                                if (!MiscUtil.isValid(StoryAlbumFragment.this.mDownloadPendings)) {
                                    StoryAlbumFragment.this.mParseFileMetaValues.clear();
                                    StoryAlbumFragment.this.gotoPhotoMovie();
                                } else if (!NetworkUtils.isNetworkConnected()) {
                                    ToastUtils.makeText(StoryAlbumFragment.this.mActivity, (int) R.string.story_download_failed_for_notwork);
                                } else if (NetworkUtils.isActiveNetworkMetered()) {
                                    StoryAlbumFragment.this.showNetworkMeteredDialog();
                                } else {
                                    StoryAlbumFragment.this.startDownload();
                                }
                            } catch (Exception e) {
                                Log.e("StoryAlbumFragment", e.toString());
                            }
                        }
                    });
                }
            }
        });
    }

    private void checkDowloadPendingFiles() {
        if (this.mDownloadPendings.size() > 0) {
            this.mDownloadPendings.clear();
        }
        this.mResults = new Uri[this.mParseFileMetaValues.size()];
        Iterator it = this.mParseFileMetaValues.iterator();
        while (it.hasNext()) {
            File file;
            ParseFileMetaValue parseFile = (ParseFileMetaValue) it.next();
            int position = parseFile.position;
            String originFilePath = parseFile.originFilePath;
            if (!TextUtils.isEmpty(originFilePath)) {
                file = new File(originFilePath);
                if (file.exists()) {
                    this.mResults[position] = Uri.fromFile(file);
                }
            }
            String thumbnailFilePath = parseFile.thumnailFilePath;
            if (!TextUtils.isEmpty(thumbnailFilePath)) {
                file = new File(thumbnailFilePath);
                if (file.exists()) {
                    this.mResults[position] = Uri.fromFile(file);
                }
            }
            this.mDownloadPendings.add(new DownloadTask(parseFile.downloadUri, DownloadType.THUMBNAIL, 0, position));
        }
        Log.d("StoryAlbumFragment", "check dowload file end，and need download file count: %d .", Integer.valueOf(this.mDownloadPendings.size()));
    }

    private void gotoPhotoMovie() {
        IntentUtil.startPhotoMovie(this.mActivity, getTopNImages(this.mImageInfos, 20), this.mCardId, CardUtil.getMovieTemplateFromCard(this.mCard), this.mCard.getTitle(), this.mCard.getDescription());
        recordSlideShowHeaderClick();
    }

    private void startDownload() {
        if (this.mDownloader != null) {
            this.mDownloader.cancel();
            this.mDownloader.destroy();
        }
        this.mDownloader = new Downloader(this.mDownloadPendings, new DownloadProgressListener(this, null));
        this.mDownloader.start();
    }

    private void showConfirmDialog(boolean retry) {
        Bundle bundle = new Bundle();
        bundle.putInt("download_file_count", this.mDownloadPendings.size());
        bundle.putInt("local_file_count", this.mResults.length);
        int size = 0;
        Iterator it = this.mDownloadPendings.iterator();
        while (it.hasNext()) {
            size += ((DownloadTask) it.next()).mSize;
        }
        bundle.putInt("download_file_size", size);
        bundle.putBoolean("retry_mode", retry);
        DownloadConfirmDialog dialog = new DownloadConfirmDialog();
        dialog.setArguments(bundle);
        dialog.showAllowingStateLoss(getFragmentManager(), "confirm_dialog");
    }

    private List<MediaInfo> getTopNImages(List<MediaInfo> imageInfos, int num) {
        if (!MiscUtil.isValid(imageInfos) || num <= 0) {
            return null;
        }
        List<MediaInfo> topNMediaInfos = new ArrayList(imageInfos);
        Collections.sort(topNMediaInfos, new MediaInfoComparator());
        return topNMediaInfos.subList(0, Math.min(imageInfos.size(), num));
    }

    private void setTitle(String title) {
        this.mActionBarHelper.setActionBarTitle(title);
        this.mCardTitle.setText(title);
    }

    private void recordSlideShowHeaderClick() {
        HashMap<String, String> params = new HashMap();
        params.put("scenarioId", String.valueOf(this.mCard.getScenarioId()));
        GallerySamplingStatHelper.recordCountEvent("assistant", "assistant_card_detail_header_click", params);
    }

    public void onStart() {
        super.onStart();
        this.mSlideShowHeaderView.resume();
    }

    public void onResume() {
        super.onResume();
        if (this.mDownloader != null) {
            this.mDownloader.resume();
        }
    }

    public void onPause() {
        super.onPause();
        if (this.mDownloader != null) {
            this.mDownloader.pause();
        }
    }

    public void onStop() {
        super.onStop();
        this.mSlideShowHeaderView.pause();
    }

    private void updateCardIds() {
        List<String> allIds = this.mCard.getAllMediaSha1s();
        List<String> selectedIds = this.mCard.getSelectedMediaSha1s();
        if (selectedIds.size() != this.mSelectedPhotoSha1s.size()) {
            if (allIds == null) {
                allIds = new ArrayList(selectedIds.size());
            }
            if (allIds.isEmpty()) {
                allIds.addAll(selectedIds);
            }
            Iterator<String> iterator = selectedIds.iterator();
            while (iterator.hasNext()) {
                String sha1 = (String) iterator.next();
                if (!this.mSelectedPhotoSha1s.contains(sha1)) {
                    iterator.remove();
                    allIds.remove(sha1);
                }
            }
            this.mCard.setSelectedMediaSha1s(selectedIds);
            this.mCard.setAllMediaSha1s(allIds);
            saveAndNofity();
        }
    }

    private void parseCursor(Cursor cursor) {
        if (cursor != null && cursor.moveToFirst()) {
            if (this.mParseFileMetaValues.size() > 0) {
                this.mParseFileMetaValues.clear();
            }
            do {
                this.mParseFileMetaValues.add(new ParseFileMetaValue(cursor));
            } while (cursor.moveToNext());
        }
    }

    private void saveAndNofity() {
        CardManager.getInstance().updateCard(this.mCard);
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0050  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0079  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0067  */
    private boolean updateImages(android.database.Cursor r9) {
        /*
        r8 = this;
        r4 = r8.mImageInfos;
        r1 = r4.size();
        r4 = r8.mImageInfos;
        r4.clear();
        r4 = r8.mSelectedPhotoSha1s;
        r4.clear();
        if (r9 == 0) goto L_0x0048;
    L_0x0012:
        r4 = r9.moveToFirst();
        if (r4 == 0) goto L_0x0048;
    L_0x0018:
        r0 = new com.miui.gallery.card.model.MediaInfo;
        r0.<init>(r9);
        r4 = com.miui.gallery.assistant.cache.ImageFeatureCacheManager.getInstance();
        r6 = r0.getId();
        r3 = r4.getImageFeature(r6);
        if (r3 == 0) goto L_0x0032;
    L_0x002b:
        r4 = r3.getScore();
        r0.setScore(r4);
    L_0x0032:
        r4 = r8.mImageInfos;
        r4.add(r0);
        r4 = 15;
        r2 = r9.getString(r4);
        r4 = r8.mSelectedPhotoSha1s;
        r4.add(r2);
        r4 = r9.moveToNext();
        if (r4 != 0) goto L_0x0018;
    L_0x0048:
        r4 = r8.mSelectedPhotoSha1s;
        r4 = r4.isEmpty();
        if (r4 == 0) goto L_0x005f;
    L_0x0050:
        r4 = "StoryAlbumFragment";
        r5 = "empty selected ids after data updated";
        com.miui.gallery.util.Log.d(r4, r5);
        r4 = r8.mActivity;
        r4.finish();
        r8.updateCardIds();
    L_0x005f:
        r4 = r8.mImageInfos;
        r4 = r4.size();
        if (r1 == r4) goto L_0x0079;
    L_0x0067:
        r8.updateFlexboxLayoutParamHelper();
        r4 = r8.mSlideShowHeaderView;
        r5 = r8.mImageInfos;
        r4.updateMedias(r5);
        r8.updateSlideHeaderPlayStatus();
        r8.updateCardIds();
        r4 = 1;
    L_0x0078:
        return r4;
    L_0x0079:
        r4 = 0;
        goto L_0x0078;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.card.ui.detail.StoryAlbumFragment.updateImages(android.database.Cursor):boolean");
    }

    private void updateFlexboxLayoutParamHelper() {
        this.mFlexboxLayoutHeight = this.mRecyclerView.getWidth();
        ArrayList<Size> imageSizeList = new ArrayList(this.mImageInfos.size());
        for (MediaInfo mediaInfo : this.mImageInfos) {
            int width;
            int height;
            if (ExifUtil.isWidthHeightRotated(mediaInfo.getOrientation())) {
                width = mediaInfo.getHeight();
                height = mediaInfo.getWidth();
            } else {
                width = mediaInfo.getWidth();
                height = mediaInfo.getHeight();
            }
            imageSizeList.add(new Size(width, height));
        }
        this.mAdapter.updateLayoutSizes(imageSizeList, this.mFlexboxLayoutHeight, this.mRecyclerView.getResources().getDimensionPixelSize(R.dimen.micro_thumb_horizontal_spacing));
        if (this.mFlexboxLayoutHeight == 0) {
            this.mRecyclerView.getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
        }
    }

    private void updateSlideHeaderPlayStatus() {
        if (this.mImageInfos.size() < 3 || this.mIsInActionMode || !this.mIsPlayIconScrollStateEnable) {
            this.mSlideShowHeaderView.setPlayEnable(false);
        } else {
            this.mSlideShowHeaderView.setPlayEnable(true);
        }
    }

    public String getPageName() {
        return "story_album";
    }

    protected Loader getLoader() {
        return getLoaderManager().getLoader(1);
    }

    private String[] getProjection() {
        return StoryAlbumAdapter.PROJECTION;
    }

    private Uri getUri() {
        return Media.URI_OWNER_ALBUM_MEDIA.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).build();
    }

    private String getSelection() {
        return String.format("%s IN ('%s')", new Object[]{"sha1", TextUtils.join("','", this.mSelectedPhotoSha1s)});
    }

    private String[] getSelectionArgs() {
        return null;
    }

    private String getOrder() {
        return "alias_create_time DESC ";
    }

    public void onAttachDialogFragment(Fragment fragment) {
        if (fragment instanceof DownloadConfirmDialog) {
            DownloadConfirmDialog dialog = (DownloadConfirmDialog) fragment;
            dialog.setPositiveListener(this.mDownloadListener);
            dialog.setNegativeListener(this.mCancelDownloadListener);
        } else if (fragment instanceof CardDownloadDialog) {
            ((CardDownloadDialog) fragment).setCallBack(this.mDowloadCallback);
        }
    }

    private void showNetworkMeteredDialog() {
        ConfirmDialog.showConfirmDialog(this.mActivity.getFragmentManager(), this.mActivity.getResources().getString(R.string.story_download_without_wifi_title), this.mActivity.getResources().getString(R.string.story_download_without_wifi_msg), this.mActivity.getResources().getString(R.string.story_cancel_download), this.mActivity.getResources().getString(R.string.story_download), new ConfirmDialogInterface() {
            public void onConfirm(DialogFragment dialog) {
                StoryAlbumFragment.this.startDownload();
            }

            public void onCancel(DialogFragment dialog) {
                StoryAlbumFragment.this.finish();
            }
        });
    }

    public void onDestroyView() {
        super.onDestroyView();
        if (this.mDownloadPendings != null) {
            this.mDownloadPendings.clear();
        }
        if (this.mParseFileMetaValues != null) {
            this.mParseFileMetaValues.clear();
        }
        if (this.mCheckDownloadFilesFuture != null) {
            this.mCheckDownloadFilesFuture.cancel();
            this.mCheckDownloadFilesFuture = null;
        }
        if (this.mDowloadResultFuture != null) {
            this.mDowloadResultFuture.cancel();
            this.mDowloadResultFuture = null;
        }
    }
}
