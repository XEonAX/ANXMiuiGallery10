package com.miui.extraphoto.refocus.effect;

public class RefocusEffectStar extends RefocusEffectCircle {
    public RefocusEffectStar(String name, RefocusEffectType type, int totalSecond, String maskIcon) {
        super(name, type, totalSecond, maskIcon);
    }

    public int getBokehSizeByProgress(float progress) {
        if (progress <= 0.25f) {
            progress = RefocusEffect.valueByProgress(RefocusEffect.progressInRange(progress, 0.0f, 0.25f), paramWithCoefficient(45.0f), paramWithCoefficient(100.0f));
        } else if (progress >= 0.25f && progress <= 0.5f) {
            progress = RefocusEffect.valueByProgress(RefocusEffect.progressInRange(progress, 0.25f, 0.5f), paramWithCoefficient(100.0f), paramWithCoefficient(52.5f));
        } else if (progress >= 0.5f && progress <= 0.75f) {
            progress = RefocusEffect.valueByProgress(RefocusEffect.progressInRange(progress, 0.5f, 0.75f), paramWithCoefficient(52.5f), paramWithCoefficient(90.0f));
        } else if (progress >= 0.75f && progress <= 1.0f) {
            progress = RefocusEffect.valueByProgress(RefocusEffect.progressInRange(progress, 0.75f, 1.0f), paramWithCoefficient(90.0f), paramWithCoefficient(45.0f));
        }
        return Math.round(progress);
    }
}
