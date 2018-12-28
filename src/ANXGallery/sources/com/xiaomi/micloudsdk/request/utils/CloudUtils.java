package com.xiaomi.micloudsdk.request.utils;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.nexstreaming.nexeditorsdk.nexProject;
import com.xiaomi.micloudsdk.exception.CloudServerException;
import com.xiaomi.micloudsdk.provider.MiCloudSettings;
import com.xiaomi.micloudsdk.request.utils.RequestConstants.URL;
import com.xiaomi.micloudsdk.utils.JsonUtils;
import java.net.MalformedURLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"NewApi"})
public class CloudUtils {
    private static final int[] SERVER_RETRY_INTERVALS = new int[]{1000, nexProject.kAutoThemeTransitionDuration, 5000, 10000};
    private static final String URL_RELOCATION_QUERY = (URL.URL_RELOCATION_BASE + "/mic/relocation/v3/user/record");
    private static volatile Map<String, Object> sHostsCacheInner = new HashMap();
    private static volatile boolean sNeedUpdateHosts = TextUtils.isEmpty(getHostList());
    private static Object sUpdateMiCloudHostsLock = new Object();
    private static UpdateStatus sUpdateStatus;

    private enum UpdateStatus {
        UPDATING,
        SUCCESS,
        FAILED
    }

    private static void updateHostCache(Map<String, Object> m) {
        sHostsCacheInner = new HashMap(m);
    }

    private static Map<String, Object> getHostCache() {
        return new HashMap(sHostsCacheInner);
    }

    public static String getUserAgent() {
        return Request.getRequestEnv().getUserAgent();
    }

    public static String checkRedirect(String response, int redirectCount) throws CloudServerException {
        if (redirectCount >= 15) {
            throw new CloudServerException(503, 10034, 10);
        }
        try {
            JSONObject responseJSON = new JSONObject(response);
            if (responseJSON.getInt("code") == 308) {
                if (responseJSON.getJSONObject("data").optBoolean("isPermanent")) {
                    sNeedUpdateHosts = true;
                }
                return responseJSON.getJSONObject("data").getString("redirectUrl");
            } else if (responseJSON.getInt("code") == 503) {
                throw new CloudServerException(503, 503, responseJSON.getJSONObject("data").getInt("retryAfter"));
            } else {
                if (responseJSON.getInt("code") == 10034) {
                    throw new CloudServerException(503, 10034, responseJSON.getJSONObject("data").getInt("retryAfter"));
                }
                return null;
            }
        } catch (JSONException e) {
            Log.e("CloudUtils", "JSONException in checkRedirect():" + response, e);
        }
    }

