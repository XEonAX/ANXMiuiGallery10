package com.miui.gallery.editor.photo.core.imports.filter.adjust;

public class GPUBrightnessFilter extends GPURGBLutFilter {
    public GPUBrightnessFilter(int percent) {
        super(percent);
        if (this.mDegree > 50) {
            this.mPercent = ((((float) (this.mDegree - 50)) * 1.0f) / 50.0f) + 0.0f;
        } else {
            this.mPercent = ((((float) (50 - this.mDegree)) * 1.0f) / 50.0f) + 0.0f;
        }
    }

    protected String getLUTPath() {
        return this.mDegree > 50 ? "filter/adjust/adjust_high_brightness.png" : "filter/adjust/adjust_low_brightness.png";
    }
}
