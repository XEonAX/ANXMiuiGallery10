package com.miui.extraphoto.refocus.utils;

import android.app.Activity;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings.System;
import android.util.Log;
import android.view.WindowManager.LayoutParams;
import java.lang.ref.WeakReference;

public class BrightnessManager {
    private static final Uri BRIGHTNESS_ADJ_URI = System.getUriFor(SCREEN_AUTO_BRIGHTNESS_ADJ);
    private static final Uri BRIGHTNESS_URI = System.getUriFor("screen_brightness");
    private static final String SCREEN_AUTO_BRIGHTNESS_ADJ = "screen_auto_brightness_adj";
    private static final String TAG = "BrightnessManager";
    private WeakReference<Activity> mActivityRef;
    private ContentObserver mBrightnessObserver = new ContentObserver(new Handler()) {
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            if (BrightnessManager.this.getActivity() != null && !selfChange) {
                BrightnessManager.this.mSystemBrightnessChanged = true;
                BrightnessManager.this.adjustBrightness(true);
            }
        }
    };
    private float mCurBrightness = -1.0f;
    private boolean mPaused;
    private boolean mSystemBrightnessChanged = false;

    public BrightnessManager(Activity activity, float brightness) {
        this.mCurBrightness = ensureBrightness(brightness);
        this.mActivityRef = new WeakReference(activity);
    }

    private float ensureBrightness(float brightness) {
        return Math.max(0.0f, Math.min(brightness, 1.0f));
    }

    private Activity getActivity() {
        return this.mActivityRef != null ? (Activity) this.mActivityRef.get() : null;
    }

    private void adjustBrightness(boolean useDefaultValue) {
        Activity activity = getActivity();
        if (activity != null) {
            LayoutParams localLayoutParams = activity.getWindow().getAttributes();
            localLayoutParams.screenBrightness = useDefaultValue ? -1.0f : this.mCurBrightness;
            activity.getWindow().setAttributes(localLayoutParams);
        }
    }

    public void onWindowFocusChanged(boolean hasFocus) {
        boolean useDefaultBrightness = this.mSystemBrightnessChanged || !(this.mPaused || hasFocus);
        adjustBrightness(useDefaultBrightness);
    }

    public void onResume() {
        this.mPaused = false;
        adjustBrightness(this.mSystemBrightnessChanged);
        registerObserver();
    }

    public void onPause() {
        this.mPaused = true;
        unregisterObserver();
    }

    private void registerObserver() {
        Activity activity = getActivity();
        if (activity != null) {
            try {
                ContentResolver cr = activity.getContentResolver();
                cr.registerContentObserver(BRIGHTNESS_URI, true, this.mBrightnessObserver);
                cr.registerContentObserver(BRIGHTNESS_ADJ_URI, true, this.mBrightnessObserver);
            } catch (Exception e) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Register BrightnessObserver error: %s");
                stringBuilder.append(e);
                Log.e(str, stringBuilder.toString());
            }
        }
    }

    private void unregisterObserver() {
        Activity activity = getActivity();
        if (activity != null) {
            try {
                activity.getContentResolver().unregisterContentObserver(this.mBrightnessObserver);
            } catch (Exception e) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Unregister BrightnessObserver error: %s");
                stringBuilder.append(e);
                Log.e(str, stringBuilder.toString());
            }
        }
    }
}
