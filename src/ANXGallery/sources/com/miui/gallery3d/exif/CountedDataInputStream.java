package com.miui.gallery3d.exif;

import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

class CountedDataInputStream extends FilterInputStream {
    static final /* synthetic */ boolean $assertionsDisabled = (!CountedDataInputStream.class.desiredAssertionStatus());
    private final byte[] mByteArray = new byte[8];
    private final ByteBuffer mByteBuffer = ByteBuffer.wrap(this.mByteArray);
    private int mCount = 0;

    protected CountedDataInputStream(InputStream in) {
        super(in);
    }

    public int getReadByteCount() {
        return this.mCount;
    }

    public int read(byte[] b) throws IOException {
        int r = this.in.read(b);
        this.mCount = (r >= 0 ? r : 0) + this.mCount;
        return r;
    }

    public int read(byte[] b, int off, int len) throws IOException {
        int r = this.in.read(b, off, len);
        this.mCount = (r >= 0 ? r : 0) + this.mCount;
        return r;
    }

    public int read() throws IOException {
        int r = this.in.read();
        this.mCount = (r >= 0 ? 1 : 0) + this.mCount;
        return r;
    }

    public long skip(long length) throws IOException {
        long skip = this.in.skip(length);
        this.mCount = (int) (((long) this.mCount) + skip);
        return skip;
    }

    public void skipOrThrow(long length) throws IOException {
        if (skip(length) != length) {
            throw new EOFException();
        }
    }

    public void skipTo(long target) throws IOException {
        long diff = target - ((long) this.mCount);
        if ($assertionsDisabled || diff >= 0) {
            skipOrThrow(diff);
            return;
        }
        throw new AssertionError();
    }

    public void readOrThrow(byte[] b, int off, int len) throws IOException {
        if (read(b, off, len) != len) {
            throw new EOFException();
        }
    }

    public void readOrThrow(byte[] b) throws IOException {
        readOrThrow(b, 0, b.length);
    }

    public void setByteOrder(ByteOrder order) {
        this.mByteBuffer.order(order);
    }

    public ByteOrder getByteOrder() {
        return this.mByteBuffer.order();
    }

    public short readShort() throws IOException {
        readOrThrow(this.mByteArray, 0, 2);
        this.mByteBuffer.rewind();
        return this.mByteBuffer.getShort();
    }

    public int readUnsignedShort() throws IOException {
        return readShort() & 65535;
    }

    public int readInt() throws IOException {
        readOrThrow(this.mByteArray, 0, 4);
        this.mByteBuffer.rewind();
        return this.mByteBuffer.getInt();
    }

    public long readUnsignedInt() throws IOException {
        return ((long) readInt()) & 4294967295L;
    }

    public String readString(int n, Charset charset) throws IOException {
        byte[] buf = new byte[n];
        readOrThrow(buf);
        return new String(buf, charset);
    }
}
