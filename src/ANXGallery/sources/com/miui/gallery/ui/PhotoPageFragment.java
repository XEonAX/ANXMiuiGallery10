package com.miui.gallery.ui;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Fragment;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.RectF;
import android.net.Uri;
import android.nfc.NfcAdapter;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings.System;
import android.support.v4.content.LocalBroadcastManager;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.WindowManager;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;
import com.android.internal.WindowCompat;
import com.miui.extraphoto.sdk.ExtraPhotoWrapper;
import com.miui.extraphoto.sdk.ExtraPhotoWrapper.StartCallback;
import com.miui.extraphoto.sdk.refocus.RefocusSDK;
import com.miui.extraphoto.sdk.refocus.RefocusSDK.OnRefocusRecognizedListener;
import com.miui.gallery.Config.ScreenConfig;
import com.miui.gallery.R;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.compat.app.ActionBarCompat;
import com.miui.gallery.compat.app.ActivityCompat;
import com.miui.gallery.compat.view.ViewCompat;
import com.miui.gallery.data.CacheOfAllFacesInOnePhoto;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.BaseDataSet;
import com.miui.gallery.model.CloudItem;
import com.miui.gallery.model.FavoriteInfo;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.preference.GalleryPreferences.CTA;
import com.miui.gallery.preference.GalleryPreferences.Favorites;
import com.miui.gallery.preference.GalleryPreferences.FeatureGuidance;
import com.miui.gallery.projection.ConnectController;
import com.miui.gallery.projection.ConnectController.ConnectListener;
import com.miui.gallery.projection.DeviceListController;
import com.miui.gallery.projection.DeviceListController.OnItemClickListener;
import com.miui.gallery.projection.RemoteControlReceiver.RemoteControlListener;
import com.miui.gallery.projection.RemoteController;
import com.miui.gallery.scanner.MediaScanner;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureHandler;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.DeletionTask.OnDeletionCompleteListener;
import com.miui.gallery.ui.DownloadFragment.OnDownloadListener;
import com.miui.gallery.ui.PhotoPageFragmentBase.PhotoPageInteractionListener;
import com.miui.gallery.ui.PhotoPagerHelper.OnAlphaChangedListener;
import com.miui.gallery.ui.PhotoPagerHelper.OnDisplayRectChangedListener;
import com.miui.gallery.ui.PhotoPagerHelper.OnExitListener;
import com.miui.gallery.ui.PhotoPagerHelper.OnScaleChangedListener;
import com.miui.gallery.ui.PhotoPagerHelper.OnSingleTapListener;
import com.miui.gallery.util.BulkDownloadHelper.BulkDownloadItem;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.DocumentProviderUtils;
import com.miui.gallery.util.FileMimeUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.FormatUtil;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MatrixUtil;
import com.miui.gallery.util.MediaAndAlbumOperations.OnAddAlbumListener;
import com.miui.gallery.util.MediaAndAlbumOperations.OnCompleteListener;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.OrientationSensor;
import com.miui.gallery.util.OrientationSensor.OnOrientationChangedListener;
import com.miui.gallery.util.PhotoOperationsUtil;
import com.miui.gallery.util.PhotoPageOrientationHelper;
import com.miui.gallery.util.ReceiverUtils;
import com.miui.gallery.util.SlideWallpaperUtils;
import com.miui.gallery.util.SoundUtils;
import com.miui.gallery.util.SystemUiUtil;
import com.miui.gallery.util.TalkBackUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.UriUtil;
import com.miui.gallery.util.Utils;
import com.miui.gallery.util.WallpaperUtils;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.util.photoview.TileReusedBitCache;
import com.miui.gallery.util.uil.CloudImageLoader;
import com.miui.gallery.util.uil.CloudImageLoadingListener;
import com.miui.gallery.util.uil.CloudImageLoadingListenerAdapter;
import com.miui.gallery.util.uil.PhotoReusedBitCache;
import com.miui.gallery.video.editor.manager.SmartVideoGuideHelper;
import com.miui.gallery.video.editor.manager.SmartVideoGuideHelper.SmartVideoGuideListener;
import com.miui.gallery.video.editor.manager.SmartVideoJudgeManager;
import com.miui.gallery.video.editor.sdk.Build;
import com.miui.gallery.widget.IMultiThemeView;
import com.miui.gallery.widget.IMultiThemeView.Theme;
import com.miui.gallery.widget.IMultiThemeView.ThemeTransition;
import com.miui.gallery.widget.ViewPager;
import com.miui.gallery.widget.slip.VerticalSlipLayout;
import com.miui.gallery.widget.slip.VerticalSlipLayout.OnSlipListener;
import com.miui.privacy.LockSettingsHelper;
import com.nexstreaming.nexeditorsdk.nexEngine;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import miui.view.animation.CubicEaseOutInterpolator;
import miui.widget.GuidePopupWindow;

