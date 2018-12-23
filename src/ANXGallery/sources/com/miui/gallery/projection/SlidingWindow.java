package com.miui.gallery.projection;

import android.text.TextUtils;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.BaseDataSet;
import com.miui.gallery.util.Log;
import java.util.Arrays;

/* compiled from: ConnectController */
class SlidingWindow {
    private int mCurrentIndex = 0;
    private boolean mCurrentIndexChanged = true;
    private int mEndIndex;
    private String[] mFiles = new String[151];
    private BaseDataSet mMediaSet;
    private int mStartIndex;
    private int mTotalCount;

    SlidingWindow() {
    }

    public synchronized void setMediaSet(BaseDataSet mediaSet) {
        if (!(this.mMediaSet == mediaSet && mediaSet == null)) {
            if (mediaSet == null || this.mMediaSet != mediaSet) {
                reset();
            }
            this.mMediaSet = mediaSet;
        }
    }

    private void reset() {
        this.mStartIndex = 0;
        this.mEndIndex = 0;
        Arrays.fill(this.mFiles, null);
        this.mCurrentIndex = 0;
        this.mCurrentIndexChanged = true;
    }

    /* JADX WARNING: Missing block: B:24:0x0068, code:
            if (r1 < 0) goto L_0x0018;
     */
    public synchronized java.lang.String getPrevious(java.lang.String r6, boolean r7) {
        /*
        r5 = this;
        r2 = 0;
        monitor-enter(r5);
        r3 = r5.mCurrentIndexChanged;	 Catch:{ all -> 0x006b }
        if (r3 == 0) goto L_0x000e;
    L_0x0006:
        r3 = 0;
        r5.mCurrentIndexChanged = r3;	 Catch:{ all -> 0x006b }
        r3 = r5.mCurrentIndex;	 Catch:{ all -> 0x006b }
        r5.slideWindowTo(r3);	 Catch:{ all -> 0x006b }
    L_0x000e:
        r3 = r5.mTotalCount;	 Catch:{ all -> 0x006b }
        if (r3 <= 0) goto L_0x0018;
    L_0x0012:
        r3 = android.text.TextUtils.isEmpty(r6);	 Catch:{ all -> 0x006b }
        if (r3 == 0) goto L_0x001a;
    L_0x0018:
        monitor-exit(r5);
        return r2;
    L_0x001a:
        r0 = r5.indexOf(r6);	 Catch:{ all -> 0x006b }
        if (r0 != 0) goto L_0x0029;
    L_0x0020:
        r3 = r5.mStartIndex;	 Catch:{ all -> 0x006b }
        r5.slideWindowTo(r3);	 Catch:{ all -> 0x006b }
        r0 = r5.indexOf(r6);	 Catch:{ all -> 0x006b }
    L_0x0029:
        r3 = -1;
        if (r0 != r3) goto L_0x0032;
    L_0x002c:
        r3 = r5.mCurrentIndex;	 Catch:{ all -> 0x006b }
        r4 = r5.mStartIndex;	 Catch:{ all -> 0x006b }
        r0 = r3 - r4;
    L_0x0032:
        r1 = r0 + -1;
        if (r7 == 0) goto L_0x0068;
    L_0x0036:
        if (r1 >= 0) goto L_0x003d;
    L_0x0038:
        r2 = r5.mFiles;	 Catch:{ all -> 0x006b }
        r2 = r2.length;	 Catch:{ all -> 0x006b }
        r1 = r2 + -1;
    L_0x003d:
        r2 = "SlidingWindow";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x006b }
        r3.<init>();	 Catch:{ all -> 0x006b }
        r4 = "getPrevious: pre=";
        r3 = r3.append(r4);	 Catch:{ all -> 0x006b }
        r4 = r5.mFiles;	 Catch:{ all -> 0x006b }
        r4 = r4[r1];	 Catch:{ all -> 0x006b }
        r3 = r3.append(r4);	 Catch:{ all -> 0x006b }
        r4 = ", index=";
        r3 = r3.append(r4);	 Catch:{ all -> 0x006b }
        r3 = r3.append(r1);	 Catch:{ all -> 0x006b }
        r3 = r3.toString();	 Catch:{ all -> 0x006b }
        com.miui.gallery.util.Log.i(r2, r3);	 Catch:{ all -> 0x006b }
        r2 = r5.mFiles;	 Catch:{ all -> 0x006b }
        r2 = r2[r1];	 Catch:{ all -> 0x006b }
        goto L_0x0018;
    L_0x0068:
        if (r1 >= 0) goto L_0x003d;
    L_0x006a:
        goto L_0x0018;
    L_0x006b:
        r2 = move-exception;
        monitor-exit(r5);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.projection.SlidingWindow.getPrevious(java.lang.String, boolean):java.lang.String");
    }

    /* JADX WARNING: Missing block: B:30:0x0082, code:
            if (r1 >= r5.mFiles.length) goto L_0x0018;
     */
    public synchronized java.lang.String getNext(java.lang.String r6, boolean r7) {
        /*
        r5 = this;
        r2 = 0;
        monitor-enter(r5);
        r3 = r5.mCurrentIndexChanged;	 Catch:{ all -> 0x0085 }
        if (r3 == 0) goto L_0x000e;
    L_0x0006:
        r3 = 0;
        r5.mCurrentIndexChanged = r3;	 Catch:{ all -> 0x0085 }
        r3 = r5.mCurrentIndex;	 Catch:{ all -> 0x0085 }
        r5.slideWindowTo(r3);	 Catch:{ all -> 0x0085 }
    L_0x000e:
        r3 = r5.mTotalCount;	 Catch:{ all -> 0x0085 }
        if (r3 <= 0) goto L_0x0018;
    L_0x0012:
        r3 = android.text.TextUtils.isEmpty(r6);	 Catch:{ all -> 0x0085 }
        if (r3 == 0) goto L_0x001a;
    L_0x0018:
        monitor-exit(r5);
        return r2;
    L_0x001a:
        r0 = r5.indexOf(r6);	 Catch:{ all -> 0x0085 }
        r3 = -1;
        if (r0 != r3) goto L_0x005c;
    L_0x0021:
        r3 = r5.mCurrentIndex;	 Catch:{ all -> 0x0085 }
        r4 = r5.mStartIndex;	 Catch:{ all -> 0x0085 }
        r0 = r3 - r4;
    L_0x0027:
        r1 = r0 + 1;
        if (r7 == 0) goto L_0x007f;
    L_0x002b:
        r2 = r5.mFiles;	 Catch:{ all -> 0x0085 }
        r2 = r2.length;	 Catch:{ all -> 0x0085 }
        if (r1 < r2) goto L_0x0031;
    L_0x0030:
        r1 = 0;
    L_0x0031:
        r2 = "SlidingWindow";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0085 }
        r3.<init>();	 Catch:{ all -> 0x0085 }
        r4 = "getNext: next=";
        r3 = r3.append(r4);	 Catch:{ all -> 0x0085 }
        r4 = r5.mFiles;	 Catch:{ all -> 0x0085 }
        r4 = r4[r1];	 Catch:{ all -> 0x0085 }
        r3 = r3.append(r4);	 Catch:{ all -> 0x0085 }
        r4 = ", index=";
        r3 = r3.append(r4);	 Catch:{ all -> 0x0085 }
        r3 = r3.append(r1);	 Catch:{ all -> 0x0085 }
        r3 = r3.toString();	 Catch:{ all -> 0x0085 }
        com.miui.gallery.util.Log.i(r2, r3);	 Catch:{ all -> 0x0085 }
        r2 = r5.mFiles;	 Catch:{ all -> 0x0085 }
        r2 = r2[r1];	 Catch:{ all -> 0x0085 }
        goto L_0x0018;
    L_0x005c:
        r3 = r5.mEndIndex;	 Catch:{ all -> 0x0085 }
        r4 = r5.mStartIndex;	 Catch:{ all -> 0x0085 }
        r3 = r3 - r4;
        r3 = r3 + -1;
        if (r0 != r3) goto L_0x0027;
    L_0x0065:
        r3 = r5.mEndIndex;	 Catch:{ all -> 0x0085 }
        r4 = r5.mTotalCount;	 Catch:{ all -> 0x0085 }
        if (r3 >= r4) goto L_0x0077;
    L_0x006b:
        r3 = r5.mEndIndex;	 Catch:{ all -> 0x0085 }
        r3 = r3 + -1;
        r5.slideWindowTo(r3);	 Catch:{ all -> 0x0085 }
        r0 = r5.indexOf(r6);	 Catch:{ all -> 0x0085 }
        goto L_0x0027;
    L_0x0077:
        if (r7 == 0) goto L_0x0018;
    L_0x0079:
        r3 = 0;
        r5.slideWindowTo(r3);	 Catch:{ all -> 0x0085 }
        r0 = -1;
        goto L_0x0027;
    L_0x007f:
        r3 = r5.mFiles;	 Catch:{ all -> 0x0085 }
        r3 = r3.length;	 Catch:{ all -> 0x0085 }
        if (r1 < r3) goto L_0x0031;
    L_0x0084:
        goto L_0x0018;
    L_0x0085:
        r2 = move-exception;
        monitor-exit(r5);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.projection.SlidingWindow.getNext(java.lang.String, boolean):java.lang.String");
    }

    private int indexOf(String filePath) {
        int index = 0;
        if (filePath != null) {
            for (String file : this.mFiles) {
                if (file != null && file.equals(filePath)) {
                    return index;
                }
                index++;
            }
        }
        return -1;
    }

    private void doSlideWindow(int indexSlideTo) {
        if (this.mMediaSet == null) {
            reset();
            return;
        }
        this.mTotalCount = this.mMediaSet.getCount();
        if (this.mTotalCount <= 0) {
            reset();
            return;
        }
        this.mStartIndex = Math.max(indexSlideTo - 75, 0);
        this.mEndIndex = Math.min((indexSlideTo + 75) + 1, this.mTotalCount);
        int bufferIndex = 0;
        for (int index = this.mStartIndex; index < this.mEndIndex; index++) {
            BaseDataItem item = this.mMediaSet.getItem(null, index);
            if (item != null) {
                String path = item.getPathDisplayBetter();
                if (!TextUtils.isEmpty(path)) {
                    this.mFiles[bufferIndex] = path;
                    bufferIndex++;
                }
            }
        }
        Log.i("SlidingWindow", "slideWindow, mStartIndex=" + this.mStartIndex + ", mEndIndex=" + this.mEndIndex);
    }

    private void slideWindowTo(int indexSlideTo) {
        if (this.mMediaSet == null) {
            reset();
            return;
        }
        int count = this.mMediaSet.getCount();
        if (count <= 0) {
            reset();
            return;
        }
        if (indexSlideTo < 0) {
            indexSlideTo = 0;
        } else if (indexSlideTo >= count) {
            indexSlideTo = count - 1;
        }
        if (this.mStartIndex == this.mEndIndex || count != this.mTotalCount || (this.mTotalCount > this.mEndIndex - this.mStartIndex && isWindowDirty(indexSlideTo))) {
            doSlideWindow(indexSlideTo);
        }
    }

    private boolean isWindowDirty(int currentIndex) {
        return (this.mStartIndex > 0 && currentIndex - this.mStartIndex < 50) || (this.mEndIndex < this.mTotalCount && this.mEndIndex - currentIndex < 50);
    }

    public synchronized void onCurrentIndexChanged(int currentIndex) {
        this.mCurrentIndexChanged = (this.mCurrentIndex != currentIndex ? 1 : 0) | this.mCurrentIndexChanged;
        this.mCurrentIndex = currentIndex;
    }
}
