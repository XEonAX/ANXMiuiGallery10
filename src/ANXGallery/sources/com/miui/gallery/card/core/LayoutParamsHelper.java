package com.miui.gallery.card.core;

import android.content.res.Resources;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import java.util.ArrayList;
import java.util.List;

public class LayoutParamsHelper {
    private int mItemMaxHeight;
    private int mItemMinHeight;
    private List<Size> mLayoutSizes = new ArrayList();

    public static class Size {
        public int mHeight;
        public int mWidth;

        public Size() {
            this(0, 0);
        }

        public Size(int width, int height) {
            this.mWidth = width;
            this.mHeight = height;
        }

        public String toString() {
            return "Size:" + this.mWidth + "X" + this.mHeight;
        }
    }

    public LayoutParamsHelper() {
        Resources resources = GalleryApp.sGetAndroidContext().getResources();
        this.mItemMinHeight = resources.getDimensionPixelOffset(R.dimen.story_item_min_height);
        this.mItemMaxHeight = resources.getDimensionPixelOffset(R.dimen.story_item_max_height);
    }

    private float getRatio(Size imageSize) {
        float ratio = 1.0f;
        try {
            ratio = ((float) imageSize.mWidth) / ((float) imageSize.mHeight);
            if (Float.compare(ratio, 0.0f) == 0) {
                return 1.0f;
            }
            return ratio;
        } catch (Exception e) {
            Log.e("LayoutParamsHelper", "getRatio error:" + e);
            return ratio;
        }
    }

    public void updateLayoutSizes(List<Size> imageSizes, int parentWidth, int decorationWidth) {
        int rowIndex = 0;
        this.mLayoutSizes.clear();
        if (MiscUtil.isValid(imageSizes)) {
            int imageIndex = 0;
            while (imageIndex < imageSizes.size()) {
                Log.d("LayoutParamsHelper", "Row index:" + rowIndex);
                rowIndex++;
                Object size1 = new Size();
                Object size2 = new Size();
                Object size3 = new Size();
                Size firstImageSize = (Size) imageSizes.get(imageIndex);
                size1.mWidth = parentWidth;
                size1.mHeight = (int) (((float) size1.mWidth) / getRatio(firstImageSize));
                if (size1.mHeight < this.mItemMinHeight) {
                    size1.mHeight = this.mItemMinHeight;
                    this.mLayoutSizes.add(size1);
                    Log.d("LayoutParamsHelper", size1);
                } else {
                    imageIndex++;
                    if (imageIndex == imageSizes.size()) {
                        if (size1.mHeight > this.mItemMaxHeight) {
                            size1.mHeight = this.mItemMaxHeight;
                        }
                        this.mLayoutSizes.add(size1);
                        Log.d("LayoutParamsHelper", size1);
                        return;
                    }
                    Size secondImageSize = (Size) imageSizes.get(imageIndex);
                    float ratio1 = getRatio(firstImageSize);
                    float ratio2 = getRatio(secondImageSize);
                    int height = (int) (((float) (parentWidth - decorationWidth)) / (ratio1 + ratio2));
                    if (height < this.mItemMinHeight) {
                        size1.mHeight = size1.mHeight > this.mItemMaxHeight ? this.mItemMaxHeight : size1.mHeight;
                        this.mLayoutSizes.add(size1);
                        imageIndex--;
                        Log.d("LayoutParamsHelper", size1);
                    } else {
                        size1.mHeight = height;
                        size1.mWidth = (int) (((float) height) * ratio1);
                        size2.mHeight = height;
                        size2.mWidth = (int) (((float) height) * ratio2);
                        imageIndex++;
                        if (imageIndex == imageSizes.size()) {
                            if (size1.mHeight > this.mItemMaxHeight) {
                                size1.mHeight = this.mItemMaxHeight;
                                size2.mHeight = this.mItemMaxHeight;
                            }
                            this.mLayoutSizes.add(size1);
                            this.mLayoutSizes.add(size2);
                            Log.d("LayoutParamsHelper", size1);
                            Log.d("LayoutParamsHelper", size2);
                            return;
                        }
                        float ratio3 = getRatio((Size) imageSizes.get(imageIndex));
                        height = (int) (((float) (parentWidth - (decorationWidth * 2))) / ((ratio1 + ratio2) + ratio3));
                        if (height < this.mItemMinHeight) {
                            if (size1.mHeight > this.mItemMaxHeight) {
                                size1.mHeight = this.mItemMaxHeight;
                                size2.mHeight = this.mItemMaxHeight;
                            }
                            this.mLayoutSizes.add(size1);
                            this.mLayoutSizes.add(size2);
                            imageIndex--;
                            Log.d("LayoutParamsHelper", size1);
                            Log.d("LayoutParamsHelper", size2);
                        } else {
                            if (height > this.mItemMaxHeight) {
                                size1.mHeight = this.mItemMaxHeight;
                                size2.mHeight = this.mItemMaxHeight;
                                size3.mHeight = this.mItemMaxHeight;
                            } else {
                                size1.mHeight = height;
                                size2.mHeight = height;
                                size3.mHeight = height;
                            }
                            size1.mWidth = (int) (((float) height) * ratio1);
                            size2.mWidth = (int) (((float) height) * ratio2);
                            size3.mWidth = (int) (((float) height) * ratio3);
                            this.mLayoutSizes.add(size1);
                            this.mLayoutSizes.add(size2);
                            this.mLayoutSizes.add(size3);
                            Log.d("LayoutParamsHelper", size1);
                            Log.d("LayoutParamsHelper", size2);
                            Log.d("LayoutParamsHelper", size3);
                        }
                    }
                }
                imageIndex++;
            }
        }
    }

    public ImageSize getLayoutSize(int position) {
        if (position < 0 || position >= this.mLayoutSizes.size()) {
            return null;
        }
        return new ImageSize(((Size) this.mLayoutSizes.get(position)).mWidth, ((Size) this.mLayoutSizes.get(position)).mHeight);
    }
}