    public static int isInternationalAccount(boolean needRefresh) {
        if (needRefresh) {
            updateHostCache(new HashMap());
        }
        if (getHostCache().isEmpty()) {
            sNeedUpdateHosts = true;
            try {
                updateMiCloudHosts(needRefresh);
                if (getHostCache().isEmpty()) {
                    return 2;
                }
            } catch (CloudServerException e) {
                Log.e("CloudUtils", "CloudServerException in isInternationalAccount", e);
                return 2;
            }
        }
        for (Entry<String, Object> entry : getHostCache().entrySet()) {
            String k = (String) entry.getKey();
            Object v = entry.getValue();
            if (v instanceof String) {
                String host = Uri.parse((String) v).getHost();
                if (host != null) {
                    return host.equals(k) ? 0 : 1;
                }
            }
        }
        return 2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:163:0x0313 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:130:0x02e0 A:{LOOP_END, Catch:{ all -> 0x0152, InterruptedException -> 0x0163 }, LOOP:1: B:37:0x0141->B:130:0x02e0} */
    /* JADX WARNING: Missing block: B:23:0x00af, code:
            if (r9 == false) goto L_0x00b5;
     */
    /* JADX WARNING: Missing block: B:24:0x00b1, code:
            sUpdateStatus = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.UPDATING;
     */
    /* JADX WARNING: Missing block: B:69:?, code:
            r17 = sUpdateMiCloudHostsLock;
     */
    /* JADX WARNING: Missing block: B:70:0x01bc, code:
            monitor-enter(r17);
     */
    /* JADX WARNING: Missing block: B:71:0x01bd, code:
            if (true == false) goto L_0x01ca;
     */
    /* JADX WARNING: Missing block: B:73:?, code:
            r16 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.SUCCESS;
     */
    /* JADX WARNING: Missing block: B:74:0x01c1, code:
            sUpdateStatus = r16;
            sUpdateMiCloudHostsLock.notifyAll();
     */
    /* JADX WARNING: Missing block: B:75:0x01c8, code:
            monitor-exit(r17);
     */
    /* JADX WARNING: Missing block: B:76:0x01ca, code:
            r16 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.FAILED;
     */
    /* JADX WARNING: Missing block: B:86:0x01e7, code:
            r7 = r12.getJSONObject("data").getJSONObject("hostList");
     */
    /* JADX WARNING: Missing block: B:87:0x01f5, code:
            if (r7 == null) goto L_0x0232;
     */
    /* JADX WARNING: Missing block: B:88:0x01f7, code:
            android.util.Log.d("CloudUtils", "getHostList set sNeedUpdateHosts to false " + java.lang.Thread.currentThread().getName());
            setHostList(r7.toString());
            updateHostCache(com.xiaomi.micloudsdk.utils.JsonUtils.jsonToMap(r7));
            sNeedUpdateHosts = false;
     */
    /* JADX WARNING: Missing block: B:89:0x022d, code:
            if (android.text.TextUtils.isEmpty(r2) != false) goto L_0x0232;
     */
    /* JADX WARNING: Missing block: B:90:0x022f, code:
            setXiaomiAccountName(r2);
     */
    /* JADX WARNING: Missing block: B:93:?, code:
            r17 = sUpdateMiCloudHostsLock;
     */
    /* JADX WARNING: Missing block: B:94:0x0235, code:
            monitor-enter(r17);
     */
    /* JADX WARNING: Missing block: B:95:0x0236, code:
            if (true == false) goto L_0x0329;
     */
    /* JADX WARNING: Missing block: B:97:?, code:
            r16 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.SUCCESS;
     */
    /* JADX WARNING: Missing block: B:98:0x023a, code:
            sUpdateStatus = r16;
            sUpdateMiCloudHostsLock.notifyAll();
     */
    /* JADX WARNING: Missing block: B:99:0x0241, code:
            monitor-exit(r17);
     */
    /* JADX WARNING: Missing block: B:137:?, code:
            r16 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.FAILED;
     */
    /* JADX WARNING: Missing block: B:167:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:170:?, code:
            return;
     */
    private static void updateMiCloudHosts(boolean r20) throws com.xiaomi.micloudsdk.exception.CloudServerException {
        /*
        r16 = "CloudUtils";
        r17 = 3;
        r16 = android.util.Log.isLoggable(r16, r17);
        if (r16 == 0) goto L_0x0024;
    L_0x000a:
        r16 = "CloudUtils";
        r17 = new java.lang.StringBuilder;
        r17.<init>();
        r18 = "enter updateMiCloudHosts, sNeedUpdateHosts: ";
        r17 = r17.append(r18);
        r18 = sNeedUpdateHosts;
        r17 = r17.append(r18);
        r17 = r17.toString();
        android.util.Log.d(r16, r17);
    L_0x0024:
        r16 = getXiaomiAccountName();
        if (r16 == 0) goto L_0x0040;
    L_0x002a:
        r16 = getXiaomiAccountName();
        r17 = com.xiaomi.micloudsdk.request.utils.Request.getRequestEnv();
        r17 = r17.getAccountName();
        r16 = r16.equals(r17);
        if (r16 != 0) goto L_0x0040;
    L_0x003c:
        r16 = 1;
        sNeedUpdateHosts = r16;
    L_0x0040:
        r16 = sNeedUpdateHosts;
        if (r16 != 0) goto L_0x0046;
    L_0x0044:
        if (r20 == 0) goto L_0x01c9;
    L_0x0046:
        r9 = 1;
        r17 = sUpdateMiCloudHostsLock;	 Catch:{ InterruptedException -> 0x0163 }
        monitor-enter(r17);	 Catch:{ InterruptedException -> 0x0163 }
    L_0x004a:
        r16 = sUpdateStatus;	 Catch:{ all -> 0x017b }
        r18 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.UPDATING;	 Catch:{ all -> 0x017b }
        r0 = r16;
        r1 = r18;
        if (r0 != r1) goto L_0x00af;
    L_0x0054:
        r16 = "CloudUtils";
        r18 = new java.lang.StringBuilder;	 Catch:{ all -> 0x017b }
        r18.<init>();	 Catch:{ all -> 0x017b }
        r19 = "Waiting for an existing updateMiCloudHosts to finish ";
        r18 = r18.append(r19);	 Catch:{ all -> 0x017b }
        r19 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x017b }
        r19 = r19.getName();	 Catch:{ all -> 0x017b }
        r18 = r18.append(r19);	 Catch:{ all -> 0x017b }
        r18 = r18.toString();	 Catch:{ all -> 0x017b }
        r0 = r16;
        r1 = r18;
        android.util.Log.v(r0, r1);	 Catch:{ all -> 0x017b }
        r16 = sUpdateMiCloudHostsLock;	 Catch:{ all -> 0x017b }
        r16.wait();	 Catch:{ all -> 0x017b }
        r16 = "CloudUtils";
        r18 = new java.lang.StringBuilder;	 Catch:{ all -> 0x017b }
        r18.<init>();	 Catch:{ all -> 0x017b }
        r19 = "The existing updateMiCloudHosts finished ";
        r18 = r18.append(r19);	 Catch:{ all -> 0x017b }
        r19 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x017b }
        r19 = r19.getName();	 Catch:{ all -> 0x017b }
        r18 = r18.append(r19);	 Catch:{ all -> 0x017b }
        r18 = r18.toString();	 Catch:{ all -> 0x017b }
        r0 = r16;
        r1 = r18;
        android.util.Log.v(r0, r1);	 Catch:{ all -> 0x017b }
        r16 = sUpdateStatus;	 Catch:{ all -> 0x017b }
        r18 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.SUCCESS;	 Catch:{ all -> 0x017b }
        r0 = r16;
        r1 = r18;
        if (r0 == r1) goto L_0x00ad;
    L_0x00ab:
        r9 = 1;
    L_0x00ac:
        goto L_0x004a;
    L_0x00ad:
        r9 = 0;
        goto L_0x00ac;
    L_0x00af:
        if (r9 == 0) goto L_0x00b5;
    L_0x00b1:
        r16 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.UPDATING;	 Catch:{ all -> 0x017b }
        sUpdateStatus = r16;	 Catch:{ all -> 0x017b }
    L_0x00b5:
        monitor-exit(r17);	 Catch:{ all -> 0x017b }
        if (r9 == 0) goto L_0x01c9;
    L_0x00b8:
        r15 = 0;
        r16 = "CloudUtils";
        r17 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0152 }
        r17.<init>();	 Catch:{ all -> 0x0152 }
        r18 = "updateMiCloudHosts ";
        r17 = r17.append(r18);	 Catch:{ all -> 0x0152 }
        r18 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x0152 }
        r18 = r18.getName();	 Catch:{ all -> 0x0152 }
        r17 = r17.append(r18);	 Catch:{ all -> 0x0152 }
        r17 = r17.toString();	 Catch:{ all -> 0x0152 }
        android.util.Log.d(r16, r17);	 Catch:{ all -> 0x0152 }
        r10 = new java.util.HashMap;	 Catch:{ all -> 0x0152 }
        r10.<init>();	 Catch:{ all -> 0x0152 }
        r16 = "miui.os.Build";
        r3 = java.lang.Class.forName(r16);	 Catch:{ Exception -> 0x017e }
        r16 = "getRegion";
        r17 = 0;
        r0 = r17;
        r0 = new java.lang.Class[r0];	 Catch:{ Exception -> 0x017e }
        r17 = r0;
        r0 = r16;
        r1 = r17;
        r6 = r3.getDeclaredMethod(r0, r1);	 Catch:{ Exception -> 0x017e }
        r16 = 0;
        r17 = 0;
        r0 = r17;
        r0 = new java.lang.Object[r0];	 Catch:{ Exception -> 0x017e }
        r17 = r0;
        r0 = r16;
        r1 = r17;
        r16 = r6.invoke(r0, r1);	 Catch:{ Exception -> 0x017e }
        r16 = (java.lang.String) r16;	 Catch:{ Exception -> 0x017e }
        r0 = r16;
        r0 = (java.lang.String) r0;	 Catch:{ Exception -> 0x017e }
        r14 = r0;
        com.xiaomi.micloudsdk.request.utils.Request.setRegion(r14);	 Catch:{ Exception -> 0x017e }
        r16 = "romCountry";
        r0 = r16;
        r10.put(r0, r14);	 Catch:{ Exception -> 0x017e }
    L_0x011a:
        r16 = "romCountry";
        r0 = r16;
        r16 = r10.get(r0);	 Catch:{ all -> 0x0152 }
        r16 = (java.lang.CharSequence) r16;	 Catch:{ all -> 0x0152 }
        r16 = android.text.TextUtils.isEmpty(r16);	 Catch:{ all -> 0x0152 }
        if (r16 == 0) goto L_0x0198;
    L_0x012a:
        r16 = "CloudUtils";
        r17 = "request romCountry null, thirdparty app";
        android.util.Log.d(r16, r17);	 Catch:{ all -> 0x0152 }
        r16 = com.xiaomi.micloudsdk.request.utils.Request.getContext();	 Catch:{ all -> 0x0152 }
        r17 = "micloud_updatehosts_third_party";
        r18 = "true";
        com.xiaomi.micloudsdk.provider.MiCloudSettings.putString(r16, r17, r18);	 Catch:{ all -> 0x0152 }
    L_0x013d:
        r12 = 0;
        r7 = 0;
        r8 = 0;
        r13 = r12;
    L_0x0141:
        r5 = 0;
        r16 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x0152 }
        r16 = r16.isInterrupted();	 Catch:{ all -> 0x0152 }
        if (r16 == 0) goto L_0x01ab;
    L_0x014c:
        r16 = new java.lang.InterruptedException;	 Catch:{ all -> 0x0152 }
        r16.<init>();	 Catch:{ all -> 0x0152 }
        throw r16;	 Catch:{ all -> 0x0152 }
    L_0x0152:
        r16 = move-exception;
        r18 = sUpdateMiCloudHostsLock;	 Catch:{ InterruptedException -> 0x0163 }
        monitor-enter(r18);	 Catch:{ InterruptedException -> 0x0163 }
        if (r15 == 0) goto L_0x032d;
    L_0x0158:
        r17 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.SUCCESS;	 Catch:{ all -> 0x0331 }
    L_0x015a:
        sUpdateStatus = r17;	 Catch:{ all -> 0x0331 }
        r17 = sUpdateMiCloudHostsLock;	 Catch:{ all -> 0x0331 }
        r17.notifyAll();	 Catch:{ all -> 0x0331 }
        monitor-exit(r18);	 Catch:{ all -> 0x0331 }
        throw r16;	 Catch:{ InterruptedException -> 0x0163 }
    L_0x0163:
        r4 = move-exception;
        r16 = "CloudUtils";
        r17 = "InterruptedException in updateMiCloudHosts";
        r0 = r16;
        r1 = r17;
        android.util.Log.e(r0, r1, r4);
        r16 = new com.xiaomi.micloudsdk.exception.CloudServerException;
        r17 = 0;
        r0 = r16;
        r1 = r17;
        r0.<init>(r1, r4);
        throw r16;
    L_0x017b:
        r16 = move-exception;
        monitor-exit(r17);	 Catch:{ all -> 0x017b }
        throw r16;	 Catch:{ InterruptedException -> 0x0163 }
    L_0x017e:
        r4 = move-exception;
        r16 = "CloudUtils";
        r17 = "Exception in updateMiCloudHosts()";
        r0 = r16;
        r1 = r17;
        android.util.Log.e(r0, r1, r4);	 Catch:{ all -> 0x0152 }
        r16 = "romCountry";
        r17 = com.xiaomi.micloudsdk.request.utils.Request.getRegion();	 Catch:{ all -> 0x0152 }
        r0 = r16;
        r1 = r17;
        r10.put(r0, r1);	 Catch:{ all -> 0x0152 }
        goto L_0x011a;
    L_0x0198:
        r16 = "CloudUtils";
        r17 = "request romCountry not null, system app";
        android.util.Log.d(r16, r17);	 Catch:{ all -> 0x0152 }
        r16 = com.xiaomi.micloudsdk.request.utils.Request.getContext();	 Catch:{ all -> 0x0152 }
        r17 = "micloud_updatehosts_third_party";
        r18 = "false";
        com.xiaomi.micloudsdk.provider.MiCloudSettings.putString(r16, r17, r18);	 Catch:{ all -> 0x0152 }
        goto L_0x013d;
    L_0x01ab:
        r16 = com.xiaomi.micloudsdk.request.utils.Request.getRequestEnv();	 Catch:{ JSONException -> 0x0246, IllegalBlockSizeException -> 0x025f, BadPaddingException -> 0x0278, ClientProtocolException -> 0x0291, IOException -> 0x02aa }
        r2 = r16.getAccountName();	 Catch:{ JSONException -> 0x0246, IllegalBlockSizeException -> 0x025f, BadPaddingException -> 0x0278, ClientProtocolException -> 0x0291, IOException -> 0x02aa }
        r16 = android.text.TextUtils.isEmpty(r2);	 Catch:{ JSONException -> 0x0246, IllegalBlockSizeException -> 0x025f, BadPaddingException -> 0x0278, ClientProtocolException -> 0x0291, IOException -> 0x02aa }
        if (r16 == 0) goto L_0x01d0;
    L_0x01b9:
        r15 = 1;
        r17 = sUpdateMiCloudHostsLock;	 Catch:{ InterruptedException -> 0x0163 }
        monitor-enter(r17);	 Catch:{ InterruptedException -> 0x0163 }
        if (r15 == 0) goto L_0x01ca;
    L_0x01bf:
        r16 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.SUCCESS;	 Catch:{ all -> 0x01cd }
    L_0x01c1:
        sUpdateStatus = r16;	 Catch:{ all -> 0x01cd }
        r16 = sUpdateMiCloudHostsLock;	 Catch:{ all -> 0x01cd }
        r16.notifyAll();	 Catch:{ all -> 0x01cd }
        monitor-exit(r17);	 Catch:{ all -> 0x01cd }
    L_0x01c9:
        return;
    L_0x01ca:
        r16 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.FAILED;	 Catch:{ all -> 0x01cd }
        goto L_0x01c1;
    L_0x01cd:
        r16 = move-exception;
        monitor-exit(r17);	 Catch:{ all -> 0x01cd }
        throw r16;	 Catch:{ InterruptedException -> 0x0163 }
    L_0x01d0:
        r16 = URL_RELOCATION_QUERY;	 Catch:{ JSONException -> 0x0246, IllegalBlockSizeException -> 0x025f, BadPaddingException -> 0x0278, ClientProtocolException -> 0x0291, IOException -> 0x02aa }
        r0 = r16;
        r11 = com.xiaomi.micloudsdk.request.utils.Request.securePost(r0, r10);	 Catch:{ JSONException -> 0x0246, IllegalBlockSizeException -> 0x025f, BadPaddingException -> 0x0278, ClientProtocolException -> 0x0291, IOException -> 0x02aa }
        r12 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x0246, IllegalBlockSizeException -> 0x025f, BadPaddingException -> 0x0278, ClientProtocolException -> 0x0291, IOException -> 0x02aa }
        r12.<init>(r11);	 Catch:{ JSONException -> 0x0246, IllegalBlockSizeException -> 0x025f, BadPaddingException -> 0x0278, ClientProtocolException -> 0x0291, IOException -> 0x02aa }
        r16 = "code";
        r0 = r16;
        r16 = r12.getInt(r0);	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        if (r16 != 0) goto L_0x02d5;
    L_0x01e7:
        r16 = "data";
        r0 = r16;
        r16 = r12.getJSONObject(r0);	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        r17 = "hostList";
        r7 = r16.getJSONObject(r17);	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        if (r7 == 0) goto L_0x0232;
    L_0x01f7:
        r16 = "CloudUtils";
        r17 = new java.lang.StringBuilder;	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        r17.<init>();	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        r18 = "getHostList set sNeedUpdateHosts to false ";
        r17 = r17.append(r18);	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        r18 = java.lang.Thread.currentThread();	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        r18 = r18.getName();	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        r17 = r17.append(r18);	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        r17 = r17.toString();	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        android.util.Log.d(r16, r17);	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        r16 = r7.toString();	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        setHostList(r16);	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        r16 = com.xiaomi.micloudsdk.utils.JsonUtils.jsonToMap(r7);	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        updateHostCache(r16);	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        r16 = 0;
        sNeedUpdateHosts = r16;	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        r16 = android.text.TextUtils.isEmpty(r2);	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
        if (r16 != 0) goto L_0x0232;
    L_0x022f:
        setXiaomiAccountName(r2);	 Catch:{ JSONException -> 0x0340, IllegalBlockSizeException -> 0x033d, BadPaddingException -> 0x033a, ClientProtocolException -> 0x0337, IOException -> 0x0334 }
    L_0x0232:
        r15 = 1;
        r17 = sUpdateMiCloudHostsLock;	 Catch:{ InterruptedException -> 0x0163 }
        monitor-enter(r17);	 Catch:{ InterruptedException -> 0x0163 }
        if (r15 == 0) goto L_0x0329;
    L_0x0238:
        r16 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.SUCCESS;	 Catch:{ all -> 0x0243 }
    L_0x023a:
        sUpdateStatus = r16;	 Catch:{ all -> 0x0243 }
        r16 = sUpdateMiCloudHostsLock;	 Catch:{ all -> 0x0243 }
        r16.notifyAll();	 Catch:{ all -> 0x0243 }
        monitor-exit(r17);	 Catch:{ all -> 0x0243 }
        goto L_0x01c9;
    L_0x0243:
        r16 = move-exception;
        monitor-exit(r17);	 Catch:{ all -> 0x0243 }
        throw r16;	 Catch:{ InterruptedException -> 0x0163 }
    L_0x0246:
        r4 = move-exception;
        r12 = r13;
    L_0x0248:
        r16 = "CloudUtils";
        r17 = "JSONException in updateMiCloudHosts";
        r0 = r16;
        r1 = r17;
        android.util.Log.e(r0, r1, r4);	 Catch:{ all -> 0x0152 }
        r16 = new com.xiaomi.micloudsdk.exception.CloudServerException;	 Catch:{ all -> 0x0152 }
        r17 = 0;
        r0 = r16;
        r1 = r17;
        r0.<init>(r1, r4);	 Catch:{ all -> 0x0152 }
        throw r16;	 Catch:{ all -> 0x0152 }
    L_0x025f:
        r4 = move-exception;
        r12 = r13;
    L_0x0261:
        r16 = "CloudUtils";
        r17 = "IllegalBlockSizeException in updateMiCloudHosts";
        r0 = r16;
        r1 = r17;
        android.util.Log.e(r0, r1, r4);	 Catch:{ all -> 0x0152 }
        r16 = new com.xiaomi.micloudsdk.exception.CloudServerException;	 Catch:{ all -> 0x0152 }
        r17 = 0;
        r0 = r16;
        r1 = r17;
        r0.<init>(r1, r4);	 Catch:{ all -> 0x0152 }
        throw r16;	 Catch:{ all -> 0x0152 }
    L_0x0278:
        r4 = move-exception;
        r12 = r13;
    L_0x027a:
        r16 = "CloudUtils";
        r17 = "BadPaddingException in updateMiCloudHosts";
        r0 = r16;
        r1 = r17;
        android.util.Log.e(r0, r1, r4);	 Catch:{ all -> 0x0152 }
        r16 = new com.xiaomi.micloudsdk.exception.CloudServerException;	 Catch:{ all -> 0x0152 }
        r17 = 0;
        r0 = r16;
        r1 = r17;
        r0.<init>(r1, r4);	 Catch:{ all -> 0x0152 }
        throw r16;	 Catch:{ all -> 0x0152 }
    L_0x0291:
        r4 = move-exception;
        r12 = r13;
    L_0x0293:
        r16 = "CloudUtils";
        r17 = "ClientProtocolException in updateMiCloudHosts";
        r0 = r16;
        r1 = r17;
        android.util.Log.e(r0, r1, r4);	 Catch:{ all -> 0x0152 }
        r16 = new com.xiaomi.micloudsdk.exception.CloudServerException;	 Catch:{ all -> 0x0152 }
        r17 = 0;
        r0 = r16;
        r1 = r17;
        r0.<init>(r1, r4);	 Catch:{ all -> 0x0152 }
        throw r16;	 Catch:{ all -> 0x0152 }
    L_0x02aa:
        r4 = move-exception;
        r12 = r13;
    L_0x02ac:
        r16 = "CloudUtils";
        r17 = "IOException in updateMiCloudHosts";
        r0 = r16;
        r1 = r17;
        android.util.Log.e(r0, r1, r4);	 Catch:{ all -> 0x0152 }
        r16 = com.xiaomi.micloudsdk.request.utils.Request.getContext();	 Catch:{ all -> 0x0152 }
        r16 = com.xiaomi.micloudsdk.utils.NetworkUtils.isNetworkAvailable(r16);	 Catch:{ all -> 0x0152 }
        if (r16 != 0) goto L_0x02d4;
    L_0x02c1:
        r16 = "CloudUtils";
        r17 = "No network in IOException";
        android.util.Log.d(r16, r17);	 Catch:{ all -> 0x0152 }
        r16 = new com.xiaomi.micloudsdk.exception.CloudServerException;	 Catch:{ all -> 0x0152 }
        r17 = 0;
        r0 = r16;
        r1 = r17;
        r0.<init>(r1, r4);	 Catch:{ all -> 0x0152 }
        throw r16;	 Catch:{ all -> 0x0152 }
    L_0x02d4:
        r5 = r4;
    L_0x02d5:
        r16 = SERVER_RETRY_INTERVALS;	 Catch:{ all -> 0x0152 }
        r0 = r16;
        r0 = r0.length;	 Catch:{ all -> 0x0152 }
        r16 = r0;
        r0 = r16;
        if (r8 >= r0) goto L_0x0313;
    L_0x02e0:
        r16 = "CloudUtils";
        r17 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0152 }
        r17.<init>();	 Catch:{ all -> 0x0152 }
        r18 = "Wait ";
        r17 = r17.append(r18);	 Catch:{ all -> 0x0152 }
        r18 = SERVER_RETRY_INTERVALS;	 Catch:{ all -> 0x0152 }
        r18 = r18[r8];	 Catch:{ all -> 0x0152 }
        r17 = r17.append(r18);	 Catch:{ all -> 0x0152 }
        r18 = " ms for retry";
        r17 = r17.append(r18);	 Catch:{ all -> 0x0152 }
        r17 = r17.toString();	 Catch:{ all -> 0x0152 }
        android.util.Log.e(r16, r17);	 Catch:{ all -> 0x0152 }
        r16 = SERVER_RETRY_INTERVALS;	 Catch:{ all -> 0x0152 }
        r16 = r16[r8];	 Catch:{ all -> 0x0152 }
        r0 = r16;
        r0 = (long) r0;	 Catch:{ all -> 0x0152 }
        r16 = r0;
        java.lang.Thread.sleep(r16);	 Catch:{ all -> 0x0152 }
        r8 = r8 + 1;
        r13 = r12;
        goto L_0x0141;
    L_0x0313:
        if (r5 == 0) goto L_0x0321;
    L_0x0315:
        r16 = new com.xiaomi.micloudsdk.exception.CloudServerException;	 Catch:{ all -> 0x0152 }
        r17 = 0;
        r0 = r16;
        r1 = r17;
        r0.<init>(r1, r5);	 Catch:{ all -> 0x0152 }
        throw r16;	 Catch:{ all -> 0x0152 }
    L_0x0321:
        r16 = new com.xiaomi.micloudsdk.exception.CloudServerException;	 Catch:{ all -> 0x0152 }
        r17 = 0;
        r16.<init>(r17);	 Catch:{ all -> 0x0152 }
        throw r16;	 Catch:{ all -> 0x0152 }
    L_0x0329:
        r16 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.FAILED;	 Catch:{ all -> 0x0243 }
        goto L_0x023a;
    L_0x032d:
        r17 = com.xiaomi.micloudsdk.request.utils.CloudUtils.UpdateStatus.FAILED;	 Catch:{ all -> 0x0331 }
        goto L_0x015a;
    L_0x0331:
        r16 = move-exception;
        monitor-exit(r18);	 Catch:{ all -> 0x0331 }
        throw r16;	 Catch:{ InterruptedException -> 0x0163 }
    L_0x0334:
        r4 = move-exception;
        goto L_0x02ac;
    L_0x0337:
        r4 = move-exception;
        goto L_0x0293;
    L_0x033a:
        r4 = move-exception;
        goto L_0x027a;
    L_0x033d:
        r4 = move-exception;
        goto L_0x0261;
    L_0x0340:
        r4 = move-exception;
        goto L_0x0248;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.micloudsdk.request.utils.CloudUtils.updateMiCloudHosts(boolean):void");
    }

    public static String updateRequestHost(String url, boolean forceUpdateCache) throws CloudServerException {
        updateMiCloudHosts(forceUpdateCache);
        try {
            Log.i("CloudUtils", "Original URL: " + url + ". ");
            java.net.URL originalURL = new java.net.URL(url);
            String newHostWithScheme = getHostWithScheme(originalURL.getHost());
            if (!TextUtils.isEmpty(newHostWithScheme)) {
                Log.i("CloudUtils", "New URL: " + newHostWithScheme + ". ");
                java.net.URL newUrl = new java.net.URL(newHostWithScheme);
                url = new java.net.URL(newUrl.getProtocol(), newUrl.getHost(), originalURL.getFile()).toString();
            }
        } catch (MalformedURLException e) {
            Log.e("CloudUtils", "MalformedURLException in updateHost", e);
        }
        Log.i("CloudUtils", "Final URL: " + url + ". ");
        return url;
    }

    private static String getHostWithScheme(String hostKey) {
        JSONException e;
        if (Log.isLoggable("CloudUtils", 3)) {
            Log.d("CloudUtils", "Enter getHost key=" + hostKey);
        }
        String hostValueObj = getHostCache().get(hostKey);
        String hostValue = null;
        if (hostValueObj != null && (hostValueObj instanceof String)) {
            hostValue = hostValueObj;
        }
        if (TextUtils.isEmpty(hostValue)) {
            String hosts = getHostList();
            if (!TextUtils.isEmpty(hosts)) {
                try {
                    JSONObject hostlist = new JSONObject(hosts);
                    try {
                        updateHostCache(JsonUtils.jsonToMap(hostlist));
                        Object hostValueObj2 = getHostCache().get(hostKey);
                        if (hostValueObj2 != null && (hostValueObj2 instanceof String)) {
                            hostValue = (String) hostValueObj2;
                        }
                        if (Log.isLoggable("CloudUtils", 3)) {
                            Log.d("CloudUtils", "find host in SystemSettings/sp return host = " + hostValue);
                        }
                        return hostValue;
                    } catch (JSONException e2) {
                        e = e2;
                        JSONObject jSONObject = hostlist;
                        Log.e("CloudUtils", "JSONException in getHost, return null", e);
                        return null;
                    }
                } catch (JSONException e3) {
                    e = e3;
                    Log.e("CloudUtils", "JSONException in getHost, return null", e);
                    return null;
                }
            } else if (!Log.isLoggable("CloudUtils", 3)) {
                return null;
            } else {
                Log.d("CloudUtils", "Hosts in SystemSettings/sp = null, return null");
                return null;
            }
        }
        if (Log.isLoggable("CloudUtils", 3)) {
            Log.d("CloudUtils", "Hit host cache directly return host = " + hostValue);
        }
        return hostValue;
    }

    private static String getHostList() {
        if (getPersistHostsFromSp()) {
            if (Log.isLoggable("CloudUtils", 3)) {
                Log.d("CloudUtils", "get hostlist from sp");
            }
            return PreferenceManager.getDefaultSharedPreferences(Request.getContext()).getString("pref_micloud_hosts_v2", "");
        }
        if (Log.isLoggable("CloudUtils", 3)) {
            Log.d("CloudUtils", "get hostlist from settings");
        }
        return MiCloudSettings.getString(Request.getContext(), "micloud_hosts_v2");
    }

    private static void setHostList(String hosts) {
        if (getPersistHostsFromSp()) {
            if (Log.isLoggable("CloudUtils", 3)) {
                Log.d("CloudUtils", "set hostlist to sp");
            }
            PreferenceManager.getDefaultSharedPreferences(Request.getContext()).edit().putString("pref_micloud_hosts_v2", hosts).commit();
            return;
        }
        if (Log.isLoggable("CloudUtils", 3)) {
            Log.d("CloudUtils", "set hostlist to settings");
        }
        MiCloudSettings.putString(Request.getContext(), "micloud_hosts_v2", hosts);
    }

    public static Account getXiaomiAccount() {
        return getXiaomiAccount(Request.getContext());
    }

    public static Account getXiaomiAccount(Context context) {
        Account[] accounts = AccountManager.get(context).getAccountsByType("com.xiaomi");
        if (accounts.length > 0) {
            return accounts[0];
        }
        return null;
    }

    private static void setXiaomiAccountName(String accountName) {
        if (getPersistHostsFromSp()) {
            if (Log.isLoggable("CloudUtils", 3)) {
                Log.d("CloudUtils", "set accountName: " + accountName + " to sp");
            }
            PreferenceManager.getDefaultSharedPreferences(Request.getContext()).edit().putString("pref_micloud_accountname_v2", accountName).commit();
            return;
        }
        if (Log.isLoggable("CloudUtils", 3)) {
            Log.d("CloudUtils", "set accountName: " + accountName + " to settings");
        }
        MiCloudSettings.putString(Request.getContext(), "micloud_accountname_v2", accountName);
    }

    private static String getXiaomiAccountName() {
        if (getPersistHostsFromSp()) {
            if (Log.isLoggable("CloudUtils", 3)) {
                Log.d("CloudUtils", "get accountName from sp");
            }
            return PreferenceManager.getDefaultSharedPreferences(Request.getContext()).getString("pref_micloud_accountname_v2", "");
        }
        if (Log.isLoggable("CloudUtils", 3)) {
            Log.d("CloudUtils", "get accountName from settings");
        }
        return MiCloudSettings.getString(Request.getContext(), "micloud_accountname_v2");
    }

    private static boolean getPersistHostsFromSp() {
        return "true".equals(MiCloudSettings.getString(Request.getContext(), "micloud_updatehosts_third_party"));
    }
}
