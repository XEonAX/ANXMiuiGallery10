package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.uil.LoadMonitor;
import com.miui.gallery.util.uil.MicroThumbCache;
import com.nostra13.universalimageloader.cache.memory.BaseMemoryCache;
import com.nostra13.universalimageloader.cache.memory.MemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import com.nostra13.universalimageloader.core.imageaware.NonViewAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.core.listener.ImageLoadingProgressListener;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import com.nostra13.universalimageloader.utils.ImageSizeUtils;
import com.nostra13.universalimageloader.utils.L;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

public class ImageLoader {
    public static final String TAG = ImageLoader.class.getSimpleName();
    private static volatile ImageLoader instance;
    private static Initializer sInitializer;
    private ImageLoaderConfiguration configuration;
    private ImageLoadingListener defaultListener = new SimpleImageLoadingListener();
    private ImageLoaderEngine engine;
    private int mPageUsedCount = 0;

    public static abstract class Initializer {
        private ImageLoader mImageLoader;

        protected abstract ImageLoaderConfiguration getConfig();

        private final ImageLoader initialize() {
            long start = System.currentTimeMillis();
            synchronized (this) {
                if (this.mImageLoader == null) {
                    try {
                        wait();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            Log.d(ImageLoader.TAG, "wait for initialize ImageLoader cost: %dms", Long.valueOf(System.currentTimeMillis() - start));
            return this.mImageLoader;
        }

        public final void preInitialize() {
            synchronized (this) {
                ImageLoader imageLoader = new ImageLoader();
                imageLoader.init(getConfig());
                this.mImageLoader = imageLoader;
                notifyAll();
            }
        }
    }

    private static class SyncImageLoadingListener extends SimpleImageLoadingListener {
        private Bitmap loadedImage;

        private SyncImageLoadingListener() {
        }

        public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
            this.loadedImage = loadedImage;
        }

        public Bitmap getLoadedBitmap() {
            return this.loadedImage;
        }
    }

    public static ImageLoader getInstance() {
        if (instance == null) {
            synchronized (ImageLoader.class) {
                if (instance == null) {
                    if (sInitializer == null) {
                        instance = new ImageLoader();
                    } else {
                        instance = sInitializer.initialize();
                        sInitializer = null;
                    }
                }
            }
        }
        return instance;
    }

    protected ImageLoader() {
    }

    public synchronized void init(ImageLoaderConfiguration configuration) {
        if (configuration == null) {
            throw new IllegalArgumentException("ImageLoader configuration can not be initialized with null");
        } else if (this.configuration == null) {
            L.d("Initialize ImageLoader with configuration", new Object[0]);
            this.engine = new ImageLoaderEngine(configuration);
            this.configuration = configuration;
        } else {
            L.w("Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first.", new Object[0]);
        }
    }

    public void displayImage(String uri, ImageAware imageAware, DisplayImageOptions options) {
        displayImage(uri, imageAware, options, null, null);
    }

    public void displayImage(String uri, ImageAware imageAware, DisplayImageOptions options, ImageLoadingListener listener, ImageLoadingProgressListener progressListener) {
        displayImage(uri, imageAware, options, null, listener, progressListener);
    }

    public void displayImage(String uri, ImageAware imageAware, DisplayImageOptions options, ImageSize targetSize, ImageLoadingListener listener, ImageLoadingProgressListener progressListener) {
        displayImage(uri, imageAware, options, targetSize, listener, progressListener, null);
    }

    public void displayImage(String uri, ImageAware imageAware, DisplayImageOptions options, ImageSize targetSize, ImageLoadingListener listener, ImageLoadingProgressListener progressListener, RectF regionDecodeRect) {
        checkConfiguration();
        if (imageAware == null) {
            throw new IllegalArgumentException("Wrong arguments were passed to displayImage() method (ImageView reference must not be null)");
        }
        if (listener == null) {
            listener = this.defaultListener;
        }
        if (options == null) {
            options = this.configuration.defaultDisplayImageOptions;
        }
        if (TextUtils.isEmpty(uri)) {
            this.engine.cancelDisplayTaskFor(imageAware);
            listener.onLoadingStarted(uri, imageAware.getWrappedView());
            if (options.shouldShowImageForEmptyUri()) {
                imageAware.setImageDrawable(options.getImageForEmptyUri(this.configuration.resources));
            } else {
                imageAware.setImageDrawable(null);
            }
            listener.onLoadingComplete(uri, imageAware.getWrappedView(), null);
            return;
        }
        if (targetSize == null) {
            targetSize = ImageSizeUtils.defineTargetSizeForView(imageAware, this.configuration.getMaxImageSize());
        }
        String memoryCacheKey = MemoryCacheUtils.generateKey(uri, targetSize, regionDecodeRect, options);
        this.engine.prepareDisplayTaskFor(imageAware, memoryCacheKey);
        listener.onLoadingStarted(uri, imageAware.getWrappedView());
        Bitmap bmp = null;
        if (options.isCacheInMemory()) {
            bmp = this.configuration.memoryCache.get(memoryCacheKey);
        }
        if (LoadMonitor.isSyncLoadMicro() && options.isLoadFromMicroCache() && (bmp == null || bmp.isRecycled())) {
            MicroThumbCache cache = MicroThumbCache.getInstance();
            if (cache != null) {
                bmp = cache.getCenterCropBitmap(memoryCacheKey, null);
            } else {
                L.e(TAG, "The MicroThumbCache is null, should not happen");
            }
        }
        if (LoadMonitor.isSyncLoadThumb() && options.isSyncLoadFromThumbCache() && (bmp == null || bmp.isRecycled())) {
            bmp = this.configuration.thumbnailCache.getBitmap(memoryCacheKey);
            if (bmp != null && options.isCacheInMemory()) {
                this.configuration.memoryCache.put(memoryCacheKey, bmp);
            }
        }
        if (bmp == null || bmp.isRecycled()) {
            L.d("Load null from memory cache [%s]", memoryCacheKey);
            if (!options.isLoadFromMemoryOnly()) {
                if (options.shouldShowImageOnLoading()) {
                    imageAware.setImageDrawable(options.getImageOnLoading(this.configuration.resources));
                } else if (options.isResetViewBeforeLoading()) {
                    imageAware.setImageDrawable(null);
                }
                LoadAndDisplayImageTask loadAndDisplayImageTask = new LoadAndDisplayImageTask(this.engine, new ImageLoadingInfo(uri, imageAware, targetSize, regionDecodeRect, memoryCacheKey, options, listener, progressListener, this.engine.getLockForUri(uri)), defineHandler(options));
                if (options.isSyncLoading()) {
                    loadAndDisplayImageTask.run();
                } else {
                    this.engine.submit(loadAndDisplayImageTask);
                }
            }
        } else if (options.shouldPostProcess()) {
            Bitmap bitmap = bmp;
            ProcessAndDisplayImageTask processAndDisplayImageTask = new ProcessAndDisplayImageTask(this.engine, bitmap, new ImageLoadingInfo(uri, imageAware, targetSize, memoryCacheKey, options, listener, progressListener, this.engine.getLockForUri(uri)), defineHandler(options));
            if (options.isSyncLoading()) {
                processAndDisplayImageTask.run();
            } else {
                this.engine.submit(processAndDisplayImageTask);
            }
        } else {
            options.getDisplayer().display(bmp, imageAware, LoadedFrom.MEMORY_CACHE);
            listener.onLoadingComplete(uri, imageAware.getWrappedView(), bmp);
        }
    }

    public void displayImage(String uri, ImageView imageView) {
        displayImage(uri, new ImageViewAware(imageView), null, null, null);
    }

    public void displayImage(String uri, ImageView imageView, DisplayImageOptions options) {
        displayImage(uri, new ImageViewAware(imageView), options, null, null);
    }

    public void displayImage(String uri, ImageView imageView, DisplayImageOptions options, ImageLoadingListener listener) {
        displayImage(uri, imageView, options, listener, null);
    }

    public void displayImage(String uri, ImageView imageView, DisplayImageOptions options, ImageLoadingListener listener, ImageLoadingProgressListener progressListener) {
        displayImage(uri, new ImageViewAware(imageView), options, listener, progressListener);
    }

    public void displayImage(String uri, ImageView imageView, DisplayImageOptions options, ImageSize size, RectF regionDecodeRect) {
        displayImage(uri, new ImageViewAware(imageView), options, size, null, null, regionDecodeRect);
    }

    public Bitmap loadFromMemoryCache(String uri, ImageSize targetSize, RectF regionDecodeRect, DisplayImageOptions options) {
        checkConfiguration();
        if (TextUtils.isEmpty(uri) || targetSize == null) {
            return null;
        }
        return this.configuration.memoryCache.get(MemoryCacheUtils.generateKey(uri, targetSize, regionDecodeRect, options));
    }

    public Bitmap loadFromMemoryCache(String key) {
        checkConfiguration();
        if (TextUtils.isEmpty(key)) {
            return null;
        }
        return this.configuration.memoryCache.get(key);
    }

    public void loadImage(String uri, ImageLoadingListener listener) {
        loadImage(uri, null, null, listener, null);
    }

    public void loadImage(String uri, ImageSize targetImageSize, DisplayImageOptions options, ImageLoadingListener listener) {
        loadImage(uri, targetImageSize, options, listener, null);
    }

    public void loadImage(String uri, ImageSize targetImageSize, DisplayImageOptions options, ImageLoadingListener listener, ImageLoadingProgressListener progressListener) {
        loadImage(uri, targetImageSize, options, listener, progressListener, null);
    }

    public void loadImage(String uri, ImageSize targetSize, DisplayImageOptions options, ImageLoadingListener listener, ImageLoadingProgressListener progressListener, RectF regionRect) {
        checkConfiguration();
        if (options == null) {
            options = this.configuration.defaultDisplayImageOptions;
        }
        displayImage(uri, createImageAware(uri, targetSize), options, targetSize, listener, progressListener, regionRect);
    }

    public ImageAware createImageAware(String uri, ImageSize targetImageSize) {
        if (targetImageSize == null) {
            targetImageSize = this.configuration.getMaxImageSize();
        }
        return new NonViewAware(uri, targetImageSize, ViewScaleType.CROP);
    }

    public ImageAware createImageAware(String uri, ImageSize targetImageSize, ViewScaleType scaleType) {
        if (targetImageSize == null) {
            targetImageSize = this.configuration.getMaxImageSize();
        }
        return new NonViewAware(uri, targetImageSize, scaleType);
    }

    public Bitmap loadImageSync(String uri) {
        return loadImageSync(uri, null, null);
    }

    public Bitmap loadImageSync(String uri, DisplayImageOptions options) {
        return loadImageSync(uri, null, options);
    }

    public Bitmap loadImageSync(String uri, ImageSize targetImageSize, DisplayImageOptions options) {
        if (options == null) {
            options = this.configuration.defaultDisplayImageOptions;
        }
        options = new Builder().cloneFrom(options).syncLoading(true).build();
        SyncImageLoadingListener listener = new SyncImageLoadingListener();
        loadImage(uri, targetImageSize, options, listener);
        return listener.getLoadedBitmap();
    }

    private void checkConfiguration() {
        if (this.configuration == null) {
            throw new IllegalStateException("ImageLoader must be init with configuration before using");
        }
    }

    public void referenceToMemoryCache(String key, Bitmap value) {
        if (value != null) {
            MemoryCache memoryCache = getMemoryCache();
            if (memoryCache instanceof BaseMemoryCache) {
                ((BaseMemoryCache) memoryCache).reference(key, value);
            }
        }
    }

    public MemoryCache getMemoryCache() {
        checkConfiguration();
        return this.configuration.memoryCache;
    }

    public void clearHardMemoryCache() {
        checkConfiguration();
        MemoryCache memoryCache = this.configuration.memoryCache;
        if (memoryCache instanceof BaseMemoryCache) {
            ((BaseMemoryCache) memoryCache).clear(true);
        }
    }

    public void cancelDisplayTask(ImageView imageView) {
        this.engine.cancelDisplayTaskFor(new ImageViewAware(imageView));
    }

    public void onPagePause() {
        this.mPageUsedCount--;
        if (this.mPageUsedCount <= 0) {
            pause();
            this.mPageUsedCount = 0;
        }
    }

    public void onPageResume() {
        this.mPageUsedCount++;
        resume();
    }

    public void pause() {
        this.engine.pause();
        Log.d(TAG, "paused");
    }

    public void resume() {
        this.engine.resume();
        Log.d(TAG, "resumed");
    }

    public void waitLockForUri(String uri, long timeout, TimeUnit unit) {
        if (uri != null) {
            long start = System.currentTimeMillis();
            ReentrantLock lock = this.engine.getLockForUri(uri);
            try {
                if (lock.tryLock(timeout, unit)) {
                    lock.unlock();
                }
            } catch (Exception e) {
            }
            L.d("waitLockForUri cost:" + (System.currentTimeMillis() - start), new Object[0]);
        }
    }

    private static Handler defineHandler(DisplayImageOptions options) {
        Handler handler = options.getHandler();
        if (options.isSyncLoading()) {
            return null;
        }
        if (handler == null && Looper.myLooper() == Looper.getMainLooper()) {
            return new Handler();
        }
        return handler;
    }

    public static void setInitializer(Initializer initializer) {
        sInitializer = initializer;
    }
}
