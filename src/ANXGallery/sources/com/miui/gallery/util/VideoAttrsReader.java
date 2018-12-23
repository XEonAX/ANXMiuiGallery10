package com.miui.gallery.util;

import android.text.TextUtils;
import android.text.format.Time;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class VideoAttrsReader {
    private long mDateTaken = -1;
    private long mDuration = -1;
    private int mHeight = -1;
    private final String mPath;
    private String mTitle;
    private int mWidth = -1;

    public static class VideoAttrsUnretrivableException extends RuntimeException {
        public VideoAttrsUnretrivableException(String msg, Throwable t) {
            super(msg, t);
        }
    }

    public static VideoAttrsReader read(String path) throws IOException {
        return new VideoAttrsReader(path);
    }

    private VideoAttrsReader(String path) throws IOException {
        this.mPath = path;
        initByMediaMediaPlayer(this.mPath);
    }

    public String getTitle() {
        return this.mTitle;
    }

    public int getVideoWidth() {
        return this.mWidth;
    }

    public int getVideoHeight() {
        return this.mHeight;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public long getDateTaken() {
        return this.mDateTaken;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0079 A:{SYNTHETIC, Splitter: B:22:0x0079} */
    private void initByMediaMediaPlayer(java.lang.String r9) throws java.io.IOException {
        /*
        r8 = this;
        r0 = 0;
        r1 = new android.media.MediaMetadataRetriever;	 Catch:{ RuntimeException -> 0x006f }
        r1.<init>();	 Catch:{ RuntimeException -> 0x006f }
        r1.setDataSource(r9);	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        r4 = 7;
        r4 = r1.extractMetadata(r4);	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        r8.mTitle = r4;	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        r4 = 18;
        r4 = r1.extractMetadata(r4);	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        r4 = r8.parseIntSafely(r4);	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        r8.mWidth = r4;	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        r4 = 19;
        r4 = r1.extractMetadata(r4);	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        r4 = r8.parseIntSafely(r4);	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        r8.mHeight = r4;	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        r4 = 9;
        r4 = r1.extractMetadata(r4);	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        r4 = r8.parseLongSafely(r4);	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        r8.mDuration = r4;	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        r4 = 5;
        r3 = r1.extractMetadata(r4);	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        r4 = r8.calculateTaken(r3);	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        r8.mDateTaken = r4;	 Catch:{ RuntimeException -> 0x0084, all -> 0x0081 }
        if (r1 == 0) goto L_0x0044;
    L_0x0041:
        r1.release();	 Catch:{ RuntimeException -> 0x007d }
    L_0x0044:
        r4 = r8.mTitle;
        r4 = android.text.TextUtils.isEmpty(r4);
        if (r4 == 0) goto L_0x0056;
    L_0x004c:
        r4 = com.miui.gallery.util.FileUtils.getFileName(r9);
        r4 = com.miui.gallery.util.FileUtils.getFileTitle(r4);
        r8.mTitle = r4;
    L_0x0056:
        r4 = r8.mDateTaken;
        r6 = 0;
        r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r4 > 0) goto L_0x0069;
    L_0x005e:
        r4 = new java.io.File;
        r4.<init>(r9);
        r4 = r4.lastModified();
        r8.mDateTaken = r4;
    L_0x0069:
        r4 = "final result";
        r8.dump(r4);
        return;
    L_0x006f:
        r2 = move-exception;
    L_0x0070:
        r4 = new com.miui.gallery.util.VideoAttrsReader$VideoAttrsUnretrivableException;	 Catch:{ all -> 0x0076 }
        r4.<init>(r9, r2);	 Catch:{ all -> 0x0076 }
        throw r4;	 Catch:{ all -> 0x0076 }
    L_0x0076:
        r4 = move-exception;
    L_0x0077:
        if (r0 == 0) goto L_0x007c;
    L_0x0079:
        r0.release();	 Catch:{ RuntimeException -> 0x007f }
    L_0x007c:
        throw r4;
    L_0x007d:
        r4 = move-exception;
        goto L_0x0044;
    L_0x007f:
        r5 = move-exception;
        goto L_0x007c;
    L_0x0081:
        r4 = move-exception;
        r0 = r1;
        goto L_0x0077;
    L_0x0084:
        r2 = move-exception;
        r0 = r1;
        goto L_0x0070;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.util.VideoAttrsReader.initByMediaMediaPlayer(java.lang.String):void");
    }

    private long calculateTaken(String dateStr) {
        Date date = null;
        if (!TextUtils.isEmpty(dateStr)) {
            SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd'T'HHmmss.SSS'Z'");
            format.setTimeZone(TimeZone.getTimeZone("UTC"));
            try {
                date = format.parse(dateStr);
            } catch (Exception e) {
                Log.i("VideoAttrsReader", "simple format error %s", (Object) dateStr);
                return new Time(dateStr).toMillis(true);
            }
        }
        if (date == null) {
            return 0;
        }
        return date.getTime();
    }

    private int parseIntSafely(String value) {
        try {
            return Integer.parseInt(value);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    private long parseLongSafely(String value) {
        try {
            return Long.parseLong(value);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    private void dump(String msg) {
        StringBuilder sb = new StringBuilder();
        sb.append("msg=").append(msg).append("\r\n").append("file=").append(this.mPath).append("\r\n").append("title=").append(this.mTitle).append("\r\n").append("width=").append(this.mWidth).append("\r\n").append("height=").append(this.mHeight).append("\r\n").append("duration=").append(this.mDuration).append("\r\n").append("datataken=").append(this.mDateTaken);
        Log.d("VideoAttrsReader", sb.toString());
    }
}
