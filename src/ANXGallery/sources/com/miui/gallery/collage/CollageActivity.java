package com.miui.gallery.collage;

import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.android.internal.WindowCompat;
import com.google.gson.Gson;
import com.miui.gallery.R;
import com.miui.gallery.activity.ExternalPhotoPageActivity;
import com.miui.gallery.collage.adapter.LayoutMenuAdapter;
import com.miui.gallery.collage.adapter.PosterMenuAdapter;
import com.miui.gallery.collage.render.CollageAssistantRenderModel;
import com.miui.gallery.collage.render.CollageAssistantRenderModel.Type;
import com.miui.gallery.collage.render.CollageMargin;
import com.miui.gallery.collage.render.CollageRender;
import com.miui.gallery.collage.render.CollageRender.GenerateRenderDataListener;
import com.miui.gallery.collage.render.CollageRender.RenderData;
import com.miui.gallery.collage.render.PosterElementRender;
import com.miui.gallery.collage.render.PosterElementRender.ReadPosterDataTask;
import com.miui.gallery.collage.render.PosterElementRender.ReadPosterDataTask.LoadDataListener;
import com.miui.gallery.collage.widget.CollageImageView;
import com.miui.gallery.collage.widget.CollageLayout;
import com.miui.gallery.collage.widget.CollageLayout.LayoutParams;
import com.miui.gallery.collage.widget.CollageLayout.ReplaceImageListener;
import com.miui.gallery.collage.widget.PosterLayout;
import com.miui.gallery.editor.photo.utils.IoUtils;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import com.miui.gallery.picker.PickGalleryActivity;
import com.miui.gallery.scanner.MediaScanner;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaStoreUtils;
import com.miui.gallery.util.SystemUiUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import miui.app.ProgressDialog;

