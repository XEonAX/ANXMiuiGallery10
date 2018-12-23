package com.miui.gallery.editor.photo.core.imports.text;

import android.content.Context;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.editor.photo.core.SdkManager;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.common.model.TextData;
import com.miui.gallery.editor.photo.core.imports.text.dialog.BaseDialogModel;
import com.miui.gallery.editor.photo.core.imports.text.dialog.DialogManager;
import java.util.ArrayList;
import java.util.List;

class TextProvider extends SdkProvider<TextData, AbstractEffectFragment> {
    private DialogManager mDialogManager;
    private List<TextData> mTextConfigList;

    private TextProvider() {
        super(Effect.TEXT);
    }

    protected void onActivityCreate() {
        super.onActivityCreate();
        initialize();
    }

    public List<TextData> list() {
        return this.mTextConfigList;
    }

    protected AbstractEffectFragment onCreateFragment() {
        return new TextFragment();
    }

    public RenderEngine createEngine(Context context) {
        return new TextEngine();
    }

    private void initialize() {
        this.mDialogManager = new DialogManager();
        this.mTextConfigList = new ArrayList();
        List<BaseDialogModel> dialogModelList = this.mDialogManager.getDialogModelList();
        for (int i = 0; i < dialogModelList.size(); i++) {
            BaseDialogModel baseDialogModel = (BaseDialogModel) dialogModelList.get(i);
            this.mTextConfigList.add(new TextConfig((short) 0, baseDialogModel.name, baseDialogModel));
        }
        notifyInitializeFinish();
    }

    static {
        SdkManager.INSTANCE.register(new TextProvider());
    }
}
