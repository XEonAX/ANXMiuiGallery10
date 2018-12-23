package com.miui.extraphoto.refocus.effect;

import android.content.Context;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.miui.extraphoto.refocus.RefocusJni;

public class RefocusEffectMotion extends RefocusEffect {
    private final int mDegree;
    private Interpolator mInterpolator = new DecelerateInterpolator(0.6f);

    public RefocusEffectMotion(String name, RefocusEffectType type, int totalSecond, int degree) {
        super(name, type, totalSecond);
        this.mDegree = degree;
    }

    public void initEffect(Context context, long refocusNativeContext) {
        RefocusJni.configProcessQuality(1, refocusNativeContext);
        RefocusJni.initMotionEffect(this.mDegree, paramWithCoefficient(20), 60, refocusNativeContext);
    }

    public void initForVideo(long refocusNativeContext) {
        RefocusJni.configProcessQuality(0, refocusNativeContext);
    }

    public void configEffectByProgress(float progress, long refocusNativeContext) {
        RefocusJni.configMotionCount(Math.round(RefocusEffect.valueByProgress(this.mInterpolator.getInterpolation(progress), 1.0f, (float) paramWithCoefficient(50))), refocusNativeContext);
    }

    public void destroyEffect(long refocusNativeContext) {
        RefocusJni.releaseEngine(refocusNativeContext);
    }
}
