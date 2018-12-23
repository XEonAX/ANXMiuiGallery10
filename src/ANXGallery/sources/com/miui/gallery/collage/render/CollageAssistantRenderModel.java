package com.miui.gallery.collage.render;

import com.miui.gallery.collage.PosterModel;

public class CollageAssistantRenderModel {
    public final CollageMargin collageMargin;
    public final String index;
    public final String[] textExtras;
    public final Type type;

    public enum Type {
        POSTER,
        LAYOUT
    }

    public static void configPosterModel(PosterModel posterModel, CollageAssistantRenderModel collageAssistantRenderModel) {
        String[] textExtras = collageAssistantRenderModel.textExtras;
        if (textExtras != null && textExtras.length > 0) {
            for (int i = 0; i < Math.min(textExtras.length, posterModel.textElementModels.length); i++) {
                posterModel.textElementModels[i].currentText = textExtras[i];
            }
        }
    }
}
