package com.xiaomi.micloudsdk.provider;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.miui.utils.SafeContentResolver;
import java.util.HashSet;

final class MiCloudSettingsV18 {
    private static final Uri BASE_URI = Uri.parse("content://com.xiaomi.micloudsdk.provider.MiCloudSettingsProvider");
    private static final HashSet<String> NEED_CATCH_EXCEPTION_PACKAGES = new HashSet(1);

    static {
        NEED_CATCH_EXCEPTION_PACKAGES.add("com.xiaomi.xmsf");
    }

    public static boolean putInt(Context context, String name, int value) {
        return putString(context, name, String.valueOf(value));
    }

    public static int getInt(Context context, String name, int def) {
        String valueString = getString(context, name);
        if (valueString == null) {
            return def;
        }
        try {
            return Integer.parseInt(valueString);
        } catch (NumberFormatException e) {
            return def;
        }
    }

    public static boolean putString(Context context, String name, String value) {
        ContentValues toInsert = new ContentValues();
        toInsert.put("micloud_settings_key", name);
        toInsert.put("micloud_settings_value", String.valueOf(value));
        return SafeContentResolver.insert(context, BASE_URI, toInsert) != null;
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    public static java.lang.String getString(android.content.Context r11, java.lang.String r12) {
        /*
        r10 = 0;
        r6 = 0;
        r9 = 3;
        r8 = 0;
    L_0x0004:
        if (r8 >= r9) goto L_0x0021;
    L_0x0006:
        r0 = r11.getContentResolver();	 Catch:{ Exception -> 0x0059 }
        r1 = BASE_URI;	 Catch:{ Exception -> 0x0059 }
        r2 = 1;
        r2 = new java.lang.String[r2];	 Catch:{ Exception -> 0x0059 }
        r3 = 0;
        r2[r3] = r12;	 Catch:{ Exception -> 0x0059 }
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r6 = r0.query(r1, r2, r3, r4, r5);	 Catch:{ Exception -> 0x0059 }
        if (r6 == 0) goto L_0x0021;
    L_0x001b:
        r0 = r6.moveToFirst();	 Catch:{ Exception -> 0x0059 }
        if (r0 == 0) goto L_0x002b;
    L_0x0021:
        if (r6 != 0) goto L_0x0053;
    L_0x0023:
        r0 = r10;
    L_0x0024:
        if (r6 == 0) goto L_0x0029;
    L_0x0026:
        r6.close();
    L_0x0029:
        r10 = r0;
    L_0x002a:
        return r10;
    L_0x002b:
        r6.close();	 Catch:{ Exception -> 0x0059 }
        r0 = "MiCloudSettings";
        r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0059 }
        r1.<init>();	 Catch:{ Exception -> 0x0059 }
        r2 = "Error query for: ";
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x0059 }
        r1 = r1.append(r12);	 Catch:{ Exception -> 0x0059 }
        r2 = ". Retry ";
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x0059 }
        r1 = r1.append(r8);	 Catch:{ Exception -> 0x0059 }
        r1 = r1.toString();	 Catch:{ Exception -> 0x0059 }
        android.util.Log.w(r0, r1);	 Catch:{ Exception -> 0x0059 }
        r8 = r8 + 1;
        goto L_0x0004;
    L_0x0053:
        r0 = 0;
        r0 = r6.getString(r0);	 Catch:{ Exception -> 0x0059 }
        goto L_0x0024;
    L_0x0059:
        r7 = move-exception;
        r0 = "MiCloudSettings";
        r1 = "";
        android.util.Log.e(r0, r1, r7);	 Catch:{ all -> 0x0067 }
        if (r6 == 0) goto L_0x002a;
    L_0x0063:
        r6.close();
        goto L_0x002a;
    L_0x0067:
        r0 = move-exception;
        if (r6 == 0) goto L_0x006d;
    L_0x006a:
        r6.close();
    L_0x006d:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.micloudsdk.provider.MiCloudSettingsV18.getString(android.content.Context, java.lang.String):java.lang.String");
    }
}
