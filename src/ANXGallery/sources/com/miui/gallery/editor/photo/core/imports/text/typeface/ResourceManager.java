package com.miui.gallery.editor.photo.core.imports.text.typeface;

import android.content.res.AssetManager;
import android.util.Log;
import com.miui.gallery.editor.photo.utils.IoUtils;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import org.json.JSONObject;

public class ResourceManager {
    private static String TAG = "ResourceManager";

    public ArrayList<JSONObject> loadAllResourceFromAssets(AssetManager assetManager, String pathName) {
        IOException e;
        ArrayList<JSONObject> results = null;
        if (assetManager == null) {
            return null;
        }
        try {
            String[] indexFiles = assetManager.list(pathName);
            if (indexFiles == null) {
                return null;
            }
            int length = indexFiles.length;
            int i = 0;
            ArrayList<JSONObject> results2 = null;
            while (i < length) {
                try {
                    JSONObject object = loadResourceFromAssets(assetManager, pathName + File.separator + indexFiles[i]);
                    if (object != null) {
                        if (results2 == null) {
                            results = new ArrayList();
                        } else {
                            results = results2;
                        }
                        results.add(object);
                    } else {
                        results = results2;
                    }
                    i++;
                    results2 = results;
                } catch (IOException e2) {
                    e = e2;
                    results = results2;
                    Log.e(TAG, "loadAllResourceFromAssetsF failed : " + e.toString());
                    return results;
                }
            }
            return results2;
        } catch (IOException e3) {
            e = e3;
        }
    }

    public JSONObject loadResourceFromAssets(AssetManager assetManager, String fileName) {
        try {
            String indexJsonString = loadResourceFileString(assetManager.open(fileName));
            if (indexJsonString != null) {
                return new JSONObject(indexJsonString);
            }
            Log.d("loadResourceFromAssets", "" + indexJsonString);
            return null;
        } catch (Exception e) {
            Log.e(TAG, "loadResourceFromAssets error :" + e.toString());
        }
    }

    private String loadResourceFileString(InputStream is) {
        IOException e;
        Throwable th;
        BufferedInputStream bis = null;
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        try {
            byte[] buffer = new byte[1024];
            BufferedInputStream bis2 = new BufferedInputStream(is);
            try {
                for (int readLength = bis2.read(buffer); readLength != -1; readLength = bis2.read(buffer)) {
                    baos.write(buffer, 0, readLength);
                }
                String byteArrayOutputStream = baos.toString();
                IoUtils.close(TAG, bis2);
                IoUtils.close(TAG, baos);
                bis = bis2;
                return byteArrayOutputStream;
            } catch (IOException e2) {
                e = e2;
                bis = bis2;
                try {
                    Log.e(TAG, "load resource file failed : " + e.toString());
                    IoUtils.close(TAG, bis);
                    IoUtils.close(TAG, baos);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    IoUtils.close(TAG, bis);
                    IoUtils.close(TAG, baos);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bis = bis2;
                IoUtils.close(TAG, bis);
                IoUtils.close(TAG, baos);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            Log.e(TAG, "load resource file failed : " + e.toString());
            IoUtils.close(TAG, bis);
            IoUtils.close(TAG, baos);
            return null;
        }
    }
}
