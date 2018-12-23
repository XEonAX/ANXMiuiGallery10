package com.miui.gallery.util;

import java.util.concurrent.atomic.AtomicInteger;

public class PhotoPageOrientationHelper {
    private int mLockStatus;
    private AtomicInteger mRefCount;
    private int mRotation;

    private static class SingletonHolder {
        static final PhotoPageOrientationHelper INSTANCE = new PhotoPageOrientationHelper();
    }

    private PhotoPageOrientationHelper() {
        this.mRefCount = new AtomicInteger();
        this.mLockStatus = 1;
        this.mRotation = -1;
    }

    public static PhotoPageOrientationHelper getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public void addRef() {
        Log.d("PhotoPageOrientationHelper", "addRef, refCount: %d.", Integer.valueOf(this.mRefCount.incrementAndGet()));
    }

    public void removeRef() {
        Log.d("PhotoPageOrientationHelper", "removeRef, refCount: %d.", Integer.valueOf(this.mRefCount.decrementAndGet()));
    }

    public int getLockStatus() {
        return this.mLockStatus;
    }

    public int getRotation() {
        return this.mRotation;
    }

    public void lock(int orientation) {
        this.mLockStatus = 0;
        this.mRotation = orientation;
    }

    public void unlock() {
        this.mLockStatus = 2;
        this.mRotation = -1;
    }

    public void reset() {
        int refCount = this.mRefCount.get();
        if (refCount <= 0) {
            Log.d("PhotoPageOrientationHelper", "reset, refCount: %d.", Integer.valueOf(refCount));
            this.mLockStatus = 1;
            this.mRotation = -1;
            this.mRefCount.set(0);
        }
    }
}
