package com.miui.gallery.assistant.algorithm;

import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.Log;
import java.util.Map;

public abstract class Algorithm {
    public static final int[] FLAG_ALL_ARRAY = new int[]{1, 4, 16};
    protected final String TAG = getClass().getSimpleName();
    private final long mAlgorithmId;
    protected volatile boolean mIsNativeInitiated = false;

    protected abstract void onDestroyAlgorithm();

    protected abstract boolean onInitAlgorithm();

    Algorithm(long algorithmId) {
        this.mAlgorithmId = algorithmId;
    }

    synchronized boolean init() {
        if (!this.mIsNativeInitiated) {
            try {
                if (onInitAlgorithm()) {
                    this.mIsNativeInitiated = true;
                }
            } catch (Error e) {
                reportAlgorithmError(e);
            }
        }
        return this.mIsNativeInitiated;
    }

    private synchronized void destroy() {
        if (this.mIsNativeInitiated) {
            try {
                onDestroyAlgorithm();
            } catch (Error e) {
                reportAlgorithmError(e);
            }
            this.mIsNativeInitiated = false;
        }
        return;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        destroy();
    }

    void reportAlgorithmError(Throwable throwable) {
        Log.e(this.TAG, throwable);
        Map<String, String> params = GallerySamplingStatHelper.generatorCommonParams();
        params.put("algorithm", getClass().getSimpleName());
        params.put("error", throwable != null ? throwable.toString() : "");
        GallerySamplingStatHelper.recordCountEvent("assistant", "assistant_algorithm_error", params);
    }
}
