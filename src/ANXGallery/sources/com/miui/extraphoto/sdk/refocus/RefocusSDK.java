package com.miui.extraphoto.sdk.refocus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.miui.gallery.scanner.MediaScanner;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.MediaStoreUtils;
import com.miui.gallery3d.exif.ExifInterface;
import com.miui.gallery3d.exif.ExifInvalidFormatException;
import com.miui.utils.LazyValue;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RefocusSDK {
    private static final DeviceSupportRefocus DEVICE_SUPPORT_REFOCUS = new DeviceSupportRefocus();
    private RefocusProcessThread mRefocusProcessThread;

    private static class DeviceSupportRefocus extends LazyValue<Context, Boolean> {
        private DeviceSupportRefocus() {
        }

        protected Boolean onInit(Context context) {
            Intent target = new Intent("com.miui.extraphoto.action.VIEW_ADVANCED_REFOCUS");
            target.setPackage("com.miui.extraphoto");
            List<ResolveInfo> resolveInfos = context.getPackageManager().queryIntentActivities(target, 65536);
            boolean z = (resolveInfos == null || resolveInfos.isEmpty()) ? false : true;
            return Boolean.valueOf(z);
        }
    }

    public interface OnRefocusRecognizedListener {
        void onPhotoSave(String str);

        void onRecognized(boolean z, String str);
    }

    private static class RefocusProcessThread extends HandlerThread implements Callback {
        Context mContext;
        Handler mHandler = new Handler(getLooper(), this);
        OnRefocusRecognizedListener mListener;
        Handler mMainHandler = new Handler(Looper.getMainLooper());

        RefocusProcessThread(Context context) {
            super("RefocusProcessThread");
            this.mContext = context;
            start();
        }

        void sendRecognize(String path) {
            this.mHandler.removeMessages(0);
            this.mHandler.sendMessage(this.mHandler.obtainMessage(0, path));
        }

        void sendSave(Uri uri) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, uri.getPath()));
        }

        void notifyRecognize(final boolean canRefocus, final String path) {
            if (this.mListener != null) {
                this.mMainHandler.post(new Runnable() {
                    public void run() {
                        if (RefocusProcessThread.this.mListener != null) {
                            RefocusProcessThread.this.mListener.onRecognized(canRefocus, path);
                        }
                    }
                });
            }
        }

        void notifyPhotoSave(final String path) {
            if (this.mListener != null) {
                this.mMainHandler.post(new Runnable() {
                    public void run() {
                        if (RefocusProcessThread.this.mListener != null) {
                            RefocusProcessThread.this.mListener.onPhotoSave(path);
                        }
                    }
                });
            }
        }

        public boolean handleMessage(Message msg) {
            String path;
            switch (msg.what) {
                case 0:
                    path = msg.obj;
                    notifyRecognize(RefocusSDK.isPhotoSupportRefocus(path), path);
                    break;
                case 1:
                    path = (String) msg.obj;
                    MediaScanner.scanSingleFile(this.mContext, path);
                    if (path.endsWith(".mp4")) {
                        MediaStoreUtils.insert(this.mContext, path, 2);
                    } else {
                        MediaStoreUtils.insert(this.mContext, path, 1);
                    }
                    Intent scanIntent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                    scanIntent.setData(Uri.fromFile(new File(path)));
                    this.mContext.sendBroadcast(scanIntent);
                    notifyPhotoSave(path);
                    break;
            }
            return true;
        }

        void setListener(OnRefocusRecognizedListener listener) {
            this.mListener = listener;
        }
    }

    public RefocusSDK(OnRefocusRecognizedListener listener, Activity activity) {
        this.mRefocusProcessThread = new RefocusProcessThread(activity.getApplicationContext());
        this.mRefocusProcessThread.setListener(listener);
    }

    public void sendRecognize(String path) {
        this.mRefocusProcessThread.sendRecognize(path);
    }

    public void sendInsert(Uri uri) {
        this.mRefocusProcessThread.sendSave(uri);
    }

    public void sendResultStatic(Intent intent) {
        Map map = new HashMap();
        if (intent == null) {
            map.put("save_type", "NONE");
            sendResultStatic(map);
            return;
        }
        String type = intent.getStringExtra("save_type");
        map.put(type, intent.getStringExtra("save_explain"));
        map.put("save_type", type);
        sendResultStatic(map);
    }

    private void sendResultStatic(Map<String, String> map) {
        GallerySamplingStatHelper.recordCountEvent("photo_extra", "refocus_save", map);
    }

    public void sendExposureStatic() {
        GallerySamplingStatHelper.recordCountEvent("photo_extra", "refocus_exposure");
    }

    public void sendEnterStatic() {
        GallerySamplingStatHelper.recordCountEvent("photo_extra", "refocus_enter");
    }

    public void destroy() {
        this.mRefocusProcessThread.setListener(null);
        this.mRefocusProcessThread.quitSafely();
    }

    private static boolean isPhotoSupportRefocus(String photoPath) {
        if (TextUtils.isEmpty(photoPath)) {
            return false;
        }
        try {
            ExifInterface exifInterface = new ExifInterface();
            exifInterface.readExif(photoPath);
            if (TextUtils.isEmpty(exifInterface.getTagStringValue(34960, 2))) {
                return false;
            }
            return true;
        } catch (ExifInvalidFormatException e) {
            e.printStackTrace();
            return false;
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean isDeviceSupportRefocus(Context context) {
        return ((Boolean) DEVICE_SUPPORT_REFOCUS.get(context)).booleanValue();
    }
}
