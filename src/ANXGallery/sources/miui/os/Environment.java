package miui.os;

import android.content.Context;
import com.miui.internal.variable.Android_Os_Process_class;
import com.miui.internal.variable.Android_Os_Process_class.Factory;
import java.io.File;
import java.util.regex.Pattern;
import miui.util.AttributeResolver;

public class Environment extends android.os.Environment {
    private static final Android_Os_Process_class DQ = Factory.getInstance().get();
    private static final String DR = "MIUI";
    private static File DS = null;
    private static final File DT = new File("/data/miui/");
    private static final File DU = new File(getMiuiDataDirectory(), "apps");
    private static final File DV = new File(getMiuiDataDirectory(), "preset_apps");
    private static final File DW = new File(getMiuiDataDirectory(), "current");
    private static int DX = 0;

    protected Environment() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    public static File getExternalStorageMiuiDirectory() {
        try {
            if (DS == null) {
                DS = new File(getExternalStorageDirectory(), DR);
            }
            if (!DS.exists() && getExternalStorageDirectory().exists()) {
                DS.mkdir();
            }
            return DS;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static File getMiuiDataDirectory() {
        return DT;
    }

    public static File getMiuiAppDirectory() {
        return DU;
    }

    public static File getMiuiPresetAppDirectory() {
        return DV;
    }

    public static File getMiuiCustomizedDirectory() {
        return DW;
    }

    public static boolean isExternalStorageMounted() {
        return "mounted".equals(getExternalStorageState());
    }

    public static int getCpuCount() {
        if (DX == 0) {
            Pattern compile = Pattern.compile("cpu[0-9]*");
            String[] list = new File("/sys/devices/system/cpu/").list();
            int i = 0;
            int length = list.length;
            int i2 = 0;
            while (i < length) {
                if (compile.matcher(list[i]).matches()) {
                    i2++;
                }
                i++;
            }
            DX = i2;
        }
        return DX;
    }

    public static boolean isUsingMiui(Context context) {
        return AttributeResolver.isUsingMiuiTheme(context);
    }
}
