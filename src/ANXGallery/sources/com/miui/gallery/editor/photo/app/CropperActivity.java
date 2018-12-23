package com.miui.gallery.editor.photo.app;

import android.app.Activity;
import android.app.Dialog;
import android.app.LoaderManager.LoaderCallbacks;
import android.app.ProgressDialog;
import android.content.AsyncTaskLoader;
import android.content.Context;
import android.content.Intent;
import android.content.Loader;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.edmodo.cropper.CropImageView;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.GalleryDialogFragment;
import java.lang.ref.WeakReference;

public class CropperActivity extends BaseActivity {
    private LoaderCallbacks<DecodeResult> mCallbacks = new LoaderCallbacks<DecodeResult>() {
        public Loader<DecodeResult> onCreateLoader(int id, Bundle args) {
            return new PrepareLoader(CropperActivity.this, CropperActivity.this.mData);
        }

        public void onLoadFinished(Loader loader, DecodeResult data) {
            if (data.mBitmap != null) {
                CropperActivity.this.mCropView.setImageBitmap(data.mBitmap);
                CropperActivity.this.mSaveButton.setEnabled(true);
                return;
            }
            if (data.mException != null) {
                Log.w("CropperActivity", data.mException);
            }
            Toast.makeText(CropperActivity.this, R.string.image_decode_failed, 0).show();
            CropperActivity.this.finish();
        }

        public void onLoaderReset(Loader loader) {
        }
    };
    private View mCancelButton;
    private CropImageView mCropView;
    private Uri mData;
    private OnClickListener mOnClickListener = new OnClickListener() {
        public void onClick(View v) {
            if (v == CropperActivity.this.mCancelButton) {
                CropperActivity.this.finish();
            } else if (v == CropperActivity.this.mSaveButton) {
                new ExportFragment().showAllowingStateLoss(CropperActivity.this.getFragmentManager(), "ExportFragment");
            }
        }
    };
    private Uri mOutput;
    private float mOutputX;
    private float mOutputY;
    private boolean mReturnData;
    private View mSaveButton;

    private static class DecodeResult {
        Bitmap mBitmap;
        Exception mException;

        DecodeResult(Bitmap bitmap, Exception exception) {
            this.mBitmap = bitmap;
            this.mException = exception;
        }
    }

    public static class ExportFragment extends GalleryDialogFragment {
        private LoaderCallbacks<Boolean> mCallbacks = new LoaderCallbacks<Boolean>() {
            public Loader<Boolean> onCreateLoader(int id, Bundle args) {
                return new ExportLoader(ExportFragment.this.mCropper, ExportFragment.this.mCropper.mOutput);
            }

            public void onLoadFinished(Loader loader, Boolean success) {
                if (success.booleanValue()) {
                    ExportFragment.this.mCropper.setResult(-1, new Intent());
                } else {
                    Toast.makeText(ExportFragment.this.mCropper, R.string.main_save_error_msg, 0).show();
                }
                ExportFragment.this.mCropper.finish();
            }

            public void onLoaderReset(Loader loader) {
            }
        };
        private CropperActivity mCropper;

        public void onAttach(Activity activity) {
            super.onAttach(activity);
            if (activity instanceof CropperActivity) {
                this.mCropper = (CropperActivity) activity;
                return;
            }
            throw new IllegalStateException("can't attach to install of " + activity.getClass().getSimpleName());
        }

        public void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            getLoaderManager().initLoader(0, null, this.mCallbacks);
        }

