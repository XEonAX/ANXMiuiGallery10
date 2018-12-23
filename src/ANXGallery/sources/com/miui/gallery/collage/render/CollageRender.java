package com.miui.gallery.collage.render;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Region.Op;
import android.util.TypedValue;
import com.miui.gallery.R;
import com.miui.gallery.collage.ClipType;
import com.miui.gallery.collage.CollagePositionModel;
import com.miui.gallery.collage.LayoutItemModel;
import com.miui.gallery.collage.LayoutModel;
import com.miui.gallery.collage.PosterModel;
import com.miui.gallery.collage.render.PosterElementRender.ReadPosterDataTask;
import com.miui.gallery.collage.render.PosterElementRender.ReadPosterDataTask.LoadDataListener;
import com.miui.gallery.collage.widget.CollageImageView;
import com.miui.gallery.collage.widget.CollageLayout;
import com.miui.gallery.collage.widget.PosterLayout;
import com.miui.gallery.util.Log;
import java.util.Arrays;

public class CollageRender {

    public interface GenerateRenderDataListener {
        void onFinish(RenderData renderData);
    }

    public static class BitmapRenderData {
        public Bitmap bitmap;
        public final RectF bitmapInsideRect = new RectF();
        public boolean mirror;
        public int rotate;
        public boolean transition;

        public String toString() {
            return "BitmapRenderData{bitmap=" + this.bitmap + ", rotate=" + this.rotate + ", mirror=" + this.mirror + ", transition=" + this.transition + ", bitmapInsideRect=" + this.bitmapInsideRect + '}';
        }
    }

    public static class ImageLocation {
        private int mBottom;
        final float[] mClipArray;
        final ClipType mClipType;
        private int mLeft;
        final Path mPathForChoose = new Path();
        final Path mPathForClip = new Path();
        final Region mPathRegion = new Region();
        private int mRight;
        private int mTop;

        public ImageLocation(ClipType clipType, float[] clipArray) {
            this.mClipType = clipType;
            this.mClipArray = clipArray;
        }

        public Path getPathForClip() {
            return this.mPathForClip;
        }

        public Path getPathForChoose() {
            return this.mPathForChoose;
        }

        public Region getPathRegion() {
            return this.mPathRegion;
        }

        public int getLeft() {
            return this.mLeft;
        }

        public int getTop() {
            return this.mTop;
        }

        public int getRight() {
            return this.mRight;
        }

        public int getBottom() {
            return this.mBottom;
        }
    }

    public static class ImageLocationProcessor {
        private float[] mClipArray;
        private ImageLocation mImageLocation;
        private Matrix mMatrix = new Matrix();
        private RectF mPathRectF = new RectF();
        private Region mPathRegion = new Region();

        public void processorImageLocation(ImageLocation imageLocation, float parentWidth, float parentHeight, float margin) {
            this.mImageLocation = imageLocation;
            if (margin > 0.0f) {
                generateClipArrayBySize(parentWidth - (margin * 2.0f), parentHeight - (margin * 2.0f));
                generatePath();
                enableMargin(margin);
            } else {
                generateClipArrayBySize(parentWidth, parentHeight);
                generatePath();
            }
            generateLayoutSizeByRect();
        }

        private void generateLayoutSizeByRect() {
            this.mImageLocation.mLeft = Math.round(this.mPathRectF.left);
            this.mImageLocation.mTop = Math.round(this.mPathRectF.top);
            this.mImageLocation.mRight = Math.round(this.mPathRectF.right);
            this.mImageLocation.mBottom = Math.round(this.mPathRectF.bottom);
            this.mImageLocation.mPathRegion.set(this.mPathRegion);
        }

        private void generateClipArrayBySize(float width, float height) {
            float[] clipArray = this.mImageLocation.mClipArray;
            this.mClipArray = new float[clipArray.length];
            for (int i = 0; i < clipArray.length; i += 2) {
                this.mClipArray[i] = clipArray[i] * width;
                this.mClipArray[i + 1] = clipArray[i + 1] * height;
            }
        }

