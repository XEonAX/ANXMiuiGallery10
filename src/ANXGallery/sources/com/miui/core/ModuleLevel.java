package com.miui.core;

import android.content.Context;
import com.miui.utils.LazyValue;
import miui.util.AppConstants;

public final class ModuleLevel extends LazyValue<Context, Integer> {
    private String mModuleName;

    public ModuleLevel(String moduleName) {
        this.mModuleName = moduleName;
    }

    protected Integer onInit(Context context) {
        return Integer.valueOf(AppConstants.getSdkLevel(context, this.mModuleName));
    }
}
