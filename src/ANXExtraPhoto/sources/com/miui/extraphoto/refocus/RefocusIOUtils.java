package com.miui.extraphoto.refocus;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.text.TextUtils;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class RefocusIOUtils {
    private static final String EXTERNAL_SDCARD_PREFIX = "/storage/%s";
    private static final String TAG = "RefocusIOUtils";

    public static String loadResourceFileString(AssetManager assetManager, String name) {
        String result = null;
        InputStream inputStream = null;
        try {
            inputStream = assetManager.open(name);
            result = readInputStreamToString(TAG, inputStream, "UTF-8");
        } catch (IOException e) {
            Log.e(TAG, "", e);
        } catch (Throwable th) {
            close(TAG, inputStream);
        }
        close(TAG, inputStream);
        return result;
    }

    private static String readInputStreamToString(String tag, InputStream inputStream, String charsetName) {
        String s = null;
        ByteArrayOutputStream result = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        while (true) {
            try {
                int read = inputStream.read(buffer);
                int length = read;
                if (read == -1) {
                    break;
                }
                result.write(buffer, 0, length);
            } catch (IOException e) {
                Log.e(tag, "", e);
            } catch (Throwable th) {
                close(tag, inputStream);
                close(tag, result);
            }
        }
        s = result.toString(charsetName);
        close(tag, inputStream);
        close(tag, result);
        return s;
    }

    public static void close(String tag, Closeable closable) {
        if (closable != null) {
            try {
                closable.close();
                return;
            } catch (IOException e) {
                Log.w(tag, e);
                return;
            }
        }
        Log.d(tag, "res is null");
    }

    public static void dumpBitmapToFile(Bitmap bitmap, String name, Context context) {
        FileOutputStream fileOutputStream = null;
        try {
            fileOutputStream = new FileOutputStream(new File(context.getExternalFilesDir(null), name));
            bitmap.compress(CompressFormat.JPEG, 100, fileOutputStream);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (Throwable th) {
            close(TAG, fileOutputStream);
        }
        close(TAG, fileOutputStream);
    }

    public static String getWritablePath(String src, Context context) {
        if (VERSION.SDK_INT < 28) {
            return src;
        }
        StorageManager storageManager = (StorageManager) context.getSystemService("storage");
        if (storageManager == null) {
            return src;
        }
        StorageVolume storageVolume = storageManager.getStorageVolume(new File(src));
        if (storageVolume == null || storageVolume.isPrimary()) {
            return src;
        }
        String uuid = storageVolume.getUuid();
        if (TextUtils.isEmpty(uuid)) {
            return src;
        }
        return getWritablePath(src, uuid);
    }

    private static String getWritablePath(String src, String uuid) {
        String externalPrefix = String.format(EXTERNAL_SDCARD_PREFIX, new Object[]{uuid});
        if (src.startsWith(externalPrefix)) {
            return src.replace(externalPrefix, Environment.getExternalStorageDirectory().getAbsolutePath());
        }
        return src;
    }
}