        private void generatePath() {
            Path pathForClip = this.mImageLocation.mPathForClip;
            Path pathForChoose = this.mImageLocation.mPathForChoose;
            pathForClip.reset();
            switch (this.mImageLocation.mClipType) {
                case CIRCLE:
                    pathForClip.addOval(new RectF(this.mClipArray[0], this.mClipArray[1], this.mClipArray[2], this.mClipArray[3]), Direction.CW);
                    break;
                default:
                    for (int i = 0; i < this.mClipArray.length; i += 2) {
                        float x = this.mClipArray[i];
                        float y = this.mClipArray[i + 1];
                        if (pathForClip.isEmpty()) {
                            pathForClip.moveTo(x, y);
                        } else {
                            pathForClip.lineTo(x, y);
                        }
                    }
                    pathForClip.close();
                    break;
            }
            pathForClip.computeBounds(this.mPathRectF, true);
            this.mPathRegion.setEmpty();
            this.mPathRegion.setPath(pathForClip, new Region((int) this.mPathRectF.left, (int) this.mPathRectF.top, (int) this.mPathRectF.right, (int) this.mPathRectF.bottom));
            pathForChoose.reset();
            pathForChoose.set(pathForClip);
        }

        private void enableMargin(float margin) {
            if (margin != 0.0f) {
                Path pathForClip = this.mImageLocation.mPathForClip;
                Path pathForChoose = this.mImageLocation.mPathForChoose;
                switch (this.mImageLocation.mClipType) {
                    case CIRCLE:
                        pathForClip.reset();
                        pathForClip.addOval(new RectF(this.mClipArray[0] + margin, this.mClipArray[1] + margin, this.mClipArray[2] - margin, this.mClipArray[3] - margin), Direction.CW);
                        pathForClip.offset((float) Math.round(margin), (float) Math.round(margin));
                        pathForClip.computeBounds(this.mPathRectF, true);
                        this.mPathRegion.setEmpty();
                        this.mPathRegion.setPath(pathForClip, new Region((int) this.mPathRectF.left, (int) this.mPathRectF.top, (int) this.mPathRectF.right, (int) this.mPathRectF.bottom));
                        pathForChoose.offset((float) Math.round(margin), (float) Math.round(margin));
                        return;
                    case PATH:
                        Path path = new Path();
                        RectF rectF = new RectF();
                        Region region = new Region();
                        for (int i = 0; i < this.mClipArray.length; i += 2) {
                            pointStart = new float[2];
                            float[] pointEnd = new float[]{this.mClipArray[i], this.mClipArray[i + 1]};
                            if (i == this.mClipArray.length - 2) {
                                pointEnd[0] = this.mClipArray[0];
                                pointEnd[1] = this.mClipArray[1];
                            } else {
                                pointEnd[0] = this.mClipArray[i + 2];
                                pointEnd[1] = this.mClipArray[i + 3];
                            }
                            float xStart = pointStart[0];
                            float yStart = pointStart[1];
                            float xEnd = pointEnd[0];
                            float yEnd = pointEnd[1];
                            double degree = Math.toDegrees(Math.atan2((double) (pointEnd[1] - pointStart[1]), (double) (pointEnd[0] - pointStart[0])));
                            Log.d("CollageRender", "xStart:%f yStart:%f xEnd:%f yEnd:%f degree：%f", Float.valueOf(pointStart[0]), Float.valueOf(pointStart[1]), Float.valueOf(pointEnd[0]), Float.valueOf(pointEnd[1]), Double.valueOf(degree));
                            this.mMatrix.reset();
                            this.mMatrix.postRotate((float) (-degree));
                            this.mMatrix.postTranslate(0.0f, -margin);
                            this.mMatrix.postRotate((float) degree);
                            this.mMatrix.mapPoints(pointStart);
                            this.mMatrix.mapPoints(pointEnd);
                            Log.d("CollageRender", "xStart:%f yStart:%f", Float.valueOf(pointStart[0]), Float.valueOf(pointStart[1]));
                            path.reset();
                            path.moveTo(xStart, yStart);
                            path.lineTo(xEnd, yEnd);
                            path.lineTo(pointEnd[0], pointEnd[1]);
                            path.lineTo(pointStart[0], pointStart[1]);
                            path.close();
                            path.computeBounds(rectF, true);
                            region.setEmpty();
                            region.setPath(path, new Region((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom));
                            this.mPathRegion.op(region, Op.DIFFERENCE);
                        }
                        this.mPathRegion.translate(Math.round(margin), Math.round(margin));
                        pathForChoose.offset((float) Math.round(margin), (float) Math.round(margin));
                        pathForClip.reset();
                        this.mPathRegion.getBoundaryPath(pathForClip);
                        pathForClip.computeBounds(this.mPathRectF, true);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    public static class RenderData {
        public BitmapRenderData[] bitmapRenders;
        public int imageHeight;
        public int imageWidth;
        public LayoutModel layoutModel;
        public int margin;
        public PosterElementRender posterElementRender;
        public PosterModel posterModel;
        public float scaleOffset = 1.0f;

        public String toString() {
            return "RenderData{imageWidth=" + this.imageWidth + ", imageHeight=" + this.imageHeight + ", scaleOffset=" + this.scaleOffset + ", margin=" + this.margin + ", bitmapRenders=" + Arrays.toString(this.bitmapRenders) + '}';
        }
    }

    public static void generateRenderData(Context context, PosterModel posterModel, LayoutModel layoutModel, CollageLayout collageLayout, PosterLayout posterLayout, GenerateRenderDataListener generateRenderDataListener) {
        int childCount = collageLayout.getChildCount();
        BitmapRenderData[] bitmapRenderDataArray = new BitmapRenderData[childCount];
        for (int i = 0; i < childCount; i++) {
            bitmapRenderDataArray[i] = ((CollageImageView) collageLayout.getChildAt(i)).generateBitmapRenderData();
        }
        RenderData renderData = generateRenderData(context.getResources(), posterModel, layoutModel, bitmapRenderDataArray);
        renderData.scaleOffset = ((float) renderData.imageWidth) / ((float) posterLayout.getWidth());
        renderData.margin = collageLayout.getMargin();
        generatePosterElementRender(context, renderData, generateRenderDataListener);
    }

    private static void generatePosterElementRender(Context context, RenderData renderData, GenerateRenderDataListener generateRenderDataListener) {
        generatePosterElementRender(context, renderData, generateRenderDataListener, true);
    }

    private static void generatePosterElementRender(Context context, final RenderData renderData, final GenerateRenderDataListener generateRenderDataListener, boolean async) {
        if (renderData.posterModel != null) {
            final PosterElementRender posterElementRender = new PosterElementRender();
            ReadPosterDataTask readPosterDataTask = new ReadPosterDataTask(posterElementRender, renderData.imageWidth, renderData.imageHeight, renderData.scaleOffset, context);
            readPosterDataTask.setLoadDataListener(new LoadDataListener() {
                public void onLoadFinish() {
                    renderData.posterElementRender = posterElementRender;
                    if (generateRenderDataListener != null) {
                        generateRenderDataListener.onFinish(renderData);
                    }
                }
            });
            if (async) {
                readPosterDataTask.execute(new PosterModel[]{renderData.posterModel});
                return;
            }
            readPosterDataTask.performDoInBackground(renderData.posterModel);
            readPosterDataTask.performOnPostExecute(null);
            renderData.posterElementRender = posterElementRender;
        } else if (generateRenderDataListener != null) {
            generateRenderDataListener.onFinish(renderData);
        }
    }

    private static RenderData generateRenderData(Resources resources, PosterModel posterModel, LayoutModel layoutModel, BitmapRenderData[] bitmapRenderDataArray) {
        RenderData renderData = new RenderData();
        TypedValue ratioValue = new TypedValue();
        resources.getValue(R.dimen.poster_image_ratio, ratioValue, true);
        float ratio = ratioValue.getFloat();
        renderData.imageWidth = 1080;
        renderData.imageHeight = Math.round(((float) renderData.imageWidth) / ratio);
        renderData.posterModel = posterModel;
        renderData.layoutModel = layoutModel;
        renderData.bitmapRenders = bitmapRenderDataArray;
        return renderData;
    }

    public static void doRender(Canvas canvas, RenderData renderData) {
        float[] collagePosition;
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        RectF collageRect = new RectF();
        if (renderData.posterModel != null) {
            collagePosition = CollagePositionModel.getCollagePositionModelByImageSize(renderData.posterModel.collagePositions, renderData.bitmapRenders.length).position;
        } else {
            collagePosition = PosterLayout.DEFAULT_LAYOUT_PARAMS;
        }
        collageRect.set((float) ((int) (((float) width) * collagePosition[0])), (float) ((int) (((float) height) * collagePosition[1])), (float) ((int) (((float) width) * collagePosition[2])), (float) ((int) (((float) height) * collagePosition[3])));
        canvas.drawColor(-1);
        drawBitmap(canvas, renderData, collageRect);
        PosterElementRender posterElementRender = renderData.posterElementRender;
        if (posterElementRender != null) {
            posterElementRender.draw(canvas);
        }
    }

    private static void drawBitmap(Canvas canvas, RenderData renderData, RectF collageRect) {
        LayoutModel layoutModel = renderData.layoutModel;
        int width = renderData.imageWidth;
        int height = renderData.imageHeight;
        float margin = (float) renderData.margin;
        BitmapRenderData[] bitmapRenderDataArray = renderData.bitmapRenders;
        ImageLocationProcessor imageLocationProcessor = new ImageLocationProcessor();
        Paint paint = new Paint(3);
        Matrix bitmapMatrix = new Matrix();
        RectF rectF = collageRect;
        new Matrix().setRectToRect(new RectF(0.0f, 0.0f, (float) width, (float) height), rectF, ScaleToFit.FILL);
        RectF canvasBound = new RectF();
        RectF bitmapBound = new RectF();
        RectF bitmapInitBound = new RectF();
        RectF bitmapInsideBound = new RectF();
        Matrix userMatrix = new Matrix();
        for (int i = 0; i < layoutModel.items.length; i++) {
            if (i < bitmapRenderDataArray.length) {
                LayoutItemModel layoutItemModel = layoutModel.items[i];
                ImageLocation imageLocation = new ImageLocation(layoutItemModel.clipType, layoutItemModel.data);
                imageLocationProcessor.processorImageLocation(imageLocation, collageRect.width(), collageRect.height(), renderData.scaleOffset * margin);
                canvas.save();
                canvas.translate(collageRect.left, collageRect.top);
                canvas.clipPath(imageLocation.mPathForClip);
                canvasBound.set((float) imageLocation.mLeft, (float) imageLocation.mTop, (float) imageLocation.mRight, (float) imageLocation.mBottom);
                BitmapRenderData bitmapRenderData = bitmapRenderDataArray[i];
                if (!(bitmapRenderData == null || bitmapRenderData.bitmap == null)) {
                    Bitmap bitmap = bitmapRenderData.bitmap;
                    bitmapBound.set(0.0f, 0.0f, (float) bitmap.getWidth(), (float) bitmap.getHeight());
                    if (bitmapRenderData.transition) {
                        initBitmapMatrix(bitmapBound, bitmapMatrix, canvasBound, bitmapRenderData.mirror, bitmapRenderData.rotate, bitmapInitBound);
                        bitmapInsideBound.set(bitmapRenderData.bitmapInsideRect);
                        bitmapInsideBound.left = (bitmapInsideBound.left * bitmapInitBound.width()) + bitmapInitBound.left;
                        bitmapInsideBound.right = (bitmapInsideBound.right * bitmapInitBound.width()) + bitmapInitBound.left;
                        bitmapInsideBound.top = (bitmapInsideBound.top * bitmapInitBound.height()) + bitmapInitBound.top;
                        bitmapInsideBound.bottom = (bitmapInsideBound.bottom * bitmapInitBound.height()) + bitmapInitBound.top;
                        userMatrix.reset();
                        userMatrix.setRectToRect(bitmapInsideBound, bitmapInitBound, ScaleToFit.CENTER);
                        canvas.save();
                        canvas.concat(userMatrix);
                        canvas.drawBitmap(bitmap, bitmapMatrix, paint);
                        canvas.restore();
                    } else {
                        initBitmapMatrix(bitmapBound, bitmapMatrix, canvasBound, bitmapInitBound);
                        canvas.drawBitmap(bitmap, bitmapMatrix, paint);
                    }
                }
                canvas.restore();
            }
        }
    }

    public static void initBitmapMatrix(RectF bitmapRect, Matrix bitmapMatrix, RectF displayRect, RectF rectBuffer) {
        initBitmapMatrix(bitmapRect, bitmapMatrix, displayRect, false, 0, rectBuffer);
    }

    public static void initBitmapMatrix(RectF bitmapRect, Matrix bitmapMatrix, RectF displayRect, boolean mirror, int rotateDegree, RectF bitmapDisplayInitRect) {
        bitmapMatrix.reset();
        bitmapMatrix.setRectToRect(bitmapRect, displayRect, ScaleToFit.CENTER);
        bitmapDisplayInitRect.set(bitmapRect);
        bitmapMatrix.mapRect(bitmapDisplayInitRect);
        if (mirror) {
            bitmapMatrix.postScale(-1.0f, 1.0f, bitmapDisplayInitRect.centerX(), bitmapDisplayInitRect.centerY());
        }
        bitmapMatrix.postRotate((float) rotateDegree, bitmapDisplayInitRect.centerX(), bitmapDisplayInitRect.centerY());
        bitmapDisplayInitRect.set(bitmapRect);
        bitmapMatrix.mapRect(bitmapDisplayInitRect);
        float scale = Math.max(displayRect.width() / bitmapDisplayInitRect.width(), displayRect.height() / bitmapDisplayInitRect.height());
        if (scale != 1.0f) {
            bitmapMatrix.postScale(scale, scale, displayRect.centerX(), displayRect.centerY());
            bitmapDisplayInitRect.set(bitmapRect);
            bitmapMatrix.mapRect(bitmapDisplayInitRect);
        }
    }
}
