package com.miui.gallery.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.ParcelFileDescriptor;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.support.v4.provider.DocumentFile;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.preference.GalleryPreferences.DocumentProvider;
import com.miui.gallery.ui.AlertDialogFragment.Builder;
import com.miui.gallery.ui.DocumentsUIFragment;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class DocumentProviderUtils {

    public interface WriteHandler<T> {
        T handle(InputStream inputStream, FileOutputStream fileOutputStream);
    }

    public static boolean needUseDocumentProvider(String path) {
        return VERSION.SDK_INT >= 28 && StorageUtils.isInSecondaryStorage(path);
    }

    public static boolean needRequestExternalSDCardPermission(Context context) {
        if (VERSION.SDK_INT >= 28 && StorageUtils.hasExternalSDCard(context) && TextUtils.isEmpty(DocumentProvider.getExternalSDCardUri())) {
            return true;
        }
        return false;
    }

    @TargetApi(24)
    public static void startFirstEntrancyPermissionActivityForResult(Activity activity) {
        if (activity == null) {
            Log.d("DocumentProviderUtils", "startExtSDCardPermissionActivityForResult activity null");
        } else {
            startPermissionActivityForResult(activity, StorageUtils.getSecondaryStoragePath(), 49, 49);
        }
    }

    @TargetApi(24)
    public static void startExtSDCardPermissionActivityForResult(Activity activity) {
        String filePath = StorageUtils.getSecondaryStoragePath();
        if (activity != null && !TextUtils.isEmpty(filePath) && needRequestExternalSDCardPermission(activity)) {
            if (DocumentProvider.getExternalSDCardUri() != null) {
                DocumentProvider.setOpenExternalDocumentCount(0);
            }
            startPermissionActivityForResult(activity, filePath, 47, 48);
        }
    }

    public static void handleRequestPermissionResult(Activity activity, int requestCode, int resultCode, Intent data) {
        if (activity != null) {
            if (requestCode == 49) {
                DocumentProvider.setFirstEntrance(false);
                if (resultCode == -1 && isUriExternalSDCardRoot(data.getData())) {
                    handleRequestSucceed(activity, data);
                    GallerySamplingStatHelper.recordStringPropertyEvent("document_provider_permission_request", "document_provider_first_entrance", String.valueOf(true));
                    return;
                }
                firstEntrancyPermFailed(activity);
                GallerySamplingStatHelper.recordStringPropertyEvent("document_provider_permission_request", "document_provider_first_entrance", String.valueOf(false));
            } else if (requestCode == 47) {
                if (resultCode == -1) {
                    handleRequestSucceed(activity, data);
                    GallerySamplingStatHelper.recordStringPropertyEvent("document_provider_permission_request", "document_provider_permission_requested", String.valueOf(true));
                    return;
                }
                increaseAccessIntentCount();
                showOperationFailedDialog(activity);
                GallerySamplingStatHelper.recordStringPropertyEvent("document_provider_permission_request", "document_provider_permission_requested", String.valueOf(false));
            } else if (requestCode != 48) {
            } else {
                if (resultCode == -1 && isUriExternalSDCardRoot(data.getData())) {
                    handleRequestSucceed(activity, data);
                    GallerySamplingStatHelper.recordStringPropertyEvent("document_provider_permission_request", "document_provider_permission_requested", String.valueOf(true));
                    return;
                }
                showOperationFailedDialog(activity);
                GallerySamplingStatHelper.recordStringPropertyEvent("document_provider_permission_request", "document_provider_permission_requested", String.valueOf(false));
            }
        }
    }

    public static DocumentFile getDocumentFile(Context context, File file) {
        return getDocumentFileOrDir(context, file, false);
    }

    public static DocumentFile getDocumentFileDirectory(Context context, File file) {
        return getDocumentFileOrDir(context, file, true);
    }

    public static <T> T safeWriteFile(InputStream inputStream, File outFile, WriteHandler<T> writerHandler) throws IOException {
        ParcelFileDescriptor pfd = null;
        IOException e;
        try {
            FileOutputStream out;
            if (needUseDocumentProvider(outFile.getAbsolutePath())) {
                DocumentFile destDocumentFile = getDocumentFile(GalleryApp.sGetAndroidContext(), outFile);
                if (destDocumentFile == null) {
                    String message = "failed to get document file";
                    e = new IOException(message);
                    Log.e("DocumentProviderUtils", message);
                    throw e;
                }
                pfd = GalleryApp.sGetAndroidContext().getContentResolver().openFileDescriptor(destDocumentFile.getUri(), "w");
                out = new FileOutputStream(pfd.getFileDescriptor());
            } else {
                out = new FileOutputStream(outFile);
            }
            T handle = writerHandler.handle(inputStream, out);
            MiscUtil.closeSilently(out);
            MiscUtil.closeSilently(pfd);
            return handle;
        } catch (IOException e2) {
            throw e2;
        } catch (Throwable th) {
            MiscUtil.closeSilently(null);
            MiscUtil.closeSilently(null);
        }
    }

    private static void startPermissionActivityForResult(Activity activity, String filePath, int requestCodeForAccessIntent, int requestCodeForDocumentTree) {
        if (DocumentProvider.getOpenExternalDocumentCount() < 2) {
            createAccessIntent(activity, filePath, requestCodeForAccessIntent);
        } else {
            startDocumentTreeIntent(activity, requestCodeForDocumentTree);
        }
    }

    private static void firstEntrancyPermFailed(Activity activity) {
        increaseAccessIntentCount();
        new Builder().setCancelable(false).setTitle(activity.getResources().getString(R.string.ext_sdcard_first_entrance_request_failed_title)).setMessage(activity.getResources().getString(R.string.ext_sdcard_first_entrance_request_failed_text)).setPositiveButton(activity.getResources().getString(R.string.ext_sdcard_request_failed_button_text), new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                StorageUtils.setPriorStorage(false);
            }
        }).create().showAllowingStateLoss(activity.getFragmentManager(), "DocumentProviderUtils");
    }

    private static void showOperationFailedDialog(Activity activity) {
        new Builder().setCancelable(false).setTitle(activity.getResources().getString(R.string.ext_sdcard_operation_failed_title)).setMessage(activity.getResources().getString(R.string.ext_sdcard_operation_failed_text)).setPositiveButton(activity.getResources().getString(R.string.ext_sdcard_request_failed_button_text), null).create().showAllowingStateLoss(activity.getFragmentManager(), "DocumentProviderUtils");
    }

    private static void handleRequestSucceed(Activity activity, Intent data) {
        persistDocumentProviderUri(activity, data);
        ToastUtils.makeText((Context) activity, activity.getResources().getString(R.string.ext_sdcard_request_succeed_toast_text));
    }

    private static void increaseAccessIntentCount() {
        DocumentProvider.setOpenExternalDocumentCount(DocumentProvider.getOpenExternalDocumentCount() + 1);
    }

    private static boolean isUriExternalSDCardRoot(Uri chosenUri) {
        if (StorageUtils.hasExternalSDCard(GalleryApp.sGetAndroidContext())) {
            String sdCardPath = StorageUtils.getSecondaryStoragePath();
            DocumentFile chosenFile = DocumentFile.fromTreeUri(GalleryApp.sGetAndroidContext(), chosenUri);
            String displayname = ".miuigallery" + System.currentTimeMillis();
            DocumentFile testFile = chosenFile.createFile("any/any", displayname);
            if (new File(sdCardPath, displayname).exists()) {
                testFile.delete();
                return true;
            }
        }
        return false;
    }

    private static void persistDocumentProviderUri(Context context, Intent data) {
        Uri uri = data.getData();
        if (uri != null) {
            try {
                context.getContentResolver().takePersistableUriPermission(uri, 3);
                DocumentProvider.setExternalSDCardUri(uri.toString());
            } catch (Throwable e) {
                Log.e("DocumentProviderUtils", e);
            }
        }
    }

    private static DocumentFile getDocumentFileOrDir(Context context, File file, boolean isDir) {
        if (context == null) {
            Log.d("DocumentProviderUtils", "getDocumentFileOrDir context null");
            return null;
        }
        String baseFolder = StorageUtils.getVolumePath(context, file.getAbsolutePath());
        if (baseFolder == null) {
            Log.d("DocumentProviderUtils", "getDocumentFileOrDir basefolder null");
            return null;
        }
        boolean originalDirectory = false;
        String relativePath = StorageUtils.getRelativePath(context, file.getAbsolutePath());
        if (relativePath == StorageUtils.KEY_FOR_EMPTY_RELATIVE_PATH) {
            originalDirectory = true;
        }
        String uri = DocumentProvider.getUri(baseFolder);
        if (TextUtils.isEmpty(uri)) {
            return null;
        }
        DocumentFile volumeDocument = DocumentFile.fromTreeUri(context, Uri.parse(uri));
        if (originalDirectory) {
            return volumeDocument;
        }
        String mimeType = FileMimeUtil.getMimeType(file.getAbsolutePath());
        String[] parts = relativePath.split(File.separator);
        int i = 0;
        while (i < parts.length) {
            try {
                DocumentFile nextDocument = findFileIgnoreCase(volumeDocument, parts[i]);
                if (nextDocument == null) {
                    if (i < parts.length - 1 || file.isDirectory() || isDir) {
                        nextDocument = volumeDocument.createDirectory(parts[i]);
                        if (nextDocument == null) {
                            return null;
                        }
                    } else {
                        nextDocument = volumeDocument.createFile(mimeType, parts[i]);
                    }
                }
                volumeDocument = nextDocument;
                i++;
            } catch (Throwable e) {
                Log.e("DocumentProviderUtils", e);
                return null;
            }
        }
        return volumeDocument;
    }

    private static DocumentFile findFileIgnoreCase(DocumentFile rootDoc, String displayName) {
        for (DocumentFile doc : rootDoc.listFiles()) {
            if (displayName.equalsIgnoreCase(doc.getName())) {
                return doc;
            }
        }
        return null;
    }

    @TargetApi(24)
    private static void createAccessIntent(final Activity activity, String filePath, final int requestCode) {
        StorageVolume volume = ((StorageManager) activity.getSystemService("storage")).getStorageVolume(new File(filePath));
        if (volume == null) {
            firstEntrancyPermFailed(activity);
            return;
        }
        final Intent intent = volume.createAccessIntent(null);
        new Builder().setCancelable(false).setTitle(activity.getString(R.string.ext_sdcard_permission_request_title)).setMessage(activity.getString(R.string.ext_sdcard_permission_request_reason)).setPositiveButton(activity.getString(R.string.ext_sdcard_permission_request_button_text), new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                activity.startActivityForResult(intent, requestCode);
            }
        }).create().showAllowingStateLoss(activity.getFragmentManager(), "DocumentProviderUtils");
    }

    private static void startDocumentTreeIntent(Activity activity, int requestCode) {
        if (activity != null) {
            DocumentsUIFragment.newInstance(1, requestCode).showAllowingStateLoss(activity.getFragmentManager(), "DocumentsUIFragment");
        }
    }
}
