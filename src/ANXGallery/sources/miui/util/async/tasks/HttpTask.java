package miui.util.async.tasks;

import java.util.Map;
import miui.net.http.HttpRequestParams;
import miui.net.http.HttpResponse;
import miui.net.http.HttpSession;
import miui.net.http.HttpSession.ProgressListener;
import miui.util.async.Task;

public abstract class HttpTask<T> extends Task<T> {
    private ProgressListener Ds;
    private final HttpSession Lq;
    private final Method Lr;
    private final String Ls;
    private final HttpRequestParams Lt;

    public enum Method {
        Get,
        Post
    }

    public HttpTask(String str) {
        this(null, Method.Get, str, null);
    }

    public HttpTask(HttpSession httpSession, String str) {
        this(httpSession, Method.Get, str, null);
    }

    public HttpTask(HttpSession httpSession, Method method, String str, Map<String, String> map) {
        if (httpSession == null) {
            httpSession = HttpSession.getDefault();
        }
        this.Lq = httpSession;
        this.Lr = method;
        if (method == Method.Get) {
            if (map == null || map.size() <= 0) {
                this.Ls = str;
            } else {
                String stringBuilder;
                HttpRequestParams httpRequestParams = new HttpRequestParams(new Object[]{map});
                StringBuilder stringBuilder2;
                if (str.indexOf(63) >= 0) {
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(str);
                    stringBuilder2.append("&");
                    stringBuilder2.append(httpRequestParams.getParamString());
                    stringBuilder = stringBuilder2.toString();
                } else {
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(str);
                    stringBuilder2.append("?");
                    stringBuilder2.append(httpRequestParams.getParamString());
                    stringBuilder = stringBuilder2.toString();
                }
                this.Ls = stringBuilder;
            }
            this.Lt = null;
            return;
        }
        this.Ls = str;
        this.Lt = new HttpRequestParams();
        this.Lt.add(map);
    }

    public String getDescription() {
        return this.Ls;
    }

    protected final HttpResponse request() throws Exception {
        if (this.Ds == null) {
            this.Ds = new ProgressListener() {
                public void onProgress(long j, long j2) {
                    if (j > 2147483647L) {
                        j2 = (long) ((int) (((float) (j * 2147483647L)) / 9.223372E18f));
                        j = j2;
                        j2 = (long) ((int) (((float) (2147483647L * j2)) / 9.223372E18f));
                    }
                    HttpTask.this.publishProgress((int) j, (int) j2);
                }
            };
        }
        switch (this.Lr) {
            case Get:
                return this.Lq.get(this.Ls, null, this.Lt, this.Ds);
            case Post:
                return this.Lq.post(this.Ls, null, this.Lt, this.Ds);
            default:
                return null;
        }
    }
}
