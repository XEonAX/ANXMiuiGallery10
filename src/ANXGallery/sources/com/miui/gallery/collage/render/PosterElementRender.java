package com.miui.gallery.collage.render;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.collage.CollageUtils;
import com.miui.gallery.collage.ElementPositionModel;
import com.miui.gallery.collage.ImageElementModel;
import com.miui.gallery.collage.PosterModel;
import com.miui.gallery.collage.SpecifyDrawableModel;
import com.miui.gallery.collage.TextElementModel;
import com.miui.gallery.editor.photo.core.imports.text.utils.AutoLineLayout;
import com.miui.gallery.editor.photo.core.imports.text.utils.AutoLineLayout.TextAlignment;
import java.io.File;

public class PosterElementRender {
    private int mBackground = -1;
    private Drawable[] mImageDrawables;
    private Drawable[] mSpecifyDrawables;
    private TextEditorHolder[] mTextEditorHolders;

    public static class ReadPosterDataTask extends AsyncTask<PosterModel, Void, Void> {
        private int mBackgroundColor;
        private Context mContext;
        private int mHeight;
        private Drawable[] mImageDrawables;
        private LoadDataListener mLoadDataListener;
        private PosterElementRender mPosterElementRender;
        private float mScale;
        private Drawable[] mSpecifyDrawables;
        private TextEditorHolder[] mTextEditorHolders;
        private int mWidth;

        public interface LoadDataListener {
            void onLoadFinish();
        }

        public ReadPosterDataTask(PosterElementRender posterElementRender, int width, int height, Context context) {
            this(posterElementRender, width, height, 1.0f, context);
        }

        public ReadPosterDataTask(PosterElementRender posterElementRender, int width, int height, float scale, Context context) {
            this.mBackgroundColor = -1;
            this.mWidth = width;
            this.mHeight = height;
            this.mScale = scale;
            this.mContext = context;
            this.mPosterElementRender = posterElementRender;
        }

        protected Void doInBackground(PosterModel... params) {
            performDoInBackground(params);
            return null;
        }

        public void performDoInBackground(PosterModel... params) {
            PosterModel posterModel = params[0];
            ImageElementModel[] imageElementModels = posterModel.imageElementModels;
            SpecifyDrawableModel[] specifyDrawableModels = posterModel.specifyDrawableModels;
            TextElementModel[] textElementModels = posterModel.textElementModels;
            String backgroundColor = posterModel.background;
            if (imageElementModels != null && imageElementModels.length > 0) {
                this.mImageDrawables = PosterElementRender.generateImageDrawables(this.mContext.getResources(), imageElementModels, this.mWidth, this.mHeight);
            }
            if (specifyDrawableModels != null && specifyDrawableModels.length > 0) {
                this.mSpecifyDrawables = PosterElementRender.generateSpecifyDrawables(this.mContext.getResources(), specifyDrawableModels, this.mWidth, this.mHeight);
            }
            if (textElementModels != null && textElementModels.length > 0) {
                this.mTextEditorHolders = PosterElementRender.generateTextHolders(this.mContext, textElementModels, this.mWidth, this.mHeight, this.mScale);
            }
            if (!TextUtils.isEmpty(backgroundColor)) {
                this.mBackgroundColor = Color.parseColor(backgroundColor);
            }
        }

        protected void onPostExecute(Void aVoid) {
            performOnPostExecute(aVoid);
        }

        public void performOnPostExecute(Void aVoid) {
            if (this.mPosterElementRender != null) {
                this.mPosterElementRender.clear();
                this.mPosterElementRender.setImageDrawables(this.mImageDrawables);
                this.mPosterElementRender.setSpecifyDrawables(this.mSpecifyDrawables);
                this.mPosterElementRender.setTextEditorHolders(this.mTextEditorHolders);
                this.mPosterElementRender.setBackground(this.mBackgroundColor);
            }
            if (this.mLoadDataListener != null) {
                this.mLoadDataListener.onLoadFinish();
            }
        }

