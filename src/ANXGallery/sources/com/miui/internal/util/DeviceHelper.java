package com.miui.internal.util;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Global;
import android.text.TextUtils;
import miui.os.SystemProperties;

public class DeviceHelper {
    public static final boolean FEATURE_WHOLE_ANIM = SystemProperties.getBoolean("ro.sys.ft_whole_anim", true);
    public static final boolean HAS_CUST_PARTITION = SystemProperties.getBoolean("ro.miui.has_cust_partition", false);
    public static final boolean IS_ALPHA_BUILD = SystemProperties.get("ro.product.mod_device", "").endsWith("_alpha");
    public static final boolean IS_CTA_BUILD = "1".equals(SystemProperties.get("ro.miui.cta"));
    public static final boolean IS_DEBUGGABLE;
    public static final boolean IS_DEVELOPMENT_VERSION;
    public static final boolean IS_INTERNATIONAL_BUILD = SystemProperties.get("ro.product.mod_device", "").endsWith("_global");
    public static final boolean IS_MIFOUR;
    public static final boolean IS_OLED = "oled".equals(SystemProperties.get("ro.display.type"));
    public static final boolean IS_STABLE_VERSION;
    public static final boolean IS_TABLET = ae();
    private static final String jf = "\\d+.\\d+.\\d+(-internal)?";

    static {
        boolean z = true;
        boolean z2 = "cancro".equals(Build.DEVICE) && Build.MODEL.startsWith("MI 4");
        IS_MIFOUR = z2;
        z2 = !TextUtils.isEmpty(VERSION.INCREMENTAL) && VERSION.INCREMENTAL.matches(jf);
        IS_DEVELOPMENT_VERSION = z2;
        z2 = "user".equals(Build.TYPE) && !IS_DEVELOPMENT_VERSION;
        IS_STABLE_VERSION = z2;
        if (SystemProperties.getInt("ro.debuggable", 0) != 1) {
            z = false;
        }
        IS_DEBUGGABLE = z;
    }

    private static boolean ae() {
        return SystemProperties.get("ro.build.characteristics", "default").contains("tablet");
    }

    public static String getRegion() {
        return SystemProperties.get("ro.miui.region", "CN");
    }

    public static String getDebugEnable() {
        return SystemProperties.get("persist.sys.miui.sdk.dbg", "");
    }

    public static boolean isDeviceProvisioned(Context context) {
        return Global.getInt(context.getContentResolver(), "device_provisioned", 0) != 0;
    }
}
