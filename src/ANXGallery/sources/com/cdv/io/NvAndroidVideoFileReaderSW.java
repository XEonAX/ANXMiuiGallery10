package com.cdv.io;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Build.VERSION;
import android.util.Log;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.nio.ByteBuffer;

public class NvAndroidVideoFileReaderSW {
    private static final int ERROR_EOF = 1;
    private static final int ERROR_FAIL = 2;
    private static final int ERROR_OK = 0;
    private static final String TAG = "NvAndroidVideoFileReaderSW";
    private static final boolean m_verbose = false;
    private BufferInfo m_bufferInfo = null;
    private MediaCodec m_decoder = null;
    ByteBuffer[] m_decoderInputBuffers = null;
    ByteBuffer[] m_decoderOutputBuffers = null;
    private boolean m_decoderSetupFailed = false;
    private boolean m_decoderStarted = false;
    private long m_duration = 0;
    private MediaExtractor m_extractor = null;
    private boolean m_extractorInOriginalState = true;
    private MediaFormat m_format = null;
    private boolean m_inputBufferQueued = false;
    private long m_lastSeekActualTimestamp = Long.MIN_VALUE;
    private long m_lastSeekTimestamp = Long.MIN_VALUE;
    private long m_owner = 0;
    private int m_pendingInputFrameCount = 0;
    private boolean m_sawInputEOS = false;
    private boolean m_sawOutputEOS = false;
    private long m_timestampOfLastCopiedFrame = Long.MIN_VALUE;
    private long m_timestampOfLastDecodedFrame = Long.MIN_VALUE;
    private int m_videoTrackIndex = -1;

    private native void nativeCopyVideoFrame(long j, ByteBuffer byteBuffer, int i, int i2, long j2);