        public void setLoadDataListener(LoadDataListener loadDataListener) {
            this.mLoadDataListener = loadDataListener;
        }
    }

    public static class TextEditorHolder {
        private int mAlpha = 0;
        private AutoLineLayout mAutoLineLayout = new AutoLineLayout();
        private float mCurrentTextProgress = 0.0f;
        private float mDensity;
        private boolean mHasModify = false;
        private int mHighLightBackground = 0;
        private int mHighLightColor;
        private int mHighLightLineColor;
        private Path mHighLightPath = new Path();
        private RectF mHighLightRectF = new RectF();
        private String mOriginText;
        private Paint mPaint = new Paint(1);
        private int mParentHeight;
        private int mParentWidth;
        private Paint mPathPaint = new Paint(1);
        private boolean mRTL = false;
        private float mScaleOffset;
        private TextElementModel mTextElementModel;
        private RectF mTextRectF = new RectF();
        private RectF mTextRectForTouch = new RectF();
        private int mTextTouchOffset;

        TextEditorHolder(Context context, TextElementModel textElementModel, int parentWidth, int parentHeight, float scaleOffset) {
            boolean z = false;
            Resources resources = context.getResources();
            if (resources.getConfiguration().getLayoutDirection() == 1) {
                z = true;
            }
            this.mRTL = z;
            this.mHighLightLineColor = resources.getColor(R.color.collage_poster_high_light_line_color);
            this.mTextTouchOffset = resources.getDimensionPixelSize(R.dimen.collage_text_touch_offset);
            this.mHighLightColor = resources.getColor(R.color.collage_poster_high_light_color);
            this.mPathPaint.setPathEffect(new DashPathEffect(new float[]{12.0f, 6.0f}, 0.0f));
            this.mPathPaint.setColor(this.mHighLightLineColor);
            this.mPathPaint.setStyle(Style.STROKE);
            this.mPathPaint.setStrokeWidth(1.0f);
            this.mParentWidth = parentWidth;
            this.mParentHeight = parentHeight;
            this.mDensity = resources.getDisplayMetrics().density;
            this.mScaleOffset = scaleOffset;
            this.mTextElementModel = textElementModel;
            configPaint(resources);
            this.mOriginText = this.mTextElementModel.getText(context);
            if (TextUtils.isEmpty(this.mTextElementModel.currentText)) {
                this.mTextElementModel.currentText = this.mOriginText;
            } else {
                this.mHasModify = true;
            }
            this.mAutoLineLayout.setTextAlignment(TextAlignment.CENTER);
            this.mAutoLineLayout.setText(textElementModel.currentText);
            countTextAndStroke();
        }

        void draw(Canvas canvas) {
            if (this.mCurrentTextProgress > 0.0f) {
                this.mPaint.setColor(this.mHighLightBackground);
                this.mPathPaint.setAlpha(this.mAlpha);
                canvas.drawRect(this.mHighLightRectF, this.mPaint);
                canvas.drawPath(this.mHighLightPath, this.mPathPaint);
            }
            PosterElementRender.drawText(canvas, this.mAutoLineLayout, this.mTextRectF, this.mScaleOffset);
        }

        private void configPaint(Resources resources) {
            if (this.mTextElementModel != null) {
                PosterElementRender.configTextPaint(this.mAutoLineLayout, this.mTextElementModel, resources);
            }
        }

        void countTextAndStroke() {
            if (this.mTextElementModel != null) {
                PosterElementRender.countText(this.mAutoLineLayout, this.mTextElementModel, this.mTextRectF, this.mParentWidth, this.mParentHeight, this.mScaleOffset, this.mRTL);
                this.mHighLightRectF.set(this.mTextRectF);
                this.mHighLightRectF.inset(-6.0f * this.mDensity, -2.0f * this.mDensity);
                RectF mPathRect = new RectF();
                mPathRect.set(this.mHighLightRectF);
                this.mHighLightPath.reset();
                this.mHighLightPath.addRect(mPathRect, Direction.CW);
                this.mTextRectForTouch.set(this.mTextRectF);
                this.mTextRectForTouch.inset((float) (-this.mTextTouchOffset), (float) (-this.mTextTouchOffset));
            }
        }