        public Dialog onCreateDialog(Bundle savedInstanceState) {
            ProgressDialog dialog = new ProgressDialog(this.mCropper);
            dialog.setCancelable(false);
            dialog.setCanceledOnTouchOutside(false);
            dialog.setMessage(getActivity().getString(R.string.photo_editor_saving));
            return dialog;
        }
    }

    private static class ExportLoader extends AsyncTaskLoader<Boolean> {
        private WeakReference<CropperActivity> mActivityWeakReference;
        private Uri mOut;
        private Boolean mResult;

        public ExportLoader(CropperActivity cropperActivity, Uri out) {
            super(cropperActivity);
            this.mOut = out;
            this.mActivityWeakReference = new WeakReference(cropperActivity);
        }

        /* JADX WARNING: Removed duplicated region for block: B:71:0x0105 A:{SYNTHETIC, Splitter: B:71:0x0105} */
        /* JADX WARNING: Removed duplicated region for block: B:53:0x00d6 A:{SYNTHETIC, Splitter: B:53:0x00d6} */
        /* JADX WARNING: Removed duplicated region for block: B:63:0x00f0 A:{SYNTHETIC, Splitter: B:63:0x00f0} */
        public java.lang.Boolean loadInBackground() {
            /*
            r12 = this;
            r11 = 0;
            r9 = "CropperActivity";
            r10 = "start export in background.";
            com.miui.gallery.util.Log.d(r9, r10);
            r9 = r12.mActivityWeakReference;
            r0 = r9.get();
            r0 = (com.miui.gallery.editor.photo.app.CropperActivity) r0;
            if (r0 != 0) goto L_0x0018;
        L_0x0013:
            r9 = java.lang.Boolean.valueOf(r11);
        L_0x0017:
            return r9;
        L_0x0018:
            r6 = r0.createOutput();
            if (r6 != 0) goto L_0x0023;
        L_0x001e:
            r9 = java.lang.Boolean.valueOf(r11);
            goto L_0x0017;
        L_0x0023:
            r9 = "file";
            r10 = r12.mOut;
            r10 = r10.getScheme();
            r9 = r9.equals(r10);
            if (r9 == 0) goto L_0x006c;
        L_0x0031:
            r9 = r12.mOut;
            r9 = r9.getPath();
            r2 = com.miui.gallery.util.FileUtils.getExtension(r9);
            r3 = com.miui.gallery.util.GalleryUtils.convertExtensionToCompressFormat(r2);
        L_0x003f:
            r4 = 0;
            r9 = r12.getContext();	 Catch:{ FileNotFoundException -> 0x00b4, SecurityException -> 0x00ce, Exception -> 0x00e8 }
            r9 = r9.getContentResolver();	 Catch:{ FileNotFoundException -> 0x00b4, SecurityException -> 0x00ce, Exception -> 0x00e8 }
            r10 = r12.mOut;	 Catch:{ FileNotFoundException -> 0x00b4, SecurityException -> 0x00ce, Exception -> 0x00e8 }
            r7 = r9.openOutputStream(r10);	 Catch:{ FileNotFoundException -> 0x00b4, SecurityException -> 0x00ce, Exception -> 0x00e8 }
            if (r7 == 0) goto L_0x009b;
        L_0x0050:
            r5 = new java.io.BufferedOutputStream;	 Catch:{ FileNotFoundException -> 0x00b4, SecurityException -> 0x00ce, Exception -> 0x00e8 }
            r5.<init>(r7);	 Catch:{ FileNotFoundException -> 0x00b4, SecurityException -> 0x00ce, Exception -> 0x00e8 }
            r9 = 100;
            r9 = r6.compress(r3, r9, r5);	 Catch:{ FileNotFoundException -> 0x0120, SecurityException -> 0x011d, Exception -> 0x011a, all -> 0x0117 }
            r9 = java.lang.Boolean.valueOf(r9);	 Catch:{ FileNotFoundException -> 0x0120, SecurityException -> 0x011d, Exception -> 0x011a, all -> 0x0117 }
            if (r5 == 0) goto L_0x0017;
        L_0x0061:
            r5.close();	 Catch:{ IOException -> 0x0065, Exception -> 0x0093 }
            goto L_0x0017;
        L_0x0065:
            r1 = move-exception;
            r10 = "CropperActivity";
            com.miui.gallery.util.Log.w(r10, r1);
            goto L_0x0017;
        L_0x006c:
            r9 = r12.getContext();
            r9 = r9.getContentResolver();
            r10 = r12.mOut;
            r8 = r9.getType(r10);
            r9 = "image/png";
            r9 = r9.equals(r8);
            if (r9 == 0) goto L_0x0085;
        L_0x0082:
            r3 = android.graphics.Bitmap.CompressFormat.PNG;
        L_0x0084:
            goto L_0x003f;
        L_0x0085:
            r9 = "image/webp";
            r9 = r9.equals(r8);
            if (r9 == 0) goto L_0x0090;
        L_0x008d:
            r3 = android.graphics.Bitmap.CompressFormat.WEBP;
            goto L_0x0084;
        L_0x0090:
            r3 = android.graphics.Bitmap.CompressFormat.JPEG;
            goto L_0x0084;
        L_0x0093:
            r1 = move-exception;
            r10 = "CropperActivity";
            com.miui.gallery.util.Log.e(r10, r1);
            goto L_0x0017;
        L_0x009b:
            if (r4 == 0) goto L_0x00a0;
        L_0x009d:
            r4.close();	 Catch:{ IOException -> 0x00a6, Exception -> 0x00ad }
        L_0x00a0:
            r9 = java.lang.Boolean.valueOf(r11);
            goto L_0x0017;
        L_0x00a6:
            r1 = move-exception;
            r9 = "CropperActivity";
            com.miui.gallery.util.Log.w(r9, r1);
            goto L_0x00a0;
        L_0x00ad:
            r1 = move-exception;
            r9 = "CropperActivity";
            com.miui.gallery.util.Log.e(r9, r1);
            goto L_0x00a0;
        L_0x00b4:
            r1 = move-exception;
        L_0x00b5:
            r9 = "CropperActivity";
            com.miui.gallery.util.Log.w(r9, r1);	 Catch:{ all -> 0x0102 }
            if (r4 == 0) goto L_0x00a0;
        L_0x00bc:
            r4.close();	 Catch:{ IOException -> 0x00c0, Exception -> 0x00c7 }
            goto L_0x00a0;
        L_0x00c0:
            r1 = move-exception;
            r9 = "CropperActivity";
            com.miui.gallery.util.Log.w(r9, r1);
            goto L_0x00a0;
        L_0x00c7:
            r1 = move-exception;
            r9 = "CropperActivity";
            com.miui.gallery.util.Log.e(r9, r1);
            goto L_0x00a0;
        L_0x00ce:
            r1 = move-exception;
        L_0x00cf:
            r9 = "CropperActivity";
            com.miui.gallery.util.Log.w(r9, r1);	 Catch:{ all -> 0x0102 }
            if (r4 == 0) goto L_0x00a0;
        L_0x00d6:
            r4.close();	 Catch:{ IOException -> 0x00da, Exception -> 0x00e1 }
            goto L_0x00a0;
        L_0x00da:
            r1 = move-exception;
            r9 = "CropperActivity";
            com.miui.gallery.util.Log.w(r9, r1);
            goto L_0x00a0;
        L_0x00e1:
            r1 = move-exception;
            r9 = "CropperActivity";
            com.miui.gallery.util.Log.e(r9, r1);
            goto L_0x00a0;
        L_0x00e8:
            r1 = move-exception;
        L_0x00e9:
            r9 = "CropperActivity";
            com.miui.gallery.util.Log.e(r9, r1);	 Catch:{ all -> 0x0102 }
            if (r4 == 0) goto L_0x00a0;
        L_0x00f0:
            r4.close();	 Catch:{ IOException -> 0x00f4, Exception -> 0x00fb }
            goto L_0x00a0;
        L_0x00f4:
            r1 = move-exception;
            r9 = "CropperActivity";
            com.miui.gallery.util.Log.w(r9, r1);
            goto L_0x00a0;
        L_0x00fb:
            r1 = move-exception;
            r9 = "CropperActivity";
            com.miui.gallery.util.Log.e(r9, r1);
            goto L_0x00a0;
        L_0x0102:
            r9 = move-exception;
        L_0x0103:
            if (r4 == 0) goto L_0x0108;
        L_0x0105:
            r4.close();	 Catch:{ IOException -> 0x0109, Exception -> 0x0110 }
        L_0x0108:
            throw r9;
        L_0x0109:
            r1 = move-exception;
            r10 = "CropperActivity";
            com.miui.gallery.util.Log.w(r10, r1);
            goto L_0x0108;
        L_0x0110:
            r1 = move-exception;
            r10 = "CropperActivity";
            com.miui.gallery.util.Log.e(r10, r1);
            goto L_0x0108;
        L_0x0117:
            r9 = move-exception;
            r4 = r5;
            goto L_0x0103;
        L_0x011a:
            r1 = move-exception;
            r4 = r5;
            goto L_0x00e9;
        L_0x011d:
            r1 = move-exception;
            r4 = r5;
            goto L_0x00cf;
        L_0x0120:
            r1 = move-exception;
            r4 = r5;
            goto L_0x00b5;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.editor.photo.app.CropperActivity.ExportLoader.loadInBackground():java.lang.Boolean");
        }

        protected void onStartLoading() {
            super.onStartLoading();
            if (this.mResult == null) {
                forceLoad();
            } else {
                deliverResult(this.mResult);
            }
        }

        public void deliverResult(Boolean data) {
            super.deliverResult(data);
            this.mResult = data;
            if (isStarted()) {
                super.deliverResult(data);
            }
        }

        protected void onReset() {
            super.onReset();
        }
    }

    private static class PrepareLoader extends AsyncTaskLoader<DecodeResult> {
        private DecodeResult mDecodeResult;
        private Uri mUri;

        public PrepareLoader(Context context, Uri image) {
            super(context);
            this.mUri = image;
        }

        /* JADX WARNING: Removed duplicated region for block: B:28:0x008f A:{SYNTHETIC, Splitter: B:28:0x008f} */
        /* JADX WARNING: Removed duplicated region for block: B:36:0x00a8 A:{SYNTHETIC, Splitter: B:36:0x00a8} */
        /* JADX WARNING: Removed duplicated region for block: B:42:0x00b6 A:{SYNTHETIC, Splitter: B:42:0x00b6} */
        public com.miui.gallery.editor.photo.app.CropperActivity.DecodeResult loadInBackground() {
            /*
            r10 = this;
            r3 = 0;
            r6 = r10.getContext();	 Catch:{ FileNotFoundException -> 0x0081, SecurityException -> 0x009a }
            r6 = r6.getContentResolver();	 Catch:{ FileNotFoundException -> 0x0081, SecurityException -> 0x009a }
            r7 = r10.mUri;	 Catch:{ FileNotFoundException -> 0x0081, SecurityException -> 0x009a }
            r3 = r6.openInputStream(r7);	 Catch:{ FileNotFoundException -> 0x0081, SecurityException -> 0x009a }
            if (r3 == 0) goto L_0x0066;
        L_0x0011:
            r4 = new java.io.BufferedInputStream;	 Catch:{ FileNotFoundException -> 0x0081, SecurityException -> 0x009a }
            r4.<init>(r3);	 Catch:{ FileNotFoundException -> 0x0081, SecurityException -> 0x009a }
            r5 = new android.graphics.BitmapFactory$Options;	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            r5.<init>();	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            r6 = r10.mUri;	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            r6 = r10.sampleSize(r6);	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            r5.inSampleSize = r6;	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            r6 = 0;
            r0 = android.graphics.BitmapFactory.decodeStream(r4, r6, r5);	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            r6 = r10.mUri;	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            r1 = r10.getPhotoRotation(r6);	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            if (r1 == 0) goto L_0x003f;
        L_0x0030:
            r6 = "CropperActivity";
            r7 = "rotate image by %d";
            r8 = java.lang.Integer.valueOf(r1);	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            com.miui.gallery.util.Log.d(r6, r7, r8);	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            r0 = r10.rotateBitmap(r1, r0);	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
        L_0x003f:
            r6 = "CropperActivity";
            r7 = "sample size is %dx%d";
            r8 = r5.outWidth;	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            r8 = java.lang.Integer.valueOf(r8);	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            r9 = r5.outHeight;	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            r9 = java.lang.Integer.valueOf(r9);	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            com.miui.gallery.util.Log.d(r6, r7, r8, r9);	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            r6 = new com.miui.gallery.editor.photo.app.CropperActivity$DecodeResult;	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            r7 = 0;
            r6.<init>(r0, r7);	 Catch:{ FileNotFoundException -> 0x00c7, SecurityException -> 0x00c4, all -> 0x00c1 }
            if (r4 == 0) goto L_0x005d;
        L_0x005a:
            r4.close();	 Catch:{ IOException -> 0x005f }
        L_0x005d:
            r3 = r4;
        L_0x005e:
            return r6;
        L_0x005f:
            r2 = move-exception;
            r7 = "CropperActivity";
            com.miui.gallery.util.Log.w(r7, r2);
            goto L_0x005d;
        L_0x0066:
            r6 = "CropperActivity";
            r7 = "no stream return.";
            com.miui.gallery.util.Log.d(r6, r7);	 Catch:{ FileNotFoundException -> 0x0081, SecurityException -> 0x009a }
            r6 = new com.miui.gallery.editor.photo.app.CropperActivity$DecodeResult;	 Catch:{ FileNotFoundException -> 0x0081, SecurityException -> 0x009a }
            r7 = 0;
            r8 = 0;
            r6.<init>(r7, r8);	 Catch:{ FileNotFoundException -> 0x0081, SecurityException -> 0x009a }
            if (r3 == 0) goto L_0x005e;
        L_0x0076:
            r3.close();	 Catch:{ IOException -> 0x007a }
            goto L_0x005e;
        L_0x007a:
            r2 = move-exception;
            r7 = "CropperActivity";
            com.miui.gallery.util.Log.w(r7, r2);
            goto L_0x005e;
        L_0x0081:
            r2 = move-exception;
        L_0x0082:
            r6 = "CropperActivity";
            com.miui.gallery.util.Log.e(r6, r2);	 Catch:{ all -> 0x00b3 }
            r6 = new com.miui.gallery.editor.photo.app.CropperActivity$DecodeResult;	 Catch:{ all -> 0x00b3 }
            r7 = 0;
            r6.<init>(r7, r2);	 Catch:{ all -> 0x00b3 }
            if (r3 == 0) goto L_0x005e;
        L_0x008f:
            r3.close();	 Catch:{ IOException -> 0x0093 }
            goto L_0x005e;
        L_0x0093:
            r2 = move-exception;
            r7 = "CropperActivity";
            com.miui.gallery.util.Log.w(r7, r2);
            goto L_0x005e;
        L_0x009a:
            r2 = move-exception;
        L_0x009b:
            r6 = "CropperActivity";
            com.miui.gallery.util.Log.w(r6, r2);	 Catch:{ all -> 0x00b3 }
            r6 = new com.miui.gallery.editor.photo.app.CropperActivity$DecodeResult;	 Catch:{ all -> 0x00b3 }
            r7 = 0;
            r6.<init>(r7, r2);	 Catch:{ all -> 0x00b3 }
            if (r3 == 0) goto L_0x005e;
        L_0x00a8:
            r3.close();	 Catch:{ IOException -> 0x00ac }
            goto L_0x005e;
        L_0x00ac:
            r2 = move-exception;
            r7 = "CropperActivity";
            com.miui.gallery.util.Log.w(r7, r2);
            goto L_0x005e;
        L_0x00b3:
            r6 = move-exception;
        L_0x00b4:
            if (r3 == 0) goto L_0x00b9;
        L_0x00b6:
            r3.close();	 Catch:{ IOException -> 0x00ba }
        L_0x00b9:
            throw r6;
        L_0x00ba:
            r2 = move-exception;
            r7 = "CropperActivity";
            com.miui.gallery.util.Log.w(r7, r2);
            goto L_0x00b9;
        L_0x00c1:
            r6 = move-exception;
            r3 = r4;
            goto L_0x00b4;
        L_0x00c4:
            r2 = move-exception;
            r3 = r4;
            goto L_0x009b;
        L_0x00c7:
            r2 = move-exception;
            r3 = r4;
            goto L_0x0082;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.editor.photo.app.CropperActivity.PrepareLoader.loadInBackground():com.miui.gallery.editor.photo.app.CropperActivity$DecodeResult");
        }

        /* JADX WARNING: Removed duplicated region for block: B:29:0x0068 A:{SYNTHETIC, Splitter: B:29:0x0068} */
        private int sampleSize(android.net.Uri r9) {
            /*
            r8 = this;
            r6 = 1;
            r2 = 0;
            r7 = r8.getContext();	 Catch:{ FileNotFoundException -> 0x0052 }
            r7 = r7.getContentResolver();	 Catch:{ FileNotFoundException -> 0x0052 }
            r2 = r7.openInputStream(r9);	 Catch:{ FileNotFoundException -> 0x0052 }
            if (r2 == 0) goto L_0x0045;
        L_0x0010:
            r3 = new java.io.BufferedInputStream;	 Catch:{ FileNotFoundException -> 0x0052 }
            r3.<init>(r2);	 Catch:{ FileNotFoundException -> 0x0052 }
            r4 = new android.graphics.BitmapFactory$Options;	 Catch:{ FileNotFoundException -> 0x0076, all -> 0x0073 }
            r4.<init>();	 Catch:{ FileNotFoundException -> 0x0076, all -> 0x0073 }
            r7 = 1;
            r4.inJustDecodeBounds = r7;	 Catch:{ FileNotFoundException -> 0x0076, all -> 0x0073 }
            r7 = 0;
            android.graphics.BitmapFactory.decodeStream(r3, r7, r4);	 Catch:{ FileNotFoundException -> 0x0076, all -> 0x0073 }
            r7 = r4.outHeight;	 Catch:{ FileNotFoundException -> 0x0076, all -> 0x0073 }
            r7 = r7 / 2048;
            r7 = (float) r7;	 Catch:{ FileNotFoundException -> 0x0076, all -> 0x0073 }
            r1 = java.lang.Math.round(r7);	 Catch:{ FileNotFoundException -> 0x0076, all -> 0x0073 }
            r7 = r4.outWidth;	 Catch:{ FileNotFoundException -> 0x0076, all -> 0x0073 }
            r7 = r7 / 2048;
            r7 = (float) r7;	 Catch:{ FileNotFoundException -> 0x0076, all -> 0x0073 }
            r5 = java.lang.Math.round(r7);	 Catch:{ FileNotFoundException -> 0x0076, all -> 0x0073 }
            r6 = java.lang.Math.max(r1, r5);	 Catch:{ FileNotFoundException -> 0x0076, all -> 0x0073 }
            if (r3 == 0) goto L_0x003c;
        L_0x0039:
            r3.close();	 Catch:{ IOException -> 0x003e }
        L_0x003c:
            r2 = r3;
        L_0x003d:
            return r6;
        L_0x003e:
            r0 = move-exception;
            r7 = "CropperActivity";
            com.miui.gallery.util.Log.w(r7, r0);
            goto L_0x003c;
        L_0x0045:
            if (r2 == 0) goto L_0x003d;
        L_0x0047:
            r2.close();	 Catch:{ IOException -> 0x004b }
            goto L_0x003d;
        L_0x004b:
            r0 = move-exception;
            r7 = "CropperActivity";
            com.miui.gallery.util.Log.w(r7, r0);
            goto L_0x003d;
        L_0x0052:
            r0 = move-exception;
        L_0x0053:
            r7 = "CropperActivity";
            com.miui.gallery.util.Log.w(r7, r0);	 Catch:{ all -> 0x0065 }
            if (r2 == 0) goto L_0x003d;
        L_0x005a:
            r2.close();	 Catch:{ IOException -> 0x005e }
            goto L_0x003d;
        L_0x005e:
            r0 = move-exception;
            r7 = "CropperActivity";
            com.miui.gallery.util.Log.w(r7, r0);
            goto L_0x003d;
        L_0x0065:
            r6 = move-exception;
        L_0x0066:
            if (r2 == 0) goto L_0x006b;
        L_0x0068:
            r2.close();	 Catch:{ IOException -> 0x006c }
        L_0x006b:
            throw r6;
        L_0x006c:
            r0 = move-exception;
            r7 = "CropperActivity";
            com.miui.gallery.util.Log.w(r7, r0);
            goto L_0x006b;
        L_0x0073:
            r6 = move-exception;
            r2 = r3;
            goto L_0x0066;
        L_0x0076:
            r0 = move-exception;
            r2 = r3;
            goto L_0x0053;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.editor.photo.app.CropperActivity.PrepareLoader.sampleSize(android.net.Uri):int");
        }

        /* JADX WARNING: Removed duplicated region for block: B:36:0x006e A:{SYNTHETIC, Splitter: B:36:0x006e} */
        /* JADX WARNING: Removed duplicated region for block: B:44:0x0081 A:{SYNTHETIC, Splitter: B:44:0x0081} */
        /* JADX WARNING: Removed duplicated region for block: B:50:0x008f A:{SYNTHETIC, Splitter: B:50:0x008f} */
        private int getPhotoRotation(android.net.Uri r9) {
            /*
            r8 = this;
            r5 = 0;
            r2 = 0;
            r6 = r8.getContext();	 Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0066, ExifInvalidFormatException -> 0x0079 }
            r6 = r6.getContentResolver();	 Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0066, ExifInvalidFormatException -> 0x0079 }
            r2 = r6.openInputStream(r9);	 Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0066, ExifInvalidFormatException -> 0x0079 }
            if (r2 == 0) goto L_0x004b;
        L_0x0010:
            r3 = new java.io.BufferedInputStream;	 Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0066, ExifInvalidFormatException -> 0x0079 }
            r3.<init>(r2);	 Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0066, ExifInvalidFormatException -> 0x0079 }
            r1 = new com.miui.gallery3d.exif.ExifInterface;	 Catch:{ FileNotFoundException -> 0x00a3, IOException -> 0x00a0, ExifInvalidFormatException -> 0x009d, all -> 0x009a }
            r1.<init>();	 Catch:{ FileNotFoundException -> 0x00a3, IOException -> 0x00a0, ExifInvalidFormatException -> 0x009d, all -> 0x009a }
            r1.readExif(r3);	 Catch:{ FileNotFoundException -> 0x00a3, IOException -> 0x00a0, ExifInvalidFormatException -> 0x009d, all -> 0x009a }
            r6 = com.miui.gallery3d.exif.ExifInterface.TAG_ORIENTATION;	 Catch:{ FileNotFoundException -> 0x00a3, IOException -> 0x00a0, ExifInvalidFormatException -> 0x009d, all -> 0x009a }
            r4 = r1.getTag(r6);	 Catch:{ FileNotFoundException -> 0x00a3, IOException -> 0x00a0, ExifInvalidFormatException -> 0x009d, all -> 0x009a }
            if (r4 == 0) goto L_0x003d;
        L_0x0025:
            r6 = 0;
            r6 = r4.getValueAsInt(r6);	 Catch:{ FileNotFoundException -> 0x00a3, IOException -> 0x00a0, ExifInvalidFormatException -> 0x009d, all -> 0x009a }
            r6 = (short) r6;	 Catch:{ FileNotFoundException -> 0x00a3, IOException -> 0x00a0, ExifInvalidFormatException -> 0x009d, all -> 0x009a }
            r5 = com.miui.gallery3d.exif.ExifInterface.getRotationForOrientationValue(r6);	 Catch:{ FileNotFoundException -> 0x00a3, IOException -> 0x00a0, ExifInvalidFormatException -> 0x009d, all -> 0x009a }
            if (r3 == 0) goto L_0x0034;
        L_0x0031:
            r3.close();	 Catch:{ IOException -> 0x0036 }
        L_0x0034:
            r2 = r3;
        L_0x0035:
            return r5;
        L_0x0036:
            r0 = move-exception;
            r6 = "CropperActivity";
            com.miui.gallery.util.Log.w(r6, r0);
            goto L_0x0034;
        L_0x003d:
            r2 = r3;
        L_0x003e:
            if (r2 == 0) goto L_0x0035;
        L_0x0040:
            r2.close();	 Catch:{ IOException -> 0x0044 }
            goto L_0x0035;
        L_0x0044:
            r0 = move-exception;
            r6 = "CropperActivity";
            com.miui.gallery.util.Log.w(r6, r0);
            goto L_0x0035;
        L_0x004b:
            r6 = "CropperActivity";
            r7 = "no stream opened";
            com.miui.gallery.util.Log.e(r6, r7);	 Catch:{ FileNotFoundException -> 0x0053, IOException -> 0x0066, ExifInvalidFormatException -> 0x0079 }
            goto L_0x003e;
        L_0x0053:
            r0 = move-exception;
        L_0x0054:
            r6 = "CropperActivity";
            com.miui.gallery.util.Log.w(r6, r0);	 Catch:{ all -> 0x008c }
            if (r2 == 0) goto L_0x0035;
        L_0x005b:
            r2.close();	 Catch:{ IOException -> 0x005f }
            goto L_0x0035;
        L_0x005f:
            r0 = move-exception;
            r6 = "CropperActivity";
            com.miui.gallery.util.Log.w(r6, r0);
            goto L_0x0035;
        L_0x0066:
            r0 = move-exception;
        L_0x0067:
            r6 = "CropperActivity";
            com.miui.gallery.util.Log.w(r6, r0);	 Catch:{ all -> 0x008c }
            if (r2 == 0) goto L_0x0035;
        L_0x006e:
            r2.close();	 Catch:{ IOException -> 0x0072 }
            goto L_0x0035;
        L_0x0072:
            r0 = move-exception;
            r6 = "CropperActivity";
            com.miui.gallery.util.Log.w(r6, r0);
            goto L_0x0035;
        L_0x0079:
            r0 = move-exception;
        L_0x007a:
            r6 = "CropperActivity";
            com.miui.gallery.util.Log.w(r6, r0);	 Catch:{ all -> 0x008c }
            if (r2 == 0) goto L_0x0035;
        L_0x0081:
            r2.close();	 Catch:{ IOException -> 0x0085 }
            goto L_0x0035;
        L_0x0085:
            r0 = move-exception;
            r6 = "CropperActivity";
            com.miui.gallery.util.Log.w(r6, r0);
            goto L_0x0035;
        L_0x008c:
            r5 = move-exception;
        L_0x008d:
            if (r2 == 0) goto L_0x0092;
        L_0x008f:
            r2.close();	 Catch:{ IOException -> 0x0093 }
        L_0x0092:
            throw r5;
        L_0x0093:
            r0 = move-exception;
            r6 = "CropperActivity";
            com.miui.gallery.util.Log.w(r6, r0);
            goto L_0x0092;
        L_0x009a:
            r5 = move-exception;
            r2 = r3;
            goto L_0x008d;
        L_0x009d:
            r0 = move-exception;
            r2 = r3;
            goto L_0x007a;
        L_0x00a0:
            r0 = move-exception;
            r2 = r3;
            goto L_0x0067;
        L_0x00a3:
            r0 = move-exception;
            r2 = r3;
            goto L_0x0054;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.editor.photo.app.CropperActivity.PrepareLoader.getPhotoRotation(android.net.Uri):int");
        }

        private Bitmap rotateBitmap(int rotation, Bitmap bitmap) {
            Matrix matrix = new Matrix();
            matrix.preRotate((float) rotation);
            Bitmap re = null;
            try {
                return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            } catch (OutOfMemoryError e) {
                Log.e("CropperActivity", "rotateBitmap OutOfMemoryError");
                return re;
            }
        }

        protected void onStartLoading() {
            super.onStartLoading();
            if (this.mDecodeResult == null) {
                forceLoad();
            } else {
                deliverResult(this.mDecodeResult);
            }
        }

        public void deliverResult(DecodeResult data) {
            if (!isReset()) {
                this.mDecodeResult = data;
            }
            if (isStarted()) {
                super.deliverResult(data);
            }
        }

        protected void onReset() {
            super.onReset();
            this.mDecodeResult = null;
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.crop_activity);
        this.mSaveButton = findViewById(R.id.ok);
        this.mCancelButton = findViewById(R.id.cancel);
        this.mSaveButton.setOnClickListener(this.mOnClickListener);
        this.mCancelButton.setOnClickListener(this.mOnClickListener);
        this.mCropView = (CropImageView) findViewById(R.id.crop_view);
        this.mSaveButton.setEnabled(false);
        Intent intent = getIntent();
        this.mData = intent.getData();
        this.mOutput = (Uri) intent.getParcelableExtra("output");
        this.mReturnData = intent.getBooleanExtra("return-data", false);
        this.mOutputX = (float) intent.getIntExtra("outputX", -1);
        this.mOutputY = (float) intent.getIntExtra("outputY", -1);
        if (this.mData == null || this.mOutput == null) {
            Log.e("CropperActivity", "src or des missed, src: %s, des: %s", this.mData, this.mOutput);
            finish();
            return;
        }
        Log.d("CropperActivity", "cropper's input: %s, output: %s", this.mData, this.mOutput == null ? "bytes" : this.mOutput);
        int aspectX = intent.getIntExtra("aspectX", -1);
        int aspectY = intent.getIntExtra("aspectY", -1);
        if (aspectX > 0 && aspectY > 0) {
            this.mCropView.setFixedAspectRatio(intent.getBooleanExtra("fixed_aspect_ratio", true));
            this.mCropView.setAspectRatio(aspectX, aspectY);
        }
        getLoaderManager().initLoader(0, null, this.mCallbacks);
    }

    protected void onSaveInstanceState(Bundle outState) {
    }

    private Bitmap createOutput() {
        long start = System.currentTimeMillis();
        Bitmap bitmap = this.mCropView.getCroppedImage();
        if (this.mOutputX > 0.0f && this.mOutputY > 0.0f) {
            Matrix matrix = new Matrix();
            matrix.setScale(this.mOutputX / ((float) bitmap.getWidth()), this.mOutputY / ((float) bitmap.getHeight()));
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        }
        Log.d("CropperActivity", "create output costs %dms", Long.valueOf(System.currentTimeMillis() - start));
        return bitmap;
    }
}
