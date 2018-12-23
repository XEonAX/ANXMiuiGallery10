package com.miui.gallery.util;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.uil.CloudImageHolder;
import com.miui.gallery.util.uil.CloudImageLoader;
import com.miui.gallery.util.uil.CloudImageLoadingListener;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;

public class BindImageHelper {

    public interface OnImageLoadingCompleteListener {
        void onLoadingComplete();

        void onLoadingFailed();
    }

    public static void bindImage(String localPath, Uri downloadUri, DownloadType type, ImageView view, DisplayImageOptions displayImageOptions, ImageSize imageSize) {
        bindImage(localPath, downloadUri, type, view, displayImageOptions, imageSize, null);
    }

    public static void bindImage(String localPath, Uri downloadUri, DownloadType type, ImageView view, DisplayImageOptions displayImageOptions, ImageSize imageSize, RectF decodeRegion) {
        bindImage(localPath, downloadUri, type, view, displayImageOptions, imageSize, decodeRegion, true, true);
    }

    public static void bindImage(String localPath, Uri downloadUri, DownloadType type, ImageView view, DisplayImageOptions displayImageOptions, ImageSize imageSize, RectF decodeRegion, boolean delayRequest, boolean showDownloadingImage) {
        bindImage(localPath, downloadUri, type, view, displayImageOptions, imageSize, decodeRegion, delayRequest, showDownloadingImage, null);
    }

    public static void bindImage(String localPath, Uri downloadUri, DownloadType type, ImageView view, DisplayImageOptions displayImageOptions, ImageSize imageSize, RectF decodeRegion, boolean delayRequest, boolean showDownloadingImage, OnImageLoadingCompleteListener listener) {
        if (view == null) {
            Log.e("BindImageHelper", "bindImage view is null");
            return;
        }
        setCloudHolder(downloadUri, type, view, displayImageOptions, imageSize, decodeRegion, delayRequest, showDownloadingImage, listener);
        if (TextUtils.isEmpty(localPath)) {
            bindCloudImage(view);
            return;
        }
        ImageLoadingListener imageLoadingListener;
        ImageLoader instance = ImageLoader.getInstance();
        String wrap = Scheme.FILE.wrap(localPath);
        ImageAware imageViewAware = new ImageViewAware(view);
        if (downloadUri == null) {
            imageLoadingListener = null;
        } else {
            imageLoadingListener = getLocalLoadingListener(view, listener);
        }
        instance.displayImage(wrap, imageViewAware, displayImageOptions, imageSize, imageLoadingListener, null, decodeRegion);
    }

    public static void bindFaceImage(String localPath, Uri downloadUri, ImageView view, DisplayImageOptions options, ImageSize imageSize, RectF decodeRegion, boolean delayRequest) {
        bindImage(localPath, downloadUri, DownloadType.THUMBNAIL, view, options, imageSize, decodeRegion);
        if (!TextUtils.isEmpty(localPath) && localPath.indexOf("MIUI/Gallery/cloud/.microthumbnailFile") != -1) {
            bindImage(null, downloadUri, DownloadType.THUMBNAIL, view, options, imageSize, decodeRegion, delayRequest, false);
        }
    }

    private static void bindCloudImage(ImageView view) {
        if (view == null) {
            Log.e("BindImageHelper", "bindCloudImage view is null");
            return;
        }
        CloudImageHolder imageHolder = CloudImageHolder.getImageHolder(view);
        Log.i("BindImageHelper", "downloadImage %s", imageHolder.getUri());
        if (imageHolder.getUri() != null) {
            CloudImageLoader.getInstance().displayImage(imageHolder.getUri(), imageHolder.getImageType(), view, imageHolder.getDisplayImageOptions(), imageHolder.getImageSize(), imageHolder.getImageLoadingListener(), imageHolder.getImageLoadingProgressListener(), imageHolder.getRegionDecodeRect(), imageHolder.isDelayRequest(), imageHolder.isShowLoadingImage());
        }
    }

    private static void setCloudHolder(Uri downloadUri, DownloadType type, ImageView view, DisplayImageOptions displayImageOptions, ImageSize imageSize, RectF regionRect, boolean delayRequest, boolean showDownloadingImage, final OnImageLoadingCompleteListener listener) {
        CloudImageHolder holder = CloudImageHolder.getImageHolder(view);
        holder.setUri(downloadUri).setImageType(type).setDisplayImageOptions(displayImageOptions).setImageSize(imageSize).setRegionDecodeRect(regionRect).setNeedDisplay(true).setDelayRequest(delayRequest).setShowLoadingImage(showDownloadingImage);
        if (listener != null) {
            holder.setImageLoadingListener(new CloudImageLoadingListener() {
                public void onLoadingStarted(Uri uri, DownloadType type, View view) {
                }

                public void onLoadingFailed(Uri uri, DownloadType type, View view, ErrorCode code) {
                    listener.onLoadingFailed();
                }

                public void onLoadingComplete(Uri uri, DownloadType type, View view, Bitmap loadedImage) {
                    listener.onLoadingComplete();
                }

                public void onDownloadComplete(Uri uri, DownloadType type, View view, String filePath) {
                }

                public void onLoadingCancelled(Uri uri, DownloadType type, View view) {
                }
            });
        }
    }

    private static ImageLoadingListener getLocalLoadingListener(ImageView view, final OnImageLoadingCompleteListener listener) {
        AnonymousClass2 obj = view.getTag(R.id.tag_local_loading_listener);
        if (obj == null) {
            obj = new ImageLoadingListener() {
                public void onLoadingStarted(String imageUri, View view) {
                }

                public void onLoadingFailed(String imageUri, final View view, FailReason failReason) {
                    if (view != null) {
                        Runnable runnable = new Runnable() {
                            public void run() {
                                if (view != null) {
                                    BindImageHelper.bindCloudImage((ImageView) view);
                                }
                            }
                        };
                        if (Looper.myLooper() == Looper.getMainLooper()) {
                            runnable.run();
                        } else {
                            ThreadManager.getMainHandler().post(runnable);
                        }
                    }
                    if (listener != null) {
                        listener.onLoadingFailed();
                    }
                }

                public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
                    if (listener != null) {
                        listener.onLoadingComplete();
                    }
                }

                public void onLoadingCancelled(String imageUri, View view) {
                }
            };
            view.setTag(R.id.tag_local_loading_listener, obj);
        }
        return obj;
    }
}
