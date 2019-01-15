package com.miui.internal.variable.v16;

import android.app.Application;
import com.miui.internal.variable.VariableExceptionHandler;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Map;

public class Android_App_ActivityThread_class implements com.miui.internal.variable.Android_App_ActivityThread_class {
    private static final String TAG = "Android_App_ActivityThread_class_v16";
    private Object kT = null;
    private volatile Application kU = null;
    private String kV;
    private Object kW;

    public Android_App_ActivityThread_class() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread").getDeclaredMethod("currentActivityThread", new Class[0]);
            declaredMethod.setAccessible(true);
            this.kT = declaredMethod.invoke(null, new Object[0]);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.app.ActivityThread.currentActivityThread", e);
        }
    }

    public Application currentApplication() {
        try {
            if (this.kU == null) {
                Method declaredMethod = this.kT.getClass().getDeclaredMethod("currentApplication", new Class[0]);
                declaredMethod.setAccessible(true);
                this.kU = (Application) declaredMethod.invoke(null, new Object[0]);
            }
            return this.kU;
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.app.ActivityThread.currentApplication", e);
            return null;
        }
    }

    public Object currentActivityThread() {
        return this.kT;
    }

    public String getInitialPackageName(Object obj) {
        try {
            if (this.kV == null) {
                Field declaredField = obj.getClass().getDeclaredField("mPackages");
                declaredField.setAccessible(true);
                Map map = (Map) declaredField.get(obj);
                this.kV = (String) map.keySet().iterator().next();
                this.kW = ((WeakReference) map.values().iterator().next()).get();
            }
            return this.kV;
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.app.ActivityThread.mPackages", e);
            return null;
        }
    }

    public Object getInitialLoadedApk(Object obj) {
        getInitialPackageName(obj);
        return this.kW;
    }
}
