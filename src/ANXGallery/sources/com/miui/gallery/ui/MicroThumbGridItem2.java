package com.miui.gallery.ui;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.BindImageHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.EditableListViewWrapper2.PickAnimationHelper.BackgroundImageViewable;
import com.miui.gallery.widget.EditableListViewWrapper2.PickAnimationHelper.ShowNumberWhenPicking;
import com.miui.gallery.widget.ForegroundImageView;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;

public abstract class MicroThumbGridItem2 extends RelativeLayout implements CheckableView, BackgroundImageViewable, ShowNumberWhenPicking {
    private View mBottomIndicatorContainer;
    private CheckBox mCheckBox;
    private View mCheckBoxContainer;
    private ImageView mFavoriteIndicator;
    protected ImageViewAware mImageAware;
    protected ImageSize mImageSize;
    protected ImageView mImageView;
    private ViewStub mItemStub;
    private ImageView mMask;
    private TextView mPickingNumberIndicator;
    private ImageView mSyncIndicator;
    private View mTopIndicatorContainer;
    private TextView mTypeIndicator;

    public MicroThumbGridItem2(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mItemStub = (ViewStub) findViewById(R.id.item_stub);
        this.mImageView = (ImageView) findViewById(R.id.micro_thumb);
        this.mImageAware = new ImageViewAware(this.mImageView);
        this.mImageSize = ThumbConfig.get().sMicroTargetSize;
    }

    public void setImageSize(ImageSize imageSize) {
        if (imageSize != null) {
            this.mImageSize = imageSize;
        }
    }

    public void setImageForeground(int fgDrawableRes) {
        if (this.mImageView instanceof ForegroundImageView) {
            ((ForegroundImageView) this.mImageView).setForegroundResource(fgDrawableRes);
        }
    }

    public ImageView getBackgroundImageView() {
        return this.mImageView;
    }

    public ImageView getBackgroundMask() {
        checkStubInflate();
        return this.mMask;
    }

    public TextView getShowNumberTextView() {
        checkStubInflate();
        return this.mPickingNumberIndicator;
    }

    public void setCheckable(boolean checkable) {
        boolean z = false;
        if (checkable) {
            checkStubInflate();
            this.mCheckBoxContainer.setVisibility(0);
            if (this.mFavoriteIndicator.getVisibility() == 0) {
                z = true;
            }
            bindFavoriteIndicator(z);
        } else if (this.mCheckBoxContainer != null) {
            this.mCheckBoxContainer.setVisibility(8);
        }
    }

    public void setChecked(boolean checked) {
        if (checked) {
            checkStubInflate();
            this.mCheckBox.setChecked(true);
        } else if (this.mCheckBox != null) {
            this.mCheckBox.setChecked(false);
        }
    }

    public boolean isChecked() {
        if (this.mCheckBox == null) {
            return false;
        }
        return this.mCheckBox.isChecked();
    }

    public void setCheckableListener(OnClickListener listener) {
        if (listener != null) {
            checkStubInflate();
            this.mCheckBoxContainer.setOnClickListener(listener);
        } else if (this.mCheckBoxContainer != null) {
            this.mCheckBoxContainer.setOnClickListener(null);
        }
    }

    public void toggle() {
        checkStubInflate();
        this.mCheckBox.toggle();
    }

    public CheckBox getCheckBox() {
        checkStubInflate();
        return this.mCheckBox;
    }

    public void bindImage(int position, String localPath, Uri downloadUri, DownloadType downloadType, DisplayImageOptions displayImageOptions) {
        long start = System.currentTimeMillis();
        BindImageHelper.bindImage(localPath, downloadUri, downloadType, this.mImageView, displayImageOptions, this.mImageSize);
        Log.d("bindImage", "bind image pos %s, cost %s", Integer.valueOf(position), Long.valueOf(System.currentTimeMillis() - start));
    }

    public void bindFavoriteIndicator(boolean showIndicator) {
        int i = (!showIndicator || isInCheckMode()) ? 8 : 0;
        updateFavoriteIndicatorVisibility(i);
    }

    private boolean isInCheckMode() {
        return (this.mCheckBoxContainer == null ? 8 : this.mCheckBoxContainer.getVisibility()) == 0;
    }

    private void setTypeIndicatorVisibility(int visibility) {
        if (visibility == 0) {
            checkStubInflate();
            this.mTypeIndicator.setVisibility(0);
        } else if (this.mTypeIndicator != null) {
            this.mTypeIndicator.setVisibility(8);
        }
        updateBottomIndicatorBg();
    }

    protected void updateFavoriteIndicatorVisibility(int visibility) {
        if (visibility == 0) {
            checkStubInflate();
            this.mFavoriteIndicator.setVisibility(0);
        } else if (this.mFavoriteIndicator != null) {
            this.mFavoriteIndicator.setVisibility(8);
        }
        updateBottomIndicatorBg();
    }

    protected void updateBottomIndicatorBg() {
        if ((this.mTypeIndicator != null && this.mTypeIndicator.getVisibility() == 0) || (this.mFavoriteIndicator != null && this.mFavoriteIndicator.getVisibility() == 0)) {
            checkStubInflate();
            this.mBottomIndicatorContainer.setVisibility(0);
        } else if (this.mBottomIndicatorContainer != null) {
            this.mBottomIndicatorContainer.setVisibility(8);
        }
    }

    protected boolean isSquareItem() {
        return true;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (isSquareItem()) {
            super.onMeasure(widthMeasureSpec, widthMeasureSpec);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    private void checkStubInflate() {
        if (this.mItemStub != null) {
            View viewStub = this.mItemStub.inflate();
            this.mMask = (ImageView) viewStub.findViewById(R.id.mask);
            this.mCheckBox = (CheckBox) viewStub.findViewById(16908289);
            this.mCheckBoxContainer = viewStub.findViewById(R.id.checkbox_container);
            this.mTypeIndicator = (TextView) viewStub.findViewById(R.id.type_indicator);
            this.mFavoriteIndicator = (ImageView) viewStub.findViewById(R.id.favorites_indicator);
            this.mBottomIndicatorContainer = viewStub.findViewById(R.id.bottom_indicator_container);
            this.mSyncIndicator = (ImageView) viewStub.findViewById(R.id.sync_indicator);
            this.mTopIndicatorContainer = viewStub.findViewById(R.id.top_indicator_container);
            this.mPickingNumberIndicator = (TextView) viewStub.findViewById(R.id.pick_num_indicator);
            this.mItemStub = null;
        }
    }
}
