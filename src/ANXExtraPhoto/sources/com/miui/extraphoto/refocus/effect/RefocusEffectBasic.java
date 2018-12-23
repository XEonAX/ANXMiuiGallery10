package com.miui.extraphoto.refocus.effect;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.miui.extraphoto.refocus.RefocusJni;
import java.io.IOException;

public class RefocusEffectBasic extends RefocusEffect {
    public static final int MAX_BOKEH_SIZE = 36;
    private final Interpolator mInterpolator = new DecelerateInterpolator();
    protected int mLight = 0;
    private final String mMaskIcon;

    public RefocusEffectBasic(String name, RefocusEffectType type, int totalSecond, String maskIcon) {
        super(name, type, totalSecond);
        this.mMaskIcon = maskIcon;
    }

    public void initEffect(Context context, long refocusNativeContext) {
        if (TextUtils.isEmpty(this.mMaskIcon)) {
            RefocusJni.configBokehMask(null, 0, 0, this.mLight, refocusNativeContext);
            return;
        }
        Bitmap mask = null;
        try {
            mask = BitmapFactory.decodeStream(context.getAssets().open(this.mMaskIcon));
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (mask != null) {
            RefocusJni.configBokehMask(mask, mask.getWidth(), mask.getHeight(), this.mLight, refocusNativeContext);
            return;
        }
        RefocusJni.configBokehMask(null, 0, 0, this.mLight, refocusNativeContext);
    }

    public void configEffectByProgress(float progress, long refocusNativeContext) {
        RefocusJni.configBokehSize(getBokehSizeByProgress(progress), refocusNativeContext);
    }

    public void enableEffectByBokehSize(int bokehSize, long refocusNativeContext) {
        RefocusJni.configBokehSize(bokehSize, refocusNativeContext);
        RefocusJni.processImageByHolder(refocusNativeContext);
    }

    public int getBokehSizeByProgress(float progress) {
        return Math.round(RefocusEffect.valueByProgress(progress, 0.0f, 36.0f));
    }

    public void destroyEffect(long refocusNativeContext) {
    }

    public boolean hasMask() {
        return TextUtils.isEmpty(this.mMaskIcon) ^ 1;
    }
}
