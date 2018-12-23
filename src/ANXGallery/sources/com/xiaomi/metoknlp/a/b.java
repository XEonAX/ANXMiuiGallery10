package com.xiaomi.metoknlp.a;

/* compiled from: HttpsUtils */
public class b {
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0066 A:{SYNTHETIC, Splitter: B:24:0x0066} */
    /* JADX WARNING: Removed duplicated region for block: B:70:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x006b A:{Catch:{ Exception -> 0x006f }} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00c5 A:{SYNTHETIC, Splitter: B:56:0x00c5} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00ca A:{Catch:{ Exception -> 0x00ce }} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0066 A:{SYNTHETIC, Splitter: B:24:0x0066} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x006b A:{Catch:{ Exception -> 0x006f }} */
    /* JADX WARNING: Removed duplicated region for block: B:70:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00c5 A:{SYNTHETIC, Splitter: B:56:0x00c5} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00ca A:{Catch:{ Exception -> 0x00ce }} */
    public static java.lang.String a(java.lang.String r6, java.util.Map r7) {
        /*
        r3 = 0;
        r2 = "";
        r0 = android.text.TextUtils.isEmpty(r6);
        if (r0 == 0) goto L_0x000b;
    L_0x0009:
        r0 = r2;
    L_0x000a:
        return r0;
    L_0x000b:
        r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x0071 }
        r0.<init>(r6);	 Catch:{ MalformedURLException -> 0x0071 }
        r1 = r0.getProtocol();	 Catch:{ Exception -> 0x00d6, all -> 0x00c1 }
        r1 = r1.toLowerCase();	 Catch:{ Exception -> 0x00d6, all -> 0x00c1 }
        r4 = "https";
        r1 = r1.equals(r4);	 Catch:{ Exception -> 0x00d6, all -> 0x00c1 }
        if (r1 == 0) goto L_0x0074;
    L_0x0020:
        r0 = r0.openConnection();	 Catch:{ Exception -> 0x00d6, all -> 0x00c1 }
        r0 = (javax.net.ssl.HttpsURLConnection) r0;	 Catch:{ Exception -> 0x00d6, all -> 0x00c1 }
        r4 = r0;
    L_0x0027:
        r0 = 30000; // 0x7530 float:4.2039E-41 double:1.4822E-319;
        r4.setConnectTimeout(r0);	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r0 = 30000; // 0x7530 float:4.2039E-41 double:1.4822E-319;
        r4.setReadTimeout(r0);	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r0 = "GET";
        r4.setRequestMethod(r0);	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r0 = 0;
        r4.setDoOutput(r0);	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        if (r7 == 0) goto L_0x007c;
    L_0x003c:
        r0 = r7.size();	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        if (r0 <= 0) goto L_0x007c;
    L_0x0042:
        r0 = r7.keySet();	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r5 = r0.iterator();	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
    L_0x004a:
        r0 = r5.hasNext();	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        if (r0 == 0) goto L_0x007c;
    L_0x0050:
        r0 = r5.next();	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r0 = (java.lang.String) r0;	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r1 = r7.get(r0);	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r1 = (java.lang.String) r1;	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r4.addRequestProperty(r0, r1);	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        goto L_0x004a;
    L_0x0060:
        r0 = move-exception;
        r1 = r3;
        r0 = r2;
        r3 = r4;
    L_0x0064:
        if (r1 == 0) goto L_0x0069;
    L_0x0066:
        r1.close();	 Catch:{ Exception -> 0x006f }
    L_0x0069:
        if (r3 == 0) goto L_0x000a;
    L_0x006b:
        r3.disconnect();	 Catch:{ Exception -> 0x006f }
        goto L_0x000a;
    L_0x006f:
        r1 = move-exception;
        goto L_0x000a;
    L_0x0071:
        r0 = move-exception;
        r0 = r2;
        goto L_0x000a;
    L_0x0074:
        r0 = r0.openConnection();	 Catch:{ Exception -> 0x00d6, all -> 0x00c1 }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ Exception -> 0x00d6, all -> 0x00c1 }
        r4 = r0;
        goto L_0x0027;
    L_0x007c:
        r4.connect();	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r0 = r4.getResponseCode();	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r1 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r0 != r1) goto L_0x00da;
    L_0x0087:
        r0 = new java.io.BufferedReader;	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r1 = new java.io.InputStreamReader;	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r5 = r4.getInputStream();	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r1.<init>(r5);	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r0.<init>(r1);	 Catch:{ Exception -> 0x0060, all -> 0x00d0 }
        r1 = new java.lang.StringBuffer;	 Catch:{ Exception -> 0x00a4, all -> 0x00d2 }
        r1.<init>();	 Catch:{ Exception -> 0x00a4, all -> 0x00d2 }
    L_0x009a:
        r3 = r0.readLine();	 Catch:{ Exception -> 0x00a4, all -> 0x00d2 }
        if (r3 == 0) goto L_0x00a9;
    L_0x00a0:
        r1.append(r3);	 Catch:{ Exception -> 0x00a4, all -> 0x00d2 }
        goto L_0x009a;
    L_0x00a4:
        r1 = move-exception;
        r1 = r0;
        r3 = r4;
        r0 = r2;
        goto L_0x0064;
    L_0x00a9:
        r2 = r1.toString();	 Catch:{ Exception -> 0x00a4, all -> 0x00d2 }
        r0.close();	 Catch:{ Exception -> 0x00a4, all -> 0x00d2 }
        r3 = r0;
        r0 = r2;
    L_0x00b2:
        if (r3 == 0) goto L_0x00b7;
    L_0x00b4:
        r3.close();	 Catch:{ Exception -> 0x00be }
    L_0x00b7:
        if (r4 == 0) goto L_0x000a;
    L_0x00b9:
        r4.disconnect();	 Catch:{ Exception -> 0x00be }
        goto L_0x000a;
    L_0x00be:
        r1 = move-exception;
        goto L_0x000a;
    L_0x00c1:
        r0 = move-exception;
        r4 = r3;
    L_0x00c3:
        if (r3 == 0) goto L_0x00c8;
    L_0x00c5:
        r3.close();	 Catch:{ Exception -> 0x00ce }
    L_0x00c8:
        if (r4 == 0) goto L_0x00cd;
    L_0x00ca:
        r4.disconnect();	 Catch:{ Exception -> 0x00ce }
    L_0x00cd:
        throw r0;
    L_0x00ce:
        r1 = move-exception;
        goto L_0x00cd;
    L_0x00d0:
        r0 = move-exception;
        goto L_0x00c3;
    L_0x00d2:
        r1 = move-exception;
        r3 = r0;
        r0 = r1;
        goto L_0x00c3;
    L_0x00d6:
        r0 = move-exception;
        r1 = r3;
        r0 = r2;
        goto L_0x0064;
    L_0x00da:
        r0 = r2;
        goto L_0x00b2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.metoknlp.a.b.a(java.lang.String, java.util.Map):java.lang.String");
    }
}
