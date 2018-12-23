package com.cdv.io;

public class NvAndroidMediaFileInfo {

    public static class MediaInfo {
        long audioStreamDurationUs = 0;
        int channelCount = 0;
        int frameRate = 0;
        boolean hasAudioStream = false;
        boolean hasVideoStream = false;
        int height = 0;
        int rotation = 0;
        int sampleRate = 0;
        long videoStreamDurationUs = 0;
        int width = 0;

        MediaInfo() {
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x00cd  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00cd  */
    public static com.cdv.io.NvAndroidMediaFileInfo.MediaInfo getMediaInfoFromFile(java.lang.String r10, android.content.res.AssetManager r11) {
        /*
        r6 = 0;
        r7 = -1;
        r0 = new android.media.MediaExtractor;	 Catch:{ Exception -> 0x00d8, all -> 0x00ca }
        r0.<init>();	 Catch:{ Exception -> 0x00d8, all -> 0x00ca }
        if (r11 != 0) goto L_0x002c;
    L_0x0009:
        r0.setDataSource(r10);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
    L_0x000c:
        r4 = r0.getTrackCount();	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r2 = 0;
        r1 = r7;
        r3 = r7;
    L_0x0013:
        if (r2 >= r4) goto L_0x005b;
    L_0x0015:
        r5 = r0.getTrackFormat(r2);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r7 = "mime";
        r5 = r5.getString(r7);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r7 = "video/";
        r7 = r5.startsWith(r7);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        if (r7 == 0) goto L_0x0051;
    L_0x0028:
        r3 = r2;
    L_0x0029:
        r2 = r2 + 1;
        goto L_0x0013;
    L_0x002c:
        r8 = r11.openFd(r10);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r1 = r8.getFileDescriptor();	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r2 = r8.getStartOffset();	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r4 = r8.getLength();	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r0.setDataSource(r1, r2, r4);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r8.close();	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        goto L_0x000c;
    L_0x0043:
        r1 = move-exception;
        r9 = r1;
        r1 = r0;
        r0 = r9;
    L_0x0047:
        r0.printStackTrace();	 Catch:{ all -> 0x00d5 }
        if (r1 == 0) goto L_0x004f;
    L_0x004c:
        r1.release();
    L_0x004f:
        r0 = r6;
    L_0x0050:
        return r0;
    L_0x0051:
        r7 = "audio/";
        r5 = r5.startsWith(r7);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        if (r5 == 0) goto L_0x0029;
    L_0x0059:
        r1 = r2;
        goto L_0x0029;
    L_0x005b:
        r2 = new com.cdv.io.NvAndroidMediaFileInfo$MediaInfo;	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r2.<init>();	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        if (r3 < 0) goto L_0x00a2;
    L_0x0062:
        r3 = r0.getTrackFormat(r3);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r4 = "durationUs";
        r4 = r3.getLong(r4);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r2.videoStreamDurationUs = r4;	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r4 = "width";
        r4 = r3.getInteger(r4);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r2.width = r4;	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r4 = "height";
        r4 = r3.getInteger(r4);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r2.height = r4;	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r4 = "rotation-degrees";
        r4 = r3.containsKey(r4);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        if (r4 == 0) goto L_0x008f;
    L_0x0087:
        r4 = "rotation-degrees";
        r4 = r3.getInteger(r4);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r2.rotation = r4;	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
    L_0x008f:
        r4 = "frame-rate";
        r4 = r3.containsKey(r4);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        if (r4 == 0) goto L_0x009f;
    L_0x0097:
        r4 = "frame-rate";
        r3 = r3.getInteger(r4);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r2.frameRate = r3;	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
    L_0x009f:
        r3 = 1;
        r2.hasVideoStream = r3;	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
    L_0x00a2:
        if (r1 < 0) goto L_0x00c3;
    L_0x00a4:
        r1 = r0.getTrackFormat(r1);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r3 = "durationUs";
        r4 = r1.getLong(r3);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r2.audioStreamDurationUs = r4;	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r3 = "channel-count";
        r3 = r1.getInteger(r3);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r2.channelCount = r3;	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r3 = "sample-rate";
        r1 = r1.getInteger(r3);	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r2.sampleRate = r1;	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
        r1 = 1;
        r2.hasAudioStream = r1;	 Catch:{ Exception -> 0x0043, all -> 0x00d1 }
    L_0x00c3:
        if (r0 == 0) goto L_0x00c8;
    L_0x00c5:
        r0.release();
    L_0x00c8:
        r0 = r2;
        goto L_0x0050;
    L_0x00ca:
        r0 = move-exception;
    L_0x00cb:
        if (r6 == 0) goto L_0x00d0;
    L_0x00cd:
        r6.release();
    L_0x00d0:
        throw r0;
    L_0x00d1:
        r1 = move-exception;
        r6 = r0;
        r0 = r1;
        goto L_0x00cb;
    L_0x00d5:
        r0 = move-exception;
        r6 = r1;
        goto L_0x00cb;
    L_0x00d8:
        r0 = move-exception;
        r1 = r6;
        goto L_0x0047;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cdv.io.NvAndroidMediaFileInfo.getMediaInfoFromFile(java.lang.String, android.content.res.AssetManager):com.cdv.io.NvAndroidMediaFileInfo$MediaInfo");
    }
}
