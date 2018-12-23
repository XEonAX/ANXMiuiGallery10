package com.miui.gallery.assistant.manager;

import android.content.ContentValues;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.text.TextUtils;
import android.util.LongSparseArray;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.algorithm.Algorithm;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.assistant.manager.AlgorithmRequest.Listener;
import com.miui.gallery.assistant.manager.AlgorithmRequest.Priority;
import com.miui.gallery.assistant.manager.request.BatchImageAlgorithmRequest;
import com.miui.gallery.assistant.manager.request.ClusterGroupRequest;
import com.miui.gallery.assistant.manager.result.AlgorithmResult;
import com.miui.gallery.assistant.manager.result.BatchAlgorithmResult;
import com.miui.gallery.assistant.manager.result.ClusteGroupResult;
import com.miui.gallery.assistant.model.ImageFeature;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.CardManager;
import com.miui.gallery.card.CardUtil;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.assistant.FlagUtil;
import com.miui.gallery.util.assistant.ImageUtil;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ImageFeatureManger {
    private final Runnable mImageDeleteRunnable;
    private final ImageFeatureReusedBitCache mImageFeatureReusedBitCache;
    private final Queue<ImageFileInfo> mImageFileInfoQueue;
    private volatile boolean mIsCaculating;
    private volatile int mProcessingCount;
    private final ThreadPoolExecutor mThreadPoolExecutor;

    private static final class ImageFeatureMangerHolder {
        private static final ImageFeatureManger INSTANCE = new ImageFeatureManger();
    }

    private static class ImageFileInfo {
        public final int algorithmFlags;
        public final long imageDateTime;
        public final long imageId;
        public final Listener<BatchAlgorithmResult> listener;
        public final String path;
        public final Priority priority;
        public final String sha1;

        public ImageFileInfo(Priority priority, long imageId, String sha1, long imageDateTime, String path, int algorithmFlags, Listener<BatchAlgorithmResult> listener) {
            this.priority = priority;
            this.imageId = imageId;
            this.sha1 = sha1;
            this.imageDateTime = imageDateTime;
            this.path = path;
            this.algorithmFlags = algorithmFlags;
            this.listener = listener;
        }
    }

    /* synthetic */ ImageFeatureManger(AnonymousClass1 x0) {
        this();
    }

    public static ImageFeatureManger getInstance() {
        return ImageFeatureMangerHolder.INSTANCE;
    }

    private ImageFeatureManger() {
        this.mImageFeatureReusedBitCache = new ImageFeatureReusedBitCache();
        this.mImageFileInfoQueue = new ConcurrentLinkedQueue();
        this.mProcessingCount = 0;
        this.mThreadPoolExecutor = new ThreadPoolExecutor(1, 2, 30, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
        this.mThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.mIsCaculating = false;
        this.mImageDeleteRunnable = new Runnable() {
            public void run() {
                ImageFeatureManger.this.deleteImageFromCard();
            }
        };
    }

    private void deleteImageFromCard() {
        this.mThreadPoolExecutor.execute(createImagesDeleteRunnable());
    }

    private Runnable createImagesDeleteRunnable() {
        return new Runnable() {
            public void run() {
                if (CardManager.isStoryFunctionEnable()) {
                    ImageFeatureManger.this.deleteImagesFromCard();
                }
            }
        };
    }

    private synchronized void deleteImagesFromCard() {
        List<ImageFeature> images = GalleryEntityManager.getInstance().query(ImageFeature.class, "imageId>0 AND version=2 AND imageType=2", null, null, null);
        if (MiscUtil.isValid(images)) {
            Log.d("ImageFeatureManger", "Delete %d images,search them in cards", Integer.valueOf(images.size()));
            List<String> sha1s = new ArrayList(images.size());
            for (ImageFeature imageFeature : images) {
                sha1s.add(imageFeature.getSha1());
            }
            if (MiscUtil.isValid(sha1s)) {
                CardManager.getInstance().onDeleteImages(sha1s);
            }
            ContentValues values = new ContentValues();
            values.put("imageType", Integer.valueOf(3));
            GalleryEntityManager.getInstance().update(ImageFeature.class, values, String.format("%s IN ('%s')", new Object[]{"sha1", TextUtils.join("','", sha1s)}), null);
        }
    }

    public void recordNewImage(long imageId, ContentValues values) {
        if (CardManager.isImageFeatureSelectionEnable()) {
            Integer type = values.getAsInteger("serverType");
            if (type != null && type.intValue() == 1) {
                String localFile = values.getAsString("localFile");
                if (!TextUtils.isEmpty(localFile)) {
                    String folderPath = FileUtils.getParentFolderPath(localFile);
                    if (!TextUtils.isEmpty(folderPath)) {
                        if (CloudUtils.getCameraLocalFile().equalsIgnoreCase(StorageUtils.getRelativePath(GalleryApp.sGetAndroidContext(), folderPath))) {
                            Log.d("ImageFeatureManger", "New camera file insert!");
                            ImageFeature imageFeature = new ImageFeature(imageId, values.getAsString("sha1"), values.getAsLong("mixedDateTime").longValue());
                            imageFeature.setImageType(1);
                            GalleryEntityManager.getInstance().insert((Entity) imageFeature);
                            Log.d("ImageFeatureManger", "insert image %d feature, image is New created", Long.valueOf(imageFeature.getImageId()));
                        }
                    }
                }
            }
        }
    }

    public void onImageDelete(String id) {
        try {
            onImageDelete(Long.parseLong(id));
        } catch (Throwable e) {
            Log.e("ImageFeatureManger", e);
        }
    }

    public void onImageDelete(long id) {
        if (ImageFeatureCacheManager.getInstance().onImageDelete(id)) {
            Log.d("ImageFeatureManger", "Image %s delete or add to secret, delete them in cards", Long.valueOf(id));
            ThreadManager.getWorkHandler().removeCallbacks(this.mImageDeleteRunnable);
            ThreadManager.getWorkHandler().postDelayed(this.mImageDeleteRunnable, 3000);
        }
    }

    public void triggerNewImageCalculation() {
        if (CardManager.isImageFeatureSelectionEnable() && !this.mIsCaculating) {
            this.mIsCaculating = true;
            this.mThreadPoolExecutor.execute(createNewImageCalculateRunnable());
        }
    }

    private Runnable createNewImageCalculateRunnable() {
        return new Runnable() {
            public void run() {
                ImageFeatureManger.this.scheduleNewImages();
            }
        };
    }

    private boolean scheduleNewImages() {
        if (MiscUtil.isAppProcessInForeground(GalleryApp.sGetAndroidContext()) && Sync.getPowerCanSync()) {
            Log.d("ImageFeatureManger", "Status meet,trigger new image feature calculation");
            List<ImageFeature> imageFeatureList = GalleryEntityManager.getInstance().query(ImageFeature.class, "imageType = 1 AND (resultFlag | " + Integer.toString(1) + " < 0" + " OR " + "clusterGroupId" + "=0" + ")" + " AND " + "imageDatetime" + ">" + (System.currentTimeMillis() - 86400000), null, "imageDatetime DESC", String.format(Locale.US, "%s,%s", new Object[]{Integer.valueOf(0), Integer.valueOf(20)}));
            if (MiscUtil.isValid(imageFeatureList)) {
                List<MediaFeatureItem> newImages = queryAndBindMediaItemsById(imageFeatureList);
                if (MiscUtil.isValid(newImages)) {
                    List<MediaFeatureItem> nearByImages = queryNearByMediaItems(((MediaFeatureItem) newImages.get(0)).getDateTime());
                    CardUtil.bindImageFeatures(nearByImages);
                    newImages.addAll(filterNearByImages(nearByImages));
                    calculateImageGroupWithAlgorithmAsync(Priority.PRIORITY_NORMAL, newImages, new Listener() {
                        public void onStart() {
                        }

                        public void onCancel() {
                            ImageFeatureManger.this.mIsCaculating = false;
                        }

                        public void onComputeComplete(AlgorithmResult result) {
                        }

                        public void onSaveComplete(AlgorithmResult result) {
                            ImageFeatureManger.this.mIsCaculating = false;
                        }
                    });
                    return markCaculateState(true);
                }
            }
        }
        return markCaculateState(false);
    }

    private boolean markCaculateState(boolean isCaculating) {
        Log.d("ImageFeatureManger", "New image Caculating : %b", Boolean.valueOf(isCaculating));
        this.mIsCaculating = isCaculating;
        return this.mIsCaculating;
    }

    public static List<MediaFeatureItem> filterNearByImages(List<MediaFeatureItem> nearByImages) {
        List<MediaFeatureItem> mediaFeatureItems = new LinkedList();
        if (MiscUtil.isValid(nearByImages)) {
            long lastGroupId = 0;
            for (MediaFeatureItem mediaFeatureItem : nearByImages) {
                ImageFeature imageFeature = mediaFeatureItem.getImageFeature();
                if (imageFeature != null) {
                    long groupId = imageFeature.getClusterGroupId();
                    if (groupId != 0) {
                        if (lastGroupId != 0) {
                            if (lastGroupId != groupId) {
                                break;
                            }
                            mediaFeatureItems.add(mediaFeatureItem);
                        } else {
                            lastGroupId = groupId;
                            mediaFeatureItems.add(mediaFeatureItem);
                        }
                    } else {
                        mediaFeatureItems.add(mediaFeatureItem);
                    }
                } else {
                    mediaFeatureItems.add(mediaFeatureItem);
                }
            }
        }
        return mediaFeatureItems;
    }

    private List<MediaFeatureItem> queryAndBindMediaItemsById(List<ImageFeature> imageFeatureList) {
        if (!MiscUtil.isValid(imageFeatureList)) {
            return null;
        }
        List<Long> imageIds = new ArrayList(imageFeatureList.size());
        final LongSparseArray<ImageFeature> imageFeatureLongSparseArray = new LongSparseArray(imageFeatureList.size());
        for (ImageFeature imageFeature : imageFeatureList) {
            imageIds.add(Long.valueOf(imageFeature.getImageId()));
            imageFeatureLongSparseArray.put(imageFeature.getImageId(), imageFeature);
        }
        return (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, MediaFeatureItem.PROJECTION, String.format("%s IN (%s)", new Object[]{"_id", TextUtils.join(",", imageIds)}), null, "mixedDateTime ASC", new QueryHandler<List<MediaFeatureItem>>() {
            public List<MediaFeatureItem> handle(Cursor cursor) {
                ArrayList<MediaFeatureItem> list = new ArrayList();
                if (cursor == null || !cursor.moveToFirst()) {
                    return list;
                }
                do {
                    MediaFeatureItem item = new MediaFeatureItem(cursor);
                    item.setImageFeature((ImageFeature) imageFeatureLongSparseArray.get(item.getId()));
                    list.add(item);
                } while (cursor.moveToNext());
                return list;
            }
        });
    }

    public static List<MediaFeatureItem> queryNearByMediaItems(long time) {
        return (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, MediaFeatureItem.PROJECTION, String.format("%s < %s AND %s > %s", new Object[]{"mixedDateTime", Long.valueOf(time), "mixedDateTime", Long.valueOf(time - 3600000)}), null, "mixedDateTime DESC", new QueryHandler<List<MediaFeatureItem>>() {
            public List<MediaFeatureItem> handle(Cursor cursor) {
                return MediaFeatureItem.getMediaFeatureItemsFromCursor(cursor);
            }
        });
    }

    public ClusteGroupResult calculateClusterGroupSync(List<MediaFeatureItem> mediaFeatureItems, boolean saveRuslt) {
        if (MiscUtil.isValid(mediaFeatureItems)) {
            return (ClusteGroupResult) new ClusterGroupRequest(Priority.PRIORITY_NORMAL, mediaFeatureItems, saveRuslt).executeSync();
        }
        return new ClusteGroupResult(3);
    }

    public void calculateClusterGroupAsync(List<MediaFeatureItem> mediaFeatureItems, boolean saveRuslt, Listener<ClusteGroupResult> listener) {
        if (MiscUtil.isValid(mediaFeatureItems)) {
            ClusterGroupRequest clusterGroupRequest = new ClusterGroupRequest(Priority.PRIORITY_NORMAL, mediaFeatureItems, saveRuslt);
            clusterGroupRequest.setMainThreadListener(listener);
            clusterGroupRequest.execute();
        }
    }

    public void handleImageFileWithAlgorithmAsync(Priority priority, long imageId, String sha1, long imageDateTime, String path, int algorithmFlags, Listener<BatchAlgorithmResult> listener) {
        Log.d("ImageFeatureManger", "handle Image %d With Algorithm Async", Long.valueOf(imageId));
        this.mImageFileInfoQueue.add(new ImageFileInfo(priority, imageId, sha1, imageDateTime, path, algorithmFlags, listener));
        schedule();
    }

    public void calculateImageGroupWithAlgorithmAsync(Priority priority, List<MediaFeatureItem> images, Listener listener) {
        if (MiscUtil.isValid(images)) {
            Log.d("ImageFeatureManger", "Calculate imageGroup with algorithm async,image count:%d", Integer.valueOf(images.size()));
            final int[] imageCount = new int[]{images.size()};
            final List<MediaFeatureItem> list = images;
            final Listener listener2 = listener;
            Listener<BatchAlgorithmResult> newListener = new Listener<BatchAlgorithmResult>() {
                public void onStart() {
                }

                public void onCancel() {
                    int[] iArr = imageCount;
                    iArr[0] = iArr[0] - 1;
                    if (imageCount[0] <= 0) {
                        ImageFeatureManger.this.calculateImageGroupAndSaveAsyncInternal(list, listener2);
                    }
                }

                public void onComputeComplete(BatchAlgorithmResult result) {
                }

                public void onSaveComplete(BatchAlgorithmResult result) {
                    int[] iArr = imageCount;
                    iArr[0] = iArr[0] - 1;
                    if (imageCount[0] <= 0) {
                        ImageFeatureManger.this.calculateImageGroupAndSaveAsyncInternal(list, listener2);
                    }
                }
            };
            for (MediaFeatureItem mediaFeatureItem : images) {
                int algorithmFlag = 0;
                if (mediaFeatureItem.getImageFeature() == null) {
                    algorithmFlag = 21;
                } else {
                    for (int flag : Algorithm.FLAG_ALL_ARRAY) {
                        if (!mediaFeatureItem.getImageFeature().isFeatureDone(flag)) {
                            algorithmFlag = FlagUtil.setFlag(algorithmFlag, flag);
                        }
                    }
                }
                if (algorithmFlag != 0) {
                    String path;
                    if (TextUtils.isEmpty(mediaFeatureItem.getOriginPath())) {
                        path = mediaFeatureItem.getThumbnailPath();
                    } else {
                        path = mediaFeatureItem.getOriginPath();
                    }
                    handleImageFileWithAlgorithmAsync(priority, mediaFeatureItem.getId(), mediaFeatureItem.getSha1(), mediaFeatureItem.getDateTime(), path, algorithmFlag, newListener);
                } else {
                    imageCount[0] = imageCount[0] - 1;
                }
            }
        } else if (listener != null) {
            listener.onCancel();
        }
    }

    private void calculateImageGroupAndSaveAsyncInternal(List<MediaFeatureItem> images, final Listener listener) {
        CardUtil.bindImageFeatures(images);
        calculateClusterGroupAsync(images, true, new Listener<ClusteGroupResult>() {
            public void onStart() {
            }

            public void onCancel() {
                if (listener != null) {
                    listener.onCancel();
                }
            }

            public void onComputeComplete(ClusteGroupResult result) {
                if (listener != null) {
                    listener.onComputeComplete(result);
                }
            }

            public void onSaveComplete(ClusteGroupResult result) {
                if (listener != null) {
                    listener.onSaveComplete(result);
                }
            }
        });
    }

    public synchronized BatchAlgorithmResult handleImageFileWithAlgorithmSync(Priority priority, long imageId, String sha1, long imageDateTime, String path, int algorithmFlags) {
        BatchAlgorithmResult result;
        if (TextUtils.isEmpty(path)) {
            result = new BatchAlgorithmResult(3, imageId);
        } else {
            Bitmap bitmap = getScaledBitmap(path);
            result = handleImageWithAlgorithmSync(priority, imageId, sha1, imageDateTime, bitmap, algorithmFlags);
            recycleBitmap(bitmap);
        }
        return result;
    }

    private void recycleBitmap(Bitmap bitmap) {
        this.mImageFeatureReusedBitCache.put(bitmap);
    }

    public BatchAlgorithmResult handleImageWithAlgorithmSync(Priority priority, long imageId, String sha1, long imageDateTime, Bitmap bitmap, int algorithmFlags) {
        BatchImageAlgorithmRequest batchImageAlgorithmRequest = getBatchImageAlgorithmRequest(priority, imageId, sha1, imageDateTime, bitmap, algorithmFlags);
        if (batchImageAlgorithmRequest != null) {
            return (BatchAlgorithmResult) batchImageAlgorithmRequest.executeSync();
        }
        return new BatchAlgorithmResult(3, imageId);
    }

    public void handleImageWithAlgorithmAsync(Priority priority, long imageId, String sha1, long imageDateTime, Bitmap bitmap, int algorithmFlags, Listener<BatchAlgorithmResult> listener) {
        BatchImageAlgorithmRequest batchImageAlgorithmRequest = getBatchImageAlgorithmRequest(priority, imageId, sha1, imageDateTime, bitmap, algorithmFlags);
        if (batchImageAlgorithmRequest != null) {
            batchImageAlgorithmRequest.setMainThreadListener(listener);
            batchImageAlgorithmRequest.execute();
        } else if (listener != null) {
            listener.onCancel();
        }
    }

    private synchronized void schedule() {
        if (this.mProcessingCount < 3) {
            final ImageFileInfo imageFileInfo = (ImageFileInfo) this.mImageFileInfoQueue.poll();
            if (imageFileInfo != null) {
                this.mProcessingCount++;
                this.mThreadPoolExecutor.execute(new Runnable() {
                    public void run() {
                        final Bitmap bitmap = ImageFeatureManger.this.getScaledBitmap(imageFileInfo.path);
                        ImageFeatureManger.this.handleImageWithAlgorithmAsync(imageFileInfo.priority, imageFileInfo.imageId, imageFileInfo.sha1, imageFileInfo.imageDateTime, bitmap, imageFileInfo.algorithmFlags, new Listener<BatchAlgorithmResult>() {
                            public void onStart() {
                                if (imageFileInfo.listener != null) {
                                    imageFileInfo.listener.onStart();
                                }
                            }

                            public void onCancel() {
                                if (imageFileInfo.listener != null) {
                                    imageFileInfo.listener.onCancel();
                                }
                                ImageFeatureManger.this.mProcessingCount = ImageFeatureManger.this.mProcessingCount - 1;
                                ImageFeatureManger.this.schedule();
                                ImageFeatureManger.this.recycleBitmap(bitmap);
                            }

                            public void onComputeComplete(BatchAlgorithmResult result) {
                                if (imageFileInfo.listener != null) {
                                    imageFileInfo.listener.onComputeComplete(result);
                                }
                                ImageFeatureManger.this.mProcessingCount = ImageFeatureManger.this.mProcessingCount - 1;
                                ImageFeatureManger.this.schedule();
                                ImageFeatureManger.this.recycleBitmap(bitmap);
                            }

                            public void onSaveComplete(BatchAlgorithmResult result) {
                                if (imageFileInfo.listener != null) {
                                    imageFileInfo.listener.onSaveComplete(result);
                                }
                            }
                        });
                    }
                });
            }
        }
    }

    private BatchImageAlgorithmRequest getBatchImageAlgorithmRequest(Priority priority, long imageId, String sha1, long imageDateTime, Bitmap bitmap, int algorithmFlags) {
        if (bitmap != null) {
            return new BatchImageAlgorithmRequest(priority, imageId, sha1, imageDateTime, bitmap, algorithmFlags);
        }
        return null;
    }

    private Bitmap getScaledBitmap(String path) {
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        Options options = new Options();
        options.inPreferredConfig = Config.ARGB_8888;
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(path, options);
            if (options.outWidth < 224 || options.outHeight < 224) {
                return null;
            }
            options.inSampleSize = ImageUtil.calculateInSampleSize(options, 400, 400);
            options.inJustDecodeBounds = false;
            options.inBitmap = this.mImageFeatureReusedBitCache.get(options);
            return BitmapFactory.decodeFile(path, options);
        } catch (Throwable e) {
            Log.e("ImageFeatureManger", e);
            return null;
        }
    }
}
