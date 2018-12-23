package com.android.volley.toolbox;

import com.android.volley.Cache.Entry;
import com.android.volley.Header;
import com.android.volley.Network;
import com.android.volley.Request;
import com.android.volley.RetryPolicy;
import com.android.volley.ServerError;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public class BasicNetwork implements Network {
    protected static final boolean DEBUG = VolleyLog.DEBUG;
    private final BaseHttpStack mBaseHttpStack;
    @Deprecated
    protected final HttpStack mHttpStack;
    protected final ByteArrayPool mPool;

    public BasicNetwork(BaseHttpStack httpStack) {
        this(httpStack, new ByteArrayPool(4096));
    }

    public BasicNetwork(BaseHttpStack httpStack, ByteArrayPool pool) {
        this.mBaseHttpStack = httpStack;
        this.mHttpStack = httpStack;
        this.mPool = pool;
    }

    /* JADX WARNING: Removed duplicated region for block: B:70:0x0117 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00d7  */
    /* JADX WARNING: Missing block: B:18:0x008e, code:
            throw new java.io.IOException();
     */
    public com.android.volley.NetworkResponse performRequest(com.android.volley.Request<?> r26) throws com.android.volley.VolleyError {
        /*
        r25 = this;
        r22 = android.os.SystemClock.elapsedRealtime();
    L_0x0004:
        r20 = 0;
        r24 = 0;
        r8 = java.util.Collections.emptyList();
        r3 = r26.getCacheEntry();	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r0 = r25;
        r17 = r0.getCacheHeaders(r3);	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r0 = r25;
        r3 = r0.mBaseHttpStack;	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r0 = r26;
        r1 = r17;
        r20 = r3.executeRequest(r0, r1);	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r14 = r20.getStatusCode();	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r8 = r20.getHeaders();	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r3 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        if (r14 != r3) goto L_0x0062;
    L_0x002e:
        r19 = r26.getCacheEntry();	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        if (r19 != 0) goto L_0x0046;
    L_0x0034:
        r2 = new com.android.volley.NetworkResponse;	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r3 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r4 = 0;
        r5 = 1;
        r6 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r6 = r6 - r22;
        r2.<init>(r3, r4, r5, r6, r8);	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r13 = r24;
    L_0x0045:
        return r2;
    L_0x0046:
        r0 = r19;
        r16 = combineHeaders(r8, r0);	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r10 = new com.android.volley.NetworkResponse;	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r11 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r0 = r19;
        r12 = r0.data;	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r13 = 1;
        r4 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r14 = r4 - r22;
        r10.<init>(r11, r12, r13, r14, r16);	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r13 = r24;
        r2 = r10;
        goto L_0x0045;
    L_0x0062:
        r21 = r20.getContent();	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        if (r21 == 0) goto L_0x009f;
    L_0x0068:
        r3 = r20.getContentLength();	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        r0 = r25;
        r1 = r21;
        r13 = r0.inputStreamToBytes(r1, r3);	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
    L_0x0074:
        r4 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x008f, MalformedURLException -> 0x00b2, IOException -> 0x0163 }
        r10 = r4 - r22;
        r9 = r25;
        r12 = r26;
        r9.logSlowRequests(r10, r12, r13, r14);	 Catch:{ SocketTimeoutException -> 0x008f, MalformedURLException -> 0x00b2, IOException -> 0x0163 }
        r3 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r14 < r3) goto L_0x0089;
    L_0x0085:
        r3 = 299; // 0x12b float:4.19E-43 double:1.477E-321;
        if (r14 <= r3) goto L_0x00a3;
    L_0x0089:
        r3 = new java.io.IOException;	 Catch:{ SocketTimeoutException -> 0x008f, MalformedURLException -> 0x00b2, IOException -> 0x0163 }
        r3.<init>();	 Catch:{ SocketTimeoutException -> 0x008f, MalformedURLException -> 0x00b2, IOException -> 0x0163 }
        throw r3;	 Catch:{ SocketTimeoutException -> 0x008f, MalformedURLException -> 0x00b2, IOException -> 0x0163 }
    L_0x008f:
        r18 = move-exception;
    L_0x0090:
        r3 = "socket";
        r4 = new com.android.volley.TimeoutError;
        r4.<init>();
        r0 = r26;
        attemptRetryOnException(r3, r0, r4);
        goto L_0x0004;
    L_0x009f:
        r3 = 0;
        r13 = new byte[r3];	 Catch:{ SocketTimeoutException -> 0x016b, MalformedURLException -> 0x0166, IOException -> 0x00d2 }
        goto L_0x0074;
    L_0x00a3:
        r2 = new com.android.volley.NetworkResponse;	 Catch:{ SocketTimeoutException -> 0x008f, MalformedURLException -> 0x00b2, IOException -> 0x0163 }
        r5 = 0;
        r6 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x008f, MalformedURLException -> 0x00b2, IOException -> 0x0163 }
        r6 = r6 - r22;
        r3 = r14;
        r4 = r13;
        r2.<init>(r3, r4, r5, r6, r8);	 Catch:{ SocketTimeoutException -> 0x008f, MalformedURLException -> 0x00b2, IOException -> 0x0163 }
        goto L_0x0045;
    L_0x00b2:
        r18 = move-exception;
    L_0x00b3:
        r3 = new java.lang.RuntimeException;
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "Bad URL ";
        r4 = r4.append(r5);
        r5 = r26.getUrl();
        r4 = r4.append(r5);
        r4 = r4.toString();
        r0 = r18;
        r3.<init>(r4, r0);
        throw r3;
    L_0x00d2:
        r18 = move-exception;
        r13 = r24;
    L_0x00d5:
        if (r20 == 0) goto L_0x0117;
    L_0x00d7:
        r14 = r20.getStatusCode();
        r3 = "Unexpected response code %d for %s";
        r4 = 2;
        r4 = new java.lang.Object[r4];
        r5 = 0;
        r6 = java.lang.Integer.valueOf(r14);
        r4[r5] = r6;
        r5 = 1;
        r6 = r26.getUrl();
        r4[r5] = r6;
        com.android.volley.VolleyLog.e(r3, r4);
        if (r13 == 0) goto L_0x0155;
    L_0x00f3:
        r2 = new com.android.volley.NetworkResponse;
        r5 = 0;
        r6 = android.os.SystemClock.elapsedRealtime();
        r6 = r6 - r22;
        r3 = r14;
        r4 = r13;
        r2.<init>(r3, r4, r5, r6, r8);
        r3 = 401; // 0x191 float:5.62E-43 double:1.98E-321;
        if (r14 == r3) goto L_0x0109;
    L_0x0105:
        r3 = 403; // 0x193 float:5.65E-43 double:1.99E-321;
        if (r14 != r3) goto L_0x011f;
    L_0x0109:
        r3 = "auth";
        r4 = new com.android.volley.AuthFailureError;
        r4.<init>(r2);
        r0 = r26;
        attemptRetryOnException(r3, r0, r4);
        goto L_0x0004;
    L_0x0117:
        r3 = new com.android.volley.NoConnectionError;
        r0 = r18;
        r3.<init>(r0);
        throw r3;
    L_0x011f:
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r14 < r3) goto L_0x012d;
    L_0x0123:
        r3 = 499; // 0x1f3 float:6.99E-43 double:2.465E-321;
        if (r14 > r3) goto L_0x012d;
    L_0x0127:
        r3 = new com.android.volley.ClientError;
        r3.<init>(r2);
        throw r3;
    L_0x012d:
        r3 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        if (r14 < r3) goto L_0x014f;
    L_0x0131:
        r3 = 599; // 0x257 float:8.4E-43 double:2.96E-321;
        if (r14 > r3) goto L_0x014f;
    L_0x0135:
        r3 = r26.shouldRetryServerErrors();
        if (r3 == 0) goto L_0x0149;
    L_0x013b:
        r3 = "server";
        r4 = new com.android.volley.ServerError;
        r4.<init>(r2);
        r0 = r26;
        attemptRetryOnException(r3, r0, r4);
        goto L_0x0004;
    L_0x0149:
        r3 = new com.android.volley.ServerError;
        r3.<init>(r2);
        throw r3;
    L_0x014f:
        r3 = new com.android.volley.ServerError;
        r3.<init>(r2);
        throw r3;
    L_0x0155:
        r3 = "network";
        r4 = new com.android.volley.NetworkError;
        r4.<init>();
        r0 = r26;
        attemptRetryOnException(r3, r0, r4);
        goto L_0x0004;
    L_0x0163:
        r18 = move-exception;
        goto L_0x00d5;
    L_0x0166:
        r18 = move-exception;
        r13 = r24;
        goto L_0x00b3;
    L_0x016b:
        r18 = move-exception;
        r13 = r24;
        goto L_0x0090;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.BasicNetwork.performRequest(com.android.volley.Request):com.android.volley.NetworkResponse");
    }

    private void logSlowRequests(long requestLifetime, Request<?> request, byte[] responseContents, int statusCode) {
        if (DEBUG || requestLifetime > 3000) {
            String str = "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]";
            Object[] objArr = new Object[5];
            objArr[0] = request;
            objArr[1] = Long.valueOf(requestLifetime);
            objArr[2] = responseContents != null ? Integer.valueOf(responseContents.length) : "null";
            objArr[3] = Integer.valueOf(statusCode);
            objArr[4] = Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount());
            VolleyLog.d(str, objArr);
        }
    }

    private static void attemptRetryOnException(String logPrefix, Request<?> request, VolleyError exception) throws VolleyError {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int oldTimeout = request.getTimeoutMs();
        try {
            retryPolicy.retry(exception);
            request.addMarker(String.format("%s-retry [timeout=%s]", new Object[]{logPrefix, Integer.valueOf(oldTimeout)}));
        } catch (VolleyError e) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", new Object[]{logPrefix, Integer.valueOf(oldTimeout)}));
            throw e;
        }
    }

    private Map<String, String> getCacheHeaders(Entry entry) {
        if (entry == null) {
            return Collections.emptyMap();
        }
        Map<String, String> headers = new HashMap();
        if (entry.etag != null) {
            headers.put("If-None-Match", entry.etag);
        }
        if (entry.lastModified <= 0) {
            return headers;
        }
        headers.put("If-Modified-Since", HttpHeaderParser.formatEpochAsRfc1123(entry.lastModified));
        return headers;
    }

    private byte[] inputStreamToBytes(InputStream in, int contentLength) throws IOException, ServerError {
        PoolingByteArrayOutputStream bytes = new PoolingByteArrayOutputStream(this.mPool, contentLength);
        if (in == null) {
            try {
                throw new ServerError();
            } catch (Throwable th) {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                    }
                }
                this.mPool.returnBuf(null);
                bytes.close();
            }
        } else {
            byte[] buffer = this.mPool.getBuf(1024);
            while (true) {
                int count = in.read(buffer);
                if (count == -1) {
                    break;
                }
                bytes.write(buffer, 0, count);
            }
            byte[] toByteArray = bytes.toByteArray();
            if (in != null) {
                try {
                    in.close();
                } catch (IOException e2) {
                    VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.mPool.returnBuf(buffer);
            bytes.close();
            return toByteArray;
        }
    }

    private static List<Header> combineHeaders(List<Header> responseHeaders, Entry entry) {
        Set<String> headerNamesFromNetworkResponse = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!responseHeaders.isEmpty()) {
            for (Header header : responseHeaders) {
                headerNamesFromNetworkResponse.add(header.getName());
            }
        }
        List<Header> combinedHeaders = new ArrayList(responseHeaders);
        if (entry.allResponseHeaders != null) {
            if (!entry.allResponseHeaders.isEmpty()) {
                for (Header header2 : entry.allResponseHeaders) {
                    if (!headerNamesFromNetworkResponse.contains(header2.getName())) {
                        combinedHeaders.add(header2);
                    }
                }
            }
        } else if (!entry.responseHeaders.isEmpty()) {
            for (Map.Entry<String, String> header3 : entry.responseHeaders.entrySet()) {
                if (!headerNamesFromNetworkResponse.contains(header3.getKey())) {
                    combinedHeaders.add(new Header((String) header3.getKey(), (String) header3.getValue()));
                }
            }
        }
        return combinedHeaders;
    }
}