public class CollageActivity extends Activity implements OnClickListener {
    private String mAssistantExtra;
    private Bitmap[] mBitmaps;
    private TextView mCancel;
    private CollageLayout mCollageLayout;
    private CollageResourcesManager mCollageResourcesManager;
    private int mCurrentImageSize = 1;
    private View mDividingLineList;
    private View mDividingLineTitle;
    private boolean mIsBitmapLoad = false;
    private boolean mIsPosterMode = true;
    private boolean mIsResLoad = false;
    private int mLayoutIndex = 0;
    private List<LayoutModel> mLayoutList = new ArrayList();
    private LayoutMenuAdapter mLayoutMenuAdapter;
    private RadioButton mLayoutTitle;
    private CollageMargin mMargin = CollageMargin.NONE;
    private ImageView mMarginControl;
    private ViewGroup mMarginControlLayout;
    private View mMarginDividingView;
    private OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            ScrollControlLinearLayoutManager.onItemClick(parent, position);
            if (CollageActivity.this.mIsPosterMode) {
                CollageActivity.this.mPosterMenuAdapter.setSelection(position);
                CollageActivity.this.mPosterIndex = position;
                CollageActivity.this.enablePosterModel((PosterModel) CollageActivity.this.mPosterList.get(position));
            } else {
                CollageActivity.this.mLayoutMenuAdapter.setSelection(position);
                CollageActivity.this.mLayoutIndex = position;
                CollageActivity.this.enableLayoutModel((LayoutModel) CollageActivity.this.mLayoutList.get(position));
            }
            return true;
        }
    };
    private int mPosterIndex = 0;
    private PosterLayout mPosterLayout;
    private List<PosterModel> mPosterList = new ArrayList();
    private PosterMenuAdapter mPosterMenuAdapter;
    private RadioButton mPosterTitle;
    private Rect mRectTemp = new Rect();
    private SimpleRecyclerView mRecyclerView;
    private ReplaceImageListener mReplaceImageListener = new ReplaceImageListener() {
        public void onReplace(int index) {
            CollageActivity.this.mSingleChooseIndex = index;
            CollageActivity.this.startPicker(1, 1);
        }
    };
    private ResourcesUpdateListener mResourcesUpdateListener = new ResourcesUpdateListener() {
        public void onResourcesUpdate() {
            CollageActivity.this.onLoadResFinish();
        }
    };
    private TextView mSave;
    private ProgressDialog mSaveProgressDialog;
    private int mSingleChooseIndex = -1;

    private class DecodeBitmapTask extends AsyncTask<Uri, Void, Bitmap[]> {
        final int mTaskID;

        DecodeBitmapTask(int taskID) {
            this.mTaskID = taskID;
        }

        protected Bitmap[] doInBackground(Uri... params) {
            List<Bitmap> bitmapList = new ArrayList();
            for (Uri param : params) {
                Bitmap bitmap = CollageUtils.loadSuitableBitmapFromUri(CollageActivity.this, param);
                if (bitmap != null) {
                    bitmapList.add(bitmap);
                }
            }
            return (Bitmap[]) bitmapList.toArray(new Bitmap[bitmapList.size()]);
        }

        protected void onPostExecute(Bitmap[] bitmaps) {
            switch (this.mTaskID) {
                case 0:
                    CollageActivity.this.onBitmapDecodeFinishAfterChoose(bitmaps);
                    return;
                case 1:
                    CollageActivity.this.onBitmapDecodeFinishAfterReplace(bitmaps);
                    return;
                default:
                    return;
            }
        }
    }

    private class ResolveAssistantExtraTask extends AsyncTask<String, Void, Void> {
        CollageMargin mCollageMargin;
        int mFinalIndex;
        Type mType;

        private ResolveAssistantExtraTask() {
            this.mFinalIndex = -1;
        }

        /* synthetic */ ResolveAssistantExtraTask(CollageActivity x0, AnonymousClass1 x1) {
            this();
        }

        protected Void doInBackground(String... params) {
            CollageAssistantRenderModel collageAssistantRenderModel = (CollageAssistantRenderModel) new Gson().fromJson(params[0], CollageAssistantRenderModel.class);
            this.mCollageMargin = collageAssistantRenderModel.collageMargin;
            String index = collageAssistantRenderModel.index;
            this.mType = collageAssistantRenderModel.type;
            int i;
            switch (collageAssistantRenderModel.type) {
                case LAYOUT:
                    String layoutSuffix = String.format(Locale.US, "%d_%s.json", new Object[]{Integer.valueOf(CollageActivity.this.mCurrentImageSize), index});
                    for (i = 0; i < CollageActivity.this.mLayoutList.size(); i++) {
                        if (((LayoutModel) CollageActivity.this.mLayoutList.get(i)).name.endsWith(layoutSuffix)) {
                            this.mFinalIndex = i;
                            break;
                        }
                    }
                    break;
                case POSTER:
                    for (i = 0; i < CollageActivity.this.mPosterList.size(); i++) {
                        PosterModel posterModel = (PosterModel) CollageActivity.this.mPosterList.get(i);
                        if (posterModel.name.startsWith(index)) {
                            CollageAssistantRenderModel.configPosterModel(posterModel, collageAssistantRenderModel);
                            this.mFinalIndex = i;
                            break;
                        }
                    }
                    break;
            }
            return null;
        }

        protected void onPostExecute(Void collageAssistantRenderModel) {
            if (this.mFinalIndex == -1) {
                this.mFinalIndex = 0;
            }
            switch (this.mType) {
                case LAYOUT:
                    CollageActivity.this.onClick(CollageActivity.this.mLayoutTitle);
                    if (this.mCollageMargin != null) {
                        CollageActivity.this.mMarginControl.setImageResource(this.mCollageMargin.iconRes);
                        CollageActivity.this.mCollageLayout.setCollageMargin(this.mCollageMargin.marginSize);
                        CollageActivity.this.mMargin = this.mCollageMargin;
                    }
                    CollageActivity.this.mLayoutIndex = this.mFinalIndex;
                    LayoutModel layoutModel = (LayoutModel) CollageActivity.this.mLayoutList.get(CollageActivity.this.mLayoutIndex);
                    CollageActivity.this.enableLayoutModel(layoutModel);
                    CollageActivity.this.generateOriginLayout(layoutModel, CollageActivity.this.mBitmaps);
                    CollageActivity.this.mLayoutMenuAdapter.setSelection(this.mFinalIndex);
                    break;
                case POSTER:
                    CollageActivity.this.mPosterIndex = this.mFinalIndex;
                    CollageActivity.this.generatePosterLayout(CollageActivity.this.mBitmaps);
                    CollageActivity.this.mPosterMenuAdapter.setSelection(this.mFinalIndex);
                    break;
            }
            CollageActivity.this.mRecyclerView.scrollToPosition(this.mFinalIndex);
        }
    }

    private class SaveTask extends AsyncTask<RenderData, Void, File> {
        private String mPath;
        private boolean mSuccess;

        private SaveTask() {
            this.mSuccess = false;
        }

        /* synthetic */ SaveTask(CollageActivity x0, AnonymousClass1 x1) {
            this();
        }

        protected File doInBackground(RenderData... params) {
            Object e;
            Throwable th;
            Object renderData = params[0];
            Log.d("CollageActivity", "begin save task %s", renderData);
            Bitmap bitmap = Bitmap.createBitmap(renderData.imageWidth, renderData.imageHeight, Config.ARGB_8888);
            CollageRender.doRender(new Canvas(bitmap), renderData);
            CharSequence stamp = DateFormat.format("yyyyMMdd_HHmmss", System.currentTimeMillis());
            String name = String.format(Locale.US, "IMG_%s.jpg", new Object[]{stamp});
            String parentPath = CollageResourcesManager.getCreativePath();
            File file = new File(parentPath);
            if (!file.exists()) {
                file.mkdirs();
            }
            Object file2 = new File(parentPath, name);
            this.mPath = file2.getPath();
            FileOutputStream out = null;
            try {
                FileOutputStream out2 = new FileOutputStream(file2);
                try {
                    bitmap.compress(CompressFormat.JPEG, 100, out2);
                    out2.flush();
                    MediaScanner.scanSingleFile(CollageActivity.this, file2.getPath());
                    MediaStoreUtils.insert(CollageActivity.this, (File) file2, 1);
                    this.mSuccess = true;
                    IoUtils.close(out2);
                    out = out2;
                } catch (IOException e2) {
                    e = e2;
                    out = out2;
                    try {
                        Log.d("CollageActivity", "save task IOException %s", e);
                        IoUtils.close(out);
                        Log.d("CollageActivity", "save task generate file %s", file2);
                        return file2;
                    } catch (Throwable th2) {
                        th = th2;
                        IoUtils.close(out);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    out = out2;
                    IoUtils.close(out);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                Log.d("CollageActivity", "save task IOException %s", e);
                IoUtils.close(out);
                Log.d("CollageActivity", "save task generate file %s", file2);
                return file2;
            }
            Log.d("CollageActivity", "save task generate file %s", file2);
            return file2;
        }

        protected void onPostExecute(File file) {
            if (this.mSuccess && !TextUtils.isEmpty(this.mPath)) {
                CollageActivity.this.gotoPhotoPage(this.mPath);
            }
            CollageActivity.this.setResult(-1);
            CollageActivity.this.finish();
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        WindowCompat.setCutoutModeShortEdges(getWindow());
        getWindow().setFlags(1024, 1024);
        SystemUiUtil.setDrawSystemBarBackground(getWindow());
        loadLocalResources();
        setContentView(R.layout.collage_main);
        findViews();
        initRecycler();
        resolveIntent();
    }

    public void onAttachedToWindow() {
        if (WindowCompat.isNotch(this)) {
            SystemUiUtil.extendToStatusBar(getWindow().getDecorView());
        }
    }

    private void resolveIntent() {
        Intent intent = getIntent();
        if (intent != null) {
            String extra = intent.getStringExtra("extra_assistant");
            if (TextUtils.isEmpty(extra)) {
                receiveImages(intent.getClipData());
                return;
            }
            String[] bitmaps = intent.getStringArrayExtra("extra_bitmaps");
            this.mAssistantExtra = extra;
            if (bitmaps == null || bitmaps.length == 0) {
                receiveImages(intent.getClipData());
            } else {
                receiveImages(bitmaps);
            }
        }
    }

    private void findViews() {
        this.mPosterLayout = (PosterLayout) findViewById(R.id.poster_layout);
        this.mCollageLayout = new CollageLayout(this);
        this.mPosterLayout.addView(this.mCollageLayout);
        this.mRecyclerView = (SimpleRecyclerView) findViewById(R.id.collage_layout_list);
        this.mMarginControl = (ImageView) findViewById(R.id.collage_margin_control);
        this.mMarginControlLayout = (ViewGroup) findViewById(R.id.collage_margin_control_layout);
        this.mMarginDividingView = findViewById(R.id.collage_margin_control_dividing);
        this.mPosterTitle = (RadioButton) findViewById(R.id.collage_title_poster);
        this.mLayoutTitle = (RadioButton) findViewById(R.id.collage_title_layout);
        this.mSave = (TextView) findViewById(R.id.collage_save);
        this.mCancel = (TextView) findViewById(R.id.collage_back);
        this.mDividingLineTitle = findViewById(R.id.collage_title_parent_dividing);
        this.mDividingLineList = findViewById(R.id.collage_menu_dividing);
        this.mMarginControlLayout.setOnClickListener(this);
        this.mPosterTitle.setOnClickListener(this);
        this.mLayoutTitle.setOnClickListener(this);
        this.mSave.setOnClickListener(this);
        this.mCancel.setOnClickListener(this);
        this.mPosterTitle.setChecked(true);
        this.mCollageLayout.setReplaceImageListener(this.mReplaceImageListener);
    }

    private void loadLocalResources() {
        this.mCollageResourcesManager = new CollageResourcesManager();
        this.mCollageResourcesManager.setResourcesUpdateListener(this.mResourcesUpdateListener);
        this.mCollageResourcesManager.loadLocalResAsync(getAssets());
    }

    private void initRecycler() {
        this.mPosterMenuAdapter = new PosterMenuAdapter(this, this.mPosterList, new Selector(getResources().getDrawable(R.drawable.collage_item_background_selector)));
        this.mLayoutMenuAdapter = new LayoutMenuAdapter(this, this.mLayoutList, new Selector(getResources().getDrawable(R.drawable.collage_item_background_selector)));
        this.mRecyclerView.setLayoutManager(new ScrollControlLinearLayoutManager(this, 0, false));
        this.mRecyclerView.setAdapter(this.mPosterMenuAdapter);
        this.mRecyclerView.addItemDecoration(new BlankDivider(getResources(), R.dimen.collage_menu_item_margin, 0));
        this.mPosterMenuAdapter.setOnItemClickListener(this.mOnItemClickListener);
        this.mLayoutMenuAdapter.setOnItemClickListener(this.mOnItemClickListener);
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mRecyclerView);
    }

    private void startPicker(int requestCode, int max) {
        Intent intent = new Intent(this, PickGalleryActivity.class);
        intent.setType("image/*");
        intent.putExtra("pick-upper-bound", max);
        startActivityForResult(intent, requestCode);
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        Log.d("CollageActivity", "onActivityResult");
        switch (requestCode) {
            case 0:
                switch (resultCode) {
                    case -1:
                        receiveImages(data.getClipData());
                        return;
                    default:
                        finish();
                        return;
                }
            case 1:
                switch (resultCode) {
                    case -1:
                        Uri uri = data.getData();
                        new DecodeBitmapTask(1).execute(new Uri[]{uri});
                        return;
                    default:
                        return;
                }
            default:
                return;
        }
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.collage_back /*2131886362*/:
                finish();
                return;
            case R.id.collage_save /*2131886363*/:
                onSave();
                return;
            case R.id.collage_margin_control_layout /*2131886365*/:
                CollageMargin[] margins = CollageMargin.values();
                CollageMargin next = margins[(this.mMargin.ordinal() + 1) % margins.length];
                this.mMarginControl.setImageResource(next.iconRes);
                this.mCollageLayout.setCollageMargin(next.marginSize);
                this.mMargin = next;
                return;
            case R.id.collage_title_poster /*2131886371*/:
                this.mPosterTitle.setChecked(true);
                if (!this.mIsPosterMode) {
                    toPosterMode();
                    return;
                }
                return;
            case R.id.collage_title_layout /*2131886372*/:
                this.mLayoutTitle.setChecked(true);
                if (this.mIsPosterMode) {
                    toLayoutMode();
                    return;
                }
                return;
            default:
                return;
        }
    }

    private void onSave() {
        Log.d("CollageActivity", "user click save button");
        if (this.mCollageLayout != null && !this.mCollageLayout.isActivating()) {
            LayoutModel layoutModel;
            this.mSave.setEnabled(false);
            showProgressDialog();
            PosterModel posterModel = null;
            if (this.mIsPosterMode) {
                posterModel = (PosterModel) this.mPosterList.get(this.mPosterIndex);
                layoutModel = this.mCollageResourcesManager.getPosterCollageLayout(posterModel, this.mCurrentImageSize);
            } else {
                layoutModel = (LayoutModel) this.mLayoutList.get(this.mLayoutIndex);
            }
            CollageRender.generateRenderData(this, posterModel, layoutModel, this.mCollageLayout, this.mPosterLayout, new GenerateRenderDataListener() {
                public void onFinish(RenderData renderData) {
                    new SaveTask(CollageActivity.this, null).execute(new RenderData[]{renderData});
                }
            });
        }
    }

    private void showProgressDialog() {
        this.mSaveProgressDialog = new ProgressDialog(this);
        this.mSaveProgressDialog.setMessage(getString(R.string.photo_editor_saving));
        this.mSaveProgressDialog.setCancelable(false);
        this.mSaveProgressDialog.setCanceledOnTouchOutside(false);
        this.mSaveProgressDialog.setIndeterminate(true);
        this.mSaveProgressDialog.show();
    }

    private void gotoPhotoPage(String path) {
        Intent intent = new Intent(this, ExternalPhotoPageActivity.class);
        intent.setData(Uri.fromFile(new File(path)));
        startActivity(intent);
    }

    private void receiveImages(ClipData clipData) {
        int count = Math.min(clipData.getItemCount(), 4);
        Uri[] uris = new Uri[count];
        for (int i = 0; i < count; i++) {
            uris[i] = clipData.getItemAt(i).getUri();
        }
        this.mCurrentImageSize = count;
        updateDataAndAdapter();
        decodeBitmapAsync(uris);
    }

    private void receiveImages(String[] bitmapPaths) {
        int count = Math.min(bitmapPaths.length, 4);
        Uri[] uris = new Uri[count];
        for (int i = 0; i < count; i++) {
            uris[i] = Uri.fromFile(new File(bitmapPaths[i]));
        }
        this.mCurrentImageSize = count;
        updateDataAndAdapter();
        decodeBitmapAsync(uris);
    }

    private void decodeBitmapAsync(Uri[] uris) {
        new DecodeBitmapTask(0).execute(uris);
    }

    private void onBitmapDecodeFinishAfterChoose(Bitmap[] bitmaps) {
        if (bitmaps != null && bitmaps.length > 0) {
            this.mCurrentImageSize = bitmaps.length;
            this.mBitmaps = bitmaps;
            onLoadBitmapFinish();
        }
    }

    private void onBitmapDecodeFinishAfterReplace(Bitmap[] bitmaps) {
        this.mCollageLayout.setSingleViewBitmap(this.mSingleChooseIndex, bitmaps[0]);
    }

    private void onLoadResFinish() {
        this.mIsResLoad = true;
        if (this.mIsBitmapLoad) {
            onResAndBitmapLoad();
        }
    }

    private void onLoadBitmapFinish() {
        this.mIsBitmapLoad = true;
        if (this.mIsResLoad) {
            onResAndBitmapLoad();
        }
    }

    private void onResAndBitmapLoad() {
        updateDataAndAdapter();
        if (TextUtils.isEmpty(this.mAssistantExtra)) {
            generatePosterLayout(this.mBitmaps);
        } else {
            new ResolveAssistantExtraTask(this, null).execute(new String[]{this.mAssistantExtra});
        }
        enableButton();
    }

    private void enableButton() {
        this.mPosterTitle.setEnabled(true);
        this.mLayoutTitle.setEnabled(true);
        this.mSave.setEnabled(true);
        this.mCancel.setEnabled(true);
    }

    private void updateDataAndAdapter() {
        this.mPosterMenuAdapter.setImageCount(this.mCurrentImageSize);
        if (this.mCurrentImageSize < 2) {
            this.mLayoutTitle.setVisibility(8);
        } else {
            this.mLayoutTitle.setVisibility(0);
        }
        this.mLayoutList.clear();
        List<LayoutModel> layoutList = this.mCollageResourcesManager.getLayoutListBySize(this.mCurrentImageSize);
        if (layoutList != null) {
            this.mLayoutList.addAll(layoutList);
        }
        this.mPosterList.clear();
        List<PosterModel> posterList = this.mCollageResourcesManager.getPosterListBySize(this.mCurrentImageSize);
        if (posterList != null) {
            this.mPosterList.addAll(posterList);
        }
        if (this.mIsPosterMode) {
            this.mPosterMenuAdapter.notifyDataSetChanged();
        } else {
            this.mLayoutMenuAdapter.notifyDataSetChanged();
        }
    }

    private void generatePosterLayout(Bitmap[] bitmaps) {
        PosterModel posterModel = (PosterModel) this.mPosterList.get(this.mPosterIndex);
        LayoutModel layoutModel = this.mCollageResourcesManager.getPosterCollageLayout(posterModel, this.mCurrentImageSize);
        if (layoutModel != null) {
            generateOriginLayout(layoutModel, bitmaps);
        }
        enablePosterModel(posterModel, false);
    }

    private void generateOriginLayout(LayoutModel layoutModel, Bitmap[] bitmaps) {
        if (layoutModel != null) {
            this.mCollageLayout.removeAllViews();
            LayoutItemModel[] layoutItemModels = layoutModel.items;
            for (int i = 0; i < layoutItemModels.length; i++) {
                LayoutItemModel layoutItemModel = layoutItemModels[i];
                CollageImageView collageImageView = new CollageImageView(this);
                if (i < this.mCurrentImageSize) {
                    collageImageView.setBitmap(bitmaps[i]);
                }
                this.mCollageLayout.addView(collageImageView, new LayoutParams(layoutItemModel.clipType, layoutItemModel.data));
            }
        }
    }

    private void toPosterMode() {
        this.mIsPosterMode = true;
        this.mRecyclerView.setAdapter(this.mPosterMenuAdapter);
        toggleViewVisible(false);
        enablePosterModel((PosterModel) this.mPosterList.get(this.mPosterIndex));
    }

    private void toLayoutMode() {
        this.mIsPosterMode = false;
        this.mRecyclerView.setAdapter(this.mLayoutMenuAdapter);
        toggleViewVisible(true);
        enableLayoutModel((LayoutModel) this.mLayoutList.get(this.mLayoutIndex));
    }

    private void toggleViewVisible(boolean visible) {
        int visibleFlagInvisible = 0;
        int visibleFlagGone = visible ? 0 : 8;
        if (!visible) {
            visibleFlagInvisible = 4;
        }
        this.mMarginControlLayout.setVisibility(visibleFlagGone);
        this.mMarginDividingView.setVisibility(visibleFlagGone);
        this.mDividingLineTitle.setVisibility(visibleFlagInvisible);
        this.mDividingLineList.setVisibility(visibleFlagInvisible);
    }

    private void enablePosterModel(PosterModel posterModel) {
        enablePosterModel(posterModel, true);
    }

    private void enablePosterModel(PosterModel posterModel, boolean refreshCollageLayout) {
        CollagePositionModel collagePositionModel = CollagePositionModel.getCollagePositionModelByImageSize(posterModel.collagePositions, this.mCurrentImageSize);
        setPosterModelToPosterLayout(posterModel);
        this.mCollageLayout.setLayoutParams(new PosterLayout.LayoutParams(collagePositionModel.position));
        this.mCollageLayout.setCollageMargin(collagePositionModel.margin);
        if (refreshCollageLayout) {
            refreshCollageLayout(this.mCollageResourcesManager.getPosterCollageLayout(posterModel, this.mCurrentImageSize));
        }
    }

    private void enableLayoutModel(LayoutModel layoutModel) {
        this.mPosterLayout.setRenderData(null);
        this.mCollageLayout.setLayoutParams(new PosterLayout.LayoutParams(PosterLayout.DEFAULT_LAYOUT_PARAMS));
        this.mCollageLayout.setCollageMargin(this.mMargin.marginSize);
        if (layoutModel != null) {
            refreshCollageLayout(layoutModel);
        }
    }

    private void setPosterModelToPosterLayout(PosterModel posterModel) {
        final int width = this.mPosterLayout.getWidth();
        final int height = this.mPosterLayout.getHeight();
        final PosterElementRender posterElementRender = new PosterElementRender();
        if (width == 0 || height == 0) {
            final PosterModel posterModel2 = posterModel;
            this.mPosterLayout.post(new Runnable() {
                public void run() {
                    ReadPosterDataTask readPosterDataTask = new ReadPosterDataTask(posterElementRender, width, height, CollageActivity.this);
                    readPosterDataTask.setLoadDataListener(new LoadDataListener() {
                        public void onLoadFinish() {
                            CollageActivity.this.mPosterLayout.setRenderData(posterElementRender);
                        }
                    });
                    readPosterDataTask.execute(new PosterModel[]{posterModel2});
                }
            });
            return;
        }
        ReadPosterDataTask readPosterDataTask = new ReadPosterDataTask(posterElementRender, width, height, this);
        readPosterDataTask.setLoadDataListener(new LoadDataListener() {
            public void onLoadFinish() {
                CollageActivity.this.mPosterLayout.setRenderData(posterElementRender);
            }
        });
        readPosterDataTask.execute(new PosterModel[]{posterModel});
    }

    private void refreshCollageLayout(LayoutModel layoutModel) {
        LayoutItemModel[] viewModels = layoutModel.items;
        int childCount = this.mCollageLayout.getChildCount();
        for (int i = 0; i < Math.min(viewModels.length, childCount); i++) {
            LayoutItemModel layoutItemModel = viewModels[i];
            this.mCollageLayout.getChildAt(i).setLayoutParams(new LayoutParams(layoutItemModel.clipType, layoutItemModel.data));
        }
    }

    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (ev.getAction() == 0 && this.mCollageLayout != null) {
            this.mCollageLayout.getGlobalVisibleRect(this.mRectTemp);
            if (!this.mRectTemp.contains(Math.round(ev.getX()), Math.round(ev.getY()))) {
                this.mCollageLayout.dismissControlWindow();
            }
        }
        return super.dispatchTouchEvent(ev);
    }

    public static void startPicker(Context context) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        intent.putExtra("pick-upper-bound", 4);
        intent.putExtra("pick_intent", new Intent(context, CollageActivity.class));
        intent.putExtra("pick_close_type", 3);
        intent.setPackage("com.miui.gallery");
        context.startActivity(intent);
    }

    protected void onDestroy() {
        if (this.mSaveProgressDialog != null) {
            this.mSaveProgressDialog.dismiss();
        }
        super.onDestroy();
    }
}
