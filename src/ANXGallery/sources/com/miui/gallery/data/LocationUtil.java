package com.miui.gallery.data;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.util.Log;

public class LocationUtil {
    private static int INT_COORDINATE_FACTOR = 1000000;

    /* JADX WARNING: Missing block: B:9:0x0099, code:
            if (r19.equals("W") != false) goto L_0x009b;
     */
    public static float convertRationalLatLonToFloat(java.lang.String r18, java.lang.String r19) {
        /*
        r9 = android.text.TextUtils.isEmpty(r18);
        if (r9 == 0) goto L_0x0008;
    L_0x0006:
        r9 = 0;
    L_0x0007:
        return r9;
    L_0x0008:
        r9 = ",";
        r0 = r18;
        r8 = r0.split(r9);	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r9 = 0;
        r9 = r8[r9];	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r14 = "/";
        r5 = r9.split(r14);	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r9 = 0;
        r9 = r5[r9];	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r9 = r9.trim();	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r14 = java.lang.Double.parseDouble(r9);	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r9 = 1;
        r9 = r5[r9];	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r9 = r9.trim();	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r16 = java.lang.Double.parseDouble(r9);	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r2 = r14 / r16;
        r9 = 1;
        r9 = r8[r9];	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r14 = "/";
        r5 = r9.split(r14);	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r9 = 0;
        r9 = r5[r9];	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r9 = r9.trim();	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r14 = java.lang.Double.parseDouble(r9);	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r9 = 1;
        r9 = r5[r9];	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r9 = r9.trim();	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r16 = java.lang.Double.parseDouble(r9);	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r6 = r14 / r16;
        r9 = 2;
        r9 = r8[r9];	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r14 = "/";
        r5 = r9.split(r14);	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r9 = 0;
        r9 = r5[r9];	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r9 = r9.trim();	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r14 = java.lang.Double.parseDouble(r9);	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r9 = 1;
        r9 = r5[r9];	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r9 = r9.trim();	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r16 = java.lang.Double.parseDouble(r9);	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        r12 = r14 / r16;
        r14 = 4633641066610819072; // 0x404e000000000000 float:0.0 double:60.0;
        r14 = r6 / r14;
        r14 = r14 + r2;
        r16 = 4660134898793709568; // 0x40ac200000000000 float:0.0 double:3600.0;
        r16 = r12 / r16;
        r10 = r14 + r16;
        r9 = android.text.TextUtils.isEmpty(r19);	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        if (r9 != 0) goto L_0x009f;
    L_0x0087:
        r9 = "S";
        r0 = r19;
        r9 = r0.equals(r9);	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        if (r9 != 0) goto L_0x009b;
    L_0x0091:
        r9 = "W";
        r0 = r19;
        r9 = r0.equals(r9);	 Catch:{ NumberFormatException -> 0x00a2, ArrayIndexOutOfBoundsException -> 0x00a6 }
        if (r9 == 0) goto L_0x009f;
    L_0x009b:
        r14 = -r10;
        r9 = (float) r14;
        goto L_0x0007;
    L_0x009f:
        r9 = (float) r10;
        goto L_0x0007;
    L_0x00a2:
        r4 = move-exception;
        r9 = 0;
        goto L_0x0007;
    L_0x00a6:
        r4 = move-exception;
        r9 = 0;
        goto L_0x0007;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.data.LocationUtil.convertRationalLatLonToFloat(java.lang.String, java.lang.String):float");
    }

    public static boolean isValidateCoordidate(float latitude, float longitude) {
        return (latitude == 0.0f || longitude == 0.0f) ? false : true;
    }

    public static String getCityNameFromRes(Context context, String cityId) {
        if (TextUtils.isEmpty(cityId)) {
            return null;
        }
        int resID = context.getResources().getIdentifier("cityname_" + cityId, "string", context.getPackageName());
        if (resID != 0) {
            return context.getResources().getString(resID);
        }
        Log.e("LocationUtil", "cannot find a res id for %s", (Object) cityId);
        return null;
    }

    public static int convertIntLat(float lat) {
        return (int) (((float) INT_COORDINATE_FACTOR) * lat);
    }

    public static boolean isLocationValidate(String location) {
        return (TextUtils.isEmpty(location) || "-1".equals(location) || "-2".equals(location)) ? false : true;
    }
}
