package com.miui.extraphoto.refocus;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.Dialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.State;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.text.TextUtils;
import android.transition.ChangeBounds;
import android.transition.Transition;
import android.transition.Transition.TransitionListener;
import android.transition.TransitionSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import android.widget.Toast;
import com.miui.extraphoto.R;
import com.miui.extraphoto.common.utils.PermissionCheckHelper;
import com.miui.extraphoto.common.utils.PermissionCheckHelper.PermissionCheckCallback;
import com.miui.extraphoto.refocus.RefocusEffectManager.RefocusEffectConfig;
import com.miui.extraphoto.refocus.compat.ActivityCompat;
import com.miui.extraphoto.refocus.compat.ImageTransition;
import com.miui.extraphoto.refocus.compat.MenuTransition;
import com.miui.extraphoto.refocus.compat.SystemUiUtil;
import com.miui.extraphoto.refocus.compat.TransitionCompat;
import com.miui.extraphoto.refocus.compat.WindowCompat;
import com.miui.extraphoto.refocus.effect.RefocusEffectType;
import com.miui.extraphoto.refocus.utils.BrightnessManager;
import com.miui.extraphoto.refocus.widget.AlertDialogFragment;
import com.miui.extraphoto.refocus.widget.AlertDialogFragment.Callbacks;
import com.miui.extraphoto.refocus.widget.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.extraphoto.refocus.widget.recyclerview.SimpleRecyclerView.BlankDivider;
import com.miui.extraphoto.refocus.widget.recyclerview.SimpleRecyclerView.OnItemClickListener;
import com.miui.extraphoto.refocus.widget.recyclerview.overscroll.HorizontalOverScrollBounceEffectDecorator;
import java.io.File;
import java.util.List;
import miui.app.AlertDialog.Builder;
import miui.app.ProgressDialog;
import miui.view.animation.CubicEaseInOutInterpolator;
import miui.view.animation.CubicEaseOutInterpolator;

