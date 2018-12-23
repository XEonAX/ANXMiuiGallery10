package com.miui.gallery.video.editor;

import com.nexstreaming.nexeditorsdk.nexClip;

public enum DisplayAspectRatio {
    A16V9(1.7777778f),
    A9V16(0.5625f),
    A18V9(2.0f),
    A9V18(0.5f),
    A4V3(1.3333334f),
    A3V4(0.75f),
    A1V1(1.0f);
    
    private float ratio;

    private DisplayAspectRatio(float ratio) {
        this.ratio = ratio;
    }

    public float getRatio() {
        return this.ratio;
    }

    public static DisplayAspectRatio getVideoAspectRatio(int width, int height, int rotation) {
        float sourceRate = rotation % nexClip.kClip_Rotate_180 == 0 ? ((float) width) / ((float) height) : ((float) height) / ((float) width);
        float min = 127.0f;
        DisplayAspectRatio displayAspectRatio = A18V9;
        for (DisplayAspectRatio ratio : values()) {
            float distance = Math.abs(ratio.getRatio() - sourceRate);
            if (distance < min) {
                min = distance;
                displayAspectRatio = ratio;
            }
        }
        return displayAspectRatio;
    }
}
