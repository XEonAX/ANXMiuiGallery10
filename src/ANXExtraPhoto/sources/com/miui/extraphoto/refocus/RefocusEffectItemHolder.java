package com.miui.extraphoto.refocus;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.miui.extraphoto.R;
import com.miui.extraphoto.refocus.RefocusEffectManager.RefocusEffectConfig;
import java.io.IOException;

class RefocusEffectItemHolder extends ViewHolder {
    private Context mContext;
    private ImageView mImageView = ((ImageView) this.itemView.findViewById(R.id.img));
    private RefocusEffectConfig mRefocusEffectConfig;

    RefocusEffectItemHolder(Context context, ViewGroup viewGroup) {
        super(LayoutInflater.from(context).inflate(R.layout.refocus_layout_item_holder, viewGroup, false));
        this.mContext = context;
    }

    public void setData(RefocusEffectConfig refocusEffectConfig) {
        this.mRefocusEffectConfig = refocusEffectConfig;
        this.mImageView.setImageBitmap(getIcon(this.mContext.getAssets(), refocusEffectConfig.getIconPath()));
        if (!TextUtils.isEmpty(refocusEffectConfig.iconColor)) {
            this.mImageView.getBackground().setColorFilter(Color.parseColor(refocusEffectConfig.iconColor), Mode.SRC_ATOP);
        }
    }

    private static Bitmap getIcon(AssetManager assetManager, String path) {
        try {
            return BitmapFactory.decodeStream(assetManager.open(path));
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
