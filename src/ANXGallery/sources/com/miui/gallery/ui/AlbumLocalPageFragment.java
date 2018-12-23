package com.miui.gallery.ui;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.Loader;
import android.database.Cursor;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.adapter.AlbumPageRecyclerAdapter;
import com.miui.gallery.model.AlbumConstants;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.recyclerview.ExtendedRecyclerView;
import com.miui.gallery.widget.recyclerview.GalleryRecyclerView;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemClickListener;
import com.miui.gallery.widget.recyclerview.SectionedDividerItemDecoration;
import java.util.HashMap;

public class AlbumLocalPageFragment extends BaseAlbumPageFragment implements OnItemClickListener {
    private AlbumPagePhotoLoaderCallback mAlbumPagePhotoLoaderCallback;
    private ExtendedRecyclerView mAlbumRecyclerView;

    private class AlbumPagePhotoLoaderCallback implements LoaderCallbacks {
        private AlbumPagePhotoLoaderCallback() {
        }

        private String getSelection() {
            return "classification = 1";
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(AlbumLocalPageFragment.this.mActivity);
            if (i == 1) {
                loader.setUri(Album.URI.buildUpon().appendQueryParameter("join_video", "false").appendQueryParameter("join_face", "false").appendQueryParameter("join_share", "false").appendQueryParameter("exclude_empty_album", "true").build());
                loader.setProjection(AlbumLocalPageFragment.this.mAlbumPageAdapter.getProjection());
                loader.setSelection(getSelection());
                loader.setSortOrder("sortBy ASC ");
            } else if (i == 2) {
                loader.setUri(Album.URI_SHARE_ALL);
                loader.setProjection(AlbumConstants.SHARED_ALBUM_PROJECTION);
                loader.setSelection("count > 0");
            }
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            if (loader.getId() == 1) {
                Cursor cursor = AlbumLocalPageFragment.this.mAlbumPageAdapter.classifyOtherAlbumsCursor((Cursor) o);
                if (cursor == null || cursor.getCount() == 0) {
                    AlbumLocalPageFragment.this.mAlbumRecyclerView.inflateEmptyView();
                }
                AlbumLocalPageFragment.this.mAlbumPageAdapter.swapCursor(cursor);
            } else if (loader.getId() == 2) {
                AlbumLocalPageFragment.this.mAlbumPageAdapter.setSharedAlbums((Cursor) o);
            }
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        setHasOptionsMenu(true);
        View view = inflater.inflate(R.layout.album_page_others, container, false);
        this.mAlbumRecyclerView = (ExtendedRecyclerView) view.findViewById(R.id.album_list);
        this.mRecyclerView = (GalleryRecyclerView) this.mAlbumRecyclerView.getRecycler();
        this.mAlbumRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.mAlbumPageAdapter = new AlbumPageRecyclerAdapter(this.mActivity);
        SectionedDividerItemDecoration decoration = new SectionedDividerItemDecoration(getActivity(), R.drawable.section_divider_bg, R.drawable.item_divider_bg, this.mAlbumPageAdapter);
        decoration.setItemDividerPadding(new Rect(getResources().getDimensionPixelSize(R.dimen.album_cover_container_size_small), 0, 0, 0));
        this.mAlbumRecyclerView.addItemDecoration(decoration);
        this.mAlbumRecyclerView.setAdapter(this.mAlbumPageAdapter);
        this.mRecyclerView.setOnItemClickListener(this);
        this.mAlbumPagePhotoLoaderCallback = new AlbumPagePhotoLoaderCallback();
        this.mActivity.getActionBar().setTitle(this.mActivity.getString(R.string.other_album));
        return view;
    }

    public void onStart() {
        super.onStart();
        this.mAlbumPageAdapter.updateGalleryCloudSyncableState();
    }

    public String getPageName() {
        return "album_local";
    }

    public boolean onItemClick(RecyclerView parent, View view, int position, long id) {
        if (this.mAlbumPageAdapter == null) {
            return false;
        }
        recordViewAlbum(position);
        return this.mAlbumPageAdapter.onItemClick(parent, view, position, id);
    }

    private void recordViewAlbum(int position) {
        String localPath = this.mAlbumPageAdapter.getAlbumLocalPath(position);
        if (!TextUtils.isEmpty(localPath)) {
            HashMap<String, String> params = new HashMap();
            params.put("album_path", localPath.toLowerCase());
            params.put("album_attribute", String.valueOf(this.mAlbumPageAdapter.getAttributes(position)));
            params.put("album_image_count", String.valueOf(this.mAlbumPageAdapter.getAlbumCount(position)));
            GallerySamplingStatHelper.recordCountEvent("album", "view_other_album", params);
        }
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        startToLoadAlbums();
    }

    private void startToLoadAlbums() {
        Log.d("AlbumLocalPageFragment", "startToLoadAlbums");
        getLoaderManager().initLoader(1, null, this.mAlbumPagePhotoLoaderCallback);
        getLoaderManager().initLoader(2, null, this.mAlbumPagePhotoLoaderCallback);
    }
}
