package com.miui.extraphoto.refocus.effect;

import android.content.Context;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.miui.extraphoto.refocus.RefocusJni;

public class RefocusEffectMotionRing extends RefocusEffect {
    private Interpolator mInterpolator;
    private final float mMotionScale;

    public RefocusEffectMotionRing(String name, RefocusEffectType type, int totalSecond, float motionScale, float interpolatorFactor) {
        super(name, type, totalSecond);
        this.mMotionScale = motionScale;
        this.mInterpolator = new DecelerateInterpolator(interpolatorFactor);
    }

    public void initEffect(Context context, long refocusNativeContext) {
        RefocusJni.configProcessQuality(1, refocusNativeContext);
        RefocusJni.initMotionRingEffect(this.mMotionScale, paramWithCoefficient(20), 60, refocusNativeContext);
    }

    public void initForVideo(long refocusNativeContext) {
        RefocusJni.configProcessQuality(0, refocusNativeContext);
    }

    public void configEffectByProgress(float progress, long refocusNativeContext) {
        RefocusJni.configMotionRingCount(Math.round(RefocusEffect.valueByProgress(this.mInterpolator.getInterpolation(progress), 1.0f, 100.0f)), refocusNativeContext);
    }

    public void destroyEffect(long refocusNativeContext) {
        RefocusJni.releaseEngine(refocusNativeContext);
    }
}
