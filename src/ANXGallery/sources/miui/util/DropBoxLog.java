package miui.util;

import android.os.DropBoxManager;
import android.os.Process;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;
import miui.reflect.Field;

public class DropBoxLog {
    private static final String Ir = "micloud";
    private static final SoftReferenceSingleton<SimpleDateFormat> Is = new SoftReferenceSingleton<SimpleDateFormat>() {
        /* renamed from: dn */
        protected SimpleDateFormat createInstance() {
            return new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
        }
    };
    private StringBuilder It = new StringBuilder();

    public DropBoxLog v(String str, String str2) {
        Log.v(str, str2);
        a(Field.VOID_SIGNATURE_PRIMITIVE, str, str2, null);
        return this;
    }

    public DropBoxLog v(String str, String str2, Throwable th) {
        Log.v(str, str2, th);
        a(Field.VOID_SIGNATURE_PRIMITIVE, str, str2, th);
        return this;
    }

    public DropBoxLog d(String str, String str2) {
        Log.d(str, str2);
        a(Field.DOUBLE_SIGNATURE_PRIMITIVE, str, str2, null);
        return this;
    }

    public DropBoxLog d(String str, String str2, Throwable th) {
        Log.d(str, str2, th);
        a(Field.DOUBLE_SIGNATURE_PRIMITIVE, str, str2, th);
        return this;
    }

    public DropBoxLog i(String str, String str2) {
        Log.i(str, str2);
        a(Field.INT_SIGNATURE_PRIMITIVE, str, str2, null);
        return this;
    }

    public DropBoxLog i(String str, String str2, Throwable th) {
        Log.i(str, str2, th);
        a(Field.INT_SIGNATURE_PRIMITIVE, str, str2, th);
        return this;
    }

    public DropBoxLog w(String str, String str2) {
        Log.w(str, str2);
        a("W", str, str2, null);
        return this;
    }

    public DropBoxLog w(String str, String str2, Throwable th) {
        Log.w(str, str2, th);
        a("W", str, str2, th);
        return this;
    }

    public DropBoxLog e(String str, String str2) {
        Log.e(str, str2);
        a("E", str, str2, null);
        return this;
    }

    public DropBoxLog e(String str, String str2, Throwable th) {
        Log.e(str, str2, th);
        a("E", str, str2, th);
        return this;
    }

    public String getMessage() {
        return this.It.toString();
    }

    public void commit(String str) {
        if (str == null) {
            str = AppConstants.getCurrentApplication().getPackageName();
        }
        CharSequence charSequence = this.It;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("micloud_");
        stringBuilder.append(str);
        writeLog(charSequence, stringBuilder.toString());
        this.It.setLength(0);
    }

    private void a(String str, String str2, String str3, Throwable th) {
        this.It.append(((SimpleDateFormat) Is.get()).format(new Date()));
        this.It.append(' ');
        this.It.append(str);
        this.It.append('/');
        this.It.append(str2);
        this.It.append('(');
        this.It.append(Process.myPid());
        this.It.append(')');
        this.It.append(':');
        this.It.append(str3);
        if (th != null) {
            this.It.append(':');
            this.It.append(Log.getStackTraceString(th));
        }
        this.It.append(13);
    }

    /* JADX WARNING: Missing block: B:10:0x0027, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void writeLog(CharSequence charSequence, String str) {
        DropBoxManager dropBoxManager = (DropBoxManager) AppConstants.getCurrentApplication().getSystemService("dropbox");
        if (charSequence != null && charSequence.length() > 0 && dropBoxManager != null && dropBoxManager.isTagEnabled(str)) {
            dropBoxManager.addText(str, charSequence.toString());
        }
    }
}
