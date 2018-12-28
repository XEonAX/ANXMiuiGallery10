package miui.external;

import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import miui.external.SdkConstants.SdkError;

public class Application extends android.app.Application implements SdkConstants {
    private static final String PACKAGE_NAME = "com.miui.core";
    private ApplicationDelegate mApplicationDelegate;
    private boolean mInitialized;
    private boolean mStarted;

    public Application() {
        if (loadSdk() && initializeSdk()) {
            this.mInitialized = true;
        }
    }

    private boolean loadSdk() {
        return true;
    }

    private boolean initializeSdk() {
        return true;
    }

    private boolean startSdk() {
        return true;
    }

    private void handleGenericError(Throwable t) {
        while (t != null && t.getCause() != null) {
            if (!(t instanceof InvocationTargetException)) {
                if (!(t instanceof ExceptionInInitializerError)) {
                    break;
                }
                t = t.getCause();
            } else {
                t = t.getCause();
            }
        }
        Log.e(SdkConstants.LOG_TAG, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support.", t);
        SdkErrorInstrumentation.handleSdkError(SdkError.GENERIC);
    }

    private void handleUnknownError(String phase, int code) {
        String str = SdkConstants.LOG_TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support. phase: ");
        stringBuilder.append(phase);
        stringBuilder.append(" code: ");
        stringBuilder.append(code);
        Log.e(str, stringBuilder.toString());
        SdkErrorInstrumentation.handleSdkError(SdkError.GENERIC);
    }

    public ApplicationDelegate onCreateApplicationDelegate() {
        return null;
    }

    public final ApplicationDelegate getApplicationDelegate() {
        return this.mApplicationDelegate;
    }

    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        if (this.mInitialized && startSdk()) {
            this.mApplicationDelegate = onCreateApplicationDelegate();
            if (this.mApplicationDelegate != null) {
                this.mApplicationDelegate.attach(this);
            }
            this.mStarted = true;
        }
    }

    public final void onCreate() {
        if (this.mStarted) {
            if (this.mApplicationDelegate != null) {
                this.mApplicationDelegate.onCreate();
            } else {
                superOnCreate();
            }
        }
    }

    final void superOnCreate() {
        super.onCreate();
    }

    public final void onTerminate() {
        if (this.mApplicationDelegate != null) {
            this.mApplicationDelegate.onTerminate();
        } else {
            superOnTerminate();
        }
    }

    final void superOnTerminate() {
        super.onTerminate();
    }

    public final void onLowMemory() {
        if (this.mApplicationDelegate != null) {
            this.mApplicationDelegate.onLowMemory();
        } else {
            superOnLowMemory();
        }
    }

    final void superOnLowMemory() {
        super.onLowMemory();
    }

    public final void onTrimMemory(int level) {
        if (this.mApplicationDelegate != null) {
            this.mApplicationDelegate.onTrimMemory(level);
        } else {
            superOnTrimMemory(level);
        }
    }

    final void superOnTrimMemory(int level) {
        super.onTrimMemory(level);
    }

    public final void onConfigurationChanged(Configuration newConfig) {
        if (this.mApplicationDelegate != null) {
            this.mApplicationDelegate.onConfigurationChanged(newConfig);
        } else {
            superOnConfigurationChanged(newConfig);
        }
    }

    final void superOnConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }
}
