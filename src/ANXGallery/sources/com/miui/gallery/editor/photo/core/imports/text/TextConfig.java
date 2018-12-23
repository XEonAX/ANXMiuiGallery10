package com.miui.gallery.editor.photo.core.imports.text;

import com.miui.gallery.editor.photo.core.common.model.TextData;
import com.miui.gallery.editor.photo.core.imports.text.dialog.BaseDialogModel;

public class TextConfig extends TextData {
    private BaseDialogModel mBaseDialogModel;

    TextConfig(short priority, String name, BaseDialogModel baseDialogModel) {
        super(priority, name, baseDialogModel.dialogSmallIconPath, baseDialogModel.backgroundColor);
        this.mBaseDialogModel = baseDialogModel;
    }

    BaseDialogModel getBaseDialogModel() {
        return this.mBaseDialogModel;
    }
}
