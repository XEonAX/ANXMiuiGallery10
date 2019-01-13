package miui.util.async.tasks.listeners;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import miui.util.AppConstants;
import miui.util.async.Task;
import miui.util.async.TaskManager;

public class ImageViewBindingListener extends BaseTaskListener {
    private static final LinkedHashSet<ImageViewBindingListener> Ly = new LinkedHashSet();
    private WeakReference<Task<?>> LD;
    private Drawable LE;
    private Drawable LF;
    private final WeakReference<ImageView> Lz;

    public ImageViewBindingListener(ImageView imageView) {
        this.Lz = new WeakReference(imageView);
    }

    public ImageViewBindingListener setPlaceHolderDrawable(Drawable drawable) {
        this.LE = drawable;
        return this;
    }

    public ImageViewBindingListener setErrorDrawable(Drawable drawable) {
        this.LF = drawable;
        return this;
    }

    private boolean a(ImageViewBindingListener imageViewBindingListener) {
        return this.Lz.get() == imageViewBindingListener.Lz.get();
    }

    public final ImageView getImageView() {
        return (ImageView) this.Lz.get();
    }

    public void onPrepare(TaskManager taskManager, Task<?> task) {
        Task task2;
        if (this.LD != null) {
            task2 = (Task) this.LD.get();
            if (task2 != null) {
                task2.cancel();
            }
        }
        this.LD = new WeakReference(task);
        task2 = null;
        Iterator it = Ly.iterator();
        while (it.hasNext()) {
            ImageViewBindingListener imageViewBindingListener = (ImageViewBindingListener) it.next();
            if (imageViewBindingListener != this && a(imageViewBindingListener)) {
                task2 = (Task) imageViewBindingListener.LD.get();
                break;
            }
        }
        if (task2 != null) {
            task2.cancel();
        }
        Ly.add(this);
        if (this.LE != null) {
            ImageView imageView = (ImageView) this.Lz.get();
            if (imageView != null) {
                imageView.setImageDrawable(this.LE);
            }
        }
    }

    public Object onResult(TaskManager taskManager, Task<?> task, Object obj) {
        ImageView imageView = (ImageView) this.Lz.get();
        if (imageView != null) {
            Drawable[] drawableArr = new Drawable[]{imageView.getDrawable(), null};
            if (drawableArr[0] != null) {
                Resources resources = AppConstants.getCurrentApplication().getResources();
                if (obj instanceof Bitmap) {
                    drawableArr[1] = new BitmapDrawable(resources, (Bitmap) obj);
                } else {
                    drawableArr[1] = (Drawable) obj;
                }
                Drawable transitionDrawable = new TransitionDrawable(drawableArr);
                transitionDrawable.setCrossFadeEnabled(true);
                imageView.setImageDrawable(transitionDrawable);
                transitionDrawable.startTransition(resources.getInteger(17694720));
            } else if (obj instanceof Bitmap) {
                imageView.setImageBitmap((Bitmap) obj);
            } else {
                imageView.setImageDrawable((Drawable) obj);
            }
        }
        return obj;
    }

    public void onException(TaskManager taskManager, Task<?> task, Exception exception) {
        if (this.LF != null) {
            ImageView imageView = (ImageView) this.Lz.get();
            if (imageView != null) {
                imageView.setImageDrawable(this.LF);
            }
        }
    }

    public void onFinalize(TaskManager taskManager, Task<?> task) {
        Ly.remove(this);
    }
}