public class PhotoPageFragment extends PhotoPageFragmentBase {
    private boolean isFromCamera;
    private OnAlphaChangedListener mAlphaChangedListener = new OnAlphaChangedListener() {
        public void onAlphaChanged(float alpha) {
            if (PhotoPageFragment.this.isTransparentTheme() && PhotoPageFragment.this.mThemeManager != null) {
                PhotoPageFragment.this.mThemeManager.setBackgroundAlpha(alpha);
            }
        }
    };
    private boolean mAlwaysShowMenubar;
    private ChoiceManager mChoiceManager;
    private boolean mDataLoaded;
    private CloudImageLoadingListener mDownloadListener = new CloudImageLoadingListenerAdapter() {
        public void onLoadingFailed(Uri uri, DownloadType type, View view, ErrorCode code) {
            if (PhotoPageFragment.this.mActivity != null && CloudImageLoader.getInstance().isOrigin(type) && PhotoPageFragment.this.mMenuManager != null) {
                PhotoPageFragment.this.mMenuManager.refreshDownloadItem(true, true);
            }
        }

        public void onLoadingStarted(Uri uri, DownloadType type, View view) {
            if (CloudImageLoader.getInstance().isOrigin(type) && PhotoPageFragment.this.mMenuManager != null) {
                PhotoPageFragment.this.mMenuManager.refreshDownloadItem(true, false);
            }
        }

        public void onLoadingCancelled(Uri uri, DownloadType type, View view) {
            if (PhotoPageFragment.this.mActivity != null && CloudImageLoader.getInstance().isOrigin(type) && PhotoPageFragment.this.mMenuManager != null) {
                PhotoPageFragment.this.mMenuManager.refreshDownloadItem(true, true);
            }
        }

        public void onDownloadComplete(Uri uri, DownloadType type, View view, String filePath) {
            if (PhotoPageFragment.this.mActivity != null && CloudImageLoader.getInstance().isOrigin(type)) {
                if (PhotoPageFragment.this.mMenuManager != null) {
                    PhotoPageFragment.this.mMenuManager.refreshDownloadItem(false, false);
                }
                if (PhotoPageFragment.this.mDualCameraManager != null) {
                    PhotoPageFragment.this.mDualCameraManager.settleItem(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()));
                }
                if (PhotoPageFragment.this.mRefocusManager != null) {
                    PhotoPageFragment.this.mRefocusManager.updateItem(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()));
                }
            }
        }
    };
    private DualCameraManager mDualCameraManager;
    private EditorManager mEditorManager;
    private FavoritesManager mFavoritesManager;
    private boolean mFromRecommendFacePage;
    private boolean mHasSendDismissCast;
    private PhotoMaskManager mMaskManager;
    private MenuManager mMenuManager;
    private NFCManager mNFCManager;
    private boolean mNeedConfirmPassWord;
    private OnExitListener mOnExitListener = new OnExitListener() {
        public void onExit() {
            PhotoPageFragment.this.doExit();
        }
    };
    private OnDisplayRectChangedListener mOnPhotoMatrixChangeListener = new OnDisplayRectChangedListener() {
        public void onDisplayRectChanged(RectF rect) {
            if (!PhotoPageFragment.this.isExiting) {
                BaseDataItem currentItem = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
                if (!(currentItem == null || PhotoPageFragment.this.mProjectManager == null || !PhotoPageFragment.this.mProjectManager.isConnected())) {
                    PhotoPageFragment.this.mProjectManager.updateRemoteView(currentItem, rect);
                }
                if (PhotoPageFragment.this.mMaskManager != null) {
                    PhotoPageFragment.this.mMaskManager.refreshMask(false);
                }
            }
        }
    };
    private OnScaleChangedListener mOnPhotoScaleChangeListener = new OnScaleChangedListener() {
        public void onScaleChanged(float scaleFactor, float scale) {
            if (PhotoPageFragment.this.mChoiceManager != null) {
                PhotoPageFragment.this.mChoiceManager.onPhotoScale(scale);
            }
            if (PhotoPageFragment.this.isActionBarVisible() && scaleFactor > 1.0f && scale > 1.0f) {
                PhotoPageFragment.this.setActionBarVisible(false);
            }
        }
    };
    private OnSingleTapListener mOnSingleTapListener = new OnSingleTapListener() {
        public void onTap(float x, float y) {
            if (PhotoPageFragment.this.isPreviewMode()) {
                PhotoPageFragment.this.doExit();
            } else if (PhotoPageFragment.this.isActionBarVisible()) {
                PhotoPageFragment.this.setActionBarVisible(false);
            } else {
                PhotoPageFragment.this.setActionBarVisible(true);
                if (PhotoPageFragment.this.mUserShowBarIndex < 0) {
                    PhotoPageFragment.this.mUserShowBarIndex = PhotoPageFragment.this.mPager.getCurrentItem();
                }
            }
        }
    };
    private OrientationManager mOrientationManager;
    private PhotoRefreshReceiver mPhotoRefreshReceiver;
    private boolean mPreviewMode;
    private ProjectionManager mProjectManager;
    private RefocusManager mRefocusManager;
    private ScreenBroadcastReceiver mScreenReceiver;
    private boolean mShowSecretInAddDialog;
    private SmartVideoGuideManager mSmartVideoGuideManager;
    private boolean mStartWhenLocked;
    private boolean mStartWhenLockedAndSecret;
    private int mTheme = 0;
    private ThemeManager mThemeManager;
    private PhotoPageTopBar mTopBar;
    private int mUserShowBarIndex = -1;
    private VideoPlayerManager mVideoPlayerManager;
    private VoiceAssistantReceiver mVoiceAssistantReceiver;

    private static final class AccelerometerRotationChangedListener extends ContentObserver {
        private final WeakReference<OrientationManager> mManagerRef;

        public AccelerometerRotationChangedListener(Handler handler, OrientationManager manager) {
            super(handler);
            this.mManagerRef = new WeakReference(manager);
        }

        public void onChange(boolean selfChange) {
            OrientationManager manager = this.mManagerRef != null ? (OrientationManager) this.mManagerRef.get() : null;
            if (manager != null) {
                manager.onAccelerometerRotationChanged();
            }
        }
    }

    private class ChoiceManager extends ChoiceManagerBase implements OnSlipListener {
        private boolean mBarsVisibleBeforeSlip;
        private TextView mChoiceModeTitle;
        private boolean mIsInMultiWindow;
        private int mLastOrientation = 0;
        private Intent mShareTargetIntent = null;
        private VerticalSlipLayout mSlipLayout;
        private boolean mSlipPending;
        private Runnable mSlipRunnable;
        private int mSlipState;
        private boolean mSlipped;
        private boolean mSupportSend;

        ChoiceManager() {
            super();
            this.mSlipLayout = (VerticalSlipLayout) PhotoPageFragment.this.getView().findViewById(R.id.slip_layout);
            this.mSlipLayout.setOnSlipListener(this);
            this.mChoiceModeTitle = (TextView) PhotoPageFragment.this.getView().findViewById(R.id.choice_mode_title);
            this.mIsInMultiWindow = ActivityCompat.isInMultiWindowMode(PhotoPageFragment.this.mActivity);
            onUiOrientationChanged(PhotoPageFragment.this.getResources().getConfiguration());
            boolean isEnterInChoiceMode = PhotoPageFragment.this.getArguments().getBoolean("com.miui.gallery.extra.photo_enter_choice_mode", false);
            if (isEnterInChoiceMode) {
                this.mSlipLayout.setSlippedWhenEnter(true);
                PhotoPageFragment.this.getArguments().remove("com.miui.gallery.extra.photo_enter_choice_mode");
            }
            setUpChooserFragment(0, isEnterInChoiceMode);
        }

        public void initSelected(BaseDataSet set) {
            if (set != null && this.mSlipLayout.isSlipped()) {
                BaseDataItem item = set.getItem(null, set.getInitPosition());
                if (item != null) {
                    this.mChoiceMode.setChecked(set.getInitPosition(), item.getKey(), true);
                }
            }
        }

        public void settleItem(BaseDataItem item) {
            boolean z = true;
            if (item == null) {
                return;
            }
            if (this.mIsInMultiWindow || this.mLastOrientation == 1) {
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || PhotoPageFragment.this.isPreviewMode() || !PhotoOperationsUtil.isSupportedOptions(item.getSupportOperations(), 4)) {
                    z = false;
                }
                this.mSupportSend = z;
                this.mSlipLayout.setDraggable(this.mSupportSend);
            }
        }

        public void onPhotoScale(float scale) {
            boolean z = scale <= 1.0f && this.mSupportSend;
            trySetSlippable(z);
        }

        private void setChoiceTitleVisible(boolean visible) {
            int visibility = visible ? 0 : 8;
            if (visibility != this.mChoiceModeTitle.getVisibility()) {
                this.mChoiceModeTitle.setVisibility(visibility);
            }
        }

        public void setSlipped(boolean smooth) {
            if (this.mIsInMultiWindow || PhotoPageFragment.this.getResources().getConfiguration().orientation == 1) {
                if (this.mSupportSend) {
                    this.mSlipLayout.setDraggable(true);
                }
                this.mSlipLayout.setSlipped(smooth);
                return;
            }
            PhotoPageFragment.this.mActivity.setRequestedOrientation(1);
            this.mSlipPending = true;
            if (PhotoPageFragment.this.mOrientationManager != null) {
                PhotoPageFragment.this.mOrientationManager.setSensorEnable(false);
            }
        }

        public boolean isSlipped() {
            return this.mSlipLayout.isSlipped();
        }

        public void setUnSlipped(boolean smooth) {
            this.mSlipLayout.setUnSlipped(smooth);
        }

        public void trySetSlippable(boolean slippable) {
            if (this.mIsInMultiWindow || PhotoPageFragment.this.getResources().getConfiguration().orientation == 1) {
                this.mSlipLayout.setDraggable(slippable);
            } else {
                this.mSlipLayout.setDraggable(false);
            }
        }

        public void onUiOrientationChanged(Configuration newConfig) {
            if (newConfig.orientation != this.mLastOrientation) {
                if (!this.mIsInMultiWindow) {
                    setUnSlipped(false);
                    if (newConfig.orientation == 1) {
                        this.mSlipLayout.setDraggable(true);
                        if (this.mSlipPending) {
                            this.mSlipPending = false;
                            if (this.mSlipRunnable == null) {
                                this.mSlipRunnable = new Runnable() {
                                    public void run() {
                                        if (PhotoPageFragment.this.isAdded()) {
                                            ChoiceManager.this.setSlipped(true);
                                        }
                                    }
                                };
                            }
                            ThreadManager.getMainHandler().removeCallbacks(this.mSlipRunnable);
                            ThreadManager.getMainHandler().postDelayed(this.mSlipRunnable, 200);
                        }
                    } else {
                        this.mSlipLayout.setDraggable(false);
                    }
                }
                this.mLastOrientation = newConfig.orientation;
            }
        }

        public void onSlipStart() {
            if (!this.mSlipped) {
                onVisibilityChanged(true);
                this.mBarsVisibleBeforeSlip = PhotoPageFragment.this.isActionBarVisible();
                PhotoPageFragment.this.setActionBarVisible(false);
                this.mChoiceMode = PhotoPageFragment.this.mAdapter.startActionMode(this);
                setChoiceTitleVisible(true);
                if (PhotoPageFragment.this.mDualCameraManager != null) {
                    PhotoPageFragment.this.mDualCameraManager.tryChangeStereoBtnVisible(false);
                }
                if (PhotoPageFragment.this.mOrientationManager != null) {
                    PhotoPageFragment.this.mOrientationManager.clearAnim();
                }
                TalkBackUtil.requestAnnouncementEvent(this.mSlipLayout, PhotoPageFragment.this.getString(R.string.enter_choice_mode));
            }
        }

        public void onSlipping(float progress) {
        }

        public void onSlipEnd(boolean slipped) {
            this.mSlipped = slipped;
            if (slipped) {
                if (PhotoPageFragment.this.mOrientationManager != null) {
                    PhotoPageFragment.this.mOrientationManager.setSensorEnable(false);
                }
                PhotoPageFragment.this.mActivity.setRequestedOrientation(1);
                BaseDataItem item = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
                if (item != null) {
                    this.mChoiceMode.setChecked(PhotoPageFragment.this.mPager.getCurrentItem(), item.getKey(), true);
                }
                if (PhotoPageFragment.this.mDualCameraManager != null) {
                    PhotoPageFragment.this.mDualCameraManager.tryChangeStereoBtnVisible(false);
                }
                TalkBackUtil.requestAnnouncementEvent(this.mSlipLayout, PhotoPageFragment.this.getString(R.string.enter_choice_mode));
                GallerySamplingStatHelper.recordCountEvent("photo", "fast_share_mode_enter");
                if (this.mShareTargetIntent != null && item != null) {
                    if (this.mShareTargetIntent.getBooleanExtra("assistant_need_beauty", false) && (PhotoPageFragment.this.mPagerHelper.getCurrentItem() instanceof PhotoPageImageItem)) {
                        this.mChoiceMode.setRenderChecked(PhotoPageFragment.this.mPager.getCurrentItem(), item.getKey(), true);
                    }
                    PhotoPageFragment.this.mChoiceManager.onIntentSelected(this.mShareTargetIntent);
                    this.mShareTargetIntent = null;
                    return;
                }
                return;
            }
            onVisibilityChanged(false);
            setChoiceTitleVisible(false);
            this.mChoiceMode.unChooseAll();
            this.mChoiceMode.finish();
            if (PhotoPageFragment.this.mOrientationManager != null) {
                PhotoPageFragment.this.mOrientationManager.setSensorEnable(true);
                PhotoPageFragment.this.mOrientationManager.tryRestoreOrientation();
            }
            if (PhotoPageFragment.this.getArguments().getBoolean("com.miui.gallery.extra.show_menu_after_choice_mode", false)) {
                PhotoPageFragment.this.setActionBarVisible(true);
            }
            if (PhotoPageFragment.this.mDualCameraManager != null) {
                PhotoPageFragment.this.mDualCameraManager.tryChangeStereoBtnVisible(true);
            }
            PhotoPageFragment.this.setActionBarVisible(this.mBarsVisibleBeforeSlip);
            this.mBarsVisibleBeforeSlip = false;
            TalkBackUtil.requestAnnouncementEvent(this.mSlipLayout, PhotoPageFragment.this.getString(R.string.exit_choice_mode));
            GallerySamplingStatHelper.recordCountEvent("photo", "fast_share_mode_exit");
        }

        public void onSlipStateChanged(int state) {
            this.mSlipState = state;
            if (state != 1) {
                PhotoPageFragment.this.refreshTheme(true);
            }
        }

        public boolean isPendingSlipped() {
            return (this.mSlipState == 0 && isSlipped()) || this.mSlipPending || this.mBarsVisibleBeforeSlip || this.mSlipLayout.isFlingToSlipped();
        }

        public boolean onBackPressed() {
            if (!this.mSlipLayout.isSlipped()) {
                return false;
            }
            this.mSlipLayout.setUnSlipped(true);
            return true;
        }

        protected int getContainerId() {
            return R.id.child_container;
        }

        protected TextView getChoiceTitle() {
            return this.mChoiceModeTitle;
        }

        protected void onShared() {
            super.onShared();
            setUnSlipped(true);
        }

        public void onMultiWindowModeChanged(boolean isInMultiWindow) {
            if (isInMultiWindow) {
                this.mSlipLayout.setDraggable(true);
            }
            this.mIsInMultiWindow = isInMultiWindow;
        }

        public void release() {
            if (this.mSlipRunnable != null) {
                ThreadManager.getMainHandler().removeCallbacks(this.mSlipRunnable);
            }
        }

        void sendCurrentToShare(Intent target) {
            this.mShareTargetIntent = target;
            this.mSlipLayout.setSlipped(true);
        }
    }

    protected interface DownloadCallback {
        void downloadSuccess(String str, BaseDataItem baseDataItem);
    }

    private class DualCameraManager implements OnClickListener {
        private Animation mAppearAnim;
        private Animation mDisapperAnim;
        private ViewGroup mDualCameraEnter;
        private ExtraPhotoWrapper mDualWrapper;
        private int mParseState = -1;
        private AsyncTask mParseTask;
        private AsyncTask mSaveTask;

        class ParsePhotoTask extends AsyncTask<String, Void, Boolean> {
            ParsePhotoTask() {
            }

            protected Boolean doInBackground(String... params) {
                String path = params[0];
                if (!FileUtils.isFileExist(path)) {
                    return Boolean.valueOf(false);
                }
                boolean dualCamera = DualCameraManager.this.mDualWrapper.isExtraPhoto(path);
                if (isCancelled()) {
                    return Boolean.valueOf(false);
                }
                return Boolean.valueOf(dualCamera);
            }

            protected void onPostExecute(Boolean dualCamera) {
                if (!isCancelled()) {
                    DualCameraManager.this.mParseState = dualCamera.booleanValue() ? 1 : 0;
                    DualCameraManager.this.setStereoBtnVisible(dualCamera.booleanValue());
                }
            }
        }

        class SaveDualPhotoTask extends AsyncTask<String, Void, String> {
            SaveDualPhotoTask() {
            }

            protected void onPreExecute() {
            }

            protected String doInBackground(String... params) {
                MediaScanner.scanSingleFile(PhotoPageFragment.this.mActivity.getApplicationContext(), params[0]);
                return params[0];
            }

            protected void onPostExecute(String path) {
                if (!isCancelled()) {
                    BaseDataSet dataSet = PhotoPageFragment.this.mAdapter.getDataSet();
                    if (dataSet != null) {
                        dataSet.addNewFile(path, PhotoPageFragment.this.mPager.getCurrentItem() + 1);
                    }
                    PhotoPageFragment.this.getArguments().putString("photo_focused_path", path);
                    PhotoPageFragment.this.onContentChanged();
                }
            }
        }

        public DualCameraManager() {
            this.mDualCameraEnter = (ViewGroup) ((ViewStub) PhotoPageFragment.this.getView().findViewById(R.id.dualcamera_stub)).inflate().findViewById(R.id.dualcamera_enter);
            this.mDualWrapper = ExtraPhotoWrapper.getInstance();
        }

        private void resolveSupportFunc() {
            View view;
            int count = this.mDualCameraEnter.getChildCount();
            List<Integer> funcs = this.mDualWrapper.resolveExtraFuncs();
            List<View> needRemoveFuncs = new ArrayList();
            for (int i = 0; i < count; i++) {
                view = this.mDualCameraEnter.getChildAt(i);
                if (funcs.contains(Integer.valueOf(view.getId()))) {
                    view.setOnClickListener(this);
                } else {
                    needRemoveFuncs.add(view);
                }
            }
            for (View view2 : needRemoveFuncs) {
                this.mDualCameraEnter.removeView(view2);
            }
        }

        private Animation getAppearAnim() {
            if (this.mAppearAnim == null) {
                this.mAppearAnim = new AlphaAnimation(0.0f, 1.0f);
                this.mAppearAnim.setDuration(400);
                this.mAppearAnim.setInterpolator(new AccelerateInterpolator());
            }
            this.mAppearAnim.reset();
            return this.mAppearAnim;
        }

        private Animation getDisappearAnim() {
            if (this.mDisapperAnim == null) {
                this.mDisapperAnim = new AlphaAnimation(1.0f, 0.0f);
                this.mDisapperAnim.setDuration(300);
                this.mDisapperAnim.setInterpolator(new AccelerateInterpolator());
            }
            this.mDisapperAnim.reset();
            return this.mDisapperAnim;
        }

        private void appearView(View view, boolean anim) {
            view.setVisibility(0);
            view.setOnClickListener(this);
            if (anim) {
                view.clearAnimation();
                view.startAnimation(getAppearAnim());
            }
        }

        private void disappearView(View view, boolean anim) {
            view.setVisibility(8);
            view.setOnClickListener(null);
            if (anim) {
                view.clearAnimation();
                view.startAnimation(getDisappearAnim());
            }
        }

        public boolean isDualCamera() {
            return this.mDualWrapper.isExtraCamera();
        }

        public void clearAnim() {
            if (isDualCamera()) {
                for (Integer intValue : this.mDualWrapper.resolveExtraFuncs()) {
                    int id = intValue.intValue();
                    if (id != R.id.refocus_enter) {
                        View view = this.mDualCameraEnter.findViewById(id);
                        if (view != null) {
                            view.clearAnimation();
                        }
                    }
                }
            }
        }

        public void showMoreFuncExceptRefocus(boolean anim) {
            if (isDualCamera() && this.mDualCameraEnter.getVisibility() == 0) {
                for (Integer intValue : this.mDualWrapper.resolveExtraFuncs()) {
                    int id = intValue.intValue();
                    if (id != R.id.refocus_enter) {
                        View view = this.mDualCameraEnter.findViewById(id);
                        if (view != null) {
                            appearView(view, anim);
                        }
                    }
                }
            }
        }

        public void hideMoreFuncExceptRefocus(boolean anim) {
            if (isDualCamera() && this.mDualCameraEnter.getVisibility() == 0) {
                for (Integer intValue : this.mDualWrapper.resolveExtraFuncs()) {
                    int id = intValue.intValue();
                    if (id != R.id.refocus_enter) {
                        View view = this.mDualCameraEnter.findViewById(id);
                        if (view != null) {
                            disappearView(view, anim);
                        }
                    }
                }
            }
        }

        public void resume() {
            this.mDualWrapper.start(PhotoPageFragment.this.mActivity, new StartCallback() {
                public void onStarted(boolean success) {
                    if (DualCameraManager.this.isDualCamera()) {
                        DualCameraManager.this.resolveSupportFunc();
                        DualCameraManager.this.tryChangeStereoBtnVisible(success);
                        BaseDataItem item = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
                        if (success && item != null && FileMimeUtil.isImageFromMimeType(FileMimeUtil.getMimeType(item.getOriginalPath()))) {
                            PhotoPageFragment.this.mPagerHelper.onStart();
                        }
                    }
                }
            });
        }

        public void pause() {
            clearAnim();
            this.mDualWrapper.stop(PhotoPageFragment.this.mActivity);
        }

        public void onDestory() {
            cancelParseTask();
            if (this.mSaveTask != null) {
                this.mSaveTask.cancel(true);
                this.mSaveTask = null;
            }
        }

        private void sendParseTask(String path) {
            cancelParseTask();
            Log.d("PhotoPageFragment", "excute parse task %s", (Object) path);
            this.mParseTask = new ParsePhotoTask().execute(new String[]{path});
        }

        private void cancelParseTask() {
            if (this.mParseTask != null) {
                this.mParseTask.cancel(true);
                this.mParseTask = null;
                Log.d("PhotoPageFragment", "cancelParseTask");
            }
        }

        public void settleItem(BaseDataItem item) {
            this.mParseState = -1;
            if (isDualCamera()) {
                cancelParseTask();
                if (PhotoPageFragment.this.mChoiceManager != null && !PhotoPageFragment.this.mChoiceManager.isSlipped()) {
                    if (isExternalEnvOK(item) && isLightStereoPhoto(item)) {
                        sendParseTask(item.getOriginalPath());
                        return;
                    }
                    this.mParseState = 0;
                    setStereoBtnVisible(false);
                    return;
                }
                return;
            }
            setStereoBtnVisible(false);
        }

        public void updateItem(BaseDataItem item) {
            this.mParseState = -1;
        }

        private void setStereoBtnVisible(boolean visible) {
            clearAnim();
            if (visible) {
                if (this.mDualCameraEnter.getVisibility() != 0) {
                    this.mDualCameraEnter.setVisibility(0);
                }
                if (PhotoPageFragment.this.isActionBarVisible()) {
                    showMoreFuncExceptRefocus(false);
                }
            } else if (this.mDualCameraEnter.getVisibility() != 8) {
                this.mDualCameraEnter.setVisibility(8);
            }
        }

        public void tryChangeStereoBtnVisible(boolean visible) {
            if (isDualCamera()) {
                switch (this.mParseState) {
                    case -1:
                        if (visible) {
                            settleItem(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()));
                            return;
                        } else {
                            setStereoBtnVisible(visible);
                            return;
                        }
                    case 0:
                        if (!visible) {
                            setStereoBtnVisible(visible);
                            return;
                        }
                        return;
                    case 1:
                        setStereoBtnVisible(visible);
                        return;
                    default:
                        return;
                }
            }
        }

        private boolean isExternalEnvOK(BaseDataItem item) {
            if (!isDualCamera() || item == null) {
                return false;
            }
            return PhotoOperationsUtil.isSupportedOptions(item.getSupportOperations() & PhotoPageFragment.this.getArguments().getInt("support_operation_mask", -1), 512);
        }

        private boolean isLightStereoPhoto(BaseDataItem item) {
            return (item == null || TextUtils.isEmpty(item.getOriginalPath())) ? false : true;
        }

        public void onClick(View v) {
            if (isDualCamera() && this.mParseState == 1) {
                BaseDataItem photo = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
                if (photo != null) {
                    if (PhotoPageFragment.this.needDismissKeyGuard()) {
                        PhotoPageFragment.this.dismissKeyGuard();
                    }
                    switch (v.getId()) {
                        case R.id.fancycolor_enter /*2131886084*/:
                            IntentUtil.startFancyColorAction(photo, PhotoPageFragment.this, PhotoPageFragment.this.mStartWhenLocked);
                            GallerySamplingStatHelper.recordCountEvent("photo", "view_fancy_color");
                            return;
                        case R.id.freeview_enter /*2131886085*/:
                            IntentUtil.startFreeViewAction(photo, PhotoPageFragment.this, PhotoPageFragment.this.mStartWhenLocked);
                            GallerySamplingStatHelper.recordCountEvent("photo", "view_free_view");
                            return;
                        case R.id.refocus_enter /*2131886102*/:
                            IntentUtil.startRefocusAction(photo, PhotoPageFragment.this, PhotoPageFragment.this.mStartWhenLocked);
                            GallerySamplingStatHelper.recordCountEvent("photo", "view_refocus");
                            return;
                        default:
                            return;
                    }
                }
            }
        }

        public void onDualPhotoEdited(Intent data) {
            if (data != null) {
                Uri uri = data.getData();
                if (uri != null) {
                    if (!TextUtils.isEmpty("file".equals(uri.getScheme()) ? uri.getPath() : uri.getLastPathSegment())) {
                        if (this.mSaveTask != null) {
                            this.mSaveTask.cancel(true);
                        }
                        this.mSaveTask = new SaveDualPhotoTask().execute(new String[]{path});
                    }
                }
            }
        }
    }

    private class EditorManager {
        private boolean mEverStartedEditor;
        private Runnable mOnLoadTimeOut;
        private boolean mResultHandled;
        private long mStartTransition;
        private String mTargetFilePath;
        private long mTargetId;

        private EditorManager() {
            this.mTargetFilePath = null;
            this.mEverStartedEditor = false;
            this.mOnLoadTimeOut = new Runnable() {
                public void run() {
                    Log.w("PhotoPageFragment", "editor return to photo, image loading time out.");
                    EditorManager.this.finishTransition();
                }
            };
        }

        /* synthetic */ EditorManager(PhotoPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onStartEditor() {
            Log.d("PhotoPageFragment", "EditorManager.onStartEditor");
            this.mEverStartedEditor = true;
            if (isCurrentImageOverDisplayArea()) {
                PhotoPageFragment.this.hideActionBarView();
            }
        }

        public void onActivityReenter(Intent data) {
            Log.d("PhotoPageFragment", "Transition onActivityReenter %s", Boolean.valueOf(this.mEverStartedEditor));
            if (isExportedImageOverDisplayArea(data)) {
                PhotoPageFragment.this.hideActionBarView();
            } else {
                PhotoPageFragment.this.showActionBarView();
            }
            this.mTargetFilePath = null;
            this.mTargetId = 0;
            ImageLoader.getInstance().resume();
            this.mResultHandled = handleEditorResult(data);
            if (VERSION.SDK_INT <= 23 && !this.mEverStartedEditor) {
                Log.w("PhotoPageFragment", "Transition stop, because activity restart.");
            } else if (this.mResultHandled) {
                this.mStartTransition = System.currentTimeMillis();
                ActivityCompat.postponeEnterTransition(PhotoPageFragment.this.mActivity);
                ThreadManager.getMainHandler().postDelayed(this.mOnLoadTimeOut, 1500);
            }
        }

        public void onImageLoadFinish(String uri) {
            if (this.mTargetId > 0) {
                finishTransition();
            } else if (this.mTargetFilePath != null && uri != null && TextUtils.equals(Uri.parse(uri).getPath(), this.mTargetFilePath)) {
                finishTransition();
            }
        }

        private void finishTransition() {
            Log.d("PhotoPageFragment", "editor transition delay %s", Long.valueOf(System.currentTimeMillis() - this.mStartTransition));
            ThreadManager.getMainHandler().removeCallbacks(this.mOnLoadTimeOut);
            if (PhotoPageFragment.this.mActivity != null) {
                ActivityCompat.startPostponedEnterTransition(PhotoPageFragment.this.mActivity);
            }
            this.mTargetFilePath = null;
            this.mTargetId = 0;
        }

        public void onDestroy() {
            ThreadManager.getMainHandler().removeCallbacks(this.mOnLoadTimeOut);
        }

        public void onActivityResult(int resultCode, Intent data) {
            Log.d("PhotoPageFragment", "EditorManager.onActivityResult");
            PhotoPageFragment.this.showActionBarView();
            if (resultCode == -1) {
                if (!this.mResultHandled) {
                    handleEditorResult(data);
                    this.mTargetFilePath = null;
                    this.mTargetId = 0;
                }
                this.mResultHandled = false;
            }
        }

        private boolean isCurrentImageOverDisplayArea() {
            if (PhotoPageFragment.this.mPagerHelper != null) {
                RectF rectF = PhotoPageFragment.this.mPagerHelper.getCurItemDisplayRect();
                if (rectF != null) {
                    return isImageOverDisplayArea(rectF.width(), rectF.height());
                }
            }
            return false;
        }

        private boolean isExportedImageOverDisplayArea(Intent data) {
            if (data == null) {
                return false;
            }
            return isImageOverDisplayArea((float) data.getIntExtra("photo_edit_exported_width", 0), (float) data.getIntExtra("photo_edit_exported_height", 0));
        }

        private boolean isImageOverDisplayArea(float imageWidth, float imageHeight) {
            if (imageWidth <= 0.0f || imageHeight <= 0.0f || PhotoPageFragment.this.mMaskManager == null || PhotoPageFragment.this.mPager == null) {
                return false;
            }
            float imageRatio = imageHeight / imageWidth;
            if (imageRatio <= 1.34f) {
                return false;
            }
            float displayWidth = (float) PhotoPageFragment.this.mPager.getWidth();
            float displayHeight = (float) (PhotoPageFragment.this.mPager.getHeight() - (Math.max(PhotoPageFragment.this.mMaskManager.getSplitBarHeight(), PhotoPageFragment.this.mMaskManager.getTopBarHeight()) * 2));
            if (displayWidth <= 0.0f || displayHeight <= 0.0f || imageRatio <= displayHeight / displayWidth) {
                return false;
            }
            return true;
        }

        private boolean handleEditorResult(Intent data) {
            boolean handled = false;
            if (data != null) {
                long id = data.getLongExtra("photo_secret_id", 0);
                if (id > 0) {
                    this.mTargetId = id;
                    PhotoPageFragment.this.getArguments().putLong("photo_focused_id", id);
                    handled = true;
                } else {
                    Uri uri = data.getData();
                    if (uri != null) {
                        String path = uri.getLastPathSegment();
                        PhotoPagerSamplingStatHelper.onEditorSaved(Uri.parse("file://" + path));
                        if (!TextUtils.isEmpty(path)) {
                            BaseDataSet dataSet = PhotoPageFragment.this.mAdapter.getDataSet();
                            if (dataSet != null) {
                                dataSet.addNewFile(path, PhotoPageFragment.this.mPager.getCurrentItem() + 1);
                            }
                        }
                        this.mTargetFilePath = path;
                        PhotoPageFragment.this.getArguments().putString("photo_focused_path", path);
                        handled = true;
                    }
                }
                if (handled) {
                    PhotoPageFragment.this.onContentChanged();
                }
            }
            return handled;
        }
    }

    private class FavoritesManager {
        private OnCompleteListener mAddCompleteListener = new OnCompleteListener() {
            public void onComplete(long[] result) {
                if (PhotoPageFragment.this.activityAlive()) {
                    if (result == null || result[0] <= 0) {
                        FavoritesManager.this.refreshStatus();
                        ToastUtils.makeText(PhotoPageFragment.this.mActivity, (int) R.string.add_to_favorites_failed);
                    } else {
                        FavoritesManager.this.sendQueryTask(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()));
                        if (Favorites.isFirstTimeAddToFavorites()) {
                            ToastUtils.makeText(PhotoPageFragment.this.mActivity, (int) R.string.added_to_favorites_tip);
                        } else {
                            TalkBackUtil.requestAnnouncementEvent(PhotoPageFragment.this.mPager, PhotoPageFragment.this.mActivity.getResources().getString(R.string.added_to_favorites_desc));
                        }
                    }
                    FavoritesManager.this.mIsToggling = false;
                }
            }
        };
        private FavoriteInfo mFavoriteInfo;
        private boolean mIsToggling;
        private Menu mMenu;
        private AsyncTask mQueryTask;
        private OnCompleteListener mRemoveCompleteListener = new OnCompleteListener() {
            public void onComplete(long[] result) {
                if (PhotoPageFragment.this.activityAlive()) {
                    if (result == null || result[0] <= 0) {
                        FavoritesManager.this.refreshStatus();
                        ToastUtils.makeText(PhotoPageFragment.this.mActivity, (int) R.string.remove_from_favorites_failed);
                    } else {
                        FavoritesManager.this.sendQueryTask(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()));
                        TalkBackUtil.requestAnnouncementEvent(PhotoPageFragment.this.mPager, PhotoPageFragment.this.mActivity.getResources().getString(R.string.removed_from_favorites_desc));
                    }
                    FavoritesManager.this.mIsToggling = false;
                }
            }
        };

        class QueryTask extends AsyncTask<Void, Void, FavoriteInfo> {
            private BaseDataItem item;

            public QueryTask(BaseDataItem item) {
                this.item = item;
            }

            protected FavoriteInfo doInBackground(Void... params) {
                if (isCancelled() || this.item == null) {
                    return null;
                }
                return this.item.getFavoriteInfo(FavoritesManager.this.usingStrictMode());
            }

            protected void onPostExecute(FavoriteInfo info) {
                if (!isCancelled()) {
                    this.item = null;
                    FavoritesManager.this.mFavoriteInfo = info;
                    FavoritesManager.this.refreshStatus();
                }
            }
        }

        public FavoritesManager(Menu menu) {
            this.mMenu = menu;
            if (PhotoPageFragment.this.mAdapter != null) {
                sendQueryTask(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()));
            }
        }

        public void updateItem(BaseDataItem item) {
            this.mFavoriteInfo = null;
            sendQueryTask(item);
        }

        public void show() {
        }

        public void hide() {
        }

        public void onDestroy() {
            cancelQueryTask();
            this.mAddCompleteListener = null;
            this.mRemoveCompleteListener = null;
        }

        private void sendQueryTask(BaseDataItem item) {
            if (this.mQueryTask == null || item != ((QueryTask) this.mQueryTask).item) {
                cancelQueryTask();
                this.mQueryTask = new QueryTask(item).execute(new Void[0]);
            }
        }

        private void cancelQueryTask() {
            if (this.mQueryTask != null) {
                this.mQueryTask.cancel(true);
                this.mQueryTask = null;
            }
        }

        private void setFavoriteChecked(boolean checked) {
            MenuItem favorite = this.mMenu.findItem(R.id.action_favorite);
            if (favorite != null && favorite.isChecked() != checked) {
                favorite.setChecked(checked);
            }
        }

        private void setFavoriteVisible(boolean visible) {
            MenuItem favorite = this.mMenu.findItem(R.id.action_favorite);
            if (favorite != null && favorite.isVisible() != visible) {
                favorite.setVisible(visible);
            }
        }

        public void toggle() {
            boolean z = true;
            if (this.mIsToggling) {
                Log.d("PhotoPageFragment", "skip frequent toggle");
            } else if (PhotoPageFragment.this.isProcessingMedia(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()))) {
                ToastUtils.makeText(PhotoPageFragment.this.mActivity, (int) R.string.operate_processing_file_error);
            } else {
                MenuItem menuItem = this.mMenu.findItem(R.id.action_favorite);
                if (menuItem != null) {
                    this.mIsToggling = true;
                    boolean originalChecked = menuItem.isChecked();
                    if (originalChecked) {
                        z = false;
                    }
                    setFavoriteChecked(z);
                    BaseDataSet dataSet = PhotoPageFragment.this.mAdapter.getDataSet();
                    if (dataSet == null) {
                        return;
                    }
                    if (originalChecked) {
                        dataSet.removeFromFavorites(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.mPager.getCurrentItem(), this.mRemoveCompleteListener);
                        GallerySamplingStatHelper.recordCountEvent("favorites", "remove_from_favorites");
                        return;
                    }
                    dataSet.addToFavorites(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.mPager.getCurrentItem(), this.mAddCompleteListener);
                    GallerySamplingStatHelper.recordCountEvent("favorites", "add_to_favorites");
                }
            }
        }

        public void refreshStatus() {
            if (this.mFavoriteInfo == null || !this.mFavoriteInfo.isFavoriteUsable()) {
                setFavoriteVisible(false);
                return;
            }
            setFavoriteVisible(true);
            setFavoriteChecked(this.mFavoriteInfo.isFavorite());
        }

        private boolean usingStrictMode() {
            return !PhotoPageFragment.this.isFromCamera;
        }
    }

    private class MenuManager {
        private final int ORDER_IMAGE = 0;
        private final int ORDER_UNKNOWN = -1;
        private final int ORDER_VIDEO = 1;
        private Menu mMenu;
        private int mOperationMask;
        private int mOrder = -1;

        MenuManager(Menu menu, int operationMask) {
            this.mMenu = menu;
            this.mOperationMask = operationMask;
        }

        public void onMenuItemClick(MenuItem item) {
            int id = item.getItemId();
            final BaseDataItem current = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
            if (current != null) {
                if (PhotoPageFragment.this.needDismissKeyGuard() && isOperationWithoutKeyGuard(id)) {
                    PhotoPageFragment.this.dismissKeyGuard();
                }
                String eventCategory = PhotoPageFragment.this.getItemClickEventCategory(current);
                BaseDataSet dataSet;
                MenuItem downloadItem;
                switch (id) {
                    case R.id.action_send /*2131886807*/:
                        if (!PhotoPageFragment.this.prohibitOperateProcessingItem(current)) {
                            if (PhotoPageFragment.this.mChoiceManager != null) {
                                PhotoPageFragment.this.mChoiceManager.setSlipped(true);
                            }
                            GallerySamplingStatHelper.recordCountEvent(eventCategory, "send");
                            return;
                        }
                        return;
                    case R.id.action_delete /*2131886808*/:
                        doDelete(PhotoPageFragment.this.mPager.getCurrentItem());
                        GallerySamplingStatHelper.recordCountEvent(eventCategory, "delete_photo");
                        return;
                    case R.id.action_edit /*2131886815*/:
                        if (!PhotoPageFragment.this.prohibitOperateProcessingItem(current)) {
                            if (IntentUtil.startEditAction(current, PhotoPageFragment.this.mActivity, PhotoPageFragment.this) && PhotoPageFragment.this.mEditorManager != null) {
                                PhotoPageFragment.this.mEditorManager.onStartEditor();
                            }
                            GallerySamplingStatHelper.recordCountEvent(eventCategory, current.isVideo() ? "edit_video" : "edit_photo");
                            return;
                        }
                        return;
                    case R.id.action_favorite /*2131886816*/:
                        if (PhotoPageFragment.this.mFavoritesManager != null) {
                            PhotoPageFragment.this.mFavoritesManager.toggle();
                            return;
                        }
                        return;
                    case R.id.action_save /*2131886817*/:
                        current.save(PhotoPageFragment.this.mActivity, new SaveUriDialogFragment.OnCompleteListener() {
                            public void onComplete(String savePath) {
                                int stringId = R.string.photo_page_save_uri_image_ok;
                                if (TextUtils.isEmpty(savePath)) {
                                    stringId = R.string.photo_page_save_uri_image_fail;
                                } else {
                                    MenuManager.this.setMenuItemVisibility(R.id.action_save, false);
                                }
                                DialogUtil.showInfoDialog(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.mActivity.getResources().getString(stringId), null);
                            }
                        });
                        GallerySamplingStatHelper.recordCountEvent(eventCategory, "save_photo");
                        return;
                    case R.id.action_add_cloud /*2131886818*/:
                        if (!PhotoPageFragment.this.prohibitOperateProcessingItem(current)) {
                            dataSet = PhotoPageFragment.this.mAdapter.getDataSet();
                            if (dataSet != null) {
                                dataSet.addToAlbum(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.mPager.getCurrentItem(), true, PhotoPageFragment.this.mShowSecretInAddDialog, new OnAddAlbumListener() {
                                    public void onComplete(long[] result, boolean deleteOrigin) {
                                        if (deleteOrigin && result != null && result[0] > 0) {
                                            PhotoPageFragment.this.onContentChanged();
                                        }
                                    }
                                });
                            }
                            GallerySamplingStatHelper.recordCountEvent(eventCategory, "add_to_album");
                            return;
                        }
                        return;
                    case R.id.action_remove_secret /*2131886819*/:
                        dataSet = PhotoPageFragment.this.mAdapter.getDataSet();
                        if (dataSet != null) {
                            dataSet.removeFromSecret(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.mPager.getCurrentItem(), new OnCompleteListener() {
                                public void onComplete(long[] result) {
                                    if (result != null && result[0] > 0) {
                                        PhotoPageFragment.this.onContentChanged();
                                    }
                                }
                            });
                        }
                        GallerySamplingStatHelper.recordCountEvent(eventCategory, "remove_from_secret");
                        return;
                    case R.id.action_cast /*2131886820*/:
                        if (PhotoPageFragment.this.mProjectManager != null) {
                            PhotoPageFragment.this.mProjectManager.projectClicked();
                            GallerySamplingStatHelper.recordCountEvent(eventCategory, "project_photo");
                            return;
                        }
                        return;
                    case R.id.action_set_wallpaper /*2131886821*/:
                        if (!PhotoPageFragment.this.prohibitOperateProcessingItem(current)) {
                            downloadItem = this.mMenu.findItem(R.id.action_download_original);
                            if (downloadItem == null || !downloadItem.isVisible()) {
                                setWallpaper(current.getContentUriForExternal(), current.getMimeType());
                            } else {
                                DialogUtil.showInfoDialog(PhotoPageFragment.this.mActivity, (int) R.string.set_as_wallpaper_description, (int) R.string.set_as_wallpaper_title, (int) R.string.yes, (int) R.string.no, new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialog, int which) {
                                        PhotoPageFragment.this.downloadOrigin(current, new DownloadCallback() {
                                            public void downloadSuccess(String path, BaseDataItem item) {
                                                MenuManager.this.setWallpaper(path);
                                            }
                                        });
                                    }
                                }, new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialog, int which) {
                                        MenuManager.this.setWallpaper(current.getContentUriForExternal(), current.getMimeType());
                                    }
                                });
                            }
                            GallerySamplingStatHelper.recordCountEvent(eventCategory, "set_wallpaper_click");
                            return;
                        }
                        return;
                    case R.id.action_set_slide_wallpaper /*2131886822*/:
                        if (!PhotoPageFragment.this.prohibitOperateProcessingItem(current)) {
                            downloadItem = this.mMenu.findItem(R.id.action_download_original);
                            if (downloadItem == null || !downloadItem.isVisible()) {
                                setSlideWallpaper(current.getContentUriForExternal(), current instanceof CloudItem ? ((CloudItem) current).getSha1() : null);
                            } else {
                                DialogUtil.showInfoDialog(PhotoPageFragment.this.mActivity, (int) R.string.set_as_slide_wallpaper_description, (int) R.string.set_as_slide_wallpaper_title, (int) R.string.yes, (int) R.string.no, new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialog, int which) {
                                        PhotoPageFragment.this.downloadOrigin(current, new DownloadCallback() {
                                            public void downloadSuccess(String path, BaseDataItem item) {
                                                MenuManager.this.setSlideWallpaper(item.getContentUriForExternal(), item instanceof CloudItem ? ((CloudItem) item).getSha1() : null);
                                            }
                                        });
                                    }
                                }, new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialog, int which) {
                                        MenuManager.this.setSlideWallpaper(current.getContentUriForExternal(), current instanceof CloudItem ? ((CloudItem) current).getSha1() : null);
                                    }
                                });
                            }
                            GallerySamplingStatHelper.recordCountEvent(eventCategory, "set_slide_wallpaper_click");
                            return;
                        }
                        return;
                    case R.id.action_play_slideshow /*2131886823*/:
                        if (PhotoPageFragment.this.mProjectManager == null || !PhotoPageFragment.this.mProjectManager.isConnected()) {
                            PhotoPageFragment.this.getArguments().putInt("photo_init_position", PhotoPageFragment.this.mPager.getCurrentItem());
                            BaseDataItem dataItem = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
                            if (dataItem != null) {
                                String path;
                                if (TextUtils.isEmpty(dataItem.getOriginalPath())) {
                                    path = dataItem.getThumnailPath();
                                } else {
                                    path = dataItem.getOriginalPath();
                                }
                                PhotoPageFragment.this.getArguments().putParcelable("photo_transition_data", new ImageLoadParams(dataItem.getKey(), path, null, null, PhotoPageFragment.this.mPager.getCurrentItem(), dataItem.getMimeType(), dataItem.getSecretKey(), dataItem.getSize()));
                            }
                            SlideShowFragment.showSlideShowFragment(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.getArguments());
                        } else {
                            PhotoPageFragment.this.mProjectManager.enterSlideShow(PhotoPageFragment.this.mPager.getCurrentItem());
                        }
                        GallerySamplingStatHelper.recordCountEvent(eventCategory, "play_slide_show");
                        return;
                    case R.id.action_download_original /*2131886824*/:
                        PhotoPageFragment.this.downloadOrigin();
                        GallerySamplingStatHelper.recordCountEvent(eventCategory, "download_origin");
                        return;
                    case R.id.action_details /*2131886825*/:
                        IntentUtil.gotoPhotoDetailPage(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()), PhotoPageFragment.this.mStartWhenLocked);
                        GallerySamplingStatHelper.recordCountEvent(eventCategory, "view_detail");
                        return;
                    default:
                        return;
                }
            }
        }

        private void setWallpaper(String originPath) {
            if (FileUtils.isFileExist(originPath)) {
                setWallpaper(Uri.fromFile(new File(originPath)), FileMimeUtil.getMimeType(originPath));
                return;
            }
            onGetWallpaperFileFailed();
        }

        private void setWallpaper(Uri originUri, String mimeType) {
            if (originUri == null) {
                onGetWallpaperFileFailed();
                return;
            }
            WallpaperUtils.setWallPapers(PhotoPageFragment.this.mActivity, originUri, mimeType);
            GallerySamplingStatHelper.recordCountEvent("photo", "set_as_wallpaper");
        }

        private void setSlideWallpaper(Uri originUri, String sha1) {
            if (originUri == null) {
                onGetWallpaperFileFailed();
                return;
            }
            SlideWallpaperUtils.setSlideWallpaper(PhotoPageFragment.this.mActivity, originUri, sha1);
            GallerySamplingStatHelper.recordCountEvent("photo", "set_as_slidewallpaper");
        }

        private void onGetWallpaperFileFailed() {
            ToastUtils.makeText(PhotoPageFragment.this.mActivity, (int) R.string.set_wallpaper_get_image_failed);
        }

        private boolean isOperationWithoutKeyGuard(int id) {
            return id == R.id.action_send || id == R.id.action_edit || id == R.id.action_set_wallpaper || id == R.id.action_add_cloud;
        }

        private void doDelete(int position) {
            BaseDataSet dataSet = PhotoPageFragment.this.mAdapter.getDataSet();
            BaseDataItem current = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
            if (dataSet != null && current != null) {
                dataSet.delete(PhotoPageFragment.this.mActivity, position, new OnDeletionCompleteListener() {
                    public void onDeleted(int count, long[] deleteIds) {
                        if (PhotoPageFragment.this.mActivity != null) {
                            if (count > 0) {
                                SoundUtils.playSoundForOperation(PhotoPageFragment.this.mActivity, 0);
                            } else if (count == -112) {
                                DocumentProviderUtils.startExtSDCardPermissionActivityForResult(PhotoPageFragment.this.getActivity());
                            }
                            PhotoPageFragment.this.onContentChanged();
                        }
                    }
                });
            }
        }

        public void settleItem(BaseDataItem item) {
            configMenu(item);
        }

        private void configMenu(BaseDataItem item) {
            boolean z = true;
            if (item != null) {
                boolean z2;
                if (!PhotoPageFragment.this.isPreviewMode()) {
                    if (item.isVideo()) {
                        if (this.mOrder != 1) {
                            makeVideoOrder();
                            this.mOrder = 1;
                        }
                    } else if (this.mOrder != 0) {
                        makeImageOrder();
                        this.mOrder = 0;
                    }
                }
                int supportOptions = item.getSupportOperations() & this.mOperationMask;
                setMenuItemVisibility(R.id.action_delete, PhotoOperationsUtil.isSupportedOptions(supportOptions, 1));
                setMenuItemVisibility(R.id.action_save, PhotoOperationsUtil.isSupportedOptions(supportOptions, nexEngine.ExportHEVCHighTierLevel52));
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, 512)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                setMenuItemVisibility(R.id.action_edit, z2);
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, 4)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                setMenuItemVisibility(R.id.action_send, z2);
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, 32)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                setMenuItemVisibility(R.id.action_set_wallpaper, z2);
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, 2048)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                setMenuItemVisibility(R.id.action_set_slide_wallpaper, z2);
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, nexEngine.ExportHEVCMainTierLevel6)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                setMenuItemVisibility(R.id.action_add_cloud, z2);
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, nexEngine.ExportHEVCMainTierLevel52)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                setMenuItemVisibility(R.id.action_play_slideshow, z2);
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, nexEngine.ExportHEVCMainTierLevel62)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                setMenuItemVisibility(R.id.action_remove_secret, z2);
                refreshDownloadItem(getDownloadOriginTitle(item), PhotoOperationsUtil.isSupportedOptions(supportOptions, 256), true);
                PhotoPageFragment photoPageFragment = PhotoPageFragment.this;
                if (PhotoPageFragment.this.mStartWhenLockedAndSecret || !PhotoOperationsUtil.isSupportedOptions(supportOptions, nexEngine.ExportHEVCHighTierLevel61)) {
                    z = false;
                }
                photoPageFragment.mShowSecretInAddDialog = z;
                if (PhotoPageFragment.this.mProjectManager == null) {
                    refreshCastItem(null, false, false);
                } else {
                    PhotoPageFragment.this.mProjectManager.refreshProjectState();
                }
            }
        }

        private void refreshDownloadItem(String title, boolean visible, boolean enable) {
            MenuItem item = this.mMenu.findItem(R.id.action_download_original);
            if (item != null) {
                if (!(TextUtils.isEmpty(title) || title.equals(item.getTitle()))) {
                    item.setTitle(title);
                }
                if (item.isVisible() != visible) {
                    item.setVisible(visible);
                }
                if (item.isEnabled() != enable) {
                    item.setEnabled(enable);
                }
            }
        }

        void refreshCastItem(String title, boolean visible, boolean enable) {
            MenuItem item = this.mMenu.findItem(R.id.action_cast);
            if (item != null) {
                if (!(TextUtils.isEmpty(title) || TextUtils.equals(title, item.getTitle()))) {
                    item.setTitle(Html.fromHtml(title));
                }
                if (item.isVisible() != visible) {
                    item.setVisible(visible);
                }
                if (item.isEnabled() != enable) {
                    item.setEnabled(enable);
                }
            }
        }

        private void setMenuItemVisibility(int id, boolean visible) {
            MenuItem item = this.mMenu.findItem(id);
            if (item != null && item.isVisible() != visible) {
                item.setVisible(visible);
            }
        }

        private void makeImageOrder() {
            this.mMenu.removeItem(R.id.action_edit);
            this.mMenu.add(0, R.id.action_edit, 2, R.string.operation_edit).setIcon(R.drawable.button_beautify_light);
            this.mMenu.findItem(R.id.action_edit).setShowAsAction(2);
            this.mMenu.removeItem(R.id.action_add_cloud);
            this.mMenu.add(0, R.id.action_add_cloud, 5, R.string.operation_add_album).setIcon(R.drawable.button_new_light).setShowAsAction(2);
        }

        private void makeVideoOrder() {
            this.mMenu.removeItem(R.id.action_edit);
            if (Build.supportVideoEditor()) {
                this.mMenu.add(0, R.id.action_edit, 2, R.string.operation_edit_video).setIcon(R.drawable.button_beautify_light);
                this.mMenu.findItem(R.id.action_edit).setShowAsAction(2);
            }
            this.mMenu.removeItem(R.id.action_add_cloud);
            this.mMenu.add(0, R.id.action_add_cloud, 4, R.string.operation_add_album).setIcon(R.drawable.button_new_light).setShowAsAction(2);
        }

        public void refreshDownloadItem(boolean visible, boolean enable) {
            BaseDataItem item = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
            if (item != null) {
                refreshDownloadItem(getDownloadOriginTitle(item), visible, enable);
            }
        }

        private String getDownloadOriginTitle(BaseDataItem item) {
            if (item == null) {
                return null;
            }
            return PhotoPageFragment.this.getResources().getString(R.string.image_download_item_title, new Object[]{FormatUtil.formatFileSize(PhotoPageFragment.this.mActivity, item.getSize())});
        }
    }

    private static class NFCManager {
        private NfcUpdateTask mUpdateTask;

        private static class NfcUpdateTask implements Runnable {
            private WeakReference<Activity> mActivityRef;
            private NfcAdapter mNfcAdapter;
            private BaseDataItem mUpdateItem;

            public NfcUpdateTask(Activity activity) {
                this.mActivityRef = new WeakReference(activity);
            }

            private NfcAdapter getNfcAdapter() {
                Activity activity = (Activity) this.mActivityRef.get();
                if (activity != null && this.mNfcAdapter == null) {
                    try {
                        this.mNfcAdapter = NfcAdapter.getDefaultAdapter(activity.getApplicationContext());
                    } catch (Throwable e) {
                        Log.e("PhotoPageFragment", e);
                    }
                }
                return this.mNfcAdapter;
            }

            void updateItem(BaseDataItem item) {
                if (item != null) {
                    this.mUpdateItem = item;
                    ThreadManager.getWorkHandler().removeCallbacks(this);
                    ThreadManager.getWorkHandler().post(this);
                }
            }

            public final void run() {
                Activity activity = (Activity) this.mActivityRef.get();
                NfcAdapter adapter = getNfcAdapter();
                if (activity != null && adapter != null) {
                    if (!TextUtils.isEmpty(this.mUpdateItem.getPathDisplayBetter())) {
                        try {
                            adapter.setBeamPushUris(new Uri[]{Uri.fromFile(new File(this.mUpdateItem.getPathDisplayBetter()))}, activity);
                        } catch (Throwable e) {
                            Log.w("PhotoPageFragment", e);
                        }
                    }
                }
            }

            public void release() {
                ThreadManager.getWorkHandler().removeCallbacks(this);
                this.mActivityRef.clear();
                this.mNfcAdapter = null;
            }
        }

        NFCManager(Activity activity) {
            this.mUpdateTask = new NfcUpdateTask(activity);
        }

        public void settleItem(BaseDataItem item) {
            if (this.mUpdateTask != null) {
                this.mUpdateTask.updateItem(item);
            }
        }

        public void release() {
            if (this.mUpdateTask != null) {
                this.mUpdateTask.release();
                this.mUpdateTask = null;
            }
        }
    }

    private static final class OrientationChangedListener implements OnOrientationChangedListener {
        private final WeakReference<OrientationManager> mManagerRef;

        public OrientationChangedListener(OrientationManager manager) {
            this.mManagerRef = new WeakReference(manager);
        }

        public void onOrientationChanged(int oldOrientation, int newOrientation) {
            OrientationManager manager = this.mManagerRef != null ? (OrientationManager) this.mManagerRef.get() : null;
            if (manager != null) {
                manager.onSensorOrientationChanged(oldOrientation, newOrientation);
            }
        }
    }

    private class OrientationManager implements OnClickListener {
        private boolean isOrientationLocked = false;
        private ContentObserver mAccelerometerRotationObserver;
        private Animation mAppearAnim;
        private Runnable mClickDismissRunnable;
        private int mCurUiOrientation = 0;
        private Animation mDisappearAnim;
        private Runnable mDismissLockRunnable;
        private boolean mIsInMultiWindow;
        private int mMarginHorizontal;
        private View mOrientationLock;
        private OrientationSensor mOrientationSensor;
        private boolean mPendingUnLock = false;
        private boolean mSensorEnable = true;
        private int mSensorRotation = -1;
        private Runnable mShowLockRunnable;
        final /* synthetic */ PhotoPageFragment this$0;

        OrientationManager(PhotoPageFragment photoPageFragment) {
            boolean z = true;
            this.this$0 = photoPageFragment;
            this.mOrientationLock = ((ViewStub) photoPageFragment.getView().findViewById(R.id.lock_stub)).inflate().findViewById(R.id.orientation_lock);
            this.mOrientationLock.setOnClickListener(this);
            this.mCurUiOrientation = photoPageFragment.getResources().getConfiguration().orientation;
            this.mOrientationSensor = new OrientationSensor(photoPageFragment.mActivity);
            int lockStatus = photoPageFragment.isFromCamera() ? 2 : PhotoPageOrientationHelper.getInstance().getLockStatus();
            this.mIsInMultiWindow = ActivityCompat.isInMultiWindowMode(photoPageFragment.mActivity);
            switch (lockStatus) {
                case 0:
                    this.isOrientationLocked = true;
                    int lockRotation = PhotoPageOrientationHelper.getInstance().getRotation();
                    int uiRotation = ((WindowManager) photoPageFragment.mActivity.getSystemService("window")).getDefaultDisplay().getRotation();
                    photoPageFragment.mActivity.setRequestedOrientation(getScreenOrientation(lockRotation));
                    if (lockRotation != uiRotation) {
                        showLockDelay();
                        return;
                    }
                    return;
                case 1:
                    if (System.getInt(photoPageFragment.mActivity.getContentResolver(), "accelerometer_rotation", 0) != 0) {
                        z = false;
                    }
                    this.isOrientationLocked = z;
                    tryRestoreOrientation();
                    return;
                case 2:
                    this.isOrientationLocked = false;
                    photoPageFragment.mActivity.setRequestedOrientation(4);
                    return;
                default:
                    return;
            }
        }

        void onAccelerometerRotationChanged() {
            if (this.this$0.mActivity == null) {
                Log.e("PhotoPageFragment", "activity has detached AccelerometerRotationChanged");
                return;
            }
            int accelerometerRotation = System.getInt(this.this$0.mActivity.getContentResolver(), "accelerometer_rotation", 0);
            Log.d("PhotoPageFragment", "onAccelerometerRotationChanged %d", Integer.valueOf(accelerometerRotation));
            if (accelerometerRotation == 0) {
                lock();
            } else {
                unlock();
            }
        }

        private int getScreenOrientation(int rotation) {
            switch (rotation) {
                case 0:
                    return 1;
                case 1:
                    return 0;
                case 2:
                    return 9;
                case 3:
                    return 8;
                default:
                    return 2;
            }
        }

        private void showLockInternal() {
            adjustLockPos();
            if (this.mOrientationLock.getVisibility() != 0) {
                if (this.mAppearAnim == null) {
                    this.mAppearAnim = AnimationUtils.loadAnimation(this.this$0.mActivity, R.anim.orientation_lock_appear);
                }
                this.mOrientationLock.setSelected(this.isOrientationLocked);
                clearAnim();
                this.mOrientationLock.startAnimation(this.mAppearAnim);
                this.mOrientationLock.setVisibility(0);
            }
            dismissLockDelay();
        }

        private void dismissLockInternal() {
            if (this.mOrientationLock.getVisibility() == 0) {
                if (this.mDisappearAnim == null) {
                    this.mDisappearAnim = AnimationUtils.loadAnimation(this.this$0.mActivity, R.anim.orientation_lock_disappear);
                }
                clearAnim();
                this.mOrientationLock.startAnimation(this.mDisappearAnim);
                this.mOrientationLock.setVisibility(8);
            }
        }

        private void dismissLockDelay() {
            if (this.mDismissLockRunnable == null) {
                this.mDismissLockRunnable = new Runnable() {
                    public void run() {
                        if (OrientationManager.this.this$0.mActivity != null) {
                            OrientationManager.this.dismissLockInternal();
                        }
                    }
                };
            }
            clearAnimRunnable();
            ThreadManager.getMainHandler().postDelayed(this.mDismissLockRunnable, 3000);
        }

        private void clearAnimRunnable() {
            if (this.mDismissLockRunnable != null) {
                ThreadManager.getMainHandler().removeCallbacks(this.mDismissLockRunnable);
            }
            if (this.mShowLockRunnable != null) {
                ThreadManager.getMainHandler().removeCallbacks(this.mShowLockRunnable);
            }
            if (this.mClickDismissRunnable != null) {
                ThreadManager.getMainHandler().removeCallbacks(this.mClickDismissRunnable);
            }
        }

        private void showLockDelay() {
            if (this.mShowLockRunnable == null) {
                this.mShowLockRunnable = new Runnable() {
                    public void run() {
                        if (OrientationManager.this.this$0.mActivity != null) {
                            OrientationManager.this.showLockInternal();
                        }
                    }
                };
            }
            clearAnimRunnable();
            ThreadManager.getMainHandler().postDelayed(this.mShowLockRunnable, 500);
        }

        private void clearAnim() {
            if (this.mOrientationLock.getAnimation() != null) {
                this.mOrientationLock.getAnimation().setAnimationListener(null);
            }
            this.mOrientationLock.clearAnimation();
        }

        void release() {
            clearAnimRunnable();
            clearAnim();
            disableOrientationSensor();
            disableAccelerometerRotationObserver();
        }

        private void enableOrientationSensor() {
            if (this.mSensorEnable && this.this$0.isResumed() && this.mOrientationSensor != null && !this.mOrientationSensor.isEnabled()) {
                Log.d("PhotoPageFragment", "enableOrientationSensor");
                this.mOrientationSensor.setOrientationChangedListener(new OrientationChangedListener(this));
                this.mOrientationSensor.enable();
            }
        }

        private void disableOrientationSensor() {
            dismissLockInternal();
            if (this.mOrientationSensor != null && this.mOrientationSensor.isEnabled()) {
                Log.d("PhotoPageFragment", "disableOrientationSensor");
                this.mOrientationSensor.setOrientationChangedListener(null);
                this.mOrientationSensor.disable();
            }
        }

        private void enableAccelerometerRotationObserver() {
            if (this.this$0.isResumed() && this.mAccelerometerRotationObserver == null) {
                Log.d("PhotoPageFragment", "enableAccelerometerRotationObserver");
                this.mAccelerometerRotationObserver = new AccelerometerRotationChangedListener(ThreadManager.getMainHandler(), this);
                this.this$0.mActivity.getContentResolver().registerContentObserver(System.getUriFor("accelerometer_rotation"), true, this.mAccelerometerRotationObserver);
            }
        }

        private void disableAccelerometerRotationObserver() {
            if (this.mAccelerometerRotationObserver != null) {
                Log.d("PhotoPageFragment", "disableAccelerometerRotationObserver");
                this.this$0.mActivity.getContentResolver().unregisterContentObserver(this.mAccelerometerRotationObserver);
                this.mAccelerometerRotationObserver = null;
            }
        }

        void setSensorEnable(boolean enable) {
            this.mSensorEnable = enable;
            if (!this.this$0.isResumed()) {
                return;
            }
            if (this.mSensorEnable) {
                enableOrientationSensor();
            } else {
                disableOrientationSensor();
            }
        }

        void tryRestoreOrientation() {
            if (this.isOrientationLocked) {
                this.this$0.mActivity.setRequestedOrientation(getScreenOrientation(PhotoPageOrientationHelper.getInstance().getRotation()));
            } else {
                this.this$0.mActivity.setRequestedOrientation(4);
            }
        }

        void resume() {
            enableOrientationSensor();
            enableAccelerometerRotationObserver();
        }

        void pause() {
            disableOrientationSensor();
            disableAccelerometerRotationObserver();
        }

        void onSensorOrientationChanged(int last, int cur) {
            if (this.this$0.mActivity == null) {
                Log.e("PhotoPageFragment", "activity has detached onOrientationChanged oldOrientation %d, newOrientation %d", Integer.valueOf(last), Integer.valueOf(cur));
                return;
            }
            this.mSensorRotation = OrientationSensor.transfer2SurfaceRotation(cur);
            Log.d("PhotoPageFragment", "onSensorOrientationChanged old %s, new %s", Integer.valueOf(last), Integer.valueOf(cur));
            if (this.mSensorEnable && last != cur && !this.mIsInMultiWindow && this.isOrientationLocked) {
                showLockInternal();
            }
        }

        void onUiOrientationChanged(Configuration newConfig) {
            if (this.mCurUiOrientation != newConfig.orientation) {
                this.mCurUiOrientation = newConfig.orientation;
                if (this.mSensorEnable && !this.mIsInMultiWindow) {
                    if (this.mPendingUnLock) {
                        this.mPendingUnLock = false;
                        ToastUtils.makeText(this.this$0.mActivity, (int) R.string.orientation_unlock_tip);
                        return;
                    }
                    dismissLockInternal();
                    showLockDelay();
                }
            }
        }

        private int getMarginHorizontal() {
            if (this.mMarginHorizontal == 0) {
                this.mMarginHorizontal = this.this$0.getResources().getDimensionPixelSize(R.dimen.orientation_lock_margin);
            }
            return this.mMarginHorizontal;
        }

        private int getMarginVertical() {
            return getMarginHorizontal() + ViewCompat.getSystemWindowInsetBottom(this.this$0.mActivity.getWindow().getDecorView());
        }

        private boolean adjustLockPos() {
            int rotation = ((WindowManager) this.this$0.mActivity.getSystemService("window")).getDefaultDisplay().getRotation();
            if (!this.isOrientationLocked && this.mSensorRotation != rotation) {
                return false;
            }
            LayoutParams lp = (LayoutParams) this.mOrientationLock.getLayoutParams();
            switch (rotation) {
                case 0:
                    if (this.this$0.mDualCameraManager != null && this.this$0.mDualCameraManager.isDualCamera()) {
                        lp.gravity = 49;
                        lp.setMargins(0, getMarginHorizontal(), 0, 0);
                        break;
                    }
                    lp.gravity = 81;
                    lp.setMargins(0, 0, 0, getMarginVertical());
                    break;
                case 1:
                    if (this.this$0.mDualCameraManager != null && this.this$0.mDualCameraManager.isDualCamera()) {
                        lp.gravity = 19;
                        lp.setMargins(getMarginHorizontal(), 0, 0, 0);
                        break;
                    }
                    lp.gravity = 21;
                    lp.setMargins(0, 0, getMarginHorizontal(), 0);
                    break;
                case 2:
                    lp.gravity = 49;
                    lp.setMargins(0, getMarginVertical(), 0, 0);
                    break;
                case 3:
                    if (this.this$0.mDualCameraManager != null && this.this$0.mDualCameraManager.isDualCamera()) {
                        lp.gravity = 21;
                        lp.setMargins(0, 0, getMarginHorizontal(), 0);
                        break;
                    }
                    lp.gravity = 19;
                    lp.setMargins(getMarginHorizontal(), 0, 0, 0);
                    break;
            }
            this.mOrientationLock.setLayoutParams(lp);
            return true;
        }

        private void showClickAnim(final AnimationListener listener) {
            float alpha = 1.0f;
            float scale = 1.0f;
            Transformation obj = MiscUtil.invokeSafely(this.mOrientationLock.getParent(), "getChildTransformation", null, new Object[0]);
            if (obj != null) {
                Transformation transformation = obj;
                alpha = transformation.getAlpha();
                scale = MatrixUtil.getScale(transformation.getMatrix());
            }
            clearAnimRunnable();
            clearAnim();
            AnimationSet set = new AnimationSet(true);
            set.setInterpolator(new AccelerateInterpolator());
            set.setDuration(200);
            set.setFillAfter(true);
            set.addAnimation(new AlphaAnimation(alpha, 1.0f));
            set.addAnimation(new ScaleAnimation(scale, 1.2f, scale, 1.2f, 1, 0.5f, 1, 0.5f));
            set.setAnimationListener(new AnimationListener() {
                public void onAnimationStart(Animation animation) {
                }

                public void onAnimationRepeat(Animation animation) {
                }

                public void onAnimationEnd(Animation animation) {
                    if (OrientationManager.this.mClickDismissRunnable == null) {
                        OrientationManager.this.mClickDismissRunnable = new Runnable() {
                            public void run() {
                                AnimationSet set = new AnimationSet(true);
                                set.setInterpolator(new DecelerateInterpolator());
                                set.setDuration(200);
                                set.addAnimation(new AlphaAnimation(1.0f, 0.0f));
                                set.addAnimation(new ScaleAnimation(1.2f, 0.8f, 1.2f, 0.8f, 1, 0.5f, 1, 0.5f));
                                OrientationManager.this.mOrientationLock.startAnimation(set);
                                set.setAnimationListener(listener);
                                OrientationManager.this.mOrientationLock.setVisibility(8);
                            }
                        };
                    }
                    ThreadManager.getMainHandler().postDelayed(OrientationManager.this.mClickDismissRunnable, 100);
                }
            });
            this.mOrientationLock.startAnimation(set);
            this.mOrientationLock.setVisibility(0);
        }

        private void lock() {
            int uiRotation = ((WindowManager) this.this$0.mActivity.getSystemService("window")).getDefaultDisplay().getRotation();
            this.this$0.mActivity.setRequestedOrientation(getScreenOrientation(uiRotation));
            PhotoPageOrientationHelper.getInstance().lock(uiRotation);
            this.isOrientationLocked = true;
            Map map = new HashMap();
            map.put("lock", Integer.valueOf(uiRotation));
            GallerySamplingStatHelper.recordCountEvent("photo", "orientation_lock", map);
        }

        private void unlock() {
            this.this$0.mActivity.setRequestedOrientation(4);
            PhotoPageOrientationHelper.getInstance().unlock();
            this.isOrientationLocked = false;
            Map map = new HashMap();
            map.put("unlock", Integer.valueOf(this.mSensorRotation));
            GallerySamplingStatHelper.recordCountEvent("photo", "orientation_lock", map);
        }

        public void onClick(View v) {
            this.mOrientationLock.setSelected(!this.isOrientationLocked);
            showClickAnim(new AnimationListener() {
                public void onAnimationStart(Animation animation) {
                }

                public void onAnimationEnd(Animation animation) {
                    if (OrientationManager.this.isOrientationLocked) {
                        ToastUtils.makeText(OrientationManager.this.this$0.mActivity, (int) R.string.orientation_lock_tip);
                        return;
                    }
                    if (OrientationManager.this.mSensorRotation != ((WindowManager) OrientationManager.this.this$0.mActivity.getSystemService("window")).getDefaultDisplay().getRotation()) {
                        OrientationManager.this.mPendingUnLock = true;
                    } else {
                        ToastUtils.makeText(OrientationManager.this.this$0.mActivity, (int) R.string.orientation_unlock_tip);
                    }
                }

                public void onAnimationRepeat(Animation animation) {
                }
            });
            if (this.isOrientationLocked) {
                unlock();
            } else {
                lock();
            }
        }

        public void settleItem(BaseDataItem item) {
            boolean z = item == null || !item.isVideo();
            setSensorEnable(z);
        }

        public void onMultiWindowModeChanged(boolean isInMultiWindow) {
            this.mIsInMultiWindow = isInMultiWindow;
        }
    }

    private class PhotoMaskManager {
        private final int OUT_OF_VIEWPORT_SLOP = 0;
        private int mActionBarHeight = -1;
        private ActionBarDividerRunnable mBarDividerRunnable;
        private ActionBarMaskRunnable mBarMaskRunnable;
        private PhotoPageMaskView mMaskView;
        private int mSplitBarHeight = -1;

        private class ActionBarDividerRunnable implements Runnable {
            final boolean isShowBottomDivider;
            final boolean isShowTopDivider;

            public ActionBarDividerRunnable(boolean showTopDivider, boolean showBottomDivider) {
                this.isShowTopDivider = showTopDivider;
                this.isShowBottomDivider = showBottomDivider;
            }

            public void run() {
                PhotoMaskManager.this.mMaskView.setActionBarDividerVisible(this.isShowTopDivider);
                PhotoMaskManager.this.mMaskView.setSplitBarDividerVisible(this.isShowBottomDivider);
            }
        }

        private class ActionBarMaskRunnable implements Runnable {
            final boolean isAnim;
            final boolean isShowMask;

            public ActionBarMaskRunnable(boolean isShowMask, boolean isAnim) {
                this.isShowMask = isShowMask;
                this.isAnim = isAnim;
            }

            public void run() {
                PhotoMaskManager.this.mMaskView.setActionBarMaskVisible(this.isShowMask, this.isAnim);
            }
        }

        public PhotoMaskManager() {
            this.mMaskView = (PhotoPageMaskView) PhotoPageFragment.this.getView().findViewById(R.id.mask_view);
            this.mMaskView.setHost(PhotoPageFragment.this);
        }

        public int getTopBarHeight() {
            if (this.mActionBarHeight == -1) {
                this.mActionBarHeight = PhotoPageFragment.this.getActionBarHeight();
            }
            return this.mActionBarHeight;
        }

        public int getSplitBarHeight() {
            if (this.mSplitBarHeight == -1) {
                this.mSplitBarHeight = PhotoPageFragment.this.getMenuCollapsedHeight();
            }
            return (this.mSplitBarHeight <= 0 ? MiscUtil.getDefaultSplitActionBarHeight(PhotoPageFragment.this.mActivity) : this.mSplitBarHeight) + ViewCompat.getSystemWindowInsetBottom(PhotoPageFragment.this.mActivity.getWindow().getDecorView());
        }

        public void refreshMask(boolean actionBarAnimating) {
            RectF rect = PhotoPageFragment.this.mPagerHelper.getCurItemDisplayRect();
            boolean outOfTopBar = rect != null && rect.top + 0.0f < ((float) getTopBarHeight());
            boolean outOfBottomBar = rect != null && rect.bottom - 0.0f > ((float) (PhotoPageFragment.this.mPager.getHeight() - getSplitBarHeight()));
            boolean isActionBarShow = PhotoPageFragment.this.isActionBarVisible();
            boolean showTopDivider = isActionBarShow && outOfTopBar;
            boolean showBottomDivider = isActionBarShow && outOfBottomBar;
            boolean isDividerPendingShow = false;
            if (isActionBarShow && (showTopDivider || showBottomDivider)) {
                isDividerPendingShow = this.mBarDividerRunnable != null && ((this.mBarDividerRunnable.isShowTopDivider || this.mBarDividerRunnable.isShowBottomDivider) && ThreadManager.getMainHandler().hasCallbacksCompat(this.mBarDividerRunnable));
            }
            if (!isDividerPendingShow) {
                removeRefreshDividerRunnable();
                this.mBarDividerRunnable = new ActionBarDividerRunnable(showTopDivider, showBottomDivider);
                if (isActionBarShow && actionBarAnimating) {
                    ThreadManager.getMainHandler().postDelayed(this.mBarDividerRunnable, (long) PhotoPageFragment.this.getResources().getInteger(R.integer.photo_bar_divider_refresh_delay));
                } else {
                    this.mBarDividerRunnable.run();
                }
            }
            boolean outOfViewPort = rect == null || outOfTopBar || outOfBottomBar;
            boolean isMaskAnim = actionBarAnimating && (outOfViewPort || PhotoPageFragment.this.isExiting);
            if (isActionBarShow && !outOfViewPort) {
                boolean isMaskPendingShow = this.mBarMaskRunnable != null && this.mBarMaskRunnable.isShowMask && ThreadManager.getMainHandler().hasCallbacksCompat(this.mBarMaskRunnable);
                if (isMaskPendingShow) {
                    return;
                }
            }
            removeRefreshMaskRunnable();
            this.mBarMaskRunnable = new ActionBarMaskRunnable(isActionBarShow, isMaskAnim);
            if (isActionBarShow && !outOfViewPort && actionBarAnimating) {
                ThreadManager.getMainHandler().postDelayed(this.mBarMaskRunnable, (long) PhotoPageFragment.this.getResources().getInteger(R.integer.photo_bar_divider_refresh_delay));
            } else {
                this.mBarMaskRunnable.run();
            }
        }

        public void showMaskImmediately() {
            this.mMaskView.setActionBarDividerVisible(true);
            this.mMaskView.setSplitBarDividerVisible(true);
            this.mMaskView.setActionBarMaskVisible(true, false);
        }

        public void hideMaskImmediately() {
            this.mMaskView.setActionBarDividerVisible(false);
            this.mMaskView.setSplitBarDividerVisible(false);
            this.mMaskView.setActionBarMaskVisible(false, false);
        }

        public void release() {
            removeRefreshDividerRunnable();
            removeRefreshMaskRunnable();
        }

        private void removeRefreshDividerRunnable() {
            if (this.mBarDividerRunnable != null) {
                ThreadManager.getMainHandler().removeCallbacks(this.mBarDividerRunnable);
                this.mBarDividerRunnable = null;
            }
        }

        private void removeRefreshMaskRunnable() {
            if (this.mBarMaskRunnable != null) {
                ThreadManager.getMainHandler().removeCallbacks(this.mBarMaskRunnable);
                this.mBarMaskRunnable = null;
            }
        }
    }

    private class PhotoRefreshReceiver extends BroadcastReceiver {
        private PhotoRefreshReceiver() {
        }

        /* synthetic */ PhotoRefreshReceiver(PhotoPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            if ("com.miui.gallery.SAVE_TO_CLOUD".equals(intent.getAction())) {
                String filePath = intent.getStringExtra("extra_file_path");
                if (!TextUtils.isEmpty(filePath) && PhotoPageFragment.this.mPager != null) {
                    int count = PhotoPageFragment.this.mPagerHelper.getActiveItemCount();
                    for (int i = 0; i < count; i++) {
                        PhotoPageItem item = PhotoPageFragment.this.mPagerHelper.getItemByNativeIndex(i);
                        if (item != null) {
                            BaseDataItem dataItem = item.getDataItem();
                            if (dataItem != null && filePath.equals(dataItem.getOriginalPath())) {
                                item.refreshItem();
                                return;
                            }
                        }
                    }
                }
            }
        }
    }

    private class ProjectionManager implements Callback, ConnectListener, OnItemClickListener, RemoteControlListener {
        private int mConnectState = 1;
        private String mConnectedDeviceName = "";
        private BaseDataItem mCurItem;
        private Handler mHandler;
        private RemoteController mRemoteController;
        private DeviceListController mWidget = null;

        public boolean handleMessage(Message msg) {
            switch (msg.what) {
                case 3:
                    switch2Local(2);
                    break;
                case 4:
                    this.mHandler.sendEmptyMessage(2);
                    if (ConnectController.getInstance().connectPhotoServer(msg.obj) != 0) {
                        ToastUtils.makeText(PhotoPageFragment.this.mActivity, (int) R.string.projection_device_connection_failed);
                        setConnectState(1);
                        this.mWidget.removeActive();
                        break;
                    }
                    ConnectController.getInstance().showType(false, 0);
                    break;
                case 5:
                    switch2Local(2);
                    break;
            }
            return false;
        }

        ProjectionManager() {
            this.mWidget = new DeviceListController(PhotoPageFragment.this.mActivity);
            this.mWidget.setOnItemClickListener(this);
            this.mHandler = new Handler(Looper.getMainLooper(), this);
            ConnectController.getInstance().registConnectListener(this);
            this.mRemoteController = new RemoteController(this);
        }

        private void projectClicked() {
            this.mWidget.show();
            if (this.mConnectState == 2) {
                switch2Local(1);
            }
        }

        public boolean isConnected() {
            return this.mConnectState == 3;
        }

        private boolean isBigScreenSupported(BaseDataItem item) {
            if (item == null || item.isSecret() || TextUtils.isEmpty(item.getPathDisplayBetter())) {
                return false;
            }
            return true;
        }

        public void settleItem(BaseDataItem item, int index) {
            if (item != null) {
                Log.i("ProjectionManager", "updateItem %s  %d", item, Integer.valueOf(index));
                this.mCurItem = item;
                refreshProjectState();
                ConnectController.getInstance().updateCurrentPhoto(item.getPathDisplayBetter(), index);
            }
        }

        public void updateSet(BaseDataSet set) {
            ConnectController.getInstance().updateCurrentFolder(set);
        }

        public void updateRemoteView(BaseDataItem item, RectF displayRect) {
            if (item != null && item.getWidth() > 0 && displayRect.width() > 0.0f) {
                float centerX;
                float centerY;
                float currentScale = displayRect.width() / ((float) item.getWidth());
                float minScale = Math.min(((float) PhotoPageFragment.this.mPager.getWidth()) / ((float) item.getWidth()), ((float) PhotoPageFragment.this.mPager.getHeight()) / ((float) item.getHeight()));
                if (Utils.floatNear(currentScale, minScale, 1.0E-6f) || currentScale < minScale) {
                    currentScale = minScale;
                    centerX = ((float) item.getWidth()) / 2.0f;
                    centerY = ((float) item.getHeight()) / 2.0f;
                } else {
                    centerX = (((float) (PhotoPageFragment.this.mPager.getWidth() / 2)) - displayRect.left) / currentScale;
                    centerY = (((float) (PhotoPageFragment.this.mPager.getHeight() / 2)) - displayRect.top) / currentScale;
                }
                ConnectController.getInstance().syncRemoteView(centerX, centerY, (float) Math.round(((float) item.getWidth()) * minScale), (float) Math.round(((float) item.getHeight()) * minScale), (float) item.getWidth(), (float) item.getHeight(), currentScale);
            }
        }

        void refreshProjectState() {
            boolean z = false;
            if (PhotoPageFragment.this.mMenuManager != null && PhotoPageFragment.this.isAdded()) {
                String title;
                switch (this.mConnectState) {
                    case 2:
                        title = PhotoPageFragment.this.getResources().getString(R.string.operation_cast_connecting_format, new Object[]{this.mConnectedDeviceName});
                        break;
                    case 3:
                        title = PhotoPageFragment.this.getResources().getString(R.string.operation_cast_connected_format, new Object[]{this.mConnectedDeviceName});
                        break;
                    default:
                        title = PhotoPageFragment.this.getResources().getString(R.string.operation_projection);
                        break;
                }
                Object state = this.mConnectState == 1 ? "init" : this.mConnectState == 2 ? "connecting" : "connected";
                if (isBigScreenSupported(this.mCurItem)) {
                    Log.i("ProjectionManager", "refreshProjectState: [%s] [visible]", state);
                    MenuManager access$1900 = PhotoPageFragment.this.mMenuManager;
                    if (this.mConnectState != 2) {
                        z = true;
                    }
                    access$1900.refreshCastItem(title, true, z);
                    return;
                }
                Log.i("ProjectionManager", "refreshProjectState: [%s] [gone]", state);
                PhotoPageFragment.this.mMenuManager.refreshCastItem(title, false, true);
                this.mHandler.removeMessages(2);
            }
        }

        public void onDevicesAvailable(ArrayList<String> deviceList) {
            Log.i("ProjectionManager", "onDevicesAvailable");
            if (deviceList != null) {
                Iterator it = deviceList.iterator();
                while (it.hasNext()) {
                    this.mWidget.addNewDevice((String) it.next(), false);
                }
            }
        }

        public void onDevicesAdded(String newDevice) {
            Log.i("ProjectionManager", "onDevicesAdded %s", (Object) newDevice);
            this.mWidget.addNewDevice(newDevice, TextUtils.equals(newDevice, ConnectController.getInstance().getCurConnectedDevice()));
        }

        public void onDeviceRemoved(String removedDevice) {
            Log.i("ProjectionManager", "onDeviceRemoved %s", (Object) removedDevice);
            if (this.mWidget.removeDevice(removedDevice)) {
                refreshProjectState();
            }
        }

        public void onDeviceRefresh(ArrayList<String> deviceList, String curDevice) {
            Log.i("ProjectionManager", "onDeviceRefresh %s", (Object) curDevice);
            if (this.mWidget.refreshDevices(deviceList, curDevice)) {
                refreshProjectState();
            }
            if (curDevice != null && this.mConnectState != 3) {
                setConnectState(3);
            }
        }

        public void onPhotoConnectResponse(int result) {
            Log.i("ProjectionManager", "onPhotoConnectResponse %d", Integer.valueOf(result));
            this.mHandler.removeMessages(2);
            switch (result) {
                case -1:
                    setConnectState(1);
                    this.mHandler.sendEmptyMessage(3);
                    ToastUtils.makeText(PhotoPageFragment.this.mActivity, (int) R.string.projection_device_connection_failed);
                    GallerySamplingStatHelper.recordCountEvent("photo", "project_photo_fail");
                    return;
                case 0:
                    setConnectState(3);
                    this.mHandler.sendEmptyMessage(1);
                    GallerySamplingStatHelper.recordCountEvent("photo", "project_photo_success");
                    return;
                default:
                    return;
            }
        }

        public void onPhotoConnectReleased() {
            Log.i("ProjectionManager", "onPhotoConnectReleased");
            this.mHandler.sendEmptyMessage(5);
        }

        public void switch2Local(int activeRelease) {
            setConnectState(1);
            if (activeRelease == 1) {
                ConnectController.getInstance().release();
            }
            this.mWidget.removeActive();
            this.mHandler.removeMessages(2);
        }

        public void switch2TV(String deviceName) {
            this.mConnectedDeviceName = deviceName;
            setConnectState(2);
            Message msg = this.mHandler.obtainMessage();
            msg.what = 4;
            msg.obj = deviceName;
            this.mHandler.sendMessage(msg);
        }

        private void setConnectState(int state) {
            this.mConnectState = state;
            this.mRemoteController.onConnectStateChange(PhotoPageFragment.this.mActivity, this.mConnectState == 3);
            refreshProjectState();
        }

        public void onItemClicked(String deviceName) {
            if (TextUtils.equals(deviceName, ConnectController.getInstance().getCurConnectedDevice())) {
                this.mHandler.removeMessages(2);
                switch2Local(1);
            } else if (deviceName.equals(DeviceListController.MOBILE_NAME)) {
                switch2Local(1);
            } else {
                ConnectController.getInstance().release();
                switch2TV(deviceName);
            }
            this.mWidget.dismiss();
        }

        public void enterSlideShow(int currentIndex) {
            if (ConnectController.getInstance().showType(true, currentIndex) != 0) {
                ToastUtils.makeText(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.mActivity.getText(R.string.projection_slide_fail_cause_loading));
                return;
            }
            this.mRemoteController.disable(PhotoPageFragment.this.mActivity);
            ProjectSlideFragment.showProjectSlideFragment(PhotoPageFragment.this.mActivity, PhotoPageFragment.this, ConnectController.getInstance().getCurConnectedDevice());
        }

        public void exitSlideShow() {
            settleItem(this.mCurItem, PhotoPageFragment.this.mPager.getCurrentItem());
            this.mRemoteController.enable(PhotoPageFragment.this.mActivity);
            if (!PhotoPageFragment.this.isVisible()) {
                this.mRemoteController.disableDelay(PhotoPageFragment.this.mActivity);
            }
        }

        public void release() {
            this.mWidget.dismiss();
            ConnectController.getInstance().unregistConnectListener(this);
            this.mHandler.removeCallbacksAndMessages(null);
            ConnectController.getInstance().disconnect(this, true);
            this.mRemoteController.release(PhotoPageFragment.this.mActivity);
        }

        public void enableRemoteControl() {
            this.mRemoteController.enable(PhotoPageFragment.this.mActivity);
        }

        public void disableRemoteControl() {
            this.mRemoteController.disableDelay(PhotoPageFragment.this.mActivity);
        }

        public void onRemoteControl(boolean isVolumeUp) {
            boolean z = true;
            if (PhotoPageFragment.this.mAdapter.getCount() > 0) {
                int index;
                ViewPager viewPager;
                if (isVolumeUp) {
                    index = PhotoPageFragment.this.mPager.getCurrentItem() - 1;
                    if (index >= 0) {
                        viewPager = PhotoPageFragment.this.mPager;
                        if (MiscUtil.isKeyGuardLocked(PhotoPageFragment.this.mActivity)) {
                            z = false;
                        }
                        viewPager.setCurrentItem(index, z);
                        return;
                    }
                    return;
                }
                index = PhotoPageFragment.this.mPager.getCurrentItem() + 1;
                if (index < PhotoPageFragment.this.mAdapter.getCount()) {
                    viewPager = PhotoPageFragment.this.mPager;
                    if (MiscUtil.isKeyGuardLocked(PhotoPageFragment.this.mActivity)) {
                        z = false;
                    }
                    viewPager.setCurrentItem(index, z);
                }
            }
        }
    }

    private class RefocusManager {
        private View mEnterView;
        private GuidePopupWindow mGuidanceWindow;
        private OnRefocusRecognizedListener mListener = new OnRefocusRecognizedListener() {
            public void onRecognized(boolean canRefocus, String path) {
                if (canRefocus) {
                    BaseDataItem dataItem = RefocusManager.this.this$0.mAdapter.getDataItem(RefocusManager.this.this$0.mPager.getCurrentItem());
                    if (dataItem == null || dataItem.getOriginalPath() != path) {
                        RefocusManager.this.disappearView(RefocusManager.this.mEnterView);
                        return;
                    } else if (RefocusManager.this.this$0.isActionBarVisible()) {
                        RefocusManager.this.mEnterView.setOnClickListener(RefocusManager.this.mRefocusEnterListener);
                        RefocusManager.this.appearView(RefocusManager.this.mEnterView);
                        RefocusManager.this.mEnterView.setTag(path);
                        RefocusManager.this.mRefocusSDK.sendExposureStatic();
                        return;
                    } else {
                        return;
                    }
                }
                RefocusManager.this.disappearView(RefocusManager.this.mEnterView);
            }

            public void onPhotoSave(String path) {
                Log.d("PhotoPageFragment", "onRefocusPhotoSave : " + path);
                BaseDataSet dataSet = RefocusManager.this.this$0.mAdapter.getDataSet();
                if (dataSet != null) {
                    dataSet.addNewFile(path, RefocusManager.this.this$0.mPager.getCurrentItem() + 1);
                }
                RefocusManager.this.this$0.getArguments().putString("photo_focused_path", path);
                RefocusManager.this.this$0.onContentChanged();
            }
        };
        private int mOperationMask;
        private OnClickListener mRefocusEnterListener = new OnClickListener() {
            public void onClick(View v) {
                BaseDataItem dataItem = RefocusManager.this.this$0.mAdapter.getDataItem(RefocusManager.this.this$0.mPager.getCurrentItem());
                if (dataItem != null && RefocusManager.this.mEnterView.getTag() == dataItem.getOriginalPath() && !TextUtils.isEmpty(dataItem.getOriginalPath())) {
                    if (RefocusManager.this.this$0.needDismissKeyGuard()) {
                        RefocusManager.this.this$0.dismissKeyGuard();
                    }
                    IntentUtil.startAdvancedRefocusAction(dataItem, RefocusManager.this.this$0.mActivity, RefocusManager.this.this$0);
                    RefocusManager.this.mRefocusSDK.sendEnterStatic();
                }
            }
        };
        private RefocusSDK mRefocusSDK;
        private boolean mRefocusSupport;
        private boolean mResultHandle = false;
        private Boolean mShouldShowGuidance;
        private Runnable mShowGuidanceRunnable;
        private String mTarget;
        private Runnable mTransRunnable = new Runnable() {
            public void run() {
                RefocusManager.this.finishTransition();
            }
        };
        final /* synthetic */ PhotoPageFragment this$0;

        RefocusManager(PhotoPageFragment photoPageFragment, View enterView) {
            boolean z = false;
            this.this$0 = photoPageFragment;
            if (RefocusSDK.isDeviceSupportRefocus(photoPageFragment.getActivity()) && !photoPageFragment.mStartWhenLockedAndSecret) {
                z = true;
            }
            this.mRefocusSupport = z;
            Bundle arguments = photoPageFragment.getArguments();
            this.mOperationMask = arguments == null ? -1 : arguments.getInt("support_operation_mask", -1);
            if (this.mRefocusSupport) {
                this.mEnterView = enterView;
                this.mRefocusSDK = new RefocusSDK(this.mListener, photoPageFragment.getActivity());
            }
        }

        void onActivityReenter(Intent data) {
            if (this.mRefocusSupport && data != null) {
                this.mTarget = data.getDataString();
                if (this.mTarget != null) {
                    this.mResultHandle = true;
                    ImageLoader.getInstance().resume();
                    ActivityCompat.postponeEnterTransition(this.this$0.mActivity);
                    onRefocusEdit(data);
                    ThreadManager.getMainHandler().postDelayed(this.mTransRunnable, 2000);
                }
            }
        }

        void onImageLoadFinish(String uri) {
            if (this.mRefocusSupport && this.mTarget != null && this.mTarget.equals(uri)) {
                finishTransition();
                this.mTarget = null;
            }
        }

        private void finishTransition() {
            ThreadManager.getMainHandler().removeCallbacks(this.mTransRunnable);
            if (this.this$0.mActivity != null) {
                ActivityCompat.startPostponedEnterTransition(this.this$0.mActivity);
            }
        }

        void updateItem(BaseDataItem item) {
            if (!this.mRefocusSupport) {
                return;
            }
            if (item == null || item.isVideo() || TextUtils.isEmpty(item.getOriginalPath()) || !PhotoOperationsUtil.isSupportedOptions(item.getSupportOperations() & this.mOperationMask, 512)) {
                this.mListener.onRecognized(false, null);
            } else {
                this.mRefocusSDK.sendRecognize(item.getOriginalPath());
            }
        }

        void tryChangeButtonVisible(boolean visible) {
            if (!this.mRefocusSupport) {
                return;
            }
            if (visible) {
                updateItem(this.this$0.mAdapter.getDataItem(this.this$0.mPager.getCurrentItem()));
            } else if (this.mEnterView != null) {
                disappearView(this.mEnterView);
            }
        }

        void onActivityResult(Intent data) {
            if (!this.mRefocusSupport || this.mResultHandle || data == null) {
                this.mResultHandle = false;
                return;
            }
            String target = data.getDataString();
            if (target != null && !target.equals(this.mTarget)) {
                onRefocusEdit(data);
            }
        }

        void onRefocusEdit(Intent data) {
            Log.d("PhotoPageFragment", "onRefocusEdit : " + data);
            if (this.mRefocusSupport) {
                this.mRefocusSDK.sendResultStatic(data);
                if (data != null) {
                    this.mRefocusSDK.sendInsert(data.getData());
                }
            }
        }

        public void release() {
            if (this.mRefocusSupport) {
                dismissGuidance();
                if (this.mRefocusSDK != null) {
                    this.mRefocusSDK.destroy();
                }
            }
        }

        private void appearView(View view) {
            if (view.getVisibility() != 0) {
                view.setVisibility(0);
                view.setOnClickListener(this.mRefocusEnterListener);
                dismissGuidance();
                tryShowGuidance();
            }
        }

        private void disappearView(View view) {
            if (view.getVisibility() != 8) {
                view.setVisibility(8);
                view.setOnClickListener(null);
                dismissGuidance();
            }
        }

        private void tryShowGuidance() {
            if (this.mShouldShowGuidance == null) {
                this.mShouldShowGuidance = Boolean.valueOf(!FeatureGuidance.hasEverUsed("photo_refocus_effects"));
            }
            if (this.mShouldShowGuidance.booleanValue()) {
                ThreadManager.getMainHandler().postDelayed(getShowGuidanceRunnable(), 380);
            }
        }

        private Runnable getShowGuidanceRunnable() {
            if (this.mShowGuidanceRunnable == null) {
                this.mShowGuidanceRunnable = new Runnable() {
                    public void run() {
                        if (!RefocusManager.this.this$0.isExiting && RefocusManager.this.mEnterView != null && RefocusManager.this.mEnterView.getVisibility() == 0) {
                            RefocusManager.this.showGuidance();
                        }
                    }
                };
            }
            return this.mShowGuidanceRunnable;
        }

        private void showGuidance() {
            if (this.mGuidanceWindow == null) {
                this.mGuidanceWindow = new GuidePopupWindow(this.this$0.mActivity);
                this.mGuidanceWindow.setArrowMode(1);
                this.mGuidanceWindow.setGuideText(R.string.feature_guidance_photo_effects);
                this.mGuidanceWindow.setOnDismissListener(new OnDismissListener() {
                    public void onDismiss() {
                        RefocusManager.this.mShouldShowGuidance = Boolean.valueOf(false);
                        FeatureGuidance.markAsUsed("photo_refocus_effects");
                    }
                });
            }
            this.mGuidanceWindow.show(this.mEnterView, false);
        }

        private void dismissGuidance() {
            ThreadManager.getMainHandler().removeCallbacks(this.mShowGuidanceRunnable);
            if (this.mGuidanceWindow != null && this.mGuidanceWindow.isShowing()) {
                this.mGuidanceWindow.dismiss(false);
            }
        }
    }

    private class ScreenBroadcastReceiver extends BroadcastReceiver {
        private ScreenBroadcastReceiver() {
        }

        /* synthetic */ ScreenBroadcastReceiver(PhotoPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                PhotoPageFragment.this.finishActivity(-1);
            }
        }
    }

    private class SmartVideoGuideManager implements SmartVideoGuideListener {
        private GuidePopupWindow mGuideView;
        private String mLastHFRVideoPath;
        private Runnable mShowGuidanceRunnable;
        private SmartVideoGuideHelper mSmartVideoGuideHelper = new SmartVideoGuideHelper();
        private String mVideoPath;

        public SmartVideoGuideManager() {
            this.mSmartVideoGuideHelper.setSmartVideoGuideListener(this);
        }

        public void updateItem(BaseDataItem item) {
            if (!SmartVideoGuideHelper.hasGuided()) {
                if (item != null) {
                    this.mVideoPath = item.getOriginalPath();
                }
                if (this.mSmartVideoGuideHelper != null && !preventGuide(item)) {
                    this.mSmartVideoGuideHelper.handleHighFrameRate(this.mVideoPath);
                }
            } else if (preventGuide(item) || !TextUtils.equals(this.mLastHFRVideoPath, item.getOriginalPath())) {
                dismissGuidance();
            }
        }

        private boolean preventGuide(BaseDataItem item) {
            return PhotoPageFragment.this.isPreviewMode() || !PhotoPageFragment.this.isActionBarVisible() || item == null || !item.isVideo() || TextUtils.isEmpty(item.getOriginalPath());
        }

        public void onActionBarVisibilityChanged(boolean visible) {
            if (visible) {
                updateItem(PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem()));
            } else {
                dismissGuidance();
            }
        }

        public void showGuideView(String path) {
            if (this.mGuideView == null && PhotoPageFragment.this.isActionBarVisible() && !TextUtils.isEmpty(path) && path.equals(this.mVideoPath)) {
                this.mLastHFRVideoPath = path;
                if (this.mShowGuidanceRunnable != null) {
                    ThreadManager.getMainHandler().removeCallbacks(this.mShowGuidanceRunnable);
                }
                ThreadManager.getMainHandler().postDelayed(getShowGuidanceRunnable(), 380);
            }
        }

        private Runnable getShowGuidanceRunnable() {
            if (this.mShowGuidanceRunnable == null) {
                this.mShowGuidanceRunnable = new Runnable() {
                    public void run() {
                        if (SmartVideoGuideManager.this.mGuideView == null && PhotoPageFragment.this.isActionBarVisible() && !TextUtils.isEmpty(SmartVideoGuideManager.this.mLastHFRVideoPath) && SmartVideoGuideManager.this.mLastHFRVideoPath.equals(SmartVideoGuideManager.this.mVideoPath) && !PhotoPageFragment.this.isExiting) {
                            SmartVideoGuideManager.this.doShowGuidance();
                        }
                    }
                };
            }
            return this.mShowGuidanceRunnable;
        }

        private void doShowGuidance() {
            this.mGuideView = new GuidePopupWindow(PhotoPageFragment.this.mActivity);
            this.mGuideView.setArrowMode(0);
            this.mGuideView.setGuideText(R.string.feature_guidance_video_editor_smart_effects);
            View root = PhotoPageFragment.this.getView();
            if (root != null) {
                View anchor = root.findViewWithTag(Integer.valueOf(R.id.action_edit));
                if (anchor != null) {
                    this.mGuideView.show(anchor, false);
                    SmartVideoGuideHelper.setHasGuided(true);
                }
            }
        }

        private void dismissGuidance() {
            if (this.mShowGuidanceRunnable != null) {
                ThreadManager.getMainHandler().removeCallbacks(this.mShowGuidanceRunnable);
            }
            if (this.mGuideView != null && this.mGuideView.isShowing()) {
                this.mGuideView.dismiss(false);
            }
        }

        public void release() {
            if (this.mSmartVideoGuideHelper != null) {
                this.mSmartVideoGuideHelper.release();
            }
            dismissGuidance();
        }
    }

    static class ThemeManager {
        private IMultiThemeView mHostView;

        ThemeManager(IMultiThemeView hostView) {
            this.mHostView = hostView;
        }

        public void setLightTheme(boolean transit, boolean quickly) {
            if (this.mHostView == null) {
                return;
            }
            if (quickly) {
                this.mHostView.setTheme(Theme.LIGHT, transit ? ThemeTransition.FADE_IN : ThemeTransition.NONE, new CubicEaseOutInterpolator(), (long) ((View) this.mHostView).getContext().getResources().getInteger(R.integer.photo_background_in_quick_duration));
            } else {
                this.mHostView.setTheme(Theme.LIGHT, transit ? ThemeTransition.FADE_IN : ThemeTransition.NONE);
            }
        }

        public void setDarkTheme(boolean transit, boolean quickly) {
            if (this.mHostView == null) {
                return;
            }
            if (quickly) {
                this.mHostView.setTheme(Theme.DARK, transit ? ThemeTransition.FADE_OUT : ThemeTransition.NONE, new CubicEaseOutInterpolator(), (long) ((View) this.mHostView).getContext().getResources().getInteger(R.integer.photo_background_out_quick_duration));
            } else {
                this.mHostView.setTheme(Theme.DARK, transit ? ThemeTransition.FADE_OUT : ThemeTransition.NONE);
            }
        }

        public void setBackgroundAlpha(float alpha) {
            if (this.mHostView != null) {
                this.mHostView.setBackgroundAlpha(alpha);
            }
        }
    }

    private static class VideoPlayerManager {
        private WeakReference<PhotoPageFragment> mFragmentRef;
        private Future<Void> mFuture;

        /* synthetic */ VideoPlayerManager(PhotoPageFragment x0, AnonymousClass1 x1) {
            this(x0);
        }

        private VideoPlayerManager(PhotoPageFragment fragment) {
            this.mFragmentRef = new WeakReference(fragment);
        }

        public void onActivityResult(Intent intent) {
            if (intent != null && getFragment() != null) {
                Uri uri = intent.getData();
                if (uri != null) {
                    final String path = uri.getPath();
                    if (!TextUtils.isEmpty(path)) {
                        if (this.mFuture != null) {
                            this.mFuture.cancel();
                        }
                        this.mFuture = ThreadManager.getMiscPool().submit(new Job<Void>() {
                            public Void run(JobContext jc) {
                                PhotoPageFragment fragment = VideoPlayerManager.this.getFragment();
                                if (!(fragment == null || jc.isCancelled())) {
                                    MediaScanner.scanSingleFile(fragment.getActivity(), path);
                                }
                                return null;
                            }
                        }, new FutureHandler<Void>() {
                            public void onPostExecute(Future<Void> future) {
                                PhotoPageFragment fragment = VideoPlayerManager.this.getFragment();
                                if (fragment != null && !future.isCancelled()) {
                                    BaseDataSet dataSet = fragment.mAdapter.getDataSet();
                                    if (dataSet != null) {
                                        dataSet.addNewFile(path, fragment.mPager.getCurrentItem() + 1);
                                    }
                                    fragment.getArguments().putString("photo_focused_path", path);
                                    fragment.onContentChanged();
                                }
                            }
                        });
                    }
                }
            }
        }

        private PhotoPageFragment getFragment() {
            return this.mFragmentRef != null ? (PhotoPageFragment) this.mFragmentRef.get() : null;
        }

        public void onDestroy() {
            if (this.mFuture != null) {
                this.mFuture.cancel();
                this.mFuture = null;
            }
        }
    }

    private class VoiceAssistantReceiver extends BroadcastReceiver {
        private VoiceAssistantReceiver() {
        }

        /* synthetic */ VoiceAssistantReceiver(PhotoPageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            if (PhotoPageFragment.this.mChoiceManager != null && !PhotoPageFragment.this.mChoiceManager.isSlipped()) {
                BaseDataItem dataItem = PhotoPageFragment.this.mAdapter.getDataItem(PhotoPageFragment.this.mPager.getCurrentItem());
                Intent target = new Intent("android.intent.action.SEND");
                if (dataItem.isVideo()) {
                    target.setType("video/*");
                } else {
                    target.setType("image/*");
                }
                String packageName = intent.getStringExtra("assistant_target_package");
                String className = intent.getStringExtra("assistant_target_class");
                boolean beauty = intent.getBooleanExtra("assistant_need_beauty", false);
                if (!TextUtils.isEmpty(packageName) && !TextUtils.isEmpty(className)) {
                    target.setComponent(new ComponentName(packageName, className));
                    List<ResolveInfo> resolveInfos = PhotoPageFragment.this.mActivity.getPackageManager().queryIntentActivities(target, 65536);
                    if (MiscUtil.isValid(resolveInfos) && resolveInfos.size() == 1) {
                        target.putExtra("assistant_need_beauty", beauty);
                        PhotoPageFragment.this.mChoiceManager.sendCurrentToShare(target);
                    }
                }
            }
        }
    }

    public static PhotoPageFragment newInstance(Uri uri, String type, Bundle data, int theme) {
        if (data == null) {
            data = new Bundle();
        }
        data.putInt("key_theme", theme);
        if (uri != null) {
            data.putString("photo_uri", uri.toString());
        }
        if (type != null) {
            data.putString("mime_type", type);
        }
        PhotoPageFragment fragment = new PhotoPageFragment();
        fragment.setArguments(data);
        return fragment;
    }

    public void onCreate(Bundle savedInstanceState) {
        boolean argValid = parseArguments();
        super.onCreate(savedInstanceState);
        if (!argValid) {
            Log.e("PhotoPageFragment", "params error %s", getArguments());
            finish();
        } else if (isFromCamera()) {
            if (this.mStartWhenLocked) {
                this.mActivity.getWindow().addFlags(nexEngine.ExportHEVCHighTierLevel52);
                this.mScreenReceiver = new ScreenBroadcastReceiver(this, null);
                ReceiverUtils.registerReceiver(this.mActivity, this.mScreenReceiver, "android.intent.action.SCREEN_OFF");
            }
            this.mPhotoRefreshReceiver = new PhotoRefreshReceiver(this, null);
            IntentFilter filter = new IntentFilter();
            filter.addAction("com.miui.gallery.SAVE_TO_CLOUD");
            LocalBroadcastManager.getInstance(this.mActivity).registerReceiver(this.mPhotoRefreshReceiver, filter);
        }
    }

    private boolean isFromCamera() {
        return this.isFromCamera;
    }

    private boolean isTransparentTheme() {
        return this.mTheme == 1;
    }

    private boolean parseArguments() {
        Bundle args = getArguments();
        if (args == null || TextUtils.isEmpty(args.getString("photo_uri"))) {
            return false;
        }
        this.isFromCamera = args.getBoolean("from_MiuiCamera", false);
        if (this.isFromCamera) {
            this.mStartWhenLocked = args.getBoolean("StartActivityWhenLocked", false);
            boolean z = this.mStartWhenLocked && isSecureKeyguard();
            this.mStartWhenLockedAndSecret = z;
        }
        this.mTheme = args.getInt("key_theme", 0);
        this.mAlwaysShowMenubar = args.getBoolean("photo_always_show_menubar", false);
        this.mFromRecommendFacePage = args.getBoolean("from_recommend_face_page", false);
        this.mPreviewMode = args.getBoolean("photo_preview_mode");
        return true;
    }

    private boolean isSecureKeyguard() {
        return ((KeyguardManager) this.mActivity.getSystemService("keyguard")).isKeyguardSecure();
    }

    protected int getThemeRes() {
        if (isTransparentTheme()) {
            return R.style.f170GalleryTheme.PhotoPage.Transparent;
        }
        return R.style.f169GalleryTheme.PhotoPage;
    }

    public String getTAG() {
        return "PhotoPageFragment";
    }

    protected View getLayout(LayoutInflater inflater, ViewGroup container) {
        View view = PhotoPageDataCache.getInstance().getPageLayout();
        return view != null ? view : LayoutInflater.from(this.mActivity).inflate(R.layout.photo_page, container, false);
    }

    protected void onViewInflated(View root) {
        super.onViewInflated(root);
        configViewLayout(root);
        setHasOptionsMenu(false);
        if (fromRecommendFacePage()) {
            this.mActivity.setRequestedOrientation(1);
        }
        this.mPagerHelper.setOnTapListener(this.mOnSingleTapListener);
        this.mPagerHelper.setOnScaleChangedListener(this.mOnPhotoScaleChangeListener);
        this.mPagerHelper.setOnDisplayRectChangedListener(this.mOnPhotoMatrixChangeListener);
        this.mPagerHelper.setOnDownloadListener(this.mDownloadListener);
        this.mPagerHelper.setOnExitListener(this.mOnExitListener);
        this.mPagerHelper.setOnAlphaChangedListener(this.mAlphaChangedListener);
        ((VerticalSlipLayout) root.findViewById(R.id.slip_layout)).setDraggable(false);
        this.mThemeManager = new ThemeManager((IMultiThemeView) root.findViewById(R.id.photo_layout));
        if (isFromCamera() || isPreviewMode()) {
            this.mThemeManager.setDarkTheme(false, true);
        }
        SystemUiUtil.setLayoutFullScreen(this.mActivity.getWindow().getDecorView(), isShowBarsWhenEntering());
        WindowCompat.setCutoutModeShortEdges(this.mActivity.getWindow());
    }

    private int resolveGravity(int gravity) {
        switch (gravity) {
            case 17:
                return 17;
            case BaiduSceneResult.SWIM /*81*/:
                return 81;
            default:
                return 0;
        }
    }

    private void configViewLayout(View root) {
        Resources res = getResources();
        float shareTitleRatio = res.getFraction(R.fraction.share_title_ratio, 1, 1);
        float sharePagerRatio = res.getFraction(R.fraction.share_pager_ratio, 1, 1);
        float shareChannelRatio = res.getFraction(R.fraction.share_channel_ratio, 1, 1);
        float shareTitlePaddingRatio = res.getFraction(R.fraction.share_title_padding_ratio, 1, 1);
        int shareTitleGravity = resolveGravity(res.getInteger(R.integer.share_title_gravity));
        VerticalSlipLayout slipLayout = (VerticalSlipLayout) root.findViewById(R.id.slip_layout);
        TextView title = (TextView) root.findViewById(R.id.choice_mode_title);
        View choice = root.findViewById(R.id.child_container);
        int viewHeight = Math.max(ScreenConfig.getRealScreenHeight(), ScreenConfig.getRealScreenWidth());
        int viewWidth = Math.min(ScreenConfig.getRealScreenHeight(), ScreenConfig.getRealScreenWidth());
        int titleHeight = (int) (((float) viewHeight) * shareTitleRatio);
        int choiceHeight = (int) (((float) viewHeight) * shareChannelRatio);
        title.getLayoutParams().height = titleHeight;
        title.setGravity(shareTitleGravity);
        title.setPadding(0, 0, 0, (int) (((float) titleHeight) * shareTitlePaddingRatio));
        choice.getLayoutParams().height = choiceHeight;
        slipLayout.setFixedSideSlipDistance(titleHeight);
        int widthSlipMargin = res.getDimensionPixelSize(R.dimen.photo_slip_horizontal_margin);
        int pagerMargin = res.getDimensionPixelSize(R.dimen.viewpager_page_margin);
        float widthRatio = 1.0f - ((2.0f * ((float) widthSlipMargin)) / ((float) viewWidth));
        float marginRatio = (1.0f * ((float) res.getDimensionPixelSize(R.dimen.viewpager_slip_page_margin))) / ((float) pagerMargin);
        this.mPager.setHeightSlipRatio(sharePagerRatio);
        this.mPager.setWidthSlipRatio(widthRatio);
        this.mPager.setMarginSlipRatio(marginRatio);
    }

    protected PhotoPageInteractionListener getPhotoPageInteractionListener() {
        return new PhotoPageInteractionListener() {
            public void notifyDataChanged() {
                if (PhotoPageFragment.this.isAdded()) {
                    PhotoPageFragment.this.onContentChanged();
                }
            }

            public void setActionBarVisible(boolean visible) {
                if (PhotoPageFragment.this.isAdded()) {
                    PhotoPageFragment.this.setActionBarVisible(visible);
                }
            }

            public int getActionBarHeight() {
                if (!PhotoPageFragment.this.isAdded() || PhotoPageFragment.this.getActionBar() == null) {
                    return 0;
                }
                return PhotoPageFragment.this.getActionBar().getHeight();
            }

            public int getMenuBarHeight() {
                return PhotoPageFragment.this.isAdded() ? PhotoPageFragment.this.getMenuCollapsedHeight() : 0;
            }
        };
    }

    protected void delayDoAfterTransit() {
        if (!isAdded()) {
            Log.i("PhotoPageFragment", "delayDoAfterTransit but not added");
        } else if (isFromCamera()) {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    if (PhotoPageFragment.this.mActivity != null) {
                        PhotoPageFragment.this.doOnTransitEnd();
                    }
                }
            });
        } else {
            doOnTransitEnd();
        }
    }

    private void doOnTransitEnd() {
        super.delayDoAfterTransit();
        if (isTransparentTheme()) {
            LocalBroadcastManager.getInstance(this.mActivity).sendBroadcast(new Intent("com.miu.gallery.action.ENTER_PHOTO_PAGE"));
        }
        if (isPreviewMode()) {
            setActionBarVisible(false);
            return;
        }
        createBars();
        if (supportProjection()) {
            this.mProjectManager = new ProjectionManager();
        }
        this.mOrientationManager = new OrientationManager(this);
        this.mNFCManager = new NFCManager(this.mActivity);
        this.mChoiceManager = new ChoiceManager();
        this.mDualCameraManager = new DualCameraManager();
        this.mEditorManager = new EditorManager(this, null);
        this.mRefocusManager = new RefocusManager(this, this.mTopBar.getRefocusEnterView());
        if (SmartVideoJudgeManager.isAvailable()) {
            this.mSmartVideoGuideManager = new SmartVideoGuideManager();
        }
        this.mVideoPlayerManager = new VideoPlayerManager(this, null);
        if (isResumed()) {
            doOnResume();
        }
        if (this.mDataLoaded) {
            doDataSetLoaded(this.mAdapter.getDataSet(), true);
            doOnItemChanged(this.mPager.getCurrentItem());
            doOnItemSettled(this.mPager.getCurrentItem());
        }
        if (this.mThemeManager != null) {
            this.mThemeManager.setBackgroundAlpha(1.0f);
        }
    }

    protected ItemViewInfo getItemViewInfo(int pos) {
        return isTransparentTheme() ? PhotoPageDataCache.getInstance().getItemViewInfo(pos) : null;
    }

    private void doDataSetLoaded(BaseDataSet dataSet, boolean firstLoad) {
        this.mDataLoaded = true;
        if (firstLoad && this.mChoiceManager != null) {
            this.mChoiceManager.initSelected(dataSet);
        }
        if (this.mProjectManager != null) {
            this.mProjectManager.updateSet(dataSet);
        }
    }

    protected void onDataSetLoaded(BaseDataSet dataSet, boolean firstLoad) {
        super.onDataSetLoaded(dataSet, firstLoad);
        doDataSetLoaded(dataSet, firstLoad);
    }

    private boolean isShowBarsWhenEntering() {
        String uri = getArguments().getString("photo_uri");
        if ((TextUtils.isEmpty(uri) || !UriUtil.isNetUri(Uri.parse(uri))) && !alwaysShowMenubar() && (!getArguments().getBoolean("com.miui.gallery.extra.show_bars_when_enter", true) || getArguments().getBoolean("com.miui.gallery.extra.photo_enter_choice_mode", false) || isPreviewMode() || isFromCamera())) {
            return false;
        }
        return true;
    }

    public boolean onBackPressed() {
        if (this.mChoiceManager == null || !this.mChoiceManager.onBackPressed()) {
            doExit();
        }
        return true;
    }

    public ImageView getPhotoView() {
        PhotoPageItem item = this.mPagerHelper.getCurrentItem();
        return item != null ? (ImageView) item.findViewById(R.id.photoview) : null;
    }

    protected void onExiting() {
        if (isFromCamera()) {
            getActionBar().setDisplayShowCustomEnabled(false);
        }
        setActionBarVisible(false);
    }

    public void finish() {
        finishActivity(-1);
    }

    private void finishActivity(int resultCode) {
        if (this.mActivity != null && !this.mActivity.isFinishing()) {
            if (isTransparentTheme()) {
                Intent i = new Intent("com.miui.gallery.action.EXIT_PHOTO_PAGE");
                i.putExtra("photo_result_code", resultCode);
                LocalBroadcastManager.getInstance(this.mActivity).sendBroadcast(i);
            }
            this.mActivity.finish();
        }
    }

    private void createBars() {
        this.mTopBar = new PhotoPageTopBar(this.mActivity, new OnClickListener() {
            public void onClick(View v) {
                PhotoPageFragment.this.doExit();
            }
        });
        final boolean delayInitMenus = !isShowBarsWhenEntering();
        if (!delayInitMenus) {
            setHasOptionsMenu(true);
        }
        this.mTopBar.getView().addOnLayoutChangeListener(new OnLayoutChangeListener() {
            public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                if (PhotoPageFragment.this.isResumed()) {
                    if (delayInitMenus) {
                        PhotoPageFragment.this.setHasOptionsMenu(true);
                    }
                    PhotoPageFragment.this.onBarsCreated();
                    PhotoPageFragment.this.mTopBar.getView().removeOnLayoutChangeListener(this);
                }
            }
        });
        getActionBar().setCustomView(this.mTopBar.getView(), new ActionBar.LayoutParams(-1, -1, 19));
    }

    private void refreshTopBar(BaseDataItem item) {
        if (item != null && this.mTopBar != null) {
            this.mTopBar.setTitle(item.getViewTitle(this.mActivity));
            this.mTopBar.setSubTitle(item.getViewSubTitle(this.mActivity));
            this.mTopBar.setLocation(this.mActivity, item.getLocation());
        }
    }

    private void onBarsCreated() {
        this.mMaskManager = new PhotoMaskManager();
        refreshTopBar(this.mAdapter.getDataItem(this.mPager.getCurrentItem()));
        if (isShowBarsWhenEntering()) {
            ActionBarCompat.setShowHideAnimationEnabled(getActionBar(), false);
            getActionBar().hide();
            ActionBarCompat.setShowHideAnimationEnabled(getActionBar(), true);
            setActionBarVisible(true);
            return;
        }
        ActionBarCompat.setShowHideAnimationEnabled(getActionBar(), false);
        setActionBarVisible(false);
        ActionBarCompat.setShowHideAnimationEnabled(getActionBar(), true);
    }

    private void doOnPause() {
        if (this.mOrientationManager != null) {
            this.mOrientationManager.pause();
        }
        if (this.mDualCameraManager != null) {
            this.mDualCameraManager.pause();
        }
        if (this.mProjectManager != null) {
            this.mProjectManager.disableRemoteControl();
        }
        if (this.mVoiceAssistantReceiver != null) {
            LocalBroadcastManager.getInstance(this.mActivity).unregisterReceiver(this.mVoiceAssistantReceiver);
            this.mVoiceAssistantReceiver = null;
        }
    }

    private void doOnResume() {
        if (!isActionBarVisible()) {
            SystemUiUtil.setSystemBarsVisibility(false, this.mActivity.getWindow().getDecorView());
        }
        if (this.mOrientationManager != null) {
            this.mOrientationManager.resume();
        }
        if (this.mDualCameraManager != null) {
            this.mDualCameraManager.resume();
        }
        if (this.mProjectManager != null) {
            this.mProjectManager.enableRemoteControl();
        }
        if (isNeedConfirmPassWord(this.mAdapter.getDataItem(this.mPager.getCurrentItem()))) {
            this.mNeedConfirmPassWord = false;
            LockSettingsHelper.startAuthenticatePasswordActivity((Fragment) this, 27);
        }
        if (this.mVoiceAssistantReceiver == null) {
            this.mVoiceAssistantReceiver = new VoiceAssistantReceiver(this, null);
            LocalBroadcastManager.getInstance(this.mActivity).registerReceiver(this.mVoiceAssistantReceiver, new IntentFilter("com.miui.gallery.action.VOICE_ASSISTANT_SHARE"));
        }
    }

    public void onPause() {
        super.onPause();
        doOnPause();
    }

    public void onResume() {
        super.onResume();
        doOnResume();
    }

    public void onActivityReenter(int resultCode, Intent data) {
        if (data != null) {
            String editType = data.getStringExtra("extra_photo_edit_type");
            if ("extra_photo_editor_type_common".equals(editType)) {
                if (this.mEditorManager != null) {
                    this.mEditorManager.onActivityReenter(data);
                }
            } else if ("extra_photo_editor_type_refocus".equals(editType) && this.mRefocusManager != null) {
                this.mRefocusManager.onActivityReenter(data);
            }
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case 24:
                if (this.mProjectManager != null) {
                    this.mProjectManager.exitSlideShow();
                    break;
                }
                break;
            case 27:
                if (resultCode == -1) {
                    this.mNeedConfirmPassWord = false;
                    break;
                } else {
                    finishActivity(resultCode);
                    break;
                }
            case 30:
                if (this.mEditorManager != null) {
                    this.mEditorManager.onActivityResult(resultCode, data);
                }
                if (data != null && data.getBooleanExtra("photo_secret_finish", false)) {
                    finishActivity(0);
                    break;
                } else {
                    this.mNeedConfirmPassWord = false;
                    break;
                }
                break;
            case 37:
                if (this.mDualCameraManager != null) {
                    this.mDualCameraManager.onDualPhotoEdited(data);
                    break;
                }
                break;
            case 38:
                if (resultCode != -1) {
                    finishActivity(resultCode);
                    break;
                } else {
                    this.mNeedConfirmPassWord = false;
                    break;
                }
            case 44:
                if (this.mRefocusManager != null) {
                    this.mRefocusManager.onActivityResult(data);
                    break;
                }
                break;
            case 45:
                if (resultCode == -1 && this.mVideoPlayerManager != null) {
                    this.mVideoPlayerManager.onActivityResult(data);
                    setActionBarVisible(true);
                    break;
                }
        }
        super.onActivityResult(requestCode, resultCode, data);
        this.mPagerHelper.onActivityResult(requestCode, resultCode, data);
    }

    protected void onShared() {
        if (this.mChoiceManager != null) {
            this.mChoiceManager.onShared();
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
        PhotoPagerSamplingStatHelper.onDestroy();
        if (this.mProjectManager != null) {
            this.mProjectManager.release();
        }
        if (this.mOrientationManager != null) {
            this.mOrientationManager.release();
        }
        if (this.mMaskManager != null) {
            this.mMaskManager.release();
        }
        if (this.mChoiceManager != null) {
            this.mChoiceManager.release();
        }
        if (this.mRefocusManager != null) {
            this.mRefocusManager.release();
            this.mRefocusManager = null;
        }
        if (this.mSmartVideoGuideManager != null) {
            this.mSmartVideoGuideManager.release();
        }
        if (this.mNFCManager != null) {
            this.mNFCManager.release();
        }
        this.mDataLoaded = false;
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        if (isPreviewMode()) {
            return false;
        }
        menu.clear();
        this.mActivity.getMenuInflater().inflate(R.menu.photo_page, menu);
        int operationMask = 0;
        Bundle args = getArguments();
        if (args != null) {
            operationMask = args.getInt("support_operation_mask", -1);
        }
        this.mMenuManager = new MenuManager(menu, operationMask);
        this.mFavoritesManager = new FavoritesManager(menu);
        return true;
    }

    public void onPrepareOptionsMenu(Menu menu) {
        if (this.mMenuManager != null) {
            this.mMenuManager.settleItem(this.mAdapter.getDataItem(this.mPager.getCurrentItem()));
        }
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        this.mMenuManager.onMenuItemClick(item);
        return true;
    }

    public void onMultiWindowModeChanged(boolean isInMultiWindowMode) {
        Log.d("PhotoPageFragment", "isInMultiWindowMode: %b", Boolean.valueOf(isInMultiWindowMode));
        if (this.mOrientationManager != null) {
            this.mOrientationManager.onMultiWindowModeChanged(isInMultiWindowMode);
        }
        if (this.mChoiceManager != null) {
            this.mChoiceManager.onMultiWindowModeChanged(isInMultiWindowMode);
        }
    }

    private boolean isActionBarVisible() {
        return getActionBar() != null && getActionBar().isShowing();
    }

    private void setActionBarVisible(boolean visible) {
        if (visible != isActionBarVisible()) {
            if (visible) {
                if ((this.mChoiceManager == null || !this.mChoiceManager.isSlipped()) && !isPreviewMode()) {
                    getActionBar().show();
                } else {
                    return;
                }
            } else if (!alwaysShowMenubar()) {
                getActionBar().hide();
            } else {
                return;
            }
            onActionBarVisibilityChanged(visible);
        }
    }

    private void showActionBarView() {
        Log.d("PhotoPageFragment", "showActionBarView");
        if (this.mTopBar != null && !this.mTopBar.isShowing()) {
            this.mTopBar.show();
            showBottomMenu();
            if (this.mMaskManager != null) {
                this.mMaskManager.showMaskImmediately();
            }
        }
    }

    private void hideActionBarView() {
        Log.d("PhotoPageFragment", "hideActionBarView");
        if (this.mTopBar != null && this.mTopBar.isShowing()) {
            this.mTopBar.hide();
            hideBottomMenu();
            if (this.mMaskManager != null) {
                this.mMaskManager.hideMaskImmediately();
            }
        }
    }

    private boolean inPreviewMode() {
        return !isActionBarVisible() && (this.mChoiceManager == null || !this.mChoiceManager.isPendingSlipped());
    }

    private void refreshTheme(boolean quickly) {
        if (this.mThemeManager == null) {
            return;
        }
        if (inPreviewMode()) {
            this.mThemeManager.setDarkTheme(true, quickly);
        } else {
            this.mThemeManager.setLightTheme(true, quickly);
        }
    }

    private void onActionBarVisibilityChanged(boolean visible) {
        int navigationColor = 0;
        if (visible) {
            if (this.mDualCameraManager != null) {
                this.mDualCameraManager.showMoreFuncExceptRefocus(true);
            }
            if (this.mFavoritesManager != null) {
                this.mFavoritesManager.show();
            }
            if (this.mRefocusManager != null) {
                this.mRefocusManager.tryChangeButtonVisible(true);
            }
            if (this.mSmartVideoGuideManager != null) {
                this.mSmartVideoGuideManager.onActionBarVisibilityChanged(true);
            }
        } else {
            if (this.mDualCameraManager != null) {
                this.mDualCameraManager.hideMoreFuncExceptRefocus(true);
            }
            if (!(this.isExiting || this.mFavoritesManager == null)) {
                this.mFavoritesManager.hide();
            }
            if (!(this.isExiting || this.mRefocusManager == null)) {
                this.mRefocusManager.tryChangeButtonVisible(false);
            }
            if (this.mSmartVideoGuideManager != null) {
                this.mSmartVideoGuideManager.onActionBarVisibilityChanged(false);
            }
        }
        if (this.mMaskManager != null) {
            this.mMaskManager.refreshMask(true);
        }
        if (!this.isExiting) {
            refreshTheme(false);
            this.mPagerHelper.onActionBarVisibleChanged(visible, getActionBarHeight());
            SystemUiUtil.setSystemBarsVisibility(visible, this.mActivity.getWindow().getDecorView());
            if (ViewCompat.getSystemWindowInsetBottom(this.mActivity.getWindow().getDecorView()) > 0) {
                if (visible) {
                    navigationColor = -1;
                }
                com.miui.gallery.compat.view.WindowCompat.setNavigationBarColor(this.mActivity.getWindow(), navigationColor);
            }
        }
    }

    private int getActionBarHeight() {
        int actionBarHeight = getActionBar().getHeight();
        if (actionBarHeight > 0) {
            return actionBarHeight;
        }
        return MiscUtil.getStatusBarHeight(this.mActivity) + this.mActivity.getResources().getDimensionPixelSize(R.dimen.photo_page_actionbar_height);
    }

    private boolean alwaysShowMenubar() {
        return this.mAlwaysShowMenubar;
    }

    private boolean fromRecommendFacePage() {
        return this.mFromRecommendFacePage;
    }

    private boolean isPreviewMode() {
        return fromRecommendFacePage() || this.mPreviewMode;
    }

    private boolean isNeedConfirmPassWord(BaseDataItem item) {
        return item != null && item.isSecret() && this.mNeedConfirmPassWord;
    }

    public void onStop() {
        this.mNeedConfirmPassWord = true;
        super.onStop();
    }

    public void onTrimMemory(int level) {
        super.onTrimMemory(level);
        if (level == 20) {
            Log.d("PhotoPageFragment", "onTrimMemory level:%d", Integer.valueOf(level));
            PhotoReusedBitCache.getInstance().clear();
            TileReusedBitCache.getInstance().clear();
        }
    }

    public String getPageName() {
        return "photo";
    }

    public void onDestroy() {
        PhotoReusedBitCache.getInstance().initFirstCacheBitmap();
        TileReusedBitCache.getInstance().clear();
        if (this.mScreenReceiver != null) {
            ReceiverUtils.safeUnregisterReceiver(this.mActivity, this.mScreenReceiver);
        }
        if (this.mPhotoRefreshReceiver != null) {
            LocalBroadcastManager.getInstance(this.mActivity).unregisterReceiver(this.mPhotoRefreshReceiver);
        }
        if (this.mDualCameraManager != null) {
            this.mDualCameraManager.onDestory();
        }
        if (this.mEditorManager != null) {
            this.mEditorManager.onDestroy();
        }
        if (this.mFavoritesManager != null) {
            this.mFavoritesManager.onDestroy();
        }
        if (this.mVideoPlayerManager != null) {
            this.mVideoPlayerManager.onDestroy();
        }
        CacheOfAllFacesInOnePhoto.getInstance().clearCache();
        if (isStatUserShowMenuBar()) {
            statUserShowMenuBar();
        }
        super.onDestroy();
    }

    private boolean isStatUserShowMenuBar() {
        return isFromCamera();
    }

    private void statUserShowMenuBar() {
        boolean isUserShowBar = true;
        HashMap<String, String> map = new HashMap(1);
        if (this.mUserShowBarIndex < 0) {
            isUserShowBar = false;
        }
        map.put("isUserShowMenuBar", String.valueOf(isUserShowBar));
        if (isUserShowBar) {
            map.put("showBarIndex", String.valueOf(this.mUserShowBarIndex));
        }
        GallerySamplingStatHelper.recordCountEvent("photo", "photo_user_show_menu_bar", map);
    }

    private void doOnItemChanged(int position) {
        BaseDataItem curDataItem = this.mAdapter.getDataItem(position);
        if (curDataItem != null) {
            refreshTopBar(curDataItem);
            if (this.mFavoritesManager != null) {
                this.mFavoritesManager.updateItem(curDataItem);
            }
            if (this.mRefocusManager != null) {
                this.mRefocusManager.updateItem(curDataItem);
            }
            if (this.mSmartVideoGuideManager != null) {
                this.mSmartVideoGuideManager.updateItem(curDataItem);
            }
        }
        if (this.mMaskManager != null) {
            this.mMaskManager.refreshMask(false);
        }
        if (this.mDualCameraManager != null) {
            this.mDualCameraManager.updateItem(curDataItem);
        }
    }

    private void doOnItemSettled(int position) {
        BaseDataItem curDataItem = this.mAdapter.getDataItem(position);
        if (curDataItem != null) {
            if (this.mMenuManager != null) {
                this.mMenuManager.settleItem(curDataItem);
            }
            if (this.mProjectManager != null) {
                this.mProjectManager.settleItem(curDataItem, position);
            }
            if (this.mOrientationManager != null) {
                this.mOrientationManager.settleItem(curDataItem);
            }
            if (this.mNFCManager != null) {
                this.mNFCManager.settleItem(curDataItem);
            }
            if (this.mChoiceManager != null) {
                this.mChoiceManager.settleItem(curDataItem);
            }
            if (this.mDualCameraManager != null) {
                this.mDualCameraManager.settleItem(curDataItem);
            }
            this.mPagerHelper.onActionBarVisibleChanged(isActionBarVisible(), getActionBarHeight());
            int flags = this.mActivity.getWindow().getAttributes().flags;
            if (curDataItem.isSecret()) {
                if ((flags & 8192) == 0) {
                    Log.d("PhotoPageFragment", "add FLAG_SECURE");
                    this.mActivity.getWindow().addFlags(8192);
                }
            } else if ((flags & 8192) != 0) {
                Log.d("PhotoPageFragment", "clear FLAG_SECURE");
                this.mActivity.getWindow().clearFlags(8192);
            }
            TalkBackUtil.requestAnnouncementEvent(this.mPager, curDataItem.getContentDescription(this.mActivity));
        }
    }

    protected void onItemSettled(int position) {
        super.onItemSettled(position);
        doOnItemSettled(position);
    }

    protected void onItemChanged(int position) {
        super.onItemChanged(position);
        doOnItemChanged(position);
    }

    public void onImageLoadFinish(String uri) {
        if (this.mEditorManager != null) {
            this.mEditorManager.onImageLoadFinish(uri);
        }
        if (this.mRefocusManager != null) {
            this.mRefocusManager.onImageLoadFinish(uri);
        }
    }

    private boolean needDismissKeyGuard() {
        return (!this.mStartWhenLocked || this.mStartWhenLockedAndSecret || this.mHasSendDismissCast) ? false : true;
    }

    private void dismissKeyGuard() {
        this.mHasSendDismissCast = true;
        this.mActivity.sendBroadcast(new Intent("xiaomi.intent.action.SHOW_SECURE_KEYGUARD"));
    }

    private void downloadOrigin() {
        PhotoPageItem pageItem = this.mPagerHelper.getCurrentItem();
        if (pageItem != null) {
            pageItem.downloadOrigin();
        }
    }

    protected void downloadOrigin(final BaseDataItem item, final DownloadCallback downloadCallback) {
        if (NetworkUtils.isActiveNetworkMetered()) {
            DialogUtil.showInfoDialog(this.mActivity, getResources().getString(R.string.download_without_wifi_msg), getResources().getString(R.string.download_without_wifi_title), 17039370, 17039360, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogI, int which) {
                    PhotoPageFragment.this.mMenuManager.refreshDownloadItem(null, true, false);
                    PhotoPageFragment.this.doDownloadOrigin(item, DownloadType.ORIGIN_FORCE, downloadCallback);
                }
            }, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    dialog.cancel();
                }
            });
            return;
        }
        this.mMenuManager.refreshDownloadItem(null, true, false);
        doDownloadOrigin(item, DownloadType.ORIGIN, downloadCallback);
    }

    private void doDownloadOrigin(final BaseDataItem item, final DownloadType imageType, final DownloadCallback downloadCallback) {
        OnDownloadListener onDownloadListener = new OnDownloadListener() {
            public void onDownloadComplete(List<BulkDownloadItem> successes, List<BulkDownloadItem> list) {
                if (successes == null || successes.size() < 1) {
                    DialogUtil.showInfoDialog(PhotoPageFragment.this.mActivity, PhotoPageFragment.this.getResources().getString(R.string.download_retry_message), PhotoPageFragment.this.getResources().getString(R.string.download_retry_title), (int) R.string.download_retry_text, 17039360, new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            PhotoPageFragment.this.downloadOrigin(item, downloadCallback);
                        }
                    }, new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            PhotoPageFragment.this.mDownloadListener.onLoadingCancelled(item.getDownloadUri(), imageType, null);
                        }
                    });
                    return;
                }
                item.setFilePath(((BulkDownloadItem) successes.get(0)).getDownloadPath());
                downloadCallback.downloadSuccess(((BulkDownloadItem) successes.get(0)).getDownloadPath(), item);
                PhotoPageFragment.this.mDownloadListener.onDownloadComplete(item.getDownloadUri(), imageType, null, item.getOriginalPath());
            }

            public void onCanceled() {
                PhotoPageFragment.this.mDownloadListener.onLoadingCancelled(item.getDownloadUri(), imageType, null);
            }
        };
        BulkDownloadItem downloadItem = new BulkDownloadItem(item.getDownloadUri(), imageType, item.getSize());
        ArrayList<BulkDownloadItem> downloadItems = new ArrayList();
        downloadItems.add(downloadItem);
        DownloadFragment downloadFragment = DownloadFragment.newInstance(downloadItems);
        downloadFragment.setOnDownloadListener(onDownloadListener);
        downloadFragment.showAllowingStateLoss(getFragmentManager(), "DownloadFragment");
    }

    private boolean prohibitOperateProcessingItem(BaseDataItem current) {
        if (!isProcessingMedia(current)) {
            return false;
        }
        ToastUtils.makeText(this.mActivity, (int) R.string.operate_processing_file_error);
        return true;
    }

    private boolean supportProjection() {
        return CTA.canConnectNetwork() || !GalleryUtils.needImpunityDeclaration();
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (this.mOrientationManager != null) {
            this.mOrientationManager.onUiOrientationChanged(newConfig);
        }
        if (this.mChoiceManager != null) {
            this.mChoiceManager.onUiOrientationChanged(newConfig);
        }
    }

    private boolean activityAlive() {
        return (this.mActivity == null || this.mActivity.isDestroyed() || this.mActivity.isFinishing()) ? false : true;
    }

    private String getItemClickEventCategory(BaseDataItem item) {
        if (item.isSecret()) {
            return "photo_secret";
        }
        return "photo";
    }
}