        public void setTextAndCount(String s, Rect textArea) {
            if (this.mTextElementModel != null) {
                this.mHasModify = true;
                this.mTextElementModel.currentText = s;
                this.mAutoLineLayout.setText(s);
                countTextAndStroke();
                this.mTextRectF.roundOut(textArea);
            }
        }

        public boolean contains(float x, float y) {
            return this.mTextRectForTouch.contains(x, y);
        }

        public String getCurrentText() {
            return this.mAutoLineLayout.getText();
        }

        public void setCurrentTextProgress(float currentTextProgress) {
            this.mCurrentTextProgress = currentTextProgress;
            this.mHighLightBackground = PosterElementRender.getColorToColorProgress(0, this.mHighLightColor, this.mCurrentTextProgress);
            this.mAlpha = (int) (255.0f * this.mCurrentTextProgress);
        }

        public boolean hasModify() {
            return this.mHasModify;
        }

        public int getMaxSize() {
            return Math.max(this.mTextElementModel.maxLength, this.mOriginText.length());
        }
    }

    public void draw(Canvas canvas) {
        int i = 0;
        if (this.mImageDrawables != null && this.mImageDrawables.length > 0) {
            for (Drawable drawable : this.mImageDrawables) {
                drawable.draw(canvas);
            }
        }
        if (this.mSpecifyDrawables != null && this.mSpecifyDrawables.length > 0) {
            for (Drawable drawable2 : this.mSpecifyDrawables) {
                drawable2.draw(canvas);
            }
        }
        if (this.mTextEditorHolders != null && this.mTextEditorHolders.length > 0) {
            TextEditorHolder[] textEditorHolderArr = this.mTextEditorHolders;
            int length = textEditorHolderArr.length;
            while (i < length) {
                textEditorHolderArr[i].draw(canvas);
                i++;
            }
        }
    }

    public void setImageDrawables(Drawable[] imageDrawables) {
        this.mImageDrawables = imageDrawables;
    }

    public void setSpecifyDrawables(Drawable[] specifyDrawables) {
        this.mSpecifyDrawables = specifyDrawables;
    }

    public void setTextEditorHolders(TextEditorHolder[] textEditorHolders) {
        this.mTextEditorHolders = textEditorHolders;
    }

    public int getBackground() {
        return this.mBackground;
    }

    public void setBackground(int background) {
        this.mBackground = background;
    }

    public void clear() {
        this.mImageDrawables = null;
        this.mSpecifyDrawables = null;
        this.mTextEditorHolders = null;
        this.mBackground = -1;
    }

    public TextEditorHolder[] getTextEditorHolders() {
        return this.mTextEditorHolders;
    }

    private static void configTextPaint(AutoLineLayout autoLineLayout, TextElementModel textElementModel, Resources resources) {
        if (textElementModel != null) {
            Paint paint = autoLineLayout.getPaint();
            paint.setTextSize(textElementModel.textSize * resources.getDisplayMetrics().density);
            paint.setColor(Color.parseColor(textElementModel.textColor));
            autoLineLayout.setLetterSpace(textElementModel.letterSpace);
        }
    }

    private static void countText(AutoLineLayout autoLineLayout, TextElementModel textElementModel, RectF textRectF, int parentWidth, int parentHeight, float scaleOffset, boolean isRTL) {
        autoLineLayout.countText();
        autoLineLayout.getTextRect(textRectF);
        textRectF.left *= scaleOffset;
        textRectF.right *= scaleOffset;
        textRectF.top *= scaleOffset;
        textRectF.bottom *= scaleOffset;
        ElementPositionModel.getRectByLocation(textRectF, textElementModel, textRectF.width(), textRectF.height(), parentWidth, parentHeight, isRTL);
    }

