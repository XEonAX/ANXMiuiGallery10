package miui.util.async.tasks;

import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import java.lang.ref.WeakReference;
import miui.util.AppConstants;
import miui.util.C0010Pools;
import miui.util.async.Task;
import miui.util.async.TaskManager;

public abstract class ContentResolverQueryTask<T> extends Task<T> {
    private WeakReference<TaskManager> JT;
    private final String[] Lc;
    private final String[] Le;
    private final String Lf;
    private final String Lg;
    private boolean Lh;
    private boolean Li;
    private boolean Lj;
    private UriObserver Lk;
    private String hE;
    private final Uri zO;

    public class Cookie {
        public void release() {
            ContentResolverQueryTask.this.disableAutoRequery();
        }

        public void pause() {
            ContentResolverQueryTask.this.pause();
        }

        public void resume() {
            ContentResolverQueryTask.this.resume();
        }
    }

    private static class UriObserver extends ContentObserver {
        private final WeakReference<ContentResolverQueryTask> Lm;

        public UriObserver(ContentResolverQueryTask contentResolverQueryTask) {
            super(new Handler(AppConstants.getCurrentApplication().getMainLooper()));
            this.Lm = new WeakReference(contentResolverQueryTask);
        }

        public void onChange(boolean z) {
            ContentResolverQueryTask contentResolverQueryTask = (ContentResolverQueryTask) this.Lm.get();
            if (contentResolverQueryTask != null) {
                contentResolverQueryTask.requery();
            }
        }
    }

    public ContentResolverQueryTask(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        this.zO = uri;
        this.Le = strArr;
        this.Lf = str;
        this.Lc = strArr2;
        this.Lg = str2;
    }

    public Cookie enableAutoRequery() {
        if (!this.Lh) {
            this.Lh = true;
            this.Lk = new UriObserver(this);
            AppConstants.getCurrentApplication().getContentResolver().registerContentObserver(this.zO, true, this.Lk);
        }
        return new Cookie();
    }

    public void disableAutoRequery() {
        this.Lh = false;
        if (this.Lk != null) {
            AppConstants.getCurrentApplication().getContentResolver().unregisterContentObserver(this.Lk);
            this.Lk = null;
        }
    }

    public String getDescription() {
        if (this.hE == null) {
            StringBuilder stringBuilder = (StringBuilder) C0010Pools.getStringBuilderPool().acquire();
            int i = 1;
            if (this.Le != null) {
                stringBuilder.append('[');
                stringBuilder.append(this.Le[0]);
                for (int i2 = 1; i2 < this.Le.length; i2++) {
                    stringBuilder.append(';');
                    stringBuilder.append(this.Le[i2]);
                }
                stringBuilder.append("]@");
            }
            stringBuilder.append(this.zO);
            if (this.Lf != null) {
                stringBuilder.append(" WHERE ");
                if (this.Lc != null) {
                    stringBuilder.append('[');
                    stringBuilder.append(this.Lc[0]);
                    while (i < this.Lc.length) {
                        stringBuilder.append(';');
                        stringBuilder.append(this.Lc[i]);
                        i++;
                    }
                    stringBuilder.append("]@");
                }
                stringBuilder.append(this.Lf);
            }
            if (this.Lg != null) {
                stringBuilder.append(" ORDER BY ");
                stringBuilder.append(this.Lg);
            }
            this.hE = stringBuilder.toString();
            C0010Pools.getStringBuilderPool().release(stringBuilder);
        }
        return this.hE;
    }

    protected Cursor query() throws Exception {
        return AppConstants.getCurrentApplication().getContentResolver().query(this.zO, this.Le, this.Lf, this.Lc, this.Lg);
    }

    void requery() {
        if (this.Li) {
            this.Lj = true;
        } else if (this.JT != null) {
            TaskManager taskManager = (TaskManager) this.JT.get();
            if (taskManager != null) {
                restart();
                taskManager.add(this);
                return;
            }
            disableAutoRequery();
        }
    }

    void pause() {
        this.Li = true;
    }

    void resume() {
        this.Li = false;
        if (this.Lj) {
            this.Lj = false;
            requery();
        }
    }

    public void onPrepare(TaskManager taskManager) {
        this.JT = new WeakReference(taskManager);
    }
}
