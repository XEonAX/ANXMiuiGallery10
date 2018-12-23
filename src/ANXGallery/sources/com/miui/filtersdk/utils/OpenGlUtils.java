package com.miui.filtersdk.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.Buffer;

public class OpenGlUtils {
    public static int loadTexture(Bitmap img, int usedTexId) {
        return loadTexture(img, usedTexId, false);
    }

    public static int loadTexture(Bitmap img, int usedTexId, boolean recyled) {
        if (img == null) {
            return -1;
        }
        int[] textures = new int[1];
        if (usedTexId == -1) {
            GLES20.glGenTextures(1, textures, 0);
            GLES20.glBindTexture(3553, textures[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLUtils.texImage2D(3553, 0, img, 0);
        } else {
            GLES20.glBindTexture(3553, usedTexId);
            GLUtils.texImage2D(3553, 0, img, 0);
            textures[0] = usedTexId;
        }
        if (recyled) {
            img.recycle();
        }
        return textures[0];
    }

    public static int loadTexture(Context context, String name) {
        int[] textureHandle = new int[1];
        GLES20.glGenTextures(1, textureHandle, 0);
        if (textureHandle[0] != 0) {
            Bitmap bitmap = getImageFromAssetsFile(context, name);
            GLES20.glBindTexture(3553, textureHandle[0]);
            GLES20.glTexParameteri(3553, 10240, 9729);
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glTexParameteri(3553, 10242, 33071);
            GLES20.glTexParameteri(3553, 10243, 33071);
            GLUtils.texImage2D(3553, 0, bitmap, 0);
            bitmap.recycle();
        }
        if (textureHandle[0] != 0) {
            return textureHandle[0];
        }
        Log.e("OpenGlUtils", String.format("loadTexture failed,path:%s", new Object[]{name}));
        return -1;
    }

    public static void loadYuvToTextures(Buffer channelY, Buffer channelUV, int width, int height, int[] yuvTextures) {
        if (channelY != null && channelUV != null && yuvTextures != null && yuvTextures.length >= 2) {
            if (yuvTextures[0] == -1) {
                GLES20.glGenTextures(1, yuvTextures, 0);
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, yuvTextures[0]);
                GLES20.glTexImage2D(3553, 0, 6409, width, height, 0, 6409, 5121, channelY);
                GLES20.glTexParameterf(3553, 10240, 9729.0f);
                GLES20.glTexParameterf(3553, 10241, 9729.0f);
                GLES20.glTexParameterf(3553, 10242, 33071.0f);
                GLES20.glTexParameterf(3553, 10243, 33071.0f);
            } else {
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, yuvTextures[0]);
                GLES20.glTexImage2D(3553, 0, 6409, width, height, 0, 6409, 5121, channelY);
            }
            if (yuvTextures[1] == -1) {
                GLES20.glGenTextures(1, yuvTextures, 1);
                GLES20.glActiveTexture(33985);
                GLES20.glBindTexture(3553, yuvTextures[1]);
                GLES20.glTexImage2D(3553, 0, 6410, width / 2, height / 2, 0, 6410, 5121, channelUV);
                GLES20.glTexParameterf(3553, 10240, 9729.0f);
                GLES20.glTexParameterf(3553, 10241, 9729.0f);
                GLES20.glTexParameterf(3553, 10242, 33071.0f);
                GLES20.glTexParameterf(3553, 10243, 33071.0f);
                return;
            }
            GLES20.glActiveTexture(33985);
            GLES20.glBindTexture(3553, yuvTextures[1]);
            GLES20.glTexImage2D(3553, 0, 6410, width / 2, height / 2, 0, 6410, 5121, channelUV);
        }
    }

    public static Bitmap getImageFromAssetsFile(Context context, String fileName) {
        Bitmap image = null;
        InputStream is = null;
        try {
            is = context.getResources().getAssets().open(fileName);
            image = BitmapFactory.decodeStream(is);
            is.close();
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e22) {
                    e22.printStackTrace();
                }
            }
        } catch (Throwable th) {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e222) {
                    e222.printStackTrace();
                }
            }
        }
        return image;
    }

    public static int loadProgram(String strVSource, String strFSource) {
        int[] link = new int[1];
        int iVShader = loadShader(strVSource, 35633);
        if (iVShader == 0) {
            Log.d("Load Program", "Vertex Shader Failed");
            return 0;
        }
        int iFShader = loadShader(strFSource, 35632);
        if (iFShader == 0) {
            Log.d("Load Program", "Fragment Shader Failed");
            return 0;
        }
        int iProgId = GLES20.glCreateProgram();
        GLES20.glAttachShader(iProgId, iVShader);
        GLES20.glAttachShader(iProgId, iFShader);
        GLES20.glLinkProgram(iProgId);
        GLES20.glGetProgramiv(iProgId, 35714, link, 0);
        if (link[0] <= 0) {
            Log.d("Load Program", "Linking Failed");
            return 0;
        }
        GLES20.glDeleteShader(iVShader);
        GLES20.glDeleteShader(iFShader);
        return iProgId;
    }

    private static int loadShader(String strSource, int iType) {
        int[] compiled = new int[1];
        int iShader = GLES20.glCreateShader(iType);
        GLES20.glShaderSource(iShader, strSource);
        GLES20.glCompileShader(iShader);
        GLES20.glGetShaderiv(iShader, 35713, compiled, 0);
        if (compiled[0] != 0) {
            return iShader;
        }
        Log.e("Load Shader Failed", "Compilation\n" + GLES20.glGetShaderInfoLog(iShader));
        return 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x002a A:{SYNTHETIC, Splitter: B:22:0x002a} */
    public static android.graphics.Bitmap getImageFromPath(java.lang.String r5) {
        /*
        r1 = 0;
        r2 = 0;
        r3 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0018 }
        r3.<init>(r5);	 Catch:{ IOException -> 0x0018 }
        r1 = android.graphics.BitmapFactory.decodeStream(r3);	 Catch:{ IOException -> 0x0036, all -> 0x0033 }
        if (r3 == 0) goto L_0x0039;
    L_0x000d:
        r3.close();	 Catch:{ IOException -> 0x0012 }
        r2 = r3;
    L_0x0011:
        return r1;
    L_0x0012:
        r0 = move-exception;
        r0.printStackTrace();
        r2 = r3;
        goto L_0x0011;
    L_0x0018:
        r0 = move-exception;
    L_0x0019:
        r0.printStackTrace();	 Catch:{ all -> 0x0027 }
        if (r2 == 0) goto L_0x0011;
    L_0x001e:
        r2.close();	 Catch:{ IOException -> 0x0022 }
        goto L_0x0011;
    L_0x0022:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x0011;
    L_0x0027:
        r4 = move-exception;
    L_0x0028:
        if (r2 == 0) goto L_0x002d;
    L_0x002a:
        r2.close();	 Catch:{ IOException -> 0x002e }
    L_0x002d:
        throw r4;
    L_0x002e:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x002d;
    L_0x0033:
        r4 = move-exception;
        r2 = r3;
        goto L_0x0028;
    L_0x0036:
        r0 = move-exception;
        r2 = r3;
        goto L_0x0019;
    L_0x0039:
        r2 = r3;
        goto L_0x0011;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.filtersdk.utils.OpenGlUtils.getImageFromPath(java.lang.String):android.graphics.Bitmap");
    }
}
