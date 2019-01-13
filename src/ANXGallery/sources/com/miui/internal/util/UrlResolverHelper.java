package com.miui.internal.util;

import android.net.Uri;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Set;

public class UrlResolverHelper {
    private static final String jA = "mihttps";
    private static final String jB = "mifb";
    private static final String[] jC = new String[]{"xiaomi.com", "mi.com", "miui.com", "mipay.com"};
    private static final String[] jD = new String[]{"duokan.com", "duokanbox.com", "mijiayoupin.com"};
    private static final String[] jE = new String[]{"com.xiaomi.channel", "com.duokan.reader", "com.duokan.hdreader", "com.duokan.fiction", "com.xiaomi.router", "com.xiaomi.smarthome", "com.xiaomi.o2o", "com.xiaomi.shop", "com.xiaomi.jr", "com.xiaomi.jr.security", "com.xiaomi.mifisecurity", "com.xiaomi.loan", "com.xiaomi.loanx", "com.mi.credit.in", "com.mi.credit.id", "com.miui.miuibbs", "com.wali.live", "com.mi.live", "com.xiaomi.ab", "com.mfashiongallery.emag", "com.xiaomi.pass", "com.xiaomi.youpin", "com.mi.liveassistant", "com.xiangkan.android"};
    private static Set<String> jF = new HashSet();
    private static Set<String> jG = new HashSet();
    private static final String jw = "http";
    private static final String jx = "https";
    private static final String jy = "mi";
    private static final String jz = "mihttp";

    static {
        jF.add(jz);
        jF.add(jA);
        jG.add(jw);
        jG.add(jx);
        jG.addAll(jF);
    }

    public static boolean isMiUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Uri parse = Uri.parse(str);
        if (jw.equals(parse.getScheme()) || jx.equals(parse.getScheme())) {
            return isMiHost(parse.getHost());
        }
        return false;
    }

    public static boolean isMiHost(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        for (CharSequence contains : jC) {
            if (str.contains(contains)) {
                return true;
            }
        }
        for (CharSequence contains2 : jD) {
            if (str.contains(contains2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isWhiteListPackage(String str) {
        for (String equals : jE) {
            if (equals.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isBrowserFallbackScheme(String str) {
        return jF.contains(str);
    }

    public static Uri getBrowserFallbackUri(String str) {
        return Uri.parse(str.substring(jy.length()));
    }

    public static String getFallbackParameter(Uri uri) {
        String a = a(uri, 0, null);
        if (a != null) {
            if (jG.contains(Uri.parse(a).getScheme())) {
                return a;
            }
        }
        return null;
    }

    private static String a(Uri uri, int i, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(jB);
        stringBuilder.append(i == 0 ? "" : Integer.valueOf(i));
        String queryParameter = uri.getQueryParameter(stringBuilder.toString());
        if (queryParameter != null) {
            return a(uri, i + 1, queryParameter);
        }
        return str;
    }
}