    private native void nativeSetFormatInfo(long j, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    NvAndroidVideoFileReaderSW(long j) {
        this.m_owner = j;
        this.m_bufferInfo = new BufferInfo();
    }

    public boolean OpenFile(String str, AssetManager assetManager, int i) {
        if (IsValid()) {
            Log.e(TAG, "You can't call OpenFile() twice!");
            return false;
        }
        try {
            this.m_extractor = new MediaExtractor();
            if (assetManager == null) {
                this.m_extractor.setDataSource(str);
            } else {
                AssetFileDescriptor openFd = assetManager.openFd(str);
                this.m_extractor.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
                openFd.close();
            }
            this.m_extractorInOriginalState = true;
            int trackCount = this.m_extractor.getTrackCount();
            for (int i2 = 0; i2 < trackCount; i2++) {
                if (this.m_extractor.getTrackFormat(i2).getString("mime").startsWith("video/")) {
                    this.m_videoTrackIndex = i2;
                    break;
                }
            }
            if (this.m_videoTrackIndex < 0) {
                Log.e(TAG, "Failed to find a video track from " + str);
                CloseFile();
                return false;
            }
            this.m_extractor.selectTrack(this.m_videoTrackIndex);
            this.m_format = this.m_extractor.getTrackFormat(this.m_videoTrackIndex);
            if (VERSION.SDK_INT == 16) {
                this.m_format.setInteger("max-input-size", 0);
            }
            if (VERSION.SDK_INT >= 23 && i >= 0) {
                MediaFormat mediaFormat = this.m_format;
                String str2 = "operating-rate";
                if (i <= 0) {
                    i = BaiduSceneResult.MOTORCYCLE;
                }
                mediaFormat.setInteger(str2, i);
            }
            this.m_duration = this.m_format.getLong("durationUs");
            String string = this.m_format.getString("mime");
            this.m_decoderSetupFailed = false;
            if (SetupDecoder(string)) {
                return true;
            }
            this.m_decoderSetupFailed = true;
            CloseFile();
            return false;
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
            CloseFile();
            return false;
        }
    }

    public boolean hasDecoderSetupFailed() {
        return this.m_decoderSetupFailed;
    }

    public void CloseFile() {
        InvalidLastSeekTimestamp();
        CleanupDecoder();
        if (this.m_extractor != null) {
            this.m_extractor.release();
            this.m_extractor = null;
            this.m_videoTrackIndex = -1;
            this.m_format = null;
            this.m_duration = 0;
            this.m_extractorInOriginalState = true;
        }
    }

    public int SeekVideoFrame(long j, long j2) {
        if (!IsValid()) {
            return 1;
        }
        long max = Math.max(j, 0);
        if (max >= this.m_duration) {
            if (max >= this.m_duration + 25000) {
                return 1;
            }
            max = this.m_duration - 1;
        }
        if (this.m_timestampOfLastCopiedFrame != Long.MIN_VALUE && Math.abs(max - this.m_timestampOfLastCopiedFrame) <= j2) {
            return 0;
        }
        int SeekInternal = SeekInternal(max, j2);
        if (SeekInternal == 0) {
            this.m_lastSeekTimestamp = max;
            this.m_lastSeekActualTimestamp = this.m_timestampOfLastCopiedFrame;
        } else {
            InvalidLastSeekTimestamp();
        }
        return SeekInternal;
    }

    public int StartPlayback(long j, long j2) {
        if (!IsValid()) {
            return 1;
        }
        long max = Math.max(j, 0);
        if (max >= this.m_duration) {
            return 1;
        }
        if (!(this.m_lastSeekTimestamp == Long.MIN_VALUE || max != this.m_lastSeekTimestamp || this.m_lastSeekActualTimestamp == Long.MIN_VALUE)) {
            max = this.m_lastSeekActualTimestamp;
        }
        if (max == this.m_timestampOfLastCopiedFrame && this.m_timestampOfLastCopiedFrame == this.m_timestampOfLastDecodedFrame) {
            return 0;
        }
        int SeekInternal = SeekInternal(max, j2);
        InvalidLastSeekTimestamp();
        return SeekInternal;
    }

    public int GetNextVideoFrameForPlayback() {
        if (!IsValid()) {
            return 1;
        }
        int DecodeToFrame = DecodeToFrame(Long.MIN_VALUE, 0);
        InvalidLastSeekTimestamp();
        return DecodeToFrame;
    }

    private boolean IsValid() {
        return this.m_decoder != null;
    }

    private boolean SetupDecoder(String str) {
        try {
            this.m_decoder = MediaCodec.createDecoderByType(str);
            this.m_decoder.configure(this.m_format, null, null, 0);
            this.m_decoder.start();
            this.m_decoderStarted = true;
            this.m_decoderInputBuffers = this.m_decoder.getInputBuffers();
            this.m_decoderOutputBuffers = this.m_decoder.getOutputBuffers();
            return true;
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
            CleanupDecoder();
            return false;
        }
    }

    private void CleanupDecoder() {
        if (this.m_decoder != null) {
            if (this.m_decoderStarted) {
                try {
                    if (this.m_sawInputEOS && !this.m_sawOutputEOS) {
                        DrainOutputBuffers();
                    }
                    if (this.m_inputBufferQueued) {
                        try {
                            this.m_decoder.flush();
                        } catch (Exception e) {
                        }
                        this.m_inputBufferQueued = false;
                    }
                    this.m_decoder.stop();
                } catch (Exception e2) {
                    Log.e(TAG, "" + e2.getMessage());
                    e2.printStackTrace();
                }
                this.m_decoderStarted = false;
                this.m_decoderInputBuffers = null;
            }
            this.m_decoder.release();
            this.m_decoder = null;
        }
        this.m_timestampOfLastDecodedFrame = Long.MIN_VALUE;
        this.m_timestampOfLastCopiedFrame = Long.MIN_VALUE;
        this.m_pendingInputFrameCount = 0;
        this.m_sawInputEOS = false;
        this.m_sawOutputEOS = false;
    }

    private int SeekInternal(long j, long j2) {
        Object obj = 1;
        if ((this.m_timestampOfLastDecodedFrame == Long.MIN_VALUE || j <= this.m_timestampOfLastDecodedFrame || j >= this.m_timestampOfLastDecodedFrame + 1000000) && (!this.m_extractorInOriginalState || j >= 1000000)) {
            obj = null;
        }
        if (obj == null) {
            try {
                this.m_extractor.seekTo(j, 0);
                if (this.m_sawInputEOS || this.m_sawOutputEOS) {
                    CleanupDecoder();
                    if (!SetupDecoder(this.m_format.getString("mime"))) {
                        return 2;
                    }
                } else if (this.m_inputBufferQueued) {
                    try {
                        this.m_decoder.flush();
                    } catch (Exception e) {
                    }
                    this.m_inputBufferQueued = false;
                    this.m_pendingInputFrameCount = 0;
                }
            } catch (Exception e2) {
                Log.e(TAG, "" + e2.getMessage());
                e2.printStackTrace();
                return 2;
            }
        }
        return DecodeToFrame(j, j2);
    }

    private int DecodeToFrame(long j, long j2) {
        try {
            return DoDecodeToFrame(j, j2);
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
            CleanupDecoder();
            return 2;
        }
    }

    private int DoDecodeToFrame(long j, long j2) {
        int max = Math.max(this.m_decoderInputBuffers.length / 3, 2);
        int i = 0;
        while (true) {
            int i2 = i;
            if (!this.m_sawOutputEOS) {
                if (!this.m_sawInputEOS) {
                    int dequeueInputBuffer = this.m_decoder.dequeueInputBuffer(4000);
                    if (dequeueInputBuffer >= 0) {
                        int readSampleData = this.m_extractor.readSampleData(this.m_decoderInputBuffers[dequeueInputBuffer], 0);
                        if (readSampleData < 0) {
                            this.m_decoder.queueInputBuffer(dequeueInputBuffer, 0, 0, 0, 4);
                            this.m_sawInputEOS = true;
                        } else {
                            if (this.m_extractor.getSampleTrackIndex() != this.m_videoTrackIndex) {
                                Log.w(TAG, "WEIRD: got sample from track " + this.m_extractor.getSampleTrackIndex() + ", expected " + this.m_videoTrackIndex);
                            }
                            this.m_decoder.queueInputBuffer(dequeueInputBuffer, 0, readSampleData, this.m_extractor.getSampleTime(), 0);
                            this.m_inputBufferQueued = true;
                            this.m_pendingInputFrameCount++;
                            this.m_extractor.advance();
                            this.m_extractorInOriginalState = false;
                        }
                    }
                }
                if (this.m_pendingInputFrameCount > max || this.m_sawInputEOS) {
                    i = 4000;
                } else {
                    i = 0;
                }
                int dequeueOutputBuffer = this.m_decoder.dequeueOutputBuffer(this.m_bufferInfo, (long) i);
                i = i2 + 1;
                if (dequeueOutputBuffer != -1) {
                    if (dequeueOutputBuffer == -3) {
                        this.m_decoderOutputBuffers = this.m_decoder.getOutputBuffers();
                    } else if (dequeueOutputBuffer == -2) {
                        ParseMediaFormat(this.m_decoder.getOutputFormat());
                    } else if (dequeueOutputBuffer < 0) {
                        Log.e(TAG, "Unexpected result from decoder.dequeueOutputBuffer: " + dequeueOutputBuffer);
                        return 2;
                    } else {
                        int i3;
                        Object obj;
                        if ((this.m_bufferInfo.flags & 4) != 0) {
                            this.m_sawOutputEOS = true;
                        }
                        Object obj2;
                        if (this.m_bufferInfo.size != 0) {
                            i3 = 0;
                            this.m_timestampOfLastDecodedFrame = this.m_bufferInfo.presentationTimeUs;
                            this.m_pendingInputFrameCount--;
                            if (j != Long.MIN_VALUE) {
                                Object obj3 = this.m_timestampOfLastDecodedFrame >= j - j2 ? 1 : null;
                                if (obj3 != null || this.m_timestampOfLastDecodedFrame < this.m_duration - 100000) {
                                    obj2 = null;
                                    obj = obj3;
                                } else {
                                    obj2 = 1;
                                    obj = 1;
                                }
                            } else {
                                obj2 = null;
                                int obj4 = 1;
                            }
                        } else {
                            obj2 = null;
                            obj4 = null;
                            i3 = i;
                        }
                        if (obj4 != null) {
                            nativeCopyVideoFrame(this.m_owner, this.m_decoderOutputBuffers[dequeueOutputBuffer], this.m_bufferInfo.offset, this.m_bufferInfo.size, this.m_timestampOfLastDecodedFrame);
                            this.m_timestampOfLastCopiedFrame = this.m_timestampOfLastDecodedFrame;
                        }
                        this.m_decoder.releaseOutputBuffer(dequeueOutputBuffer, false);
                        if (obj4 != null && obj2 == null) {
                            return 0;
                        }
                        i = i3;
                    }
                }
                if (i > 100) {
                    Log.e(TAG, "We have tried too many times and can't decode a frame!");
                    return 2;
                }
            } else if (j == Long.MIN_VALUE || this.m_timestampOfLastCopiedFrame == Long.MIN_VALUE || this.m_timestampOfLastCopiedFrame < this.m_duration - 100000) {
                return 1;
            } else {
                return 0;
            }
        }
    }

    private void DrainOutputBuffers() {
        if (this.m_sawInputEOS && !this.m_sawOutputEOS) {
            int i = 0;
            while (!this.m_sawOutputEOS) {
                int dequeueOutputBuffer = this.m_decoder.dequeueOutputBuffer(this.m_bufferInfo, 5000);
                i++;
                if (!(dequeueOutputBuffer == -1 || dequeueOutputBuffer == -3 || dequeueOutputBuffer == -2)) {
                    if (dequeueOutputBuffer < 0) {
                        Log.e(TAG, "DrainDecoderBuffers(): Unexpected result from decoder.dequeueOutputBuffer: " + dequeueOutputBuffer);
                        return;
                    }
                    if ((this.m_bufferInfo.flags & 4) != 0) {
                        this.m_sawOutputEOS = true;
                    }
                    this.m_decoder.releaseOutputBuffer(dequeueOutputBuffer, false);
                    i = 0;
                }
                if (i > 100) {
                    Log.e(TAG, "DrainDecoderBuffers(): We have tried too many times and can't decode a frame!");
                    return;
                }
            }
        }
    }

    private void InvalidLastSeekTimestamp() {
        this.m_lastSeekTimestamp = Long.MIN_VALUE;
        this.m_lastSeekActualTimestamp = Long.MIN_VALUE;
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x00dd  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00df  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00a0  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00e2  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00ae  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00bc  */
    private void ParseMediaFormat(android.media.MediaFormat r15) {
        /*
        r14 = this;
        r7 = 18;
        r4 = 0;
        r0 = "width";
        r0 = r15.containsKey(r0);
        if (r0 == 0) goto L_0x001c;
    L_0x000c:
        r0 = "height";
        r0 = r15.containsKey(r0);
        if (r0 == 0) goto L_0x001c;
    L_0x0014:
        r0 = "color-format";
        r0 = r15.containsKey(r0);
        if (r0 != 0) goto L_0x001d;
    L_0x001c:
        return;
    L_0x001d:
        r0 = "width";
        r3 = r15.getInteger(r0);
        r0 = "height";
        r1 = r15.getInteger(r0);
        r0 = "color-format";
        r6 = r15.getInteger(r0);
        r0 = android.os.Build.VERSION.SDK_INT;
        if (r0 < r7) goto L_0x0049;
    L_0x0034:
        r0 = r14.m_decoder;
        r0 = r0.getName();
        r2 = 25;
        if (r6 != r2) goto L_0x0049;
    L_0x003e:
        r2 = "OMX.k3.video.decoder.avc";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0049;
    L_0x0046:
        r6 = 2130706688; // 0x7f000100 float:1.7014638E38 double:1.052708976E-314;
    L_0x0049:
        r0 = android.os.Build.VERSION.SDK_INT;
        r2 = 23;
        if (r0 < r2) goto L_0x00f0;
    L_0x004f:
        r0 = "slice-height";
        r0 = r15.containsKey(r0);
        if (r0 == 0) goto L_0x00ed;
    L_0x0058:
        r0 = "slice-height";
        r0 = r15.getInteger(r0);
    L_0x005f:
        r2 = "stride";
        r2 = r15.containsKey(r2);
        if (r2 == 0) goto L_0x00ea;
    L_0x0068:
        r2 = "stride";
        r2 = r15.getInteger(r2);
        r13 = r2;
        r2 = r0;
        r0 = r13;
    L_0x0072:
        r5 = android.os.Build.VERSION.SDK_INT;
        if (r5 < r7) goto L_0x00e7;
    L_0x0076:
        r5 = r14.m_decoder;
        r5 = r5.getName();
        r7 = "OMX.Nvidia.";
        r7 = r5.startsWith(r7);
        if (r7 == 0) goto L_0x00d2;
    L_0x0084:
        r2 = r2 + 15;
        r2 = r2 & -16;
        r8 = r0;
        r7 = r2;
    L_0x008a:
        r0 = "crop-left";
        r0 = r15.containsKey(r0);
        if (r0 == 0) goto L_0x00dd;
    L_0x0092:
        r0 = "crop-left";
        r9 = r15.getInteger(r0);
    L_0x0098:
        r0 = "crop-right";
        r0 = r15.containsKey(r0);
        if (r0 == 0) goto L_0x00df;
    L_0x00a0:
        r0 = "crop-right";
        r10 = r15.getInteger(r0);
    L_0x00a6:
        r0 = "crop-top";
        r0 = r15.containsKey(r0);
        if (r0 == 0) goto L_0x00e2;
    L_0x00ae:
        r0 = "crop-top";
        r11 = r15.getInteger(r0);
    L_0x00b4:
        r0 = "crop-bottom";
        r0 = r15.containsKey(r0);
        if (r0 == 0) goto L_0x00e4;
    L_0x00bc:
        r0 = "crop-bottom";
        r12 = r15.getInteger(r0);
    L_0x00c2:
        r0 = r10 + 1;
        r4 = r0 - r9;
        r0 = r12 + 1;
        r5 = r0 - r11;
        r2 = r14.m_owner;
        r1 = r14;
        r1.nativeSetFormatInfo(r2, r4, r5, r6, r7, r8, r9, r10, r11, r12);
        goto L_0x001c;
    L_0x00d2:
        r7 = "OMX.SEC.avc.dec";
        r5 = r5.startsWith(r7);
        if (r5 == 0) goto L_0x00e7;
    L_0x00da:
        r8 = r3;
        r7 = r1;
        goto L_0x008a;
    L_0x00dd:
        r9 = r4;
        goto L_0x0098;
    L_0x00df:
        r10 = r3 + -1;
        goto L_0x00a6;
    L_0x00e2:
        r11 = r4;
        goto L_0x00b4;
    L_0x00e4:
        r12 = r1 + -1;
        goto L_0x00c2;
    L_0x00e7:
        r8 = r0;
        r7 = r2;
        goto L_0x008a;
    L_0x00ea:
        r2 = r0;
        r0 = r3;
        goto L_0x0072;
    L_0x00ed:
        r0 = r1;
        goto L_0x005f;
    L_0x00f0:
        r0 = r3;
        r2 = r1;
        goto L_0x0072;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cdv.io.NvAndroidVideoFileReaderSW.ParseMediaFormat(android.media.MediaFormat):void");
    }
}
