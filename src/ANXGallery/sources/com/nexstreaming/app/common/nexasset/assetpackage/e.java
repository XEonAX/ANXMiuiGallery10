package com.nexstreaming.app.common.nexasset.assetpackage;

import android.content.Context;
import android.graphics.Bitmap;
import java.io.IOException;

/* compiled from: IconHelper */
public class e {
    public static Bitmap a(Context context, f fVar, int i, int i2) throws IOException {
        return a(context, fVar, fVar.getIconPath(), i, i2);
    }

    public static Bitmap b(Context context, f fVar, int i, int i2) throws IOException {
        return a(context, fVar, fVar.getThumbPath(), i, i2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0104  */
    private static android.graphics.Bitmap a(android.content.Context r9, com.nexstreaming.app.common.nexasset.assetpackage.f r10, java.lang.String r11, int r12, int r13) throws java.io.IOException {
        /*
        r0 = r10.getAssetPackage();
        r1 = r10.getPackageURI();
        r0 = r0.getAssetId();
        r0 = com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader.a(r9, r1, r0);
        r3 = r0.a(r11);	 Catch:{ FileNotFoundException -> 0x008b }
        r1 = 0;
        r2 = 0;
        r0 = java.util.Locale.ENGLISH;	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r0 = r11.toLowerCase(r0);	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r4 = ".svg";
        r0 = r0.endsWith(r4);	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        if (r0 == 0) goto L_0x00e6;
    L_0x0024:
        r0 = com.larvalabs.svgandroid.SVGParser.a(r3);	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r4 = r0.b();	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        if (r12 <= 0) goto L_0x008e;
    L_0x002e:
        if (r13 <= 0) goto L_0x008e;
    L_0x0030:
        r0 = (float) r12;	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r5 = r4.getWidth();	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r5 = (float) r5;	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r0 = r0 / r5;
        r5 = r4.getHeight();	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r5 = (float) r5;	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r0 = r0 * r5;
        r5 = (int) r0;	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r0 = android.graphics.Bitmap.Config.ARGB_8888;	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r1 = android.graphics.Bitmap.createBitmap(r12, r5, r0);	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r0 = new android.graphics.Canvas;	 Catch:{ Exception -> 0x0141, all -> 0x012e }
        r0.<init>(r1);	 Catch:{ Exception -> 0x0141, all -> 0x012e }
        r2 = new android.graphics.RectF;	 Catch:{ Exception -> 0x00a5, all -> 0x0133 }
        r6 = 0;
        r7 = 0;
        r8 = (float) r12;	 Catch:{ Exception -> 0x00a5, all -> 0x0133 }
        r5 = (float) r5;	 Catch:{ Exception -> 0x00a5, all -> 0x0133 }
        r2.<init>(r6, r7, r8, r5);	 Catch:{ Exception -> 0x00a5, all -> 0x0133 }
        r0.drawPicture(r4, r2);	 Catch:{ Exception -> 0x00a5, all -> 0x0133 }
    L_0x0055:
        r6 = r1;
    L_0x0056:
        r3.close();
        r1 = r10.getCategory();
        r2 = com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory.transition;
        if (r1 != r2) goto L_0x008a;
    L_0x0061:
        r5 = new android.graphics.Paint;
        r5.<init>();
        if (r0 != 0) goto L_0x006d;
    L_0x0068:
        r0 = new android.graphics.Canvas;
        r0.<init>(r6);
    L_0x006d:
        r1 = -1;
        r5.setColor(r1);
        r1 = new android.graphics.PorterDuffXfermode;
        r2 = android.graphics.PorterDuff.Mode.SRC_IN;
        r1.<init>(r2);
        r5.setXfermode(r1);
        r1 = 0;
        r2 = 0;
        r3 = r6.getWidth();
        r3 = (float) r3;
        r4 = r6.getHeight();
        r4 = (float) r4;
        r0.drawRect(r1, r2, r3, r4, r5);
    L_0x008a:
        return r6;
    L_0x008b:
        r0 = move-exception;
        r6 = 0;
        goto L_0x008a;
    L_0x008e:
        r0 = r4.getWidth();	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r5 = r4.getHeight();	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r6 = android.graphics.Bitmap.Config.ARGB_8888;	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r1 = android.graphics.Bitmap.createBitmap(r0, r5, r6);	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r0 = new android.graphics.Canvas;	 Catch:{ Exception -> 0x0141, all -> 0x012e }
        r0.<init>(r1);	 Catch:{ Exception -> 0x0141, all -> 0x012e }
        r4.draw(r0);	 Catch:{ Exception -> 0x00a5, all -> 0x0133 }
        goto L_0x0055;
    L_0x00a5:
        r2 = move-exception;
        r6 = r1;
        r1 = r2;
    L_0x00a8:
        r2 = "IconHelper";
        r4 = r1.getMessage();	 Catch:{ all -> 0x0137 }
        android.util.Log.e(r2, r4, r1);	 Catch:{ all -> 0x0137 }
        r3.close();
        r1 = r10.getCategory();
        r2 = com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory.transition;
        if (r1 != r2) goto L_0x008a;
    L_0x00bc:
        r5 = new android.graphics.Paint;
        r5.<init>();
        if (r0 != 0) goto L_0x00c8;
    L_0x00c3:
        r0 = new android.graphics.Canvas;
        r0.<init>(r6);
    L_0x00c8:
        r1 = -1;
        r5.setColor(r1);
        r1 = new android.graphics.PorterDuffXfermode;
        r2 = android.graphics.PorterDuff.Mode.SRC_IN;
        r1.<init>(r2);
        r5.setXfermode(r1);
        r1 = 0;
        r2 = 0;
        r3 = r6.getWidth();
        r3 = (float) r3;
        r4 = r6.getHeight();
        r4 = (float) r4;
        r0.drawRect(r1, r2, r3, r4, r5);
        goto L_0x008a;
    L_0x00e6:
        r0 = android.graphics.BitmapFactory.decodeStream(r3);	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r4 = android.graphics.Bitmap.Config.ARGB_8888;	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r5 = 1;
        r1 = r0.copy(r4, r5);	 Catch:{ Exception -> 0x013b, all -> 0x00f5 }
        r0 = r2;
        r6 = r1;
        goto L_0x0056;
    L_0x00f5:
        r0 = move-exception;
        r6 = r0;
        r4 = r1;
        r0 = r2;
    L_0x00f9:
        r3.close();
        r1 = r10.getCategory();
        r2 = com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory.transition;
        if (r1 != r2) goto L_0x012d;
    L_0x0104:
        r5 = new android.graphics.Paint;
        r5.<init>();
        if (r0 != 0) goto L_0x0110;
    L_0x010b:
        r0 = new android.graphics.Canvas;
        r0.<init>(r4);
    L_0x0110:
        r1 = -1;
        r5.setColor(r1);
        r1 = new android.graphics.PorterDuffXfermode;
        r2 = android.graphics.PorterDuff.Mode.SRC_IN;
        r1.<init>(r2);
        r5.setXfermode(r1);
        r1 = 0;
        r2 = 0;
        r3 = r4.getWidth();
        r3 = (float) r3;
        r4 = r4.getHeight();
        r4 = (float) r4;
        r0.drawRect(r1, r2, r3, r4, r5);
    L_0x012d:
        throw r6;
    L_0x012e:
        r0 = move-exception;
        r6 = r0;
        r4 = r1;
        r0 = r2;
        goto L_0x00f9;
    L_0x0133:
        r2 = move-exception;
        r6 = r2;
        r4 = r1;
        goto L_0x00f9;
    L_0x0137:
        r1 = move-exception;
        r4 = r6;
        r6 = r1;
        goto L_0x00f9;
    L_0x013b:
        r0 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r2;
        goto L_0x00a8;
    L_0x0141:
        r0 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r2;
        goto L_0x00a8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.app.common.nexasset.assetpackage.e.a(android.content.Context, com.nexstreaming.app.common.nexasset.assetpackage.f, java.lang.String, int, int):android.graphics.Bitmap");
    }
}
