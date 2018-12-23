package com.miui.gallery.collage.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.collage.CollageUtils;
import com.miui.gallery.collage.PosterModel;
import java.io.File;

class PosterHolder extends ViewHolder {
    private ImageView mImageView = ((ImageView) this.itemView.findViewById(R.id.collage_item_icon));

    PosterHolder(ViewGroup parent, Context context) {
        super(LayoutInflater.from(context).inflate(R.layout.poster_icon_item, parent, false));
    }

    void setPosterModel(Resources res, PosterModel posterModel, int imageCount, int position) {
        this.mImageView.setImageDrawable(CollageUtils.getDrawableByAssets(res, posterModel.relativePath + File.separator + "preview_" + imageCount + ".png"));
        this.mImageView.setContentDescription(this.mImageView.getResources().getString(R.string.photo_editor_talkback_effect, new Object[]{Integer.valueOf(position + 1)}));
    }
}
