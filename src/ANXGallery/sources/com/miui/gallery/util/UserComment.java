package com.miui.gallery.util;

import android.text.TextUtils;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ExifUtil */
class UserComment {
    private ExifInterfaceWrapper mExif;
    private JSONObject mJsonUserComment;

    UserComment(ExifInterfaceWrapper exif) throws Exception {
        this.mExif = exif;
        String userComment = exif.getUserComment();
        try {
            if (TextUtils.isEmpty(userComment)) {
                this.mJsonUserComment = new JSONObject();
            } else {
                this.mJsonUserComment = new JSONObject(userComment);
            }
        } catch (JSONException e) {
            this.mJsonUserComment = new JSONObject();
            Log.w("UserComment", "userComment %s is not a jsonobject", userComment);
            e.printStackTrace();
            HashMap<String, String> params = new HashMap();
            params.put("usercomment", userComment);
            params.put("exception", e.toString());
            GallerySamplingStatHelper.recordErrorEvent("exif_parser", "exif_invalid_usercomment", params);
        }
    }

    String getSha1() {
        if (this.mJsonUserComment == null) {
            return null;
        }
        return this.mJsonUserComment.optString("sha1");
    }

    String getFileExt() {
        if (this.mJsonUserComment == null) {
            return null;
        }
        return this.mJsonUserComment.optString("ext");
    }

    void setSha1(String sha1) throws Exception {
        if (this.mJsonUserComment == null) {
            Log.e("UserComment", "userComment %s is not a jsonobject", this.mExif.getUserComment());
            return;
        }
        this.mJsonUserComment.put("sha1", sha1);
        this.mExif.setUserComment(toString());
    }

    void setFileExt(String extension) throws Exception {
        if (this.mJsonUserComment == null) {
            Log.e("UserComment", "userComment %s is not a jsonobject", this.mExif.getUserComment());
            return;
        }
        this.mJsonUserComment.put("ext", extension);
        this.mExif.setUserComment(toString());
    }

    public String toString() {
        if (TextUtils.isEmpty(getSha1()) && TextUtils.isEmpty(getFileExt())) {
            return "";
        }
        return this.mJsonUserComment.toString();
    }
}
