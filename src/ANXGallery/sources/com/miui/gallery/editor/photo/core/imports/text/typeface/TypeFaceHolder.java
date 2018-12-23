package com.miui.gallery.editor.photo.core.imports.text.typeface;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.R;

class TypeFaceHolder extends ViewHolder {
    private TextView mName = ((TextView) this.itemView.findViewById(R.id.font_item_name));

    TypeFaceHolder(Context context, ViewGroup parent) {
        super(LayoutInflater.from(context).inflate(R.layout.text_edit_dialog_options_font_panel_item, parent, false));
    }

    public void bind(TextStyle textStyle) {
        this.mName.getPaint().setTypeface(textStyle.getTypeFace());
        this.mName.setText(textStyle.getName());
    }
}
