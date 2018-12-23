package com.miui.gallery.adapter;

import android.view.View;
import android.widget.ListAdapter;

public interface CheckableAdapter extends ListAdapter {
    View getCheckableView(View view);
}
