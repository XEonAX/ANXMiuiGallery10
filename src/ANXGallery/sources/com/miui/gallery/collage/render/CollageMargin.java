package com.miui.gallery.collage.render;

import com.miui.gallery.R;

public enum CollageMargin {
    NONE(R.drawable.collage_margin_default, 0.0f),
    SMALL(R.drawable.collage_margin_s, 1.0f),
    MEDIUM(R.drawable.collage_margin_m, 1.66f),
    LARGE(R.drawable.collage_margin_l, 2.33f);
    
    public final int iconRes;
    public final float marginSize;

    private CollageMargin(int iconRes, float marginSize) {
        this.iconRes = iconRes;
        this.marginSize = marginSize;
    }
}
