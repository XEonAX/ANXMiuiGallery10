package com.miui.extraphoto.refocus.effect;

import android.content.Context;
import com.miui.extraphoto.refocus.RefocusJni;

public class RefocusEffectMotionRandom extends RefocusEffect {
    public RefocusEffectMotionRandom(String name, RefocusEffectType type, int totalSecond) {
        super(name, type, totalSecond);
    }

    public void initEffect(Context context, long refocusNativeContext) {
        RefocusJni.initRandomEffect(paramWithCoefficient(20), 60, refocusNativeContext);
    }

    public void configEffectByProgress(float progress, long refocusNativeContext) {
        RefocusJni.configRandomCount(Math.round(RefocusEffect.valueByProgress(progress, 1.0f, 60.0f)), refocusNativeContext);
    }

    public void destroyEffect(long refocusNativeContext) {
        RefocusJni.releaseEngine(refocusNativeContext);
    }
}
