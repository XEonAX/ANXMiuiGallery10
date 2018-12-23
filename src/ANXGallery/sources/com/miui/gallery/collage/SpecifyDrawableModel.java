package com.miui.gallery.collage;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.miui.gallery.collage.drawable.RectTimeDrawable;
import com.miui.gallery.collage.drawable.TimeFormatDrawable;

public class SpecifyDrawableModel extends ElementPositionModel {
    public final Extras extras;
    public final SpecifyDrawableType specifyDrawableType;

    public static class Extras {
        public final float letterSpace;
        public final String textColor;
        public final float textSize;
    }

    public enum SpecifyDrawableType {
        TIME_FORMAT,
        TIME_RECT;

        public Drawable getDrawable(Resources res, SpecifyDrawableModel specifyDrawableModel) {
            switch (this) {
                case TIME_FORMAT:
                    return new TimeFormatDrawable(res, specifyDrawableModel);
                case TIME_RECT:
                    return new RectTimeDrawable(res, specifyDrawableModel);
                default:
                    return null;
            }
        }
    }
}
