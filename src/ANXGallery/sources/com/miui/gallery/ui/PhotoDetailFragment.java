package com.miui.gallery.ui;

import android.app.Fragment;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.AsyncTaskLoader;
import android.content.Context;
import android.content.Intent;
import android.content.Loader;
import android.location.Address;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewParent;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.data.LocationUtil;
import com.miui.gallery.data.ReverseGeocoder;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.PhotoDetailInfo;
import com.miui.gallery.preference.GalleryPreferences.CTA;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.FormatUtil;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.ToastUtils;
import com.miui.privacy.LockSettingsHelper;
import java.util.Locale;
import miui.date.DateUtils;

public class PhotoDetailFragment extends BaseFragment {
    private Future<Address> mAddressFuture;
    private OnClickListener mClickListener = new OnClickListener() {
        public void onClick(View v) {
            if (PhotoDetailFragment.this.mDetailInfo != null) {
                switch (v.getId()) {
                    case R.id.location_title /*2131886600*/:
                        Object obj = PhotoDetailFragment.this.mDetailInfo.getDetail(6);
                        if (obj != null) {
                            float[] coordidate = (float[]) obj;
                            if (LocationUtil.isValidateCoordidate(coordidate[0], coordidate[1]) && !IntentUtil.showOnMap(PhotoDetailFragment.this.mActivity, (double) coordidate[0], (double) coordidate[1])) {
                                ToastUtils.makeText(PhotoDetailFragment.this.mActivity, (int) R.string.no_map_app);
                            }
                            GallerySamplingStatHelper.recordCountEvent("photo_detail", "show_on_map");
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        }
    };
    private View mContentContainer;
    private PhotoDetailInfo mDetailInfo;
    private View mFileInfoItem;
    private TextView mFileInfoSub;
    private TextView mFileInfoTitle;
    private BaseDataItem mItem;
    private DetailLoaderCallBack mLoaderCallBack;
    private TextView mLocation;
    private View mLocationItem;
    private boolean mNeedConfirmPassword;
    private View mParamsItem;
    private TextView mPath;
    private View mPathItem;
    private ProgressBar mProgress;
    private TextView mScreenshotPackageInfo;
    private View mScreenshotPackageItem;
    private TextView mTakenParamsSub;
    private TextView mTakenParamsThird;
    private TextView mTakenParamsTitle;
    private View mTimeItem;
    private TextView mTimeSub;
    private TextView mTimeTitle;
    private TextView mTipNoDownload;

    private static class DetailLoader extends AsyncTaskLoader<PhotoDetailInfo> {
        private BaseDataItem mDataItem;
        private PhotoDetailInfo mDetailInfo;

        public DetailLoader(Context context, BaseDataItem item) {
            super(context);
            this.mDataItem = item;
        }

        public PhotoDetailInfo loadInBackground() {
            if (this.mDataItem != null) {
                this.mDetailInfo = this.mDataItem.getDetailInfo(getContext());
            }
            return this.mDetailInfo;
        }

        protected final void onStartLoading() {
            if (this.mDetailInfo != null) {
                deliverResult(this.mDetailInfo);
            }
            if (takeContentChanged() || this.mDetailInfo == null) {
                forceLoad();
            }
        }

        protected final void onStopLoading() {
            cancelLoad();
        }

        protected final void onReset() {
            super.onReset();
            onStopLoading();
            if (this.mDetailInfo != null) {
                this.mDetailInfo = null;
            }
        }
    }

    private class DetailLoaderCallBack implements LoaderCallbacks {
        private DetailLoaderCallBack() {
        }

        /* synthetic */ DetailLoaderCallBack(PhotoDetailFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int id, Bundle args) {
            return new DetailLoader(PhotoDetailFragment.this.mActivity, PhotoDetailFragment.this.mItem);
        }

        public void onLoadFinished(Loader loader, Object data) {
            if (data != null) {
                PhotoDetailFragment.this.mDetailInfo = (PhotoDetailInfo) data;
                PhotoDetailFragment.this.bindDetail(PhotoDetailFragment.this.mDetailInfo);
            }
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    public static class FlashState {
        private static int FLASH_FIRED_MASK = 1;
        private static int FLASH_FUNCTION_MASK = 32;
        private static int FLASH_MODE_MASK = 24;
        private static int FLASH_RED_EYE_MASK = 64;
        private static int FLASH_RETURN_MASK = 6;
        private int mState;

        public FlashState(int state) {
            this.mState = state;
        }

        public boolean isFlashFired() {
            return (this.mState & FLASH_FIRED_MASK) != 0;
        }
    }

    /* JADX WARNING: Missing block: B:3:0x0016, code:
            if (r2 == null) goto L_0x0018;
     */
    public android.view.View onInflateView(android.view.LayoutInflater r5, android.view.ViewGroup r6, android.os.Bundle r7) {
        /*
        r4 = this;
        r2 = r4.mActivity;
        r2 = r2.getIntent();
        r0 = r2.getExtras();
        if (r0 == 0) goto L_0x0018;
    L_0x000c:
        r2 = "photo_detail_target";
        r2 = r0.getSerializable(r2);
        r2 = (com.miui.gallery.model.BaseDataItem) r2;
        r4.mItem = r2;
        if (r2 != 0) goto L_0x001b;
    L_0x0018:
        r4.finish();
    L_0x001b:
        r4.setRootViewClickable(r6);
        r2 = 2130968793; // 0x7f0400d9 float:1.754625E38 double:1.052838473E-314;
        r3 = 0;
        r1 = r5.inflate(r2, r6, r3);
        r2 = 2131886581; // 0x7f1201f5 float:1.9407745E38 double:1.0532919205E-314;
        r2 = r1.findViewById(r2);
        r4.mTimeItem = r2;
        r2 = 2131886583; // 0x7f1201f7 float:1.9407749E38 double:1.0532919215E-314;
        r2 = r1.findViewById(r2);
        r2 = (android.widget.TextView) r2;
        r4.mTimeTitle = r2;
        r2 = 2131886584; // 0x7f1201f8 float:1.940775E38 double:1.053291922E-314;
        r2 = r1.findViewById(r2);
        r2 = (android.widget.TextView) r2;
        r4.mTimeSub = r2;
        r2 = 2131886585; // 0x7f1201f9 float:1.9407753E38 double:1.0532919225E-314;
        r2 = r1.findViewById(r2);
        r4.mFileInfoItem = r2;
        r2 = 2131886587; // 0x7f1201fb float:1.9407757E38 double:1.0532919235E-314;
        r2 = r1.findViewById(r2);
        r2 = (android.widget.TextView) r2;
        r4.mFileInfoTitle = r2;
        r2 = 2131886588; // 0x7f1201fc float:1.940776E38 double:1.053291924E-314;
        r2 = r1.findViewById(r2);
        r2 = (android.widget.TextView) r2;
        r4.mTipNoDownload = r2;
        r2 = 2131886589; // 0x7f1201fd float:1.9407761E38 double:1.0532919245E-314;
        r2 = r1.findViewById(r2);
        r2 = (android.widget.TextView) r2;
        r4.mFileInfoSub = r2;
        r2 = 2131886590; // 0x7f1201fe float:1.9407763E38 double:1.053291925E-314;
        r2 = r1.findViewById(r2);
        r4.mParamsItem = r2;
        r2 = 2131886592; // 0x7f120200 float:1.9407767E38 double:1.053291926E-314;
        r2 = r1.findViewById(r2);
        r2 = (android.widget.TextView) r2;
        r4.mTakenParamsTitle = r2;
        r2 = 2131886593; // 0x7f120201 float:1.940777E38 double:1.0532919264E-314;
        r2 = r1.findViewById(r2);
        r2 = (android.widget.TextView) r2;
        r4.mTakenParamsSub = r2;
        r2 = 2131886594; // 0x7f120202 float:1.9407771E38 double:1.053291927E-314;
        r2 = r1.findViewById(r2);
        r2 = (android.widget.TextView) r2;
        r4.mTakenParamsThird = r2;
        r2 = 2131886595; // 0x7f120203 float:1.9407773E38 double:1.0532919274E-314;
        r2 = r1.findViewById(r2);
        r4.mPathItem = r2;
        r2 = 2131886597; // 0x7f120205 float:1.9407777E38 double:1.0532919284E-314;
        r2 = r1.findViewById(r2);
        r2 = (android.widget.TextView) r2;
        r4.mPath = r2;
        r2 = 2131886598; // 0x7f120206 float:1.940778E38 double:1.053291929E-314;
        r2 = r1.findViewById(r2);
        r4.mLocationItem = r2;
        r2 = 2131886600; // 0x7f120208 float:1.9407783E38 double:1.05329193E-314;
        r2 = r1.findViewById(r2);
        r2 = (android.widget.TextView) r2;
        r4.mLocation = r2;
        r2 = 2131886553; // 0x7f1201d9 float:1.9407688E38 double:1.0532919067E-314;
        r2 = r1.findViewById(r2);
        r4.mContentContainer = r2;
        r2 = 2131886100; // 0x7f120014 float:1.940677E38 double:1.053291683E-314;
        r2 = r1.findViewById(r2);
        r2 = (android.widget.ProgressBar) r2;
        r4.mProgress = r2;
        r2 = 2131886601; // 0x7f120209 float:1.9407785E38 double:1.0532919304E-314;
        r2 = r1.findViewById(r2);
        r4.mScreenshotPackageItem = r2;
        r2 = 2131886603; // 0x7f12020b float:1.940779E38 double:1.0532919314E-314;
        r2 = r1.findViewById(r2);
        r2 = (android.widget.TextView) r2;
        r4.mScreenshotPackageInfo = r2;
        r2 = r4.mLocation;
        r3 = r4.mClickListener;
        r2.setOnClickListener(r3);
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.ui.PhotoDetailFragment.onInflateView(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    private boolean isNeedConfirmPassword() {
        return this.mItem.isSecret() && this.mNeedConfirmPassword;
    }

    public void onResume() {
        super.onResume();
        if (isNeedConfirmPassword()) {
            this.mNeedConfirmPassword = false;
            LockSettingsHelper.startAuthenticatePasswordActivity((Fragment) this, 27);
        }
    }

    public void onStop() {
        this.mNeedConfirmPassword = true;
        super.onStop();
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case 27:
                if (resultCode == -1) {
                    this.mNeedConfirmPassword = false;
                    break;
                } else {
                    finishActivity(resultCode);
                    break;
                }
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    public boolean onBackPressed() {
        finishActivity(-1);
        return false;
    }

    private void finishActivity(int resultCode) {
        getActivity().setResult(resultCode);
        getActivity().finish();
    }

    private void setRootViewClickable(View container) {
        if (container != null) {
            ViewParent parent = container.getParent();
            if (parent == null || !(parent instanceof View)) {
                container.setClickable(true);
            } else {
                ((View) parent).setClickable(true);
            }
        }
    }

    private String genPixels(Object width, Object height) {
        return width + "x" + height + "px";
    }

    private String genAperture(String value) {
        value = value.replaceAll("0+?$", "");
        if (value.endsWith(".")) {
            value = value + "0";
        }
        return "f/" + value;
    }

    private String genExposureTime(String value) {
        try {
            double time = Double.valueOf(value).doubleValue();
            if (time < 1.0d) {
                return String.format(Locale.US, "1/%d", new Object[]{Long.valueOf(Math.round(1.0d / time))});
            }
            int integer = (int) time;
            time -= (double) integer;
            value = String.valueOf(integer) + "''";
            if (time <= 1.0E-4d) {
                return value;
            }
            return value + String.format(Locale.US, " 1/%d", new Object[]{Long.valueOf(Math.round(1.0d / time))});
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return value;
        }
    }

    private String genISO(Object value) {
        return "ISO" + value;
    }

    private String genFocalLength(Object value) {
        return value + "mm";
    }

    private String genFlashFired(int state) {
        return this.mActivity.getResources().getString(new FlashState(state).isFlashFired() ? R.string.flash_on : R.string.flash_off);
    }

    private String genLocation(float[] coordidate) {
        if (LocationUtil.isValidateCoordidate(coordidate[0], coordidate[1])) {
            return coordidate[0] + ", " + coordidate[1];
        }
        return null;
    }

    private void bindTime(PhotoDetailInfo detailInfo) {
        Object obj = detailInfo.getDetail(1);
        if (obj != null) {
            long time = ((Long) obj).longValue();
            this.mTimeTitle.setText(DateUtils.formatDateTime(time, 896));
            StringBuilder builder = new StringBuilder();
            builder.append(DateUtils.formatDateTime(time, 1024));
            builder.append("    ").append(DateUtils.formatDateTime(time, 44));
            this.mTimeSub.setText(builder.toString());
            setItemVisible(this.mTimeItem, true);
            return;
        }
        setItemVisible(this.mTimeItem, false);
    }

    private void bindFileInfo(PhotoDetailInfo detailInfo) {
        boolean isShow = false;
        Object obj = detailInfo.getDetail(2);
        if (obj != null) {
            isShow = true;
            this.mFileInfoTitle.setText((String) obj);
        }
        StringBuilder builder = new StringBuilder();
        obj = detailInfo.getDetail(3);
        if (obj != null) {
            builder.append(FormatUtil.formatFileSize(this.mActivity, ((Long) obj).longValue())).append("    ");
        }
        Object width = detailInfo.getDetail(4);
        Object height = detailInfo.getDetail(5);
        if (!(width == null || height == null)) {
            builder.append(genPixels(width, height)).append("    ");
        }
        obj = detailInfo.getDetail(7);
        if (obj != null) {
            builder.append(FormatUtil.formatDuration(this.mActivity, ((Integer) obj).intValue()));
        }
        if (builder.length() > 0) {
            isShow = true;
            this.mFileInfoSub.setText(builder.toString());
            setItemVisible(this.mFileInfoSub, true);
        } else {
            setItemVisible(this.mFileInfoSub, false);
        }
        setItemVisible(this.mFileInfoItem, isShow);
    }

    private void bindNotDownloadTip(PhotoDetailInfo detailInfo) {
        Object obj = detailInfo.getDetail(8);
        if (obj != null) {
            this.mTipNoDownload.setText((String) obj);
            setItemVisible(this.mTipNoDownload, true);
            return;
        }
        setItemVisible(this.mTipNoDownload, false);
    }

    private void bindTakenParams(PhotoDetailInfo detailInfo) {
        StringBuilder builder = new StringBuilder();
        Object obj = detailInfo.getDetail(BaiduSceneResult.SHOOTING);
        if (obj != null) {
            builder.append(obj);
        }
        obj = detailInfo.getDetail(100);
        if (obj != null) {
            builder.append(", ").append(obj);
        }
        if (builder.length() > 0) {
            boolean isShow = true;
            this.mTakenParamsTitle.setText(builder.toString());
            builder.setLength(0);
            obj = detailInfo.getDetail(BaiduSceneResult.TEMPLE);
            if (obj != null) {
                builder.append(genAperture((String) obj)).append("    ");
            }
            obj = detailInfo.getDetail(BaiduSceneResult.GARDEN);
            if (obj != null) {
                builder.append(genExposureTime((String) obj)).append("    ");
            }
            obj = detailInfo.getDetail(BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE);
            if (obj != null) {
                builder.append(genISO(obj));
            }
            if (builder.length() > 0) {
                isShow = true;
                this.mTakenParamsSub.setText(builder.toString());
                setItemVisible(this.mTakenParamsSub, true);
            } else {
                setItemVisible(this.mTakenParamsSub, false);
            }
            builder.setLength(0);
            obj = detailInfo.getDetail(BaiduSceneResult.MOUNTAINEERING);
            if (obj != null) {
                builder.append(genFocalLength(obj)).append("    ");
            }
            obj = detailInfo.getDetail(BaiduSceneResult.TAEKWONDO);
            if (obj != null) {
                builder.append(genFlashFired(Integer.parseInt((String) obj)));
            }
            if (builder.length() > 0) {
                isShow = true;
                this.mTakenParamsThird.setText(builder.toString());
                setItemVisible(this.mTakenParamsThird, true);
            } else {
                setItemVisible(this.mTakenParamsThird, false);
            }
            setItemVisible(this.mParamsItem, isShow);
            return;
        }
        setItemVisible(this.mParamsItem, false);
    }

    private void bindPath(PhotoDetailInfo detailInfo) {
        Object obj = detailInfo.getDetail(200);
        if (obj != null) {
            this.mPath.setText(StorageUtils.getPathForDisplay(this.mActivity, (String) obj));
            setItemVisible(this.mPathItem, true);
            return;
        }
        setItemVisible(this.mPathItem, false);
    }

    private void bindLocation(PhotoDetailInfo detailInfo) {
        Object obj = detailInfo.getDetail(6);
        if (obj != null) {
            float[] coordidate = (float[]) obj;
            String location = genLocation(coordidate);
            if (TextUtils.isEmpty(location)) {
                setItemVisible(this.mLocationItem, false);
                return;
            }
            this.mLocation.setText(location);
            setItemVisible(this.mLocationItem, true);
            requestAddress((double) coordidate[0], (double) coordidate[1]);
            return;
        }
        setItemVisible(this.mLocationItem, false);
    }

    private void bindScreenshotPackageInfo(PhotoDetailInfo detailInfo) {
        Object obj = detailInfo.getDetail(9);
        if (TextUtils.isEmpty((String) obj) || this.mItem == null) {
            setItemVisible(this.mScreenshotPackageItem, false);
            return;
        }
        Object name = detailInfo.getDetail(2);
        if (this.mItem.getLocalGroupId() == 2 && name != null && ((String) name).startsWith("Screenshot")) {
            this.mScreenshotPackageInfo.setText((String) obj);
            setItemVisible(this.mScreenshotPackageItem, true);
            return;
        }
        setItemVisible(this.mScreenshotPackageItem, false);
    }

    private void bindDetail(PhotoDetailInfo detailInfo) {
        try {
            bindTime(detailInfo);
            bindFileInfo(detailInfo);
            bindNotDownloadTip(detailInfo);
            bindTakenParams(detailInfo);
            bindPath(detailInfo);
            bindLocation(detailInfo);
            bindScreenshotPackageInfo(detailInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.mContentContainer.setVisibility(0);
        this.mProgress.setVisibility(8);
    }

    private void setItemVisible(View item, boolean visible) {
        if (visible) {
            item.setVisibility(0);
        } else {
            item.setVisibility(8);
        }
    }

    private void requestAddress(double latitude, double longitude) {
        cancelAddressRequest();
        if (CTA.canConnectNetwork()) {
            final double d = latitude;
            final double d2 = longitude;
            this.mAddressFuture = ThreadManager.getNetworkPool().submit(new Job<Address>() {
                public Address run(JobContext jc) {
                    return new ReverseGeocoder(PhotoDetailFragment.this.mActivity.getApplicationContext()).lookupAddress(d, d2, true, jc);
                }
            }, new FutureListener<Address>() {
                public void onFutureDone(Future<Address> future) {
                    if (!future.isCancelled()) {
                        Address address = (Address) future.get();
                        if (address != null) {
                            final StringBuilder builder = new StringBuilder();
                            String location = address.getAddressLine(0);
                            if (TextUtils.isEmpty(location)) {
                                String[] parts = new String[]{address.getAdminArea(), address.getSubAdminArea(), address.getLocality(), address.getSubLocality(), address.getThoroughfare(), address.getSubThoroughfare(), address.getPremises(), address.getPostalCode(), address.getCountryName()};
                                for (int i = 0; i < parts.length; i++) {
                                    if (!TextUtils.isEmpty(parts[i])) {
                                        if (builder.length() > 0) {
                                            builder.append(", ");
                                        }
                                        builder.append(parts[i]);
                                    }
                                }
                            } else {
                                builder.append(location);
                            }
                            if (builder.length() > 0) {
                                PhotoDetailFragment.this.mActivity.runOnUiThread(new Runnable() {
                                    public void run() {
                                        PhotoDetailFragment.this.mLocation.setText(builder.toString());
                                    }
                                });
                            }
                        }
                    }
                }
            });
            return;
        }
        Log.d("PhotoDetailFragment", "Abort request address task due to lack of CTA network connection permission");
    }

    private void cancelAddressRequest() {
        if (this.mAddressFuture != null) {
            this.mAddressFuture.cancel();
            this.mAddressFuture = null;
        }
    }

    public void onDestroy() {
        super.onDestroy();
        cancelAddressRequest();
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() != 16908332) {
            return super.onOptionsItemSelected(item);
        }
        finish();
        return true;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mLoaderCallBack = new DetailLoaderCallBack(this, null);
        getLoaderManager().initLoader("PhotoDetailFragment".hashCode(), getArguments(), this.mLoaderCallBack);
        if (this.mItem.isSecret()) {
            this.mActivity.getWindow().addFlags(8192);
        }
    }

    protected boolean useImageLoader() {
        return false;
    }

    public String getPageName() {
        return "photo_info";
    }
}
