package com.miui.gallery.collage;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.DisplayMetrics;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.miui.gallery.editor.photo.utils.Bitmaps;
import com.miui.gallery.editor.photo.utils.IoUtils;
import com.miui.gallery.util.Log;
import java.io.IOException;
import java.io.InputStream;

public class CollageUtils {
    public static Drawable getDrawableByAssets(Resources res, String path) {
        Drawable drawable;
        InputStream inputStream = null;
        try {
            inputStream = res.getAssets().open(path);
            drawable = Drawable.createFromStream(inputStream, null);
        } catch (IOException e) {
            drawable = null;
            Log.e("CollageUtils", "load poster element img fail ! path %s", (Object) path);
        } finally {
            IoUtils.close("CollageUtils", inputStream);
        }
        return drawable;
    }

    static String loadResourceFileString(AssetManager assetManager, String name) {
        String result = null;
        InputStream inputStream = null;
        try {
            inputStream = assetManager.open(name);
            result = IoUtils.readInputStreamToString("CollageUtils", inputStream);
        } catch (Throwable e) {
            Log.e("CollageUtils", e);
        } finally {
            IoUtils.close(inputStream);
        }
        return result;
    }

    public static Bitmap loadSuitableBitmapFromUri(Context context, Uri uri) {
        try {
            DisplayMetrics dm = context.getResources().getDisplayMetrics();
            Options opt = new Options();
            opt.inJustDecodeBounds = true;
            Bitmaps.decodeUri(context, uri, opt);
            int scale = Math.max(Math.max(opt.outHeight / dm.heightPixels, opt.outWidth / dm.widthPixels), 1);
            opt.inJustDecodeBounds = false;
            opt.inMutable = true;
            opt.inSampleSize = Integer.highestOneBit(scale) << 1;
            return Bitmaps.joinExif(Bitmaps.decodeUri(context, uri, opt), Bitmaps.readExif(context, uri), opt);
        } catch (Throwable e) {
            Log.e("CollageUtils", e);
            return null;
        }
    }

    public static Gson generateCustomGson() {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.registerTypeAdapter(CollagePositionModel.class, new CustomDeserializer());
        return gsonBuilder.create();
    }
}
