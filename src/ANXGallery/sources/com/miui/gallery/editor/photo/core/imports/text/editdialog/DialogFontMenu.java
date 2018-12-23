package com.miui.gallery.editor.photo.core.imports.text.editdialog;

import android.content.Context;
import android.graphics.Typeface;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.imports.text.TextFragment.TextStatusData;
import com.miui.gallery.editor.photo.core.imports.text.editdialog.TextEditDialog.ConfigChangeListener;
import com.miui.gallery.editor.photo.core.imports.text.typeface.TextStyle;
import com.miui.gallery.editor.photo.core.imports.text.typeface.TextStyle.LoadListener;
import com.miui.gallery.editor.photo.core.imports.text.typeface.TypeFaceAdapter;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import java.util.ArrayList;
import java.util.List;

class DialogFontMenu extends DialogSubMenu<ConfigChangeListener, TextStatusData> {
    private TextStatusData mInitializeData;
    private SimpleRecyclerView mRecyclerView;
    private List<TextStyle> mTextStyles;
    private TypeFaceAdapter mTypeFaceAdapter;
    private ViewGroup mWholeView;
    private boolean typeFaceInit = false;

    DialogFontMenu(Context context, ViewGroup parent, ConfigChangeListener configChangeListener) {
        super(context, parent, R.string.text_edit_dialog_font, R.drawable.text_edit_dialog_tab_icon_font);
        this.mListener = configChangeListener;
    }

    ViewGroup initSubMenuView(Context context, ViewGroup parent) {
        this.mWholeView = (ViewGroup) LayoutInflater.from(context).inflate(R.layout.text_edit_dialog_options_font_panel, parent, false);
        this.mRecyclerView = (SimpleRecyclerView) this.mWholeView.findViewById(R.id.text_edit_dialog_tab_font_recycler);
        initTypeFace(context);
        this.mTypeFaceAdapter = new TypeFaceAdapter(context, this.mTextStyles);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(context));
        this.mRecyclerView.setAdapter(this.mTypeFaceAdapter);
        this.mTypeFaceAdapter.setOnItemClickListener(new OnItemClickListener() {
            public boolean OnItemClick(RecyclerView recyclerView, View child, int position) {
                if (position >= 0 && position < DialogFontMenu.this.mTextStyles.size()) {
                    TextStyle textStyle = (TextStyle) DialogFontMenu.this.mTextStyles.get(position);
                    if (DialogFontMenu.this.mListener != null) {
                        ((ConfigChangeListener) DialogFontMenu.this.mListener).onTypefaceChange(textStyle);
                    }
                    DialogFontMenu.this.mTypeFaceAdapter.setSelection(position);
                }
                return true;
            }
        });
        return this.mWholeView;
    }

    public void initializeData(TextStatusData initializeData) {
        this.mInitializeData = initializeData;
        if (this.typeFaceInit && initializeData != null) {
            Typeface typeface = initializeData.textStyle == null ? Typeface.DEFAULT : initializeData.textStyle.getTypeFace();
            for (int i = 0; i < this.mTextStyles.size(); i++) {
                if (isEquals(typeface, ((TextStyle) this.mTextStyles.get(i)).getTypeFace())) {
                    this.mTypeFaceAdapter.setSelection(i);
                }
            }
        }
    }

    private void initTypeFace(Context context) {
        if (this.mTextStyles == null) {
            this.mTextStyles = new ArrayList();
        }
        if (this.mTextStyles.isEmpty()) {
            TextStyle.loadTextStyleLocal(context, new LoadListener() {
                public void onLoadSuccess(List<TextStyle> textStyles) {
                    DialogFontMenu.this.mTextStyles.clear();
                    DialogFontMenu.this.mTextStyles.addAll(textStyles);
                    DialogFontMenu.this.typeFaceInit = true;
                    DialogFontMenu.this.initializeData(DialogFontMenu.this.mInitializeData);
                }
            });
        }
    }

    private boolean isEquals(Typeface a, Typeface b) {
        return (a == null && b == null) || (a != null && a.equals(b));
    }
}