public class RefocusActivity extends Activity implements PermissionCheckCallback {
    public static final String EXTRA_HAS_TRANSITION = "extra_has_transition";
    public static final String EXTRA_PATH = "extra_path";
    public static final String EXTRA_PREVIEW_IMAGE_HEIGHT = "extra_preview_image_height";
    public static final String EXTRA_PREVIEW_IMAGE_MATRIX = "extra_preview_image_matrix";
    public static final String EXTRA_PREVIEW_IMAGE_WIDTH = "extra_preview_image_width";
    public static final String EXTRA_SCREEN_BRIGHTNESS = "extra_screen_brightness";
    public static final String PHOTO_EDIT_TYPE = "extra_photo_edit_type";
    public static final String PHOTO_EDIT_TYPE_REFOCUS = "extra_photo_editor_type_refocus";
    private static final String TAG = "RefocusActivity";
    public static final String TAG_TRANSITION_VIEW = "tag_transition_view";
    public static final String TAG_TRANSITION_VIEW_MENU = "tag_transition_view_menu";
    private BrightnessManager mBrightnessManager;
    private DisplayMode mDisplayMode = DisplayMode.REFOCUS_STATIC;
    private FrameLayout mDisplayWrapper;
    private View mExitButton;
    private ImageExif mImageExif;
    private LoadingDialog mLoadingDialog;
    private View mMenuGroup;
    private OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView recyclerView, View child, int position) {
            ScrollControlLinearLayoutManager.onItemClick(recyclerView, position);
            RefocusActivity.this.onSelectEffect(position);
            return true;
        }
    };
    private int mOriginBokehSize = -1;
    private String mPath;
    private PermissionCheckHelper mPermissionCheckHelper;
    private float mProgress = 0.0f;
    private RecyclerView mRecyclerView;
    private Callback mRefocusCallback = new Callback() {
        public void onInitFinish(Bitmap bitmap, int orientation, ImageExif imageExif) {
            RefocusActivity.this.mImageExif = imageExif;
            if (RefocusActivity.isRelightingMode(RefocusActivity.this.mImageExif, RefocusActivity.this.mRelightingEffectAdapter) && RefocusActivity.this.mResourceFinish) {
                RefocusActivity.this.resolveSoftPortraitResource(RefocusActivity.this.mImageExif);
                RefocusActivity.this.changeToRelightingMode(RefocusActivity.this.mImageExif, RefocusActivity.this.findCameraDefinedPosition(RefocusActivity.this.mImageExif.relightingType));
            }
            if (imageExif.bokehSize > 0) {
                RefocusActivity.this.mOriginBokehSize = Math.round(((float) imageExif.bokehSize) / 4.0f);
            } else {
                RefocusActivity.this.mOriginBokehSize = 0;
            }
            RefocusActivity.this.mProgress = ((float) RefocusActivity.this.mOriginBokehSize) / 36.0f;
            Matrix matrix = new Matrix();
            matrix.postRotate((float) RefocusManager.getDegreeByOrientation(orientation));
            Bitmap b = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (b != bitmap) {
                bitmap.recycle();
            }
            RefocusActivity.this.mSeekBar.setProgress(Math.round((((float) RefocusActivity.this.mOriginBokehSize) / 36.0f) * 100.0f));
            RefocusActivity.this.mTransitionManager.onImageLoad(b);
        }

        public void onSurfaceChanged() {
            if (!RefocusActivity.this.mSurfaceFinish) {
                RefocusActivity.this.mSurfaceFinish = true;
                RefocusActivity.this.notifyItemInit();
            }
        }

        public void onSurfaceReady() {
            RefocusActivity.this.mTransImageView.setVisibility(8);
        }

        public void onDecodeError() {
            Toast.makeText(RefocusActivity.this, R.string.refocus_photo_not_support, 0).show();
            RefocusActivity.this.finish();
        }

        public void onPreviewUpdate(Bitmap preview) {
            if (preview != null) {
                RefocusActivity.this.mTransImageView.setImageBitmap(preview);
                RefocusActivity.this.mTransImageView.setVisibility(0);
            }
        }

        public void onSave(Bitmap preview, String path, boolean video, String type, String explain) {
            Intent result = new Intent();
            result.setDataAndType(Uri.fromFile(new File(path)), video ? "video/mpeg4" : "image/jpeg");
            result.putExtra("save_type", type);
            result.putExtra("save_explain", explain);
            result.putExtra(RefocusActivity.PHOTO_EDIT_TYPE, RefocusActivity.PHOTO_EDIT_TYPE_REFOCUS);
            RefocusActivity.this.setResult(-1, result);
            RefocusActivity.this.onActivityFinish(true, preview);
        }

        public void onSaveCancel() {
            RefocusActivity.this.onActivityFinish(false);
        }

        public void onLoading() {
            if (RefocusActivity.this.mLoadingDialog != null) {
                RefocusActivity.this.mLoadingDialog.show(RefocusActivity.this.mRefocusView.getCenterXInWindow(), RefocusActivity.this.mRefocusView.getCenterYInWindow());
            }
        }

        public void onLoadingEnd() {
            if (RefocusActivity.this.mLoadingDialog != null) {
                RefocusActivity.this.mLoadingDialog.dismiss();
            }
        }

        public void onSaveStatusChange(boolean enable) {
            RefocusActivity.this.mSaveButton.setEnabled(enable);
        }

        public void onRelightingEffect() {
            if (RefocusActivity.this.mRelightingToast) {
                RefocusActivity.this.mRefocusView.showRelightingWindowByCurrentStatus();
                RefocusActivity.this.mRelightingToast = false;
            }
        }
    };
    private RefocusEffectAdapter mRefocusEffectAdapter;
    private List<RefocusEffectConfig> mRefocusEffectConfigs;
    private RefocusEffectManager mRefocusEffectManager;
    private RefocusView mRefocusView;
    private OnItemClickListener mRelightItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView recyclerView, View child, int position) {
            ScrollControlLinearLayoutManager.onItemClick(recyclerView, position);
            RefocusActivity.this.onSelectRelighting(position);
            return true;
        }
    };
    private RadioButton mRelightingButton;
    private OnClickListener mRelightingClickListener = new OnClickListener() {
        public void onClick(View v) {
            RefocusActivity.this.mSaveButton.setEnabled(false);
            RefocusActivity.this.mRecyclerView.setAdapter(RefocusActivity.this.mRelightingEffectAdapter);
            RefocusActivity.this.mRecyclerView.setVisibility(0);
            RefocusActivity.this.mSeekBar.setVisibility(4);
            RefocusActivity.this.onSelectRelighting(0);
            RefocusActivity.this.mRecyclerView.refreshDrawableState();
        }
    };
    private List<RefocusEffectConfig> mRelightingConfigs;
    private RelightingEffectAdapter mRelightingEffectAdapter;
    private boolean mRelightingToast = true;
    private RefocusRenderThread mRenderThread;
    private boolean mResourceFinish = false;
    private ViewGroup mRootView;
    private View mSaveButton;
    private ProgressDialog mSaveImageProgressDialog;
    private OnClickListener mSaveListener = new OnClickListener() {
        public void onClick(View v) {
            if (RefocusActivity.this.mDisplayMode == DisplayMode.REFOCUS_VIDEO) {
                RefocusActivity.this.mSaveOptionDialog.show();
            } else {
                RefocusActivity.this.doSave(false);
            }
        }
    };
    private Dialog mSaveOptionDialog;
    private SeekBar mSeekBar;
    private OnSeekBarChangeListener mSeekBarChangeListener = new OnSeekBarChangeListener() {
        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
            RefocusActivity.this.mProgress = ((float) progress) / 100.0f;
            RefocusActivity.this.mRenderThread.sendAdjustStatic(RefocusActivity.this.mProgress);
            RefocusActivity.this.refreshSaveButtonByProgress(progress);
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    };
    private RadioButton mStaticButton;
    private OnClickListener mStaticClickListener = new OnClickListener() {
        public void onClick(View v) {
            RefocusActivity.this.mSeekBar.setVisibility(0);
            RefocusActivity.this.mRecyclerView.setVisibility(4);
            RefocusActivity.this.mDisplayMode = DisplayMode.REFOCUS_STATIC;
            RefocusActivity.this.mRenderThread.sendStaticEffect(RefocusActivity.this.mStaticConfig, RefocusActivity.this.mProgress, true);
            RefocusActivity.this.refreshSaveButtonByProgress(RefocusActivity.this.mSeekBar.getProgress());
        }
    };
    private RefocusEffectConfig mStaticConfig;
    private boolean mSurfaceFinish = false;
    private ImageView mTransImageView;
    private TransitionManager mTransitionManager = new TransitionManager(this, null);
    private RadioButton mVideoButton;
    private OnClickListener mVideoClickListener = new OnClickListener() {
        public void onClick(View v) {
            RefocusActivity.this.mRecyclerView.setAdapter(RefocusActivity.this.mRefocusEffectAdapter);
            RefocusActivity.this.mRecyclerView.setVisibility(0);
            RefocusActivity.this.mSeekBar.setVisibility(4);
            RefocusActivity.this.mRecyclerView.scrollToPosition(0);
            RefocusActivity.this.onSelectEffect(0);
            RefocusActivity.this.mRecyclerView.refreshDrawableState();
        }
    };

    enum DisplayMode {
        REFOCUS_STATIC,
        REFOCUS_VIDEO,
        RELIGHTING
    }

    private class SaveDialogAdapter extends BaseAdapter {
        private SaveDialogAdapter() {
        }

        /* synthetic */ SaveDialogAdapter(RefocusActivity x0, AnonymousClass1 x1) {
            this();
        }

        public int getCount() {
            return 2;
        }

        public Object getItem(int position) {
            return null;
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            TextView textView;
            if (convertView == null) {
                convertView = View.inflate(RefocusActivity.this, R.layout.refocus_save_dialog_item, null);
                textView = (TextView) convertView.findViewById(R.id.refocus_save_text);
                convertView.setTag(textView);
            } else {
                textView = (TextView) convertView.getTag();
            }
            if (position == 0) {
                textView.setText(R.string.refocus_save_to_photo);
                textView.setOnClickListener(new OnClickListener() {
                    public void onClick(View v) {
                        RefocusActivity.this.doSave(false);
                        RefocusActivity.this.mSaveOptionDialog.dismiss();
                    }
                });
            } else {
                textView.setText(R.string.refocus_save_to_video);
                textView.setOnClickListener(new OnClickListener() {
                    public void onClick(View v) {
                        RefocusActivity.this.doSave(true);
                        RefocusActivity.this.mSaveOptionDialog.dismiss();
                    }
                });
            }
            return convertView;
        }
    }

    private class TransitionManager {
        private boolean mActivityPause;
        private boolean mDoTransition;
        private boolean mDuringTransition;
        private int mHeight;
        private Matrix mMatrix;
        private int mMenuOffset;
        private boolean mTransitionPostponed;
        private int mWidth;

        private TransitionManager() {
            this.mDoTransition = false;
            this.mMatrix = new Matrix();
            this.mDuringTransition = false;
            this.mActivityPause = false;
        }

        /* synthetic */ TransitionManager(RefocusActivity x0, AnonymousClass1 x1) {
            this();
        }

        void tryConfigTransitionMode(Bundle savedInstanceState) {
            SystemUiUtil.setDrawSystemBarBackground(RefocusActivity.this.getWindow());
            RefocusActivity.this.getWindow().setBackgroundDrawable(new ColorDrawable(-1));
            boolean z = false;
            if (WindowCompat.requestActivityTransition(RefocusActivity.this.getWindow()) && RefocusActivity.this.getIntent().getBooleanExtra(RefocusActivity.EXTRA_HAS_TRANSITION, false) && savedInstanceState == null) {
                z = true;
            }
            this.mDoTransition = z;
        }

        void onActivityCreated() {
            if (this.mDoTransition) {
                RefocusActivity.this.mTransImageView.setTransitionName(RefocusActivity.TAG_TRANSITION_VIEW);
                RefocusActivity.this.mMenuGroup.setTransitionName(RefocusActivity.TAG_TRANSITION_VIEW_MENU);
                this.mWidth = RefocusActivity.this.getIntent().getIntExtra(RefocusActivity.EXTRA_PREVIEW_IMAGE_WIDTH, 0);
                this.mHeight = RefocusActivity.this.getIntent().getIntExtra(RefocusActivity.EXTRA_PREVIEW_IMAGE_HEIGHT, 0);
                this.mMenuOffset = RefocusActivity.this.getResources().getDimensionPixelSize(R.dimen.refocus_menu_offset);
                this.mMatrix.setValues(RefocusActivity.this.getIntent().getFloatArrayExtra(RefocusActivity.EXTRA_PREVIEW_IMAGE_MATRIX));
                configureEnterTransition();
                ActivityCompat.postponeEnterTransition(RefocusActivity.this);
                this.mTransitionPostponed = true;
                this.mDuringTransition = true;
            }
        }

        void onImageLoad(Bitmap bitmap) {
            RefocusActivity.this.mTransImageView.setImageBitmap(bitmap);
            if (this.mDoTransition && this.mTransitionPostponed) {
                RefocusActivity.this.mTransImageView.setVisibility(0);
                ActivityCompat.startPostponedEnterTransition(RefocusActivity.this);
                this.mTransitionPostponed = false;
                this.mDuringTransition = true;
                return;
            }
            RefocusActivity.this.mStaticButton.setChecked(true);
            RefocusActivity.this.addRefocusView();
        }

        void onActivityResume() {
            this.mActivityPause = false;
            if (this.mDuringTransition && this.mDoTransition) {
                RefocusActivity.this.getWindow().setBackgroundDrawable(new ColorDrawable(-1));
            }
        }

        void onActivityPause() {
            this.mActivityPause = true;
            if (this.mDuringTransition && this.mDoTransition) {
                ActivityCompat.startPostponedEnterTransition(RefocusActivity.this);
                ActivityCompat.setEnterTransition(RefocusActivity.this, null);
                WindowCompat.setSharedElementEnterTransition(RefocusActivity.this.getWindow(), null);
                this.mDuringTransition = false;
                this.mTransitionPostponed = false;
                onEnterEnd();
            }
        }

        private void configureEnterTransition() {
            TransitionSet enter = new TransitionSet();
            ImageTransition imageEnter = new ImageTransition(true, this.mMatrix, this.mWidth, this.mHeight);
            imageEnter.setInterpolator(new CubicEaseInOutInterpolator());
            TransitionCompat.addTarget(imageEnter, RefocusActivity.TAG_TRANSITION_VIEW);
            MenuTransition menuTransition = new MenuTransition((float) this.mMenuOffset, true, 300, Callback.DEFAULT_DRAG_ANIMATION_DURATION, RefocusActivity.this.mMenuGroup.getY());
            menuTransition.setInterpolator(new CubicEaseInOutInterpolator());
            TransitionCompat.addTarget(menuTransition, RefocusActivity.TAG_TRANSITION_VIEW_MENU);
            enter.addTransition(imageEnter).addTransition(menuTransition).setDuration(400).addListener(new TransitionListener() {
                public void onTransitionStart(Transition transition) {
                }

                public void onTransitionEnd(Transition transition) {
                    TransitionManager.this.onEnterEnd();
                    TransitionManager.this.mDuringTransition = false;
                }

                public void onTransitionCancel(Transition transition) {
                }

                public void onTransitionPause(Transition transition) {
                }

                public void onTransitionResume(Transition transition) {
                }
            });
            WindowCompat.setSharedElementEnterTransition(RefocusActivity.this.getWindow(), enter);
        }

        void onExit(final boolean exported, Bitmap bitmap) {
            if (!this.mDoTransition || this.mActivityPause) {
                RefocusActivity.this.finish();
                return;
            }
            if (bitmap != null) {
                RefocusActivity.this.mTransImageView.setImageBitmap(bitmap);
            }
            RefocusActivity.this.mTransImageView.setVisibility(0);
            RefocusActivity.this.mTransImageView.post(new Runnable() {
                public void run() {
                    if (RefocusActivity.this.mRefocusView != null) {
                        RefocusActivity.this.mRefocusView.setVisibility(8);
                    }
                    TransitionManager.this.configureExitTransition(exported);
                    ActivityCompat.finishAfterTransition(RefocusActivity.this);
                    TransitionManager.this.mDuringTransition = true;
                }
            });
        }

        private void configureExitTransition(boolean exported) {
            TransitionSet exit = new TransitionSet();
            Transition imageExit = exported ? new ChangeBounds() : new ImageTransition(false, this.mMatrix, this.mWidth, this.mHeight);
            imageExit.setInterpolator(new CubicEaseOutInterpolator());
            imageExit.setDuration(300);
            TransitionCompat.addTarget(imageExit, RefocusActivity.TAG_TRANSITION_VIEW);
            MenuTransition menuTransition = new MenuTransition((float) this.mMenuOffset, false, 300, Callback.DEFAULT_DRAG_ANIMATION_DURATION, RefocusActivity.this.mMenuGroup.getY());
            menuTransition.setInterpolator(new CubicEaseOutInterpolator());
            TransitionCompat.addTarget(menuTransition, RefocusActivity.TAG_TRANSITION_VIEW_MENU);
            exit.addTransition(imageExit).addTransition(menuTransition).addListener(new TransitionListener() {
                public void onTransitionStart(Transition transition) {
                    if (RefocusActivity.this.mSaveImageProgressDialog != null && RefocusActivity.this.mSaveImageProgressDialog.isShowing()) {
                        RefocusActivity.this.mSaveImageProgressDialog.dismiss();
                    }
                }

                public void onTransitionEnd(Transition transition) {
                }

                public void onTransitionCancel(Transition transition) {
                }

                public void onTransitionPause(Transition transition) {
                }

                public void onTransitionResume(Transition transition) {
                }
            });
            WindowCompat.setSharedElementReturnTransition(RefocusActivity.this.getWindow(), exit);
        }

        private void onEnterEnd() {
            if (RefocusActivity.this.mDisplayWrapper.getChildCount() == 0) {
                RefocusActivity.this.addRefocusView();
            }
        }
    }

    public static void launch(Activity activity, String path, int requestCode, View shareView, int imageWidth, int imageHeight, float[] matrixValue) {
        Intent intent = new Intent(activity, RefocusActivity.class);
        intent.putExtra(EXTRA_PATH, path);
        if (imageWidth > 0 && imageHeight > 0 && matrixValue != null) {
            intent.putExtra(EXTRA_PREVIEW_IMAGE_WIDTH, imageWidth);
            intent.putExtra(EXTRA_PREVIEW_IMAGE_HEIGHT, imageHeight);
            intent.putExtra(EXTRA_PREVIEW_IMAGE_MATRIX, matrixValue);
            intent.putExtra(EXTRA_HAS_TRANSITION, true);
        }
        activity.startActivityForResult(intent, requestCode, ActivityOptions.makeSceneTransitionAnimation(activity, shareView, TAG_TRANSITION_VIEW).toBundle());
    }

    protected void onCreate(Bundle savedInstanceState) {
        com.miui.extraphoto.compat.WindowCompat.setCutoutModeShortEdges(getWindow());
        super.onCreate(savedInstanceState);
        this.mTransitionManager.tryConfigTransitionMode(savedInstanceState);
        setContentView(R.layout.refocus_layout_activity);
        this.mSeekBar = (SeekBar) findViewById(R.id.seek_bar);
        this.mStaticButton = (RadioButton) findViewById(R.id.type_static);
        this.mVideoButton = (RadioButton) findViewById(R.id.type_video);
        this.mRelightingButton = (RadioButton) findViewById(R.id.type_relighting);
        this.mSaveButton = findViewById(R.id.save);
        this.mRecyclerView = (RecyclerView) findViewById(R.id.recycler);
        this.mExitButton = findViewById(R.id.exit);
        this.mTransImageView = (ImageView) findViewById(R.id.target);
        this.mDisplayWrapper = (FrameLayout) findViewById(R.id.display_wrapper);
        this.mMenuGroup = findViewById(R.id.menu_group);
        this.mRootView = (ViewGroup) findViewById(R.id.whole_view);
        refreshSaveButtonByProgress(this.mSeekBar.getProgress());
        this.mTransitionManager.onActivityCreated();
        this.mPermissionCheckHelper = new PermissionCheckHelper(this, false, this);
        this.mPermissionCheckHelper.checkPermission();
        this.mExitButton.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                RefocusActivity.this.onBackPressed();
            }
        });
    }

    public void onCheckPermissionSucceed() {
        init();
    }

    public String[] getRuntimePermissions() {
        return new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"};
    }

    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        this.mPermissionCheckHelper.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    protected void onPause() {
        super.onPause();
        if (this.mRenderThread != null) {
            this.mRenderThread.sendPauseVideo();
        }
        this.mTransitionManager.onActivityPause();
        if (this.mBrightnessManager != null) {
            this.mBrightnessManager.onPause();
        }
    }

    protected void onResume() {
        super.onResume();
        this.mTransitionManager.onActivityResume();
        if (this.mBrightnessManager != null) {
            this.mBrightnessManager.onResume();
        }
    }

    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (this.mBrightnessManager != null) {
            this.mBrightnessManager.onWindowFocusChanged(hasFocus);
        }
    }

    private void init() {
        this.mPath = getIntent().getStringExtra(EXTRA_PATH);
        if (TextUtils.isEmpty(this.mPath)) {
            Toast.makeText(this, R.string.refocus_photo_not_support, 0).show();
            finish();
            return;
        }
        initScreenBrightness();
        initProgressDialog();
        initSaveOptionDialog();
        this.mLoadingDialog = new LoadingDialog(this);
        this.mRenderThread = new RefocusRenderThread(this.mPath, this, this.mRefocusCallback);
        this.mRenderThread.sendInitMsg();
        this.mRefocusEffectManager = new RefocusEffectManager();
        this.mRefocusEffectManager.loadEffectsAsync(getAssets(), new EffectLoadListener() {
            public void onEffectLoad(List<RefocusEffectConfig> refocusEffectConfigs, List<RefocusEffectConfig> relightingEffectConfigs, RefocusEffectConfig staticConfig) {
                RefocusActivity.this.mResourceFinish = true;
                RefocusActivity.this.mRefocusEffectConfigs = refocusEffectConfigs;
                RefocusActivity.this.mRelightingConfigs = relightingEffectConfigs;
                RefocusActivity.this.mStaticConfig = staticConfig;
                RefocusActivity.this.mRefocusEffectAdapter = new RefocusEffectAdapter(RefocusActivity.this.mRefocusEffectConfigs, RefocusActivity.this);
                RefocusActivity.this.mRelightingEffectAdapter = new RelightingEffectAdapter(RefocusActivity.this.mRelightingConfigs, RefocusActivity.this);
                RefocusActivity.this.mRefocusEffectAdapter.setOnItemClickListener(RefocusActivity.this.mOnItemClickListener);
                RefocusActivity.this.mRelightingEffectAdapter.setOnItemClickListener(RefocusActivity.this.mRelightItemClickListener);
                RefocusActivity.this.mRecyclerView.setLayoutManager(new ScrollControlLinearLayoutManager(RefocusActivity.this, 0, false));
                RefocusActivity.this.mRecyclerView.addItemDecoration(new BlankDivider(RefocusActivity.this.getResources(), R.dimen.refocus_menu_item_margin, 0) {
                    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, State state) {
                        super.getItemOffsets(outRect, view, parent, state);
                    }
                });
                RefocusActivity.this.mRecyclerView.setAdapter(RefocusActivity.this.mRefocusEffectAdapter);
                HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(RefocusActivity.this.mRecyclerView);
                RefocusActivity.this.notifyItemInit();
            }
        });
    }

    private void initScreenBrightness() {
        Intent intent = getIntent();
        if (intent != null) {
            float brightness = intent.getFloatExtra(EXTRA_SCREEN_BRIGHTNESS, -1.0f);
            if (brightness > 0.0f) {
                this.mBrightnessManager = new BrightnessManager(this, brightness);
            }
        }
    }

    private void initProgressDialog() {
        this.mSaveImageProgressDialog = new ProgressDialog(this);
        this.mSaveImageProgressDialog.setMessage(getString(R.string.refocus_saving));
        this.mSaveImageProgressDialog.setCancelable(false);
        this.mSaveImageProgressDialog.setCanceledOnTouchOutside(false);
        this.mSaveImageProgressDialog.setIndeterminate(true);
    }

    private void initSaveOptionDialog() {
        Builder builder = new Builder(this);
        builder.setAdapter(new SaveDialogAdapter(this, null), null).setTitle(R.string.refocus_save_title).setNegativeButton(17039360, null);
        this.mSaveOptionDialog = builder.create();
    }

    private void onSelectEffect(int position) {
        this.mRefocusEffectAdapter.setSelection(position);
        RefocusEffectConfig config = (RefocusEffectConfig) this.mRefocusEffectConfigs.get(position);
        if (config == null || config.type == RefocusEffectType.NONE) {
            this.mSaveButton.setEnabled(false);
        } else {
            this.mSaveButton.setEnabled(true);
        }
        this.mDisplayMode = DisplayMode.REFOCUS_VIDEO;
        this.mRenderThread.sendVideoEffectConfig(config);
    }

    private void onSelectRelighting(int position) {
        if (position == 0 || this.mRelightingEffectAdapter.getSelection() != position) {
            this.mRelightingEffectAdapter.setSelection(position);
            RefocusEffectConfig config = (RefocusEffectConfig) this.mRelightingConfigs.get(position);
            if (config == null || config.type == RefocusEffectType.NONE) {
                this.mSaveButton.setEnabled(false);
            }
            this.mDisplayMode = DisplayMode.RELIGHTING;
            this.mRenderThread.sendRelightingEffectConfig(config);
        }
    }

    private void addRefocusView() {
        this.mRefocusView = new RefocusView(this);
        this.mRefocusView.setRenderThread(this.mRenderThread);
        this.mRefocusView.setCallback(new Callback() {
            public DisplayMode getDisplayMode() {
                return RefocusActivity.this.mDisplayMode;
            }
        });
        this.mDisplayWrapper.addView(this.mRefocusView, new LayoutParams(-1, -1));
    }

    private void notifyItemInit() {
        if (this.mSurfaceFinish && this.mResourceFinish) {
            onAllInit();
        }
    }

    private void onAllInit() {
        this.mVideoButton.setEnabled(true);
        this.mRelightingButton.setEnabled(true);
        if (this.mImageExif != null) {
            if (isRelightingMode(this.mImageExif, this.mRelightingEffectAdapter)) {
                resolveSoftPortraitResource(this.mImageExif);
                int realRelightingPosition = findCameraDefinedPosition(this.mImageExif.relightingType);
                changeToRelightingMode(this.mImageExif, realRelightingPosition);
                onSelectRelighting(realRelightingPosition);
                this.mRecyclerView.scrollToPosition(realRelightingPosition);
            } else {
                this.mRenderThread.sendStaticEffect(this.mStaticConfig, this.mProgress, true);
            }
        }
        this.mSaveButton.setOnClickListener(this.mSaveListener);
        this.mSeekBar.setOnSeekBarChangeListener(this.mSeekBarChangeListener);
        this.mVideoButton.setOnClickListener(this.mVideoClickListener);
        this.mStaticButton.setOnClickListener(this.mStaticClickListener);
        this.mRelightingButton.setOnClickListener(this.mRelightingClickListener);
    }

    private void resolveSoftPortraitResource(ImageExif imageExif) {
        if (imageExif.isSoftBokeh) {
            RefocusEffectConfig target = null;
            for (RefocusEffectConfig refocusEffectConfig : this.mRelightingConfigs) {
                if (RefocusEffectManager.RELIGHTING_TYPE_NATURE.equals(refocusEffectConfig.relightingType)) {
                    target = refocusEffectConfig;
                    break;
                }
            }
            if (target != null) {
                this.mRelightingConfigs.remove(target);
            }
        }
    }

    private void changeToRelightingMode(ImageExif imageExif, int realRelightingPosition) {
        this.mSaveButton.setEnabled(false);
        this.mRecyclerView.setAdapter(this.mRelightingEffectAdapter);
        this.mRecyclerView.setVisibility(0);
        this.mSeekBar.setVisibility(4);
        this.mRelightingButton.setChecked(true);
        this.mRecyclerView.scrollToPosition(realRelightingPosition);
        if (imageExif.isSoftBokeh) {
            this.mStaticButton.setVisibility(8);
            this.mVideoButton.setVisibility(8);
        }
    }

    private void doSave(boolean video) {
        boolean z = true;
        this.mRefocusView.setPreventTouch(true);
        this.mSaveImageProgressDialog.show();
        File file = RefocusUtils.createFileForSave(new File(this.mPath).getParent(), video, this);
        if (video) {
            this.mRenderThread.sendSaveVideo(file.getAbsolutePath());
            return;
        }
        RefocusRenderThread refocusRenderThread = this.mRenderThread;
        String absolutePath = file.getAbsolutePath();
        if (this.mDisplayMode != DisplayMode.REFOCUS_VIDEO) {
            z = false;
        }
        refocusRenderThread.sendSaveImage(absolutePath, z);
    }

    private void refreshSaveButtonByProgress(int progress) {
        View view = this.mSaveButton;
        boolean z = (this.mRenderThread == null || this.mRenderThread.getCurrentBokehSize() == this.mOriginBokehSize) ? false : true;
        view.setEnabled(z);
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.mRenderThread != null) {
            this.mRenderThread.sendShutdown();
        }
        if (this.mSaveImageProgressDialog != null && this.mSaveImageProgressDialog.isShowing()) {
            this.mSaveImageProgressDialog.dismiss();
        }
    }

    public void onBackPressed() {
        if (this.mDisplayMode == DisplayMode.REFOCUS_STATIC) {
            if (this.mRenderThread.getCurrentBokehSize() != this.mOriginBokehSize) {
                showConfirmDialog();
            } else {
                onActivityFinish(false);
            }
        } else if (this.mRefocusEffectAdapter.getSelection() == 0 && this.mRelightingEffectAdapter.getSelection() == 0) {
            onActivityFinish(false);
        } else if (this.mSaveButton.isEnabled()) {
            showConfirmDialog();
        } else {
            onActivityFinish(false);
        }
    }

    private void onActivityFinish(boolean export, Bitmap bitmap) {
        this.mTransitionManager.onExit(export, bitmap);
    }

    private void onActivityFinish(boolean export) {
        this.mTransitionManager.onExit(export, null);
    }

    private void showConfirmDialog() {
        AlertDialogFragment dialogFragment = new AlertDialogFragment.Builder().setMessage(R.string.refocus_discard_confirm_message).setPositiveButton(R.string.refocus_discard_positive_btn).setNegativeButton(R.string.refocus_discard_negative_btn).setCancellable(true).build();
        dialogFragment.setCallbacks(new Callbacks() {
            public void onClick(AlertDialogFragment dialog, int which) {
                if (which == -1) {
                    if (RefocusActivity.this.mDisplayMode == DisplayMode.REFOCUS_VIDEO) {
                        RefocusActivity.this.mSaveOptionDialog.show();
                    } else {
                        RefocusActivity.this.doSave(false);
                    }
                } else if (which == -2) {
                    RefocusActivity.this.onActivityFinish(false);
                }
            }

            public void onCancel(AlertDialogFragment dialog) {
            }

            public void onDismiss(AlertDialogFragment dialog) {
            }
        });
        dialogFragment.showAllowingStateLoss(getFragmentManager(), "dialog_confirm");
    }

    private int findCameraDefinedPosition(int type) {
        for (int i = 0; i < this.mRelightingConfigs.size(); i++) {
            if (((RefocusEffectConfig) this.mRelightingConfigs.get(i)).cameraDefinedType == type) {
                return i;
            }
        }
        return 0;
    }

    private static boolean isRelightingMode(ImageExif imageExif, RelightingEffectAdapter relightingEffectAdapter) {
        return (imageExif == null || relightingEffectAdapter == null || imageExif.relightingType < 0) ? false : true;
    }
}
