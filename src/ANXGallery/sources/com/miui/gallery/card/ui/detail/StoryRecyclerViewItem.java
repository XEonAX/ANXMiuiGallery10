package com.miui.gallery.card.ui.detail;

import android.content.Context;
import android.util.AttributeSet;
import com.miui.gallery.ui.MicroThumbGridItem2;

public class StoryRecyclerViewItem extends MicroThumbGridItem2 {
    public StoryRecyclerViewItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected boolean isSquareItem() {
        return false;
    }
}
