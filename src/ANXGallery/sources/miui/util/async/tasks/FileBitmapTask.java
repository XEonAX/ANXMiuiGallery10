package miui.util.async.tasks;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import java.util.concurrent.Semaphore;
import miui.graphics.BitmapFactory;
import miui.util.async.Cacheable;
import miui.util.async.Task;

public class FileBitmapTask extends Task<Bitmap> implements Cacheable {
    static final Semaphore Lo = new Semaphore(2);
    private Options Ln;
    private String Lp;

    public FileBitmapTask(String str) {
        this(str, null);
    }

    public FileBitmapTask(String str, Options options) {
        this.Lp = str;
        this.Ln = options;
    }

    public String getDescription() {
        return this.Lp;
    }

    public Bitmap doLoad() throws Exception {
        Lo.acquireUninterruptibly();
        try {
            Bitmap decodeFile = BitmapFactory.decodeFile(this.Lp, this.Ln);
            return decodeFile;
        } finally {
            Lo.release();
        }
    }

    public String getCacheKey() {
        return this.Lp;
    }

    public int sizeOf(Object obj) {
        if (obj instanceof Bitmap) {
            return ((Bitmap) obj).getByteCount();
        }
        return 0;
    }
}
