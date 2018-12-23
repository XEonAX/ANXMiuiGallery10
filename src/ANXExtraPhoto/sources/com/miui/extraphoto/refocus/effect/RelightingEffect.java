package com.miui.extraphoto.refocus.effect;

import android.content.Context;
import com.miui.extraphoto.R;
import com.miui.extraphoto.common.ToastUtils;
import com.miui.extraphoto.refocus.RefocusJni;

public class RelightingEffect extends RefocusEffect {
    private static final int ARC_PL_ERR_NO_FACE = 262145;
    private static final int ARC_PL_ERR_SMALL_FACE = 262146;
    public final int cameraDefinedType;
    public final int effectType;
    private int[] mFacePoint = new int[3];
    private int mResult = -1;

    public RelightingEffect(String name, RefocusEffectType type, int totalSecond, String effectType, int cameraDefinedType) {
        int targetType;
        super(name, type, totalSecond);
        try {
            targetType = Integer.decode(effectType).intValue();
        } catch (NumberFormatException e) {
            targetType = 16;
        }
        this.effectType = targetType;
        this.cameraDefinedType = cameraDefinedType;
    }

    public void initEffect(Context context, long refocusNativeContext) {
        this.mResult = RefocusJni.initRelightEffect(this.effectType, this.mFacePoint, refocusNativeContext);
    }

    public void configEffectByProgress(float progress, long refocusNativeContext) {
    }

    public void destroyEffect(long refocusNativeContext) {
    }

    public void getFacePoint(int[] dst) {
        System.arraycopy(this.mFacePoint, 0, dst, 0, this.mFacePoint.length);
    }

    public boolean hasFace() {
        return this.mResult == 0;
    }

    public void makeErrorToast(Context context) {
        if (this.mResult == ARC_PL_ERR_NO_FACE) {
            ToastUtils.makeText(context, (int) R.string.refocus_type_relighting_no_face);
        } else if (this.mResult == ARC_PL_ERR_SMALL_FACE) {
            ToastUtils.makeText(context, (int) R.string.refocus_type_relighting_small_face);
        }
    }
}
