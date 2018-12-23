package com.miui.extraphoto.refocus.effect;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.miui.extraphoto.refocus.RefocusJni;

public class RefocusEffectCircle extends RefocusEffectBasic {
    private Interpolator mAccInterpolator;
    private Interpolator mDecInterpolator;

    public RefocusEffectCircle(String name, RefocusEffectType type, int totalSecond, String maskIcon) {
        super(name, type, totalSecond, maskIcon);
        this.mLight = 150;
        this.mAccInterpolator = new AccelerateInterpolator();
        this.mDecInterpolator = new DecelerateInterpolator();
        this.mCoefficient = 0.5f;
    }

    public void configEffectByProgress(float progress, long refocusNativeContext) {
        RefocusJni.configBokehSize(getBokehSizeByProgress(progress), refocusNativeContext);
    }

    public int getBokehSizeByProgress(float progress) {
        if (progress <= 0.25f) {
            progress = RefocusEffect.valueByProgress(RefocusEffect.progressInRange(progress, 0.0f, 0.25f), paramWithCoefficient(30.0f), paramWithCoefficient(74.0f));
        } else if (progress >= 0.25f && progress <= 0.5f) {
            progress = RefocusEffect.valueByProgress(RefocusEffect.progressInRange(progress, 0.25f, 0.5f), paramWithCoefficient(74.0f), paramWithCoefficient(35.0f));
        } else if (progress >= 0.5f && progress <= 0.75f) {
            progress = RefocusEffect.valueByProgress(RefocusEffect.progressInRange(progress, 0.5f, 0.75f), paramWithCoefficient(35.0f), paramWithCoefficient(69.0f));
        } else if (progress >= 0.75f && progress <= 1.0f) {
            progress = RefocusEffect.valueByProgress(RefocusEffect.progressInRange(progress, 0.75f, 1.0f), paramWithCoefficient(69.0f), paramWithCoefficient(30.0f));
        }
        return Math.round(progress);
    }

    public float getSuggestImageProgress() {
        return 0.625f;
    }
}
