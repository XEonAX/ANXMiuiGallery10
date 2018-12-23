package cn.kuaipan.android.kss.download;

import cn.kuaipan.android.utils.Encode;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.concurrent.locks.ReentrantLock;

public class KssAccessor {
    private boolean mClosed = false;
    private RandomAccessFile mFileAccessor;
    private FileLock mFilelocker;
    private final ReentrantLock mLocker = new ReentrantLock();

    public KssAccessor(File file) throws IOException {
        this.mFileAccessor = new RandomAccessFile(file, "rws");
        this.mFilelocker = this.mFileAccessor.getChannel().tryLock();
        if (this.mFilelocker == null) {
            throw new IOException("Failed Lock the target file: " + file);
        }
    }

    public void lock() {
        this.mLocker.lock();
    }

    public void unlock() {
        this.mLocker.unlock();
    }

    public String sha1(long start, long len) throws IOException {
        if (this.mClosed) {
            throw new IOException();
        }
        lock();
        try {
            String SHA1Encode = Encode.SHA1Encode(this.mFileAccessor, start, len);
            return SHA1Encode;
        } finally {
            unlock();
        }
    }

    public int write(byte[] buffer, int offset, int count, LoadRecorder recorder) throws IOException {
        if (this.mClosed) {
            throw new IOException();
        } else if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException();
        } else {
            lock();
            if (recorder != null) {
                try {
                    this.mFileAccessor.seek(recorder.getStart());
                    count = (int) Math.min((long) count, recorder.size());
                } catch (Throwable th) {
                    unlock();
                }
            }
            this.mFileAccessor.write(buffer, offset, count);
            if (recorder != null) {
                recorder.add(count);
            }
            unlock();
            return count;
        }
    }

    public void inflate(long targetSize) throws IOException {
        if (this.mClosed) {
            throw new IOException();
        }
        lock();
        try {
            this.mFileAccessor.seek(targetSize - 1);
            this.mFileAccessor.write(0);
        } finally {
            unlock();
        }
    }

    /* JADX WARNING: Missing block: B:17:?, code:
            return;
     */
    public void close() throws java.io.IOException {
        /*
        r3 = this;
        r2 = 0;
        r0 = r3.mClosed;
        if (r0 == 0) goto L_0x0006;
    L_0x0005:
        return;
    L_0x0006:
        r0 = 1;
        r3.mClosed = r0;
        r0 = r3.mFilelocker;	 Catch:{ all -> 0x0021 }
        if (r0 == 0) goto L_0x0015;
    L_0x000d:
        r0 = r3.mFilelocker;	 Catch:{ all -> 0x0021 }
        r0.release();	 Catch:{ all -> 0x0021 }
        r0 = 0;
        r3.mFilelocker = r0;	 Catch:{ all -> 0x0021 }
    L_0x0015:
        r0 = r3.mFileAccessor;
        if (r0 == 0) goto L_0x0005;
    L_0x0019:
        r0 = r3.mFileAccessor;
        r0.close();
        r3.mFileAccessor = r2;
        goto L_0x0005;
    L_0x0021:
        r0 = move-exception;
        r1 = r3.mFileAccessor;
        if (r1 == 0) goto L_0x002d;
    L_0x0026:
        r1 = r3.mFileAccessor;
        r1.close();
        r3.mFileAccessor = r2;
    L_0x002d:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.kuaipan.android.kss.download.KssAccessor.close():void");
    }

    protected void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }
}
