package com.miui.gallery.editor.photo.core.imports.text;

import android.app.Activity;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.Metadata;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.imports.text.TextEditorView.TextEditorListener;
import com.miui.gallery.editor.photo.core.imports.text.dialog.BaseDialogModel;
import com.miui.gallery.editor.photo.core.imports.text.editdialog.TextEditDialog;
import com.miui.gallery.editor.photo.core.imports.text.editdialog.TextEditDialog.ConfigChangeListener;
import com.miui.gallery.editor.photo.core.imports.text.typeface.TextStyle;
import com.miui.gallery.editor.photo.core.imports.text.utils.AutoLineLayout.TextAlignment;
import com.miui.gallery.util.Log;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class TextFragment extends AbstractEffectFragment {
    private int mCurrentIndex = 0;
    private TextStyle mCurrentTextStyle;
    private StatusListener mStatusListener = new StatusListener(this, null);
    private SparseArray<TextStatusData> mTextConfigDataArray = new SparseArray();
    private TextEditDialog mTextEditDialog;
    private TextEditorListener mTextEditorListener = new TextEditorListener() {
        public void onModify() {
        }

        public void onClear() {
            TextFragment.this.mCurrentIndex = -1;
            TextFragment.this.mTextEditorView.onClear();
        }

        public void onItemEdit() {
            if (!TextFragment.this.isDetached()) {
                Activity activity = TextFragment.this.getActivity();
                if (activity != null && !activity.isFinishing() && !TextFragment.this.mTextEditDialog.isShowing()) {
                    String text = TextFragment.this.mTextEditorView.getItemText();
                    TextFragment.this.mTextEditDialog.setWillEditText(text, TextFragment.this.getString(R.string.text_append_hint).equals(text));
                    TextStatusData textStatusData = TextFragment.this.getTextConfigDataByIndex(TextFragment.this.mCurrentIndex);
                    TextFragment.this.mTextEditorView.getCurrentItemStatus(textStatusData);
                    TextFragment.this.mTextEditDialog.setInitializeData(textStatusData);
                    TextFragment.this.mTextEditDialog.showAllowingStateLoss(TextFragment.this.getFragmentManager(), "TextEditDialog");
                }
            }
        }
    };
    private TextEditorView mTextEditorView;
    private TextWatcher mTextWatcher = new TextWatcher() {
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        public void onTextChanged(CharSequence s, int start, int before, int count) {
            TextFragment.this.mTextEditorView.setItemText(s.toString());
            TextFragment.this.mStatusListener.onTextChange();
        }

        public void afterTextChanged(Editable s) {
        }
    };

    private class ConfigListener implements ConfigChangeListener {
        private ConfigListener() {
        }

        /* synthetic */ ConfigListener(TextFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onColorChange(int color) {
            TextFragment.this.mTextEditorView.setItemTextColor(color);
        }

        public void onTransparentChange(int progress) {
            TextFragment.this.mTextEditorView.setItemTransparent(((float) progress) / 100.0f);
        }

        public void onShadowChange(boolean shadow) {
            TextFragment.this.mTextEditorView.setItemShadow(shadow);
        }

        public void onTextAlignChange(TextAlignment textAlignment) {
            TextFragment.this.mTextEditorView.setItemTextAlignment(textAlignment);
        }

        public void onBoldChange(boolean bold) {
            TextFragment.this.mTextEditorView.setItemBold(bold);
        }

        public void onTypefaceChange(TextStyle textStyle) {
            TextFragment.this.mCurrentTextStyle = textStyle;
            TextFragment.this.mTextEditorView.setItemTypeface(textStyle);
        }
    }

    private class StatusListener implements com.miui.gallery.editor.photo.core.imports.text.editdialog.TextEditDialog.StatusListener {
        private int mDialogBottom;

        private StatusListener() {
        }

        /* synthetic */ StatusListener(TextFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onShow() {
        }

        public void onDismiss() {
        }

        public void onBottomChange(int bottom) {
            this.mDialogBottom = bottom;
            Log.d("TextFragment", "onBottomChange: %d", Integer.valueOf(bottom));
            int activationItemBottom = TextFragment.this.mTextEditorView.getActivationItemBottom();
            Log.d("TextFragment", "text bottom: %d", Integer.valueOf(activationItemBottom));
            if (activationItemBottom > bottom) {
                TextFragment.this.mTextEditorView.offsetWithAnimator((float) (bottom - activationItemBottom));
            } else {
                TextFragment.this.mTextEditorView.offsetWithAnimator(0.0f);
            }
        }

        void onTextChange() {
            onBottomChange(this.mDialogBottom);
        }
    }

    public static class TextStatusData {
        public int color;
        public float itemDegree;
        public float itemPositionX;
        public float itemPositionY;
        public float itemScale;
        public TextAlignment textAlignment;
        public boolean textBold;
        public boolean textShadow;
        public TextStyle textStyle;
        public float transparentProgress;

        void configSelfByInit(BaseDialogModel baseDialogModel) {
            if (baseDialogModel == null || !baseDialogModel.hasDialog()) {
                this.color = -1;
                this.textAlignment = TextAlignment.LEFT;
                this.textShadow = true;
            } else if (baseDialogModel.isCorner) {
                this.color = -1;
                this.textAlignment = TextAlignment.LEFT;
                this.textShadow = true;
            } else {
                this.color = -16777216;
                this.textAlignment = TextAlignment.CENTER;
                this.textShadow = false;
            }
            this.transparentProgress = 0.0f;
            this.textStyle = null;
            this.textBold = false;
            this.itemScale = 1.0f;
            this.itemDegree = 0.0f;
            this.itemPositionX = 0.0f;
            this.itemPositionY = 0.0f;
        }

        void setEmpty() {
            this.color = -1;
            this.textAlignment = TextAlignment.LEFT;
            this.transparentProgress = 0.0f;
            this.textStyle = null;
            this.textBold = false;
            this.textShadow = false;
            this.itemScale = 1.0f;
            this.itemDegree = 0.0f;
            this.itemPositionX = 0.0f;
            this.itemPositionY = 0.0f;
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        FrameLayout layout = (FrameLayout) inflater.inflate(R.layout.editor_view_container, container, false);
        this.mTextEditorView = new TextEditorView(getActivity());
        this.mTextEditDialog = new TextEditDialog();
        this.mTextEditDialog.setConfigChangeListener(new ConfigListener(this, null));
        this.mTextEditorView.setTextEditorListener(this.mTextEditorListener);
        this.mTextEditDialog.setTextWatch(this.mTextWatcher);
        this.mTextEditDialog.setStatusListener(this.mStatusListener);
        this.mTextEditorView.setBitmap(getBitmap());
        int paddingLeft = getResources().getDimensionPixelSize(R.dimen.photo_editor_preview_padding);
        this.mTextEditorView.setPadding(paddingLeft, getResources().getDimensionPixelSize(R.dimen.photo_editor_preview_padding_top), paddingLeft, 0);
        layout.addView(this.mTextEditorView, -1, -1);
        return layout;
    }

    public boolean isEmpty() {
        return this.mTextEditorView.isEmpty();
    }

    protected List<String> onSample() {
        List<String> list = new ArrayList();
        BaseDialogModel dialogModel = this.mTextEditorView.getItemDialogModel();
        if (dialogModel != null) {
            list.add("dialog_" + dialogModel.name);
        }
        if (this.mCurrentTextStyle != null) {
            list.add("font_" + this.mCurrentTextStyle.getName());
        }
        list.add("color_" + Integer.toHexString(this.mTextEditorView.getItemColor()));
        if (this.mTextEditorView.getItemBold()) {
            list.add("bold");
        }
        if (this.mTextEditorView.getItemShadow()) {
            list.add("shadow");
        }
        TextAlignment textAlignment = this.mTextEditorView.getItemAlignment();
        if (textAlignment != TextAlignment.LEFT) {
            list.add("align_" + textAlignment);
        }
        float transparent = this.mTextEditorView.getItemTransparent();
        if (transparent > 0.0f) {
            list.add("transparent_" + new DecimalFormat(".0").format((double) transparent));
        }
        return list;
    }

    protected RenderData onExport() {
        return new TextRenderData(this.mTextEditorView.export());
    }

    public void add(Metadata effect, Object param) {
        if (isAdded()) {
            int newIndex = ((Integer) param).intValue();
            if (this.mTextEditorView.getItemSize() == 0) {
                this.mTextEditorView.addNewItem();
            }
            if (newIndex != this.mCurrentIndex) {
                if (!this.mTextEditorView.isItemActivation()) {
                    this.mTextEditorView.setLastItemActivation();
                }
                this.mTextEditorView.getCurrentItemStatus(getTextConfigDataByIndex(this.mCurrentIndex));
                performSetDialog(((TextConfig) effect).getBaseDialogModel(), newIndex);
            }
        }
    }

    private void performSetDialog(BaseDialogModel baseDialogModel, int newIndex) {
        this.mTextEditorView.setItemDialogModel(baseDialogModel);
        TextStatusData newData = (TextStatusData) this.mTextConfigDataArray.get(newIndex);
        boolean isNew = false;
        if (newData == null) {
            newData = getTextConfigDataByIndex(newIndex);
            newData.configSelfByInit(baseDialogModel);
            isNew = true;
        }
        this.mTextEditorView.enableStatusForCurrentItem(newData, isNew);
        this.mCurrentIndex = newIndex;
    }

    public void remove(Metadata effect) {
    }

    public void render() {
    }

    public void clear() {
    }

    public TextStatusData getTextConfigDataByIndex(int index) {
        TextStatusData textStatusData = (TextStatusData) this.mTextConfigDataArray.get(index);
        if (textStatusData != null) {
            return textStatusData;
        }
        textStatusData = new TextStatusData();
        this.mTextConfigDataArray.put(index, textStatusData);
        return textStatusData;
    }
}
