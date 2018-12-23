package com.miui.gallery.util;

import com.miui.gallery3d.exif.ExifInterface;

/* compiled from: ExifUtil */
class ExifInterfaceWrapper {
    private ExifInterface mExifI;
    private android.media.ExifInterface mMediaExifI;

    public ExifInterfaceWrapper(android.media.ExifInterface mediaExifI) {
        this.mMediaExifI = mediaExifI;
    }

    public ExifInterfaceWrapper(ExifInterface exifI) {
        this.mExifI = exifI;
    }

    public String getUserComment() {
        if (this.mExifI != null) {
            return this.mExifI.getUserCommentAsASCII();
        }
        if (this.mMediaExifI != null) {
            return this.mMediaExifI.getAttribute("UserComment");
        }
        return null;
    }

    public void setUserComment(String userComment) {
        if (this.mExifI != null) {
            this.mExifI.addUserComment(userComment);
        }
        if (this.mMediaExifI != null) {
            this.mMediaExifI.setAttribute("UserComment", userComment);
        }
    }
}