    private static void drawText(Canvas canvas, AutoLineLayout autoLineLayout, RectF textRectF, float scaleOffset) {
        canvas.save();
        canvas.translate(textRectF.centerX(), textRectF.centerY());
        canvas.scale(scaleOffset, scaleOffset, 0.0f, 0.0f);
        autoLineLayout.draw(canvas);
        canvas.restore();
    }

    private static TextEditorHolder[] generateTextHolders(Context context, TextElementModel[] textElementModels, int parentWidth, int parentHeight, float scale) {
        TextEditorHolder[] textEditorHolders = new TextEditorHolder[textElementModels.length];
        for (int i = 0; i < textElementModels.length; i++) {
            textEditorHolders[i] = new TextEditorHolder(context, textElementModels[i], parentWidth, parentHeight, scale);
        }
        return textEditorHolders;
    }

    private static Drawable[] generateSpecifyDrawables(Resources resources, SpecifyDrawableModel[] specifyDrawableModels, int parentWidth, int parentHeight) {
        if (specifyDrawableModels == null || specifyDrawableModels.length == 0) {
            return null;
        }
        RectF rectFTemp = new RectF();
        Rect rectTemp = new Rect();
        Drawable[] drawables = new Drawable[specifyDrawableModels.length];
        for (int i = 0; i < drawables.length; i++) {
            SpecifyDrawableModel specifyDrawableModel = specifyDrawableModels[i];
            Drawable drawable = specifyDrawableModel.specifyDrawableType.getDrawable(resources, specifyDrawableModel);
            ElementPositionModel.getRectByLocation(rectFTemp, specifyDrawableModel, (float) drawable.getIntrinsicWidth(), (float) drawable.getIntrinsicHeight(), parentWidth, parentHeight, resources.getConfiguration().getLayoutDirection() == 1);
            rectFTemp.round(rectTemp);
            drawable.setBounds(rectTemp);
            drawables[i] = drawable;
        }
        return drawables;
    }

    private static Drawable[] generateImageDrawables(Resources resources, ImageElementModel[] imageElementModels, int parentWidth, int parentHeight) {
        if (imageElementModels == null || imageElementModels.length == 0) {
            return null;
        }
        RectF rectFTemp = new RectF();
        Rect rectTemp = new Rect();
        Drawable[] drawables = new Drawable[imageElementModels.length];
        for (int i = 0; i < drawables.length; i++) {
            ImageElementModel imageElementModel = imageElementModels[i];
            Drawable drawable = CollageUtils.getDrawableByAssets(resources, imageElementModel.relativePath + File.separator + imageElementModel.name);
            float drawableWidth = ((float) parentWidth) * imageElementModel.width;
            ElementPositionModel.getRectByLocation(rectFTemp, imageElementModel, drawableWidth, drawableWidth * (((float) drawable.getIntrinsicHeight()) / ((float) drawable.getIntrinsicWidth())), parentWidth, parentHeight, resources.getConfiguration().getLayoutDirection() == 1);
            rectFTemp.round(rectTemp);
            drawable.setBounds(rectTemp);
            drawables[i] = drawable;
        }
        return drawables;
    }

    private static int getColorToColorProgress(int colorA, int colorB, float progress) {
        int alphaA = Color.alpha(colorA);
        int redA = Color.red(colorA);
        int greenA = Color.green(colorA);
        int blueA = Color.blue(colorA);
        return Color.argb(alphaA + ((int) (((float) (Color.alpha(colorB) - alphaA)) * progress)), redA + ((int) (((float) (Color.red(colorB) - redA)) * progress)), greenA + ((int) (((float) (Color.green(colorB) - greenA)) * progress)), blueA + ((int) (((float) (Color.blue(colorB) - blueA)) * progress)));
    }
}
