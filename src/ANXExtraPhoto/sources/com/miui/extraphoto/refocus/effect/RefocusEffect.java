package com.miui.extraphoto.refocus.effect;

import android.content.Context;
import com.miui.extraphoto.refocus.RefocusJni;

public abstract class RefocusEffect {
    protected float mCoefficient = 1.0f;
    public final String name;
    public final int totalSecond;
    public final RefocusEffectType type;

    public abstract void configEffectByProgress(float f, long j);

    public abstract void destroyEffect(long j);

    public abstract void initEffect(Context context, long j);

    public RefocusEffect(String name, RefocusEffectType type, int totalSecond) {
        this.name = name;
        this.type = type;
        this.totalSecond = totalSecond;
    }

    public void enableEffectByProgress(float progress, long refocusNativeContext) {
        configEffectByProgress(progress, refocusNativeContext);
        RefocusJni.processImageByHolder(refocusNativeContext);
    }

    public void initForVideo(long refocusNativeContext) {
    }

    public void configEffectBySuggest(long refocusNativeContext) {
        configEffectByProgress(getSuggestImageProgress(), refocusNativeContext);
    }

    public float getSuggestImageProgress() {
        return 1.0f;
    }

    public int getTotalFrame(int frameRate) {
        return Math.round(((float) (this.totalSecond * frameRate)) / 1000.0f);
    }

    protected float paramWithCoefficient(float value) {
        return this.mCoefficient * value;
    }

    protected int paramWithCoefficient(int value) {
        return Math.round(this.mCoefficient * ((float) value));
    }

    public void multiplyCoefficient(int value) {
        this.mCoefficient *= (float) value;
    }

    static float valueByProgress(float progress, float min, float max) {
        return ((max - min) * progress) + min;
    }

    static float progressInRange(float progress, float rangeStart, float rangeEnd) {
        if (progress <= rangeStart) {
            return 0.0f;
        }
        if (progress >= rangeEnd) {
            return 1.0f;
        }
        return (progress - rangeStart) / (rangeEnd - rangeStart);
    }
}
