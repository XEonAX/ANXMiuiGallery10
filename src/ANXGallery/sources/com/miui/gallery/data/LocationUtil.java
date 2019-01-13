package com.miui.gallery.data;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.util.Log;
import miui.reflect.Field;

public class LocationUtil {
    private static int INT_COORDINATE_FACTOR = 1000000;

    /* JADX WARNING: Missing block: B:9:0x0099, code:
            if (r19.equals("W") != false) goto L_0x009b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static float convertRationalLatLonToFloat(String rationalString, String ref) {
        if (TextUtils.isEmpty(rationalString)) {
            return 0.0f;
        }
        try {
            String[] parts = rationalString.split(",");
            String[] pair = parts[0].split("/");
            double degrees = Double.parseDouble(pair[0].trim()) / Double.parseDouble(pair[1].trim());
            pair = parts[1].split("/");
            double minutes = Double.parseDouble(pair[0].trim()) / Double.parseDouble(pair[1].trim());
            pair = parts[2].split("/");
            double result = ((minutes / 60.0d) + degrees) + ((Double.parseDouble(pair[0].trim()) / Double.parseDouble(pair[1].trim())) / 3600.0d);
            if (!TextUtils.isEmpty(ref)) {
                if (!ref.equals(Field.SHORT_SIGNATURE_PRIMITIVE)) {
                }
                return (float) (-result);
            }
            return (float) result;
        } catch (NumberFormatException e) {
            return 0.0f;
        } catch (ArrayIndexOutOfBoundsException e2) {
            return 0.0f;
        }
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
