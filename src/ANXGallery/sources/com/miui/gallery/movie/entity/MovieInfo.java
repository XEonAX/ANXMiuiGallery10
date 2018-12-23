package com.miui.gallery.movie.entity;

import java.util.ArrayList;
import java.util.List;

public class MovieInfo {
    public String audio = "default";
    private List<ImageEntity> extraList;
    public List<ImageEntity> imageList;
    public boolean isFromStory;
    public boolean isShortVideo;
    public String subTitle;
    public String template;
    public String title;

    public MovieInfo(List<ImageEntity> imageList) {
        this.imageList = imageList;
        this.isShortVideo = imageList.size() <= 5;
    }

    public boolean changeToShortVideo() {
        this.isShortVideo = true;
        if (this.imageList.size() > 5) {
            this.extraList = this.imageList.subList(5, this.imageList.size());
            List<ImageEntity> newImageList = new ArrayList();
            this.imageList = this.imageList.subList(0, 5);
            newImageList.addAll(this.imageList);
            this.imageList = newImageList;
            return true;
        }
        this.extraList = null;
        return false;
    }

    public boolean backToLongVideo() {
        this.isShortVideo = false;
        if (this.extraList == null) {
            return false;
        }
        this.imageList.addAll(this.extraList);
        this.extraList = null;
        return true;
    }

    public boolean discardToLongVideo() {
        this.isShortVideo = false;
        if (this.extraList == null) {
            return false;
        }
        this.extraList = null;
        return true;
    }

    public boolean discardToShortVideo() {
        this.isShortVideo = true;
        if (this.extraList == null) {
            return false;
        }
        this.extraList = null;
        return true;
    }
}
