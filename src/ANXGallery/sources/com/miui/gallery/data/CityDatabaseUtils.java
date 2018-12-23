package com.miui.gallery.data;

class CityDatabaseUtils {
    private static String TAG = "CityDatabaseUtils";

    public static class PolygonHelper {
        /* JADX WARNING: Removed duplicated region for block: B:26:0x003d  */
        /* JADX WARNING: Removed duplicated region for block: B:28:0x0042  */
        /* JADX WARNING: Removed duplicated region for block: B:26:0x003d  */
        /* JADX WARNING: Removed duplicated region for block: B:28:0x0042  */
        /* JADX WARNING: Removed duplicated region for block: B:21:0x0031  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0036  */
        public static <T> T parseFromByteArray(byte[] r8) {
            /*
            r5 = 0;
            if (r8 == 0) goto L_0x0006;
        L_0x0003:
            r6 = r8.length;
            if (r6 != 0) goto L_0x0010;
        L_0x0006:
            r6 = com.miui.gallery.data.CityDatabaseUtils.TAG;
            r7 = "cannot parse polygon from a byte array, the byte array is null or empty";
            com.miui.gallery.util.Log.e(r6, r7);
        L_0x000f:
            return r5;
        L_0x0010:
            r0 = 0;
            r3 = 0;
            r1 = new java.io.ByteArrayInputStream;	 Catch:{ Throwable -> 0x002b }
            r1.<init>(r8);	 Catch:{ Throwable -> 0x002b }
            r4 = new java.io.ObjectInputStream;	 Catch:{ Throwable -> 0x004d, all -> 0x0046 }
            r4.<init>(r1);	 Catch:{ Throwable -> 0x004d, all -> 0x0046 }
            r5 = r4.readObject();	 Catch:{ Throwable -> 0x0050, all -> 0x0049 }
            if (r1 == 0) goto L_0x0025;
        L_0x0022:
            com.miui.gallery.util.MiscUtil.closeSilently(r1);
        L_0x0025:
            if (r4 == 0) goto L_0x000f;
        L_0x0027:
            com.miui.gallery.util.MiscUtil.closeSilently(r4);
            goto L_0x000f;
        L_0x002b:
            r2 = move-exception;
        L_0x002c:
            r2.printStackTrace();	 Catch:{ all -> 0x003a }
            if (r0 == 0) goto L_0x0034;
        L_0x0031:
            com.miui.gallery.util.MiscUtil.closeSilently(r0);
        L_0x0034:
            if (r3 == 0) goto L_0x000f;
        L_0x0036:
            com.miui.gallery.util.MiscUtil.closeSilently(r3);
            goto L_0x000f;
        L_0x003a:
            r6 = move-exception;
        L_0x003b:
            if (r0 == 0) goto L_0x0040;
        L_0x003d:
            com.miui.gallery.util.MiscUtil.closeSilently(r0);
        L_0x0040:
            if (r3 == 0) goto L_0x0045;
        L_0x0042:
            com.miui.gallery.util.MiscUtil.closeSilently(r3);
        L_0x0045:
            throw r6;
        L_0x0046:
            r6 = move-exception;
            r0 = r1;
            goto L_0x003b;
        L_0x0049:
            r6 = move-exception;
            r3 = r4;
            r0 = r1;
            goto L_0x003b;
        L_0x004d:
            r2 = move-exception;
            r0 = r1;
            goto L_0x002c;
        L_0x0050:
            r2 = move-exception;
            r3 = r4;
            r0 = r1;
            goto L_0x002c;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.data.CityDatabaseUtils.PolygonHelper.parseFromByteArray(byte[]):T");
        }
    }
}
