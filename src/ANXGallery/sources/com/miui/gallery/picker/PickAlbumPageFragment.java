package com.miui.gallery.picker;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.adapter.BaseAlbumListRecyclerAdapter;
import com.miui.gallery.model.AlbumConstants;
import com.miui.gallery.picker.helper.Picker.MediaType;
import com.miui.gallery.picker.helper.Picker.Mode;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.recyclerview.ExtendedRecyclerView;
import com.miui.gallery.widget.recyclerview.GalleryRecyclerView;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemClickListener;
import com.miui.gallery.widget.recyclerview.SectionedDividerItemDecoration;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PickAlbumPageFragment extends PickerFragment {
    private PickerAlbumPageAdapter mAlbumPageAdapter;
    private AlbumPagePhotoLoaderCallback mAlbumPagePhotoLoaderCallback;
    private ExtendedRecyclerView mAlbumRecyclerView;
    private boolean mLoadInited;

    private class AlbumPagePhotoLoaderCallback implements LoaderCallbacks {
        private AlbumPagePhotoLoaderCallback() {
        }

        /* synthetic */ AlbumPagePhotoLoaderCallback(PickAlbumPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(PickAlbumPageFragment.this.mActivity);
            if (i == 1) {
                Uri uri;
                if (PickAlbumPageFragment.this.getPicker().getMediaType() == MediaType.VIDEO) {
                    uri = Album.URI.buildUpon().appendQueryParameter("join_video", "true").appendQueryParameter("join_share", "true").appendQueryParameter("join_recent", "true").appendQueryParameter("join_favorites", "true").appendQueryParameter("remove_duplicate_items", "true").appendQueryParameter("media_type", String.valueOf(2)).build();
                } else if (PickAlbumPageFragment.this.getPicker().getMediaType() == MediaType.IMAGE) {
                    uri = Album.URI.buildUpon().appendQueryParameter("join_face", "true").appendQueryParameter("join_share", "true").appendQueryParameter("join_recent", "true").appendQueryParameter("join_favorites", "true").appendQueryParameter("remove_duplicate_items", "true").appendQueryParameter("media_type", String.valueOf(1)).build();
                } else {
                    uri = Album.URI_ALL.buildUpon().appendQueryParameter("remove_duplicate_items", "true").build();
                }
                loader.setUri(uri);
                loader.setProjection(PickAlbumPageFragment.this.mAlbumPageAdapter.getProjection());
                loader.setSortOrder("classification ASC, sortBy ASC ");
                loader.setSelection("media_count>0");
            } else if (i == 2) {
                loader.setUri(Album.URI_SHARE_ALL);
                loader.setProjection(AlbumConstants.SHARED_ALBUM_PROJECTION);
                loader.setSelection("count > 0");
            } else if (i == 3) {
                loader.setUri(PeopleFace.PEOPLE_FACE_COVER_URI);
            }
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            if (loader.getId() == 1) {
                Cursor cursor = PickAlbumPageFragment.this.mAlbumPageAdapter.sortCursor((Cursor) o);
                if (cursor == null || cursor.getCount() == 0) {
                    PickAlbumPageFragment.this.mAlbumRecyclerView.inflateEmptyView();
                }
                PickAlbumPageFragment.this.mAlbumPageAdapter.swapCursor(cursor);
            } else if (loader.getId() == 2) {
                PickAlbumPageFragment.this.mAlbumPageAdapter.setSharedAlbums((Cursor) o);
            } else if (loader.getId() == 3) {
                PickAlbumPageFragment.this.mAlbumPageAdapter.setPeopleFaceCover((Cursor) o);
            }
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mLoadInited = false;
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.picker_album_page, container, false);
        this.mAlbumRecyclerView = (ExtendedRecyclerView) view.findViewById(R.id.album_list);
        this.mAlbumRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.mAlbumPageAdapter = new PickerAlbumPageAdapter(this.mActivity);
        this.mAlbumPageAdapter.setInPickMode(true);
        SectionedDividerItemDecoration decoration = new SectionedDividerItemDecoration(getActivity(), R.drawable.section_divider_bg, R.drawable.item_divider_bg, this.mAlbumPageAdapter);
        decoration.setItemDividerPadding(new Rect(getResources().getDimensionPixelSize(R.dimen.album_cover_container_size_small), 0, 0, 0));
        this.mAlbumRecyclerView.addItemDecoration(decoration);
        this.mAlbumRecyclerView.setAdapter(this.mAlbumPageAdapter);
        ((GalleryRecyclerView) this.mAlbumRecyclerView.getRecycler()).setOnItemClickListener(new OnItemClickListener() {
            public boolean onItemClick(RecyclerView parent, View view, int position, long id) {
                Intent intent = new Intent();
                if (BaseAlbumListRecyclerAdapter.isFaceAlbum(id)) {
                    intent.setClass(PickAlbumPageFragment.this.mActivity, PickPeopleActivity.class);
                } else if (BaseAlbumListRecyclerAdapter.isRecentAlbum(id)) {
                    intent.setClass(PickAlbumPageFragment.this.mActivity, PickRecentDiscoveryActivity.class);
                    intent.putExtra("album_id", id);
                    intent.putExtra("album_name", PickAlbumPageFragment.this.mAlbumPageAdapter.getAlbumName(position));
                } else {
                    intent.setClass(PickAlbumPageFragment.this.mActivity, PickAlbumDetailActivity.class);
                }
                intent.putExtra("other_share_album", PickAlbumPageFragment.this.mAlbumPageAdapter.isOtherShareAlbum(position));
                intent.putExtra("owner_share_album", PickAlbumPageFragment.this.mAlbumPageAdapter.isOwnerShareAlbum(position));
                intent.putExtra("pano_album", PickAlbumPageFragment.this.mAlbumPageAdapter.isPanoAlbum(position));
                intent.putExtra("album_id", id);
                intent.putExtra("album_name", PickAlbumPageFragment.this.mAlbumPageAdapter.getAlbumName(position));
                intent.putExtra("pick-upper-bound", PickAlbumPageFragment.this.mPicker.getMode() == Mode.UNLIMITED ? -1 : PickAlbumPageFragment.this.mPicker.capacity());
                intent.putExtra("pick-lower-bound", PickAlbumPageFragment.this.mPicker.baseline());
                intent.putExtra("picker_media_type", PickAlbumPageFragment.this.mPicker.getMediaType().ordinal());
                intent.putExtra("picker_result_set", PickerActivity.copyPicker(PickAlbumPageFragment.this.mPicker));
                intent.putExtra("picker_result_type", PickAlbumPageFragment.this.mPicker.getResultType().ordinal());
                PickAlbumPageFragment.this.startActivityForResult(intent, 1);
                return true;
            }
        });
        this.mAlbumPagePhotoLoaderCallback = new AlbumPagePhotoLoaderCallback(this, null);
        return view;
    }

    public void onStart() {
        super.onStart();
        this.mAlbumPageAdapter.updateGalleryCloudSyncableState();
    }

    protected String getPageName() {
        return "picker_album";
    }

    protected boolean recordPageByDefault() {
        return false;
    }

    protected Uri getUri() {
        return null;
    }

    protected boolean onPhotoItemClick(Cursor cursor) {
        return false;
    }

    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (getUserVisibleHint() && !this.mLoadInited) {
            startToLoadAlbums();
            this.mLoadInited = true;
        }
    }

    private void startToLoadAlbums() {
        Log.d("PickAlbumPageFragment", "startToLoadAlbums");
        getLoaderManager().initLoader(1, null, this.mAlbumPagePhotoLoaderCallback);
        getLoaderManager().initLoader(2, null, this.mAlbumPagePhotoLoaderCallback);
        if (getPicker().getMediaType() != MediaType.VIDEO) {
            getLoaderManager().initLoader(3, null, this.mAlbumPagePhotoLoaderCallback);
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == 0) {
            this.mPicker.cancel();
            return;
        }
        List<String> fromAlbum = (List) data.getSerializableExtra("internal_key_updated_selection");
        if (fromAlbum != null) {
            Log.d("PickAlbumPageFragment", "Pick result of pre album: %s ", Integer.valueOf(fromAlbum.size()));
            Object removed = new ArrayList();
            for (String sha1 : this.mPicker) {
                if (!fromAlbum.contains(sha1)) {
                    removed.add(sha1);
                }
            }
            Log.d("PickAlbumPageFragment", "Deleted items in pre album : %s ", removed);
            Iterator it = removed.iterator();
            while (it.hasNext()) {
                this.mPicker.remove((String) it.next());
            }
            for (String sha12 : fromAlbum) {
                if (!this.mPicker.contains(sha12)) {
                    this.mPicker.pick(sha12);
                }
            }
            if (resultCode == -1) {
                this.mPicker.done();
            }
        }
    }
}
