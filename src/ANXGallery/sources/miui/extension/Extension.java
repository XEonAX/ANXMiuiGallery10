package miui.extension;

import android.util.Log;
import miui.extension.invoker.Invoker;
import miui.reflect.Constructor;

public class Extension {
    private static final String TAG = "Extension";
    private boolean uS;
    private final String xK;
    private final String xL;
    private final String xM;
    private Invoker xN;

    public Extension(String str, String str2, String str3) {
        this.xK = str;
        this.xL = str2;
        this.xM = str3;
    }

    public String getTarget() {
        return this.xK;
    }

    public String getAction() {
        return this.xL;
    }

    public String getInvoker() {
        return this.xM;
    }

    public void invoke(String str, Object... objArr) {
        if (this.xL == null || this.xL.equals(str)) {
            initialize();
            if (this.xN != null) {
                try {
                    this.xN.invoke(str, objArr);
                } catch (Throwable e) {
                    String str2 = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Fail to invoke ActivityExecutor, invoker=");
                    stringBuilder.append(this.xM);
                    Log.e(str2, stringBuilder.toString(), e);
                }
            }
        }
    }

    private void initialize() {
        String str;
        StringBuilder stringBuilder;
        if (!this.uS) {
            try {
                this.xN = (Invoker) Constructor.of(this.xM, "()V").newInstance(new Object[0]);
            } catch (Throwable e) {
                str = TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Fail to initialize ActivityExecutor, invoker=");
                stringBuilder.append(this.xM);
                Log.e(str, stringBuilder.toString(), e);
            } catch (Throwable e2) {
                str = TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Fail to initialize ActivityExecutor, invoker=");
                stringBuilder.append(this.xM);
                Log.e(str, stringBuilder.toString(), e2);
            } catch (Throwable th) {
                this.uS = true;
            }
            this.uS = true;
        }
    }
}
