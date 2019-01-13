package miui.util.async.tasks;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import miui.util.AppConstants;
import miui.util.async.Cacheable;
import miui.util.async.Task;

public class ResourceBitmapTask extends Task<Bitmap> implements Cacheable {
    private Options Ln;
    private int Lx;
    private String hE;

    public ResourceBitmapTask(int i) {
        this(i, null);
    }

    public ResourceBitmapTask(int i, Options options) {
        this.Lx = i;
        this.Ln = options;
    }

    public String getDescription() {
        if (this.hE == null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("resource_");
            stringBuilder.append(this.Lx);
            this.hE = stringBuilder.toString();
        }
        return this.hE;
    }

    public Bitmap doLoad() throws Exception {
        FileBitmapTask.Lo.acquireUninterruptibly();
        try {
            Bitmap decodeResource = BitmapFactory.decodeResource(AppConstants.getCurrentApplication().getResources(), this.Lx, this.Ln);
            return decodeResource;
        } finally {
            FileBitmapTask.Lo.release();
        }
    }

    public String getCacheKey() {
        return getDescription();
    }

    public int sizeOf(Object obj) {
        if (obj instanceof Bitmap) {
            return ((Bitmap) obj).getByteCount();
        }
        return 0;
    }
}
