package com.miui.gallery.ui;

import android.app.Dialog;
import android.content.Intent;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import com.miui.gallery.R;
import com.miui.gallery.activity.PhotoSlimActivity;
import com.miui.gallery.adapter.AlbumDetailSimpleAdapter;
import com.miui.gallery.adapter.AlbumDetailSimpleAdapter.AlbumType;
import com.miui.gallery.adapter.AlbumDetailTimeLineAdapter;
import com.miui.gallery.cleaner.ScannerManager;
import com.miui.gallery.cleaner.slim.SlimController;
import com.miui.gallery.cleaner.slim.SlimScanner;
import com.miui.gallery.preference.GalleryPreferences.PhotoSlim;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.util.DocumentProviderUtils;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.widget.EditableListViewWrapper;
import com.miui.gallery.widget.EditableListViewWrapper.SimpleMultiChoiceModeListener;
import com.miui.gallery.widget.SortByHeader.SortBy;
import java.util.HashMap;

public class SlimPhotoPickFragment extends PhotoListFragmentBase {
    public static final int[] SLIM_COUNT_STAGE = new int[]{20, 50, 100, 200, 500, 1000};
    private AlbumDetailTimeLineAdapter mAdapter;
    private DataSetObserver mDataSetObserver = new DataSetObserver() {
        public void onChanged() {
            if (SlimPhotoPickFragment.this.mIsFirstLoadFinish && SlimPhotoPickFragment.this.mAdapter.getCount() > 0) {
                SlimPhotoPickFragment.this.mIsFirstLoadFinish = false;
                SlimPhotoPickFragment.this.mGridViewWrapper.setAllItemsCheckState(true);
            }
            SlimPhotoPickFragment.this.onItemSelectedChanged();
        }
    };
    private EditableListViewWrapper mGridViewWrapper;
    private boolean mIsFirstLoadFinish = true;
    private SimpleMultiChoiceModeListener mMultiChoiceModeListener = new SimpleMultiChoiceModeListener() {
        public void onAllItemsCheckedStateChanged(ActionMode mode, boolean checked) {
            SlimPhotoPickFragment.this.onItemSelectedChanged();
        }

        public void onItemCheckedStateChanged(ActionMode mode, int position, long id, boolean checked) {
            SlimPhotoPickFragment.this.onItemSelectedChanged();
        }
    };
    private long[] mScanResultIds;
    private Button mSelectButton;
    private OnClickListener mSelectListener = new OnClickListener() {
        public void onClick(View v) {
            boolean checked = !SlimPhotoPickFragment.this.mGridViewWrapper.isAllItemsChecked();
            SlimPhotoPickFragment.this.mGridViewWrapper.setAllItemsCheckState(checked);
            if (!checked) {
                GallerySamplingStatHelper.recordCountEvent("cleaner", "slim_select_all_cancel");
            }
        }
    };
    private Dialog mSlimDescriptionDialog;
    private Button mStartSlimButton;
    private OnClickListener mStartSlimListener = new OnClickListener() {
        public void onClick(View v) {
            if (DocumentProviderUtils.needRequestExternalSDCardPermission(SlimPhotoPickFragment.this.getActivity())) {
                DocumentProviderUtils.startExtSDCardPermissionActivityForResult(SlimPhotoPickFragment.this.getActivity());
                return;
            }
            long[] slimIds = SlimPhotoPickFragment.this.mGridViewWrapper.getCheckedItemIds();
            SlimController.getInstance().start(slimIds);
            SlimPhotoPickFragment.this.getActivity().startActivity(new Intent(SlimPhotoPickFragment.this.getActivity(), PhotoSlimActivity.class));
            HashMap<String, String> params = new HashMap();
            params.put("slimCount", GallerySamplingStatHelper.formatValueStage((float) slimIds.length, SlimPhotoPickFragment.SLIM_COUNT_STAGE));
            GallerySamplingStatHelper.recordCountEvent("cleaner", "cleaner_slim_used", params);
            SlimPhotoPickFragment.this.finish();
        }
    };

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        this.mActivity.getActionBar().setTitle(R.string.cleaner_slim_title);
        View view = super.onInflateView(inflater, container, savedInstanceState);
        this.mStartSlimButton = (Button) view.findViewById(R.id.start);
        this.mStartSlimButton.setOnClickListener(this.mStartSlimListener);
        this.mSelectButton = (Button) this.mActivity.getActionBar().getCustomView().findViewById(R.id.do_select);
        this.mSelectButton.setOnClickListener(this.mSelectListener);
        this.mAdapter = new AlbumDetailTimeLineAdapter(this.mActivity);
        this.mAdapter.setCurrentSortBy(SortBy.DATE);
        this.mAdapter.setAlbumType(AlbumType.NORMAL);
        this.mAdapter.registerDataSetObserver(this.mDataSetObserver);
        this.mGridViewWrapper = new EditableListViewWrapper(this.mAlbumDetailGridView);
        this.mGridViewWrapper.setAdapter(this.mAdapter);
        this.mGridViewWrapper.setOnItemClickListener(getGridViewOnItemClickListener());
        this.mGridViewWrapper.setMultiChoiceModeListener(this.mMultiChoiceModeListener);
        this.mGridViewWrapper.startChoiceMode();
        this.mScanResultIds = ((SlimScanner) ScannerManager.getInstance().getScanner(0)).getScanResultIds();
        return view;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (PhotoSlim.isFirstUsePhotoSlim()) {
            View dialogView = LayoutInflater.from(this.mActivity).inflate(R.layout.photo_slim_description_dialog, null, false);
            this.mSlimDescriptionDialog = new Dialog(this.mActivity);
            this.mSlimDescriptionDialog.setContentView(dialogView);
            ((Button) dialogView.findViewById(R.id.button)).setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    SlimPhotoPickFragment.this.mSlimDescriptionDialog.dismiss();
                }
            });
            Window window = this.mSlimDescriptionDialog.getWindow();
            window.setGravity(80);
            window.setLayout(-1, -2);
            this.mSlimDescriptionDialog.show();
            PhotoSlim.setIsFirstUsePhotoSlim(Boolean.valueOf(false));
        }
    }

    private void onItemSelectedChanged() {
        if (this.mAdapter.getCount() > 0) {
            this.mStartSlimButton.setEnabled(this.mGridViewWrapper.getCheckedItemCount() > 0);
            this.mSelectButton.setVisibility(0);
            this.mSelectButton.setText(getString(this.mGridViewWrapper.isAllItemsChecked() ? miui.R.string.deselect_all : miui.R.string.select_all));
            return;
        }
        this.mStartSlimButton.setEnabled(false);
        this.mSelectButton.setVisibility(8);
    }

    protected int getLayoutSource() {
        return R.layout.slim_photo_pick_layout;
    }

    protected AlbumDetailSimpleAdapter getAdapter() {
        return this.mAdapter;
    }

    protected Uri getUri() {
        return Media.URI_OWNER_ALBUM_MEDIA.buildUpon().appendQueryParameter("generate_headers", String.valueOf(true)).build();
    }

    protected String getSelection() {
        return String.format("%s AND %s IN (%s)", new Object[]{SlimScanner.SYNCED_SLIM_SCAN_SELECTION, "_id", TextUtils.join(",", MiscUtil.arrayToList(this.mScanResultIds))});
    }

    protected String[] getSelectionArgs() {
        return null;
    }

    public String getPageName() {
        return "cleaner_slim_photo_pick";
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mSlimDescriptionDialog != null && this.mSlimDescriptionDialog.isShowing()) {
            this.mSlimDescriptionDialog.dismiss();
        }
    }
}
