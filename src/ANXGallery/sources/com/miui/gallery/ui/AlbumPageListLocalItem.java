package com.miui.gallery.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.miui.gallery.R;

public class AlbumPageListLocalItem extends AlbumPageListItemBase {
    protected TextView mAlbumNameDesc;
    protected TextView mMoreAlbumHint;

    public AlbumPageListLocalItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mMoreAlbumHint = (TextView) findViewById(R.id.more_album_hint);
        this.mAlbumNameDesc = (TextView) findViewById(R.id.album_name_desc);
    }

    public void bindAlbumNameDesc(String albumNameDesc) {
        this.mAlbumNameDesc.setText(albumNameDesc);
    }
}
