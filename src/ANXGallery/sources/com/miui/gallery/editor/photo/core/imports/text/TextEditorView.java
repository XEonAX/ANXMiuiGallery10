package com.miui.gallery.editor.photo.core.imports.text;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.miui.gallery.editor.photo.core.imports.doodle.PaintElementOperationDrawable;
import com.miui.gallery.editor.photo.core.imports.doodle.PaintElementOperationDrawable.Action;
import com.miui.gallery.editor.photo.core.imports.text.TextFragment.TextStatusData;
import com.miui.gallery.editor.photo.core.imports.text.dialog.BaseDialogModel;
import com.miui.gallery.editor.photo.core.imports.text.typeface.TextStyle;
import com.miui.gallery.editor.photo.core.imports.text.utils.AutoLineLayout.TextAlignment;
import com.miui.gallery.editor.photo.utils.Bitmaps;
import com.miui.gallery.editor.photo.widgets.imageview.BitmapGestureView;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.List;

public class TextEditorView extends BitmapGestureView {
    private Paint mAuxiliaryPaint = new Paint(1);
    private float mCanvasOffsetY = 0.0f;
    private Context mContext;
    private int mCurrentIndex = -1;
    private float mCurrentTargetOffsetY = 0.0f;
    private int[] mLocation = new int[2];
    private ObjectAnimator mOffsetAnimator;
    private PaintElementOperationDrawable mOperationDrawable;
    private float mOriginScale = 1.0f;
    private RectF mRectFTemp = new RectF();
    private Rect mRectTemp = new Rect();
    private List<TextAppendConfig> mTextAppendConfigs = new ArrayList();
    private TextEditorListener mTextEditorListener;
    private AnimatorUpdateListener mUpdateListener = new AnimatorUpdateListener() {
        public void onAnimationUpdate(ValueAnimator animation) {
            TextEditorView.this.invalidate();
        }
    };

    private class GesListener implements FeatureGesListener {
        float mBaseDegrees;
        float mBaseDistance;
        float mCenterX;
        float mCenterY;
        TextAppendConfig mCurrentConfig;
        TextAppendConfig mDownConfig;
        int mDownIndex;
        float mDownX;
        float mDownY;
        boolean mNeedInit;
        private float[] mPointTemp1;
        private float[] mPointTemp2;
        float mPreDegrees;
        float mPreScale;
        RectF mRectF;
        TouchAction mTouchAction;

        private GesListener() {
            this.mTouchAction = TouchAction.NONE;
            this.mDownIndex = -1;
            this.mBaseDistance = 0.0f;
            this.mBaseDegrees = 0.0f;
            this.mCenterX = 0.0f;
            this.mCenterY = 0.0f;
            this.mRectF = new RectF();
            this.mNeedInit = false;
            this.mPreScale = 1.0f;
            this.mPreDegrees = 0.0f;
            this.mPointTemp1 = new float[2];
            this.mPointTemp2 = new float[2];
        }

        /* synthetic */ GesListener(TextEditorView x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onDown(MotionEvent e) {
            TextEditorView.this.convertPointToViewPortCoordinate(e, this.mPointTemp1);
            this.mDownX = this.mPointTemp1[0];
            this.mDownY = this.mPointTemp1[1];
            this.mDownIndex = TextEditorView.this.findItemByEvent(this.mDownX, this.mDownY);
            if (this.mDownIndex != -1) {
                this.mDownConfig = (TextAppendConfig) TextEditorView.this.mTextAppendConfigs.get(this.mDownIndex);
                this.mDownConfig.getOutLineRect(this.mRectF);
            } else {
                this.mDownConfig = null;
            }
            if (TextEditorView.this.mCurrentIndex != -1) {
                this.mTouchAction = TextEditorView.this.findTouchAction(e.getX(), e.getY());
                this.mCurrentConfig = (TextAppendConfig) TextEditorView.this.mTextAppendConfigs.get(TextEditorView.this.mCurrentIndex);
                this.mCenterX = -1.0f;
                this.mNeedInit = true;
                this.mCurrentConfig.getOutLineRect(this.mRectF);
            } else {
                this.mTouchAction = TouchAction.NONE;
                this.mCurrentConfig = null;
            }
            Log.d("TextEditorView", "mTouchAction : %s", this.mTouchAction);
            return true;
        }

        public void onSingleTapUp(MotionEvent e) {
            Log.d("TextEditorView", "click number： %d", Integer.valueOf(this.mDownIndex));
            TextEditorView.this.convertPointToViewPortCoordinate(e, this.mPointTemp1);
            if (TextEditorView.this.mCurrentIndex == -1) {
                if (this.mDownIndex != -1) {
                    TextEditorView.this.setActivation(this.mDownIndex);
                }
            } else if (this.mCurrentConfig != null) {
                switch (this.mTouchAction) {
                    case MIRROR:
                        if (this.mCurrentConfig.isDialogEnable()) {
                            this.mCurrentConfig.toggleMirror();
                            TextEditorView.this.countAndInvalidate(this.mCurrentConfig, true, true);
                            return;
                        }
                        return;
                    case DELETE:
                    case SCALE:
                        return;
                    case EDIT:
                        TextEditorView.this.notifyItemEdit();
                        return;
                    default:
                        if (this.mCurrentConfig.contains(this.mPointTemp1[0], this.mPointTemp1[1])) {
                            TextEditorView.this.notifyItemEdit();
                            return;
                        } else {
                            TextEditorView.this.clearActivation(true);
                            return;
                        }
                }
            }
        }

        public void onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            TextEditorView.this.convertPointToViewPortCoordinate(e1, this.mPointTemp1);
            TextEditorView.this.convertPointToViewPortCoordinate(e2, this.mPointTemp2);
            float currentX = this.mPointTemp2[0];
            float currentY = this.mPointTemp2[1];
            float startX = this.mPointTemp1[0];
            float startY = this.mPointTemp1[1];
            distanceX = TextEditorView.this.convertDistanceX(distanceX);
            distanceY = TextEditorView.this.convertDistanceY(distanceY);
            switch (this.mTouchAction) {
                case SCALE:
                    if (this.mNeedInit) {
                        this.mCenterX = this.mRectF.centerX();
                        this.mCenterY = this.mRectF.centerY();
                        this.mBaseDistance = (float) Math.hypot((double) (this.mCenterX - startX), (double) (this.mCenterY - startY));
                        this.mBaseDegrees = (float) Math.atan2((double) (startY - this.mCenterY), (double) (startX - this.mCenterX));
                        this.mPreScale = this.mCurrentConfig.getUserScaleMultiple();
                        this.mPreDegrees = this.mCurrentConfig.getRotateDegrees();
                        this.mNeedInit = false;
                    }
                    double currentDistance = Math.hypot((double) (this.mCenterX - currentX), (double) (this.mCenterY - currentY));
                    float scale = (float) (currentDistance / ((double) this.mBaseDistance));
                    double rotateDegrees = Math.toDegrees(Math.atan2((double) (currentY - this.mCenterY), (double) (currentX - this.mCenterX)) - ((double) this.mBaseDegrees));
                    this.mCurrentConfig.setUserScaleMultiple(this.mPreScale * scale);
                    this.mCurrentConfig.setRotateDegrees(((float) rotateDegrees) + this.mPreDegrees);
                    TextEditorView.this.mOperationDrawable.setDrawDecoration(false);
                    TextEditorView.this.countAndInvalidate(this.mCurrentConfig, false, false);
                    break;
                default:
                    if (TextEditorView.this.mCurrentIndex == -1) {
                        if (this.mDownIndex != -1) {
                            TextEditorView.this.setActivation(this.mDownIndex);
                            this.mCurrentConfig = (TextAppendConfig) TextEditorView.this.mTextAppendConfigs.get(this.mDownIndex);
                            doScroll(distanceX, distanceY, this.mCurrentConfig);
                            break;
                        }
                    }
                    doScroll(distanceX, distanceY, this.mCurrentConfig);
                    break;
                    break;
            }
            if (this.mCurrentConfig != null) {
                TextEditorView.this.configOperationPosition(this.mCurrentConfig);
            }
        }

        public void onActionUp(float x, float y) {
            int index = TextEditorView.this.findActivationIndex();
            if (index >= 0) {
                TextAppendConfig textAppendConfig = (TextAppendConfig) TextEditorView.this.mTextAppendConfigs.get(index);
                textAppendConfig.refreshRotateDegree();
                TextEditorView.this.countAndInvalidate(textAppendConfig, true, false);
                TextEditorView.this.notifyModify();
            }
            TextEditorView.this.mOperationDrawable.setDrawDecoration(true);
            TextEditorView.this.invalidate();
        }

        private void doScroll(float distanceX, float distanceY, TextAppendConfig textAppendConfig) {
            if (textAppendConfig != null) {
                textAppendConfig.getOutLineRect(TextEditorView.this.mRectFTemp);
                TextEditorView.this.mBitmapGestureParamsHolder.mCanvasMatrix.mapRect(TextEditorView.this.mRectFTemp);
                int flag = TextEditorView.this.getRectOverScrollStatus(TextEditorView.this.mRectFTemp);
                if ((flag & 8) != 0) {
                    if (distanceX > 0.0f) {
                        distanceX = 0.0f;
                    }
                } else if ((flag & 4) != 0 && distanceX < 0.0f) {
                    distanceX = 0.0f;
                }
                if ((flag & 2) != 0) {
                    if (distanceY > 0.0f) {
                        distanceY = 0.0f;
                    }
                } else if ((flag & 1) != 0 && distanceY < 0.0f) {
                    distanceY = 0.0f;
                }
                textAppendConfig.appendUserLocationX(-distanceX);
                textAppendConfig.appendUserLocationY(-distanceY);
                TextEditorView.this.countAndInvalidate(textAppendConfig, false, false);
                TextEditorView.this.configOperationPosition(this.mCurrentConfig);
                TextEditorView.this.mOperationDrawable.setDrawDecoration(false);
                TextEditorView.this.invalidate();
            }
        }

        public boolean onScale(ScaleGestureDetector detector) {
            if (this.mCurrentConfig != null) {
                this.mCurrentConfig.setUserScaleMultiple(this.mCurrentConfig.getUserScaleMultiple() * detector.getScaleFactor());
            }
            TextEditorView.this.invalidate();
            return false;
        }

        public boolean onScaleBegin(ScaleGestureDetector detector) {
            if (TextEditorView.this.mCurrentIndex != -1) {
                this.mCurrentConfig = (TextAppendConfig) TextEditorView.this.mTextAppendConfigs.get(TextEditorView.this.mCurrentIndex);
            } else {
                this.mCurrentConfig = null;
            }
            return false;
        }

        public void onScaleEnd(ScaleGestureDetector detector) {
        }
    }

    public interface TextEditorListener {
        void onClear();

        void onItemEdit();

        void onModify();
    }

    public static class TextEntry implements Parcelable {
        public static final Creator<TextEntry> CREATOR = new Creator<TextEntry>() {
            public TextEntry createFromParcel(Parcel source) {
                return new TextEntry(source);
            }

            public TextEntry[] newArray(int size) {
                return new TextEntry[size];
            }
        };
        private RectF mRectF = new RectF();
        private Resources mResource;
        private List<TextAppendConfig> mTextAppendConfigList;

        TextEntry(RectF rectF, List<TextAppendConfig> textAppendConfigList, Resources resource) {
            this.mRectF.set(rectF);
            this.mTextAppendConfigList = new ArrayList(textAppendConfigList);
            this.mResource = resource;
        }

        protected Bitmap apply(Bitmap bitmap) {
            Bitmap out;
            if (bitmap.isMutable()) {
                out = bitmap;
            } else {
                out = Bitmaps.copyBitmap(bitmap);
            }
            if (out == null) {
                return null;
            }
            RectF rect = new RectF(0.0f, 0.0f, (float) out.getWidth(), (float) out.getHeight());
            Matrix matrix = new Matrix();
            matrix.setRectToRect(this.mRectF, rect, ScaleToFit.FILL);
            Canvas canvas = new Canvas(out);
            canvas.concat(matrix);
            for (TextAppendConfig textAppendConfig : this.mTextAppendConfigList) {
                textAppendConfig.draw(canvas);
            }
            return out;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeParcelable(this.mRectF, flags);
            dest.writeList(this.mTextAppendConfigList);
        }

        protected TextEntry(Parcel in) {
            this.mRectF = (RectF) in.readParcelable(RectF.class.getClassLoader());
            this.mTextAppendConfigList = new ArrayList();
            in.readList(this.mTextAppendConfigList, TextAppendConfig.class.getClassLoader());
        }
    }

    private enum TouchAction {
        NONE,
        DELETE,
        SCALE,
        MIRROR,
        EDIT
    }

    public TextEditorView(Context context) {
        super(context);
        init(context);
    }

    private void init(Context context) {
        this.mContext = context;
        setBackground(null);
        this.mAuxiliaryPaint.setColor(-1);
        this.mAuxiliaryPaint.setStyle(Style.STROKE);
        this.mAuxiliaryPaint.setStrokeWidth(1.0f);
        setFeatureGestureListener(new GesListener(this, null));
        this.mOperationDrawable = new PaintElementOperationDrawable(getResources());
    }

    protected void drawChild(Canvas canvas) {
        canvas.save();
        canvas.concat(this.mBitmapGestureParamsHolder.mCanvasMatrix);
        canvas.clipRect(this.mBitmapGestureParamsHolder.mBitmapDisplayInitRect);
        Log.d("TextEditorView", "drawChild size : %d", Integer.valueOf(this.mTextAppendConfigs.size()));
        for (TextAppendConfig textAppendConfig : this.mTextAppendConfigs) {
            if (!textAppendConfig.isActivation()) {
                textAppendConfig.draw(canvas);
            }
        }
        canvas.restore();
        if (this.mCurrentIndex != -1) {
            canvas.save();
            canvas.translate(0.0f, this.mCanvasOffsetY);
            canvas.concat(this.mBitmapGestureParamsHolder.mCanvasMatrix);
            canvas.clipRect(this.mBitmapGestureParamsHolder.mBitmapDisplayInitRect);
            ((TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex)).draw(canvas);
            canvas.restore();
            canvas.save();
            canvas.translate(0.0f, this.mCanvasOffsetY);
            canvas.clipRect(this.mBitmapGestureParamsHolder.mBitmapDisplayRect);
            this.mOperationDrawable.draw(canvas);
            canvas.restore();
        }
    }

    private void configOperationPosition(TextAppendConfig textAppendConfig) {
        textAppendConfig.getOutLineRect(this.mRectFTemp);
        this.mOperationDrawable.configDecorationPositon(this.mRectFTemp, this.mBitmapGestureParamsHolder.mCanvasMatrix, textAppendConfig.getRotateDegrees(), this.mRectFTemp.centerX(), this.mRectFTemp.centerY());
    }

    private void configOperationDecoration(TextAppendConfig textAppendConfig) {
        if (textAppendConfig.isDialogEnable()) {
            this.mOperationDrawable.configActionPosition(Action.EDIT, null, Action.SCALE, Action.MIRROR, getResources());
            return;
        }
        this.mOperationDrawable.configActionPosition(Action.EDIT, null, Action.SCALE, null, getResources());
    }

    protected void onCanvasMatrixChange() {
        super.onCanvasMatrixChange();
        if (this.mCurrentIndex != -1) {
            configOperationPosition((TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex));
        }
    }

    private void notifyModify() {
        if (this.mTextEditorListener != null) {
            this.mTextEditorListener.onModify();
        }
    }

    private void notifyClear() {
        if (this.mTextEditorListener != null) {
            this.mTextEditorListener.onClear();
        }
    }

    private void notifyItemEdit() {
        if (this.mTextEditorListener != null) {
            this.mTextEditorListener.onItemEdit();
        }
    }

    protected void onBitmapMatrixChanged() {
        super.onBitmapMatrixChanged();
        this.mOriginScale = this.mBitmapGestureParamsHolder.mBitmapDisplayInitRect.width() / this.mBitmapGestureParamsHolder.mDisplayRect.width();
        if (this.mOriginScale < 0.3f) {
            this.mOriginScale = 0.3f;
        }
        addNewItem();
    }

    private void countAndInvalidate(TextAppendConfig textAppendConfig, boolean isSection, boolean isTextChange) {
        textAppendConfig.countLocation(isTextChange, this.mBitmapGestureParamsHolder.mBitmapDisplayInitRect.width());
        if (isSection) {
            textAppendConfig.getOutLineRect(this.mRectFTemp);
            this.mRectFTemp.roundOut(this.mRectTemp);
            invalidate(this.mRectTemp);
            return;
        }
        invalidate();
    }

    private TouchAction findTouchAction(float x, float y) {
        int xI = Math.round(x);
        int yI = Math.round(y);
        this.mOperationDrawable.getDecorationRect(Action.DELETE, this.mRectFTemp);
        if (this.mRectFTemp.contains((float) xI, (float) yI)) {
            return TouchAction.DELETE;
        }
        this.mOperationDrawable.getDecorationRect(Action.SCALE, this.mRectFTemp);
        if (this.mRectFTemp.contains((float) xI, (float) yI)) {
            return TouchAction.SCALE;
        }
        this.mOperationDrawable.getDecorationRect(Action.MIRROR, this.mRectFTemp);
        if (this.mRectFTemp.contains((float) xI, (float) yI)) {
            return TouchAction.MIRROR;
        }
        this.mOperationDrawable.getDecorationRect(Action.EDIT, this.mRectFTemp);
        if (this.mRectFTemp.contains((float) xI, (float) yI)) {
            return TouchAction.EDIT;
        }
        return TouchAction.NONE;
    }

    private int findItemByEvent(float x, float y) {
        int currentIndex = -1;
        float currentDistance = -1.0f;
        for (int i = 0; i < this.mTextAppendConfigs.size(); i++) {
            TextAppendConfig textAppendConfig = (TextAppendConfig) this.mTextAppendConfigs.get(i);
            if (textAppendConfig.contains(x, y)) {
                textAppendConfig.getOutLineRect(this.mRectFTemp);
                float distance = getDistance(this.mRectFTemp, x, y);
                if (currentDistance == -1.0f) {
                    currentDistance = distance;
                    currentIndex = i;
                } else if (distance <= currentDistance) {
                    currentIndex = i;
                }
            }
        }
        return currentIndex;
    }

    private float getDistance(RectF rectF, float x, float y) {
        return (float) Math.hypot((double) (rectF.centerX() - x), (double) (rectF.centerY() - y));
    }

    public TextEntry export() {
        clearActivation(true);
        return new TextEntry(this.mBitmapGestureParamsHolder.mBitmapDisplayInitRect, this.mTextAppendConfigs, getResources());
    }

    public void setTextEditorListener(TextEditorListener textEditorListener) {
        this.mTextEditorListener = textEditorListener;
    }

    public boolean isIndexValid(int index) {
        return index >= 0 && index < this.mTextAppendConfigs.size();
    }

    public boolean isItemActivation() {
        return this.mCurrentIndex != -1;
    }

    public String getItemText() {
        if (isIndexValid(this.mCurrentIndex)) {
            return ((TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex)).getText();
        }
        return "";
    }

    public float getItemTransparent() {
        if (isIndexValid(this.mCurrentIndex)) {
            return ((TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex)).getTextTransparent();
        }
        return 0.0f;
    }

    public int getItemColor() {
        if (isIndexValid(this.mCurrentIndex)) {
            return ((TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex)).getColor();
        }
        return 0;
    }

    public Typeface getItemTypeFace() {
        if (!isIndexValid(this.mCurrentIndex)) {
            return null;
        }
        TextStyle textStyle = ((TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex)).getTextStyle();
        return textStyle == null ? Typeface.DEFAULT : textStyle.getTypeFace();
    }

    public TextAlignment getItemAlignment() {
        if (isIndexValid(this.mCurrentIndex)) {
            return ((TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex)).getTextAlignment();
        }
        return TextAlignment.LEFT;
    }

    public void getCurrentItemStatus(TextStatusData textStatusData) {
        if (isIndexValid(this.mCurrentIndex)) {
            TextAppendConfig textAppendConfig = (TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex);
            textStatusData.color = textAppendConfig.getColor();
            textStatusData.transparentProgress = textAppendConfig.getTextTransparent();
            textStatusData.textStyle = textAppendConfig.getTextStyle();
            textStatusData.textBold = textAppendConfig.isBoldText();
            textStatusData.textShadow = textAppendConfig.isShadow();
            textStatusData.textAlignment = textAppendConfig.getTextAlignment();
            textStatusData.itemPositionX = textAppendConfig.getUserLocationX();
            textStatusData.itemPositionY = textAppendConfig.getUserLocationY();
            textStatusData.itemScale = textAppendConfig.getUserScaleMultiple();
            textStatusData.itemDegree = textAppendConfig.getRotateDegrees();
            return;
        }
        textStatusData.setEmpty();
    }

    public void enableStatusForCurrentItem(TextStatusData textStatusData, boolean isNew) {
        if (isIndexValid(this.mCurrentIndex)) {
            TextAppendConfig textAppendConfig = (TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex);
            textAppendConfig.setColor(textStatusData.color);
            textAppendConfig.setTextTransparent(textStatusData.transparentProgress);
            textAppendConfig.setTextStyle(textStatusData.textStyle);
            textAppendConfig.setBoldText(textStatusData.textBold);
            textAppendConfig.setShadow(textStatusData.textShadow);
            textAppendConfig.setTextAlignment(textStatusData.textAlignment);
            textAppendConfig.setUserLocationX(textStatusData.itemPositionX);
            textAppendConfig.setUserLocationY(textStatusData.itemPositionY);
            textAppendConfig.setUserScaleMultiple(textStatusData.itemScale);
            textAppendConfig.setRotateDegrees(textStatusData.itemDegree);
            if (isNew) {
                float centerOriginX = this.mBitmapGestureParamsHolder.mDisplayRect.centerX();
                float centerOriginY = this.mBitmapGestureParamsHolder.mDisplayRect.centerY();
                float centerX = this.mBitmapGestureParamsHolder.mDisplayInsideRect.centerX();
                float centerY = this.mBitmapGestureParamsHolder.mDisplayInsideRect.centerY();
                textAppendConfig.appendUserLocationX(centerX - centerOriginX);
                textAppendConfig.appendUserLocationY(centerY - centerOriginY);
            }
            countAndInvalidate(textAppendConfig, false, false);
            configOperationPosition(textAppendConfig);
        }
    }

    public BaseDialogModel getItemDialogModel() {
        if (isIndexValid(this.mCurrentIndex)) {
            return ((TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex)).getDialogModel();
        }
        return null;
    }

    public boolean getItemBold() {
        if (isIndexValid(this.mCurrentIndex)) {
            return ((TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex)).isBoldText();
        }
        return false;
    }

    public boolean getItemShadow() {
        if (isIndexValid(this.mCurrentIndex)) {
            return ((TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex)).isShadow();
        }
        return false;
    }

    public void setItemText(String s) {
        if (isIndexValid(this.mCurrentIndex)) {
            TextAppendConfig textAppendConfig = (TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex);
            textAppendConfig.setActivation(true);
            textAppendConfig.setText(s);
            countAndInvalidate(textAppendConfig, false, true);
            configOperationPosition(textAppendConfig);
        }
    }

    public void setItemDialogModel(BaseDialogModel b) {
        if (isIndexValid(this.mCurrentIndex)) {
            TextAppendConfig textAppendConfig = (TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex);
            textAppendConfig.setActivation(true);
            textAppendConfig.setDialogModel(b, getResources());
            textAppendConfig.setUserScaleMultiple(1.0f);
            countAndInvalidate(textAppendConfig, false, true);
            configOperationDecoration(textAppendConfig);
            configOperationPosition(textAppendConfig);
        }
    }

    public void setItemTextColor(int color) {
        if (isIndexValid(this.mCurrentIndex)) {
            TextAppendConfig textAppendConfig = (TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex);
            textAppendConfig.setActivation(true);
            textAppendConfig.setColor(color);
            countAndInvalidate(textAppendConfig, true, false);
        }
    }

    public void setItemTypeface(TextStyle textStyle) {
        if (isIndexValid(this.mCurrentIndex)) {
            TextAppendConfig textAppendConfig = (TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex);
            textAppendConfig.setActivation(true);
            textAppendConfig.setTextStyle(textStyle);
            countAndInvalidate(textAppendConfig, false, true);
        }
    }

    public void setItemBold(boolean bold) {
        if (isIndexValid(this.mCurrentIndex)) {
            TextAppendConfig textAppendConfig = (TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex);
            textAppendConfig.setBoldText(bold);
            textAppendConfig.setActivation(true);
            countAndInvalidate(textAppendConfig, false, true);
        }
    }

    public void setItemShadow(boolean shadow) {
        if (isIndexValid(this.mCurrentIndex)) {
            TextAppendConfig textAppendConfig = (TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex);
            textAppendConfig.setShadow(shadow);
            textAppendConfig.setActivation(true);
            countAndInvalidate(textAppendConfig, false, true);
        }
    }

    public void setItemTextAlignment(TextAlignment textAlignment) {
        if (isIndexValid(this.mCurrentIndex)) {
            TextAppendConfig textAppendConfig = (TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex);
            textAppendConfig.setTextAlignment(textAlignment);
            textAppendConfig.setActivation(true);
            countAndInvalidate(textAppendConfig, false, false);
        }
    }

    public int getItemSize() {
        return this.mTextAppendConfigs.size();
    }

    public void setItemTransparent(float transparent) {
        if (isIndexValid(this.mCurrentIndex)) {
            TextAppendConfig textAppendConfig = (TextAppendConfig) this.mTextAppendConfigs.get(this.mCurrentIndex);
            textAppendConfig.setActivation(true);
            textAppendConfig.setTextTransparent(transparent);
            countAndInvalidate(textAppendConfig, true, false);
        }
    }

    private int findActivationIndex() {
        for (int i = 0; i < this.mTextAppendConfigs.size(); i++) {
            if (((TextAppendConfig) this.mTextAppendConfigs.get(i)).isActivation()) {
                return i;
            }
        }
        return -1;
    }

    public void clearActivation(boolean needInvalidate) {
        int i = 0;
        while (i < this.mTextAppendConfigs.size()) {
            TextAppendConfig textAppendConfig = (TextAppendConfig) this.mTextAppendConfigs.get(i);
            if (TextUtils.isEmpty(textAppendConfig.getText())) {
                int i2 = i - 1;
                this.mTextAppendConfigs.remove(i);
                notifyClear();
                i = i2;
            } else {
                textAppendConfig.setActivation(false);
            }
            i++;
        }
        this.mCurrentIndex = -1;
        disableChildHandleMode();
        if (needInvalidate) {
            invalidate();
        }
    }

    public void setActivation(int index) {
        if (index >= 0 && index < this.mTextAppendConfigs.size() && !((TextAppendConfig) this.mTextAppendConfigs.get(index)).isActivation()) {
            clearActivation(false);
            TextAppendConfig textAppendConfig = (TextAppendConfig) this.mTextAppendConfigs.get(index);
            ((TextAppendConfig) this.mTextAppendConfigs.get(index)).setActivation(true);
            countAndInvalidate(textAppendConfig, false, false);
            configOperationDecoration(textAppendConfig);
            configOperationPosition(textAppendConfig);
            this.mCurrentIndex = index;
            enableChildHandleMode();
            invalidate();
        }
    }

    public void setLastItemActivation() {
        setActivation(this.mTextAppendConfigs.size() - 1);
    }

    public void addNewItem() {
        TextAppendConfig textAppendConfig = new TextAppendConfig(this.mContext);
        this.mTextAppendConfigs.add(textAppendConfig);
        textAppendConfig.setDisplaySize((float) getWidth(), (float) getHeight());
        textAppendConfig.setShadow(true);
        textAppendConfig.setScaleMultipleOrigin(this.mOriginScale);
        countAndInvalidate(textAppendConfig, false, true);
        setLastItemActivation();
    }

    public boolean isEmpty() {
        return this.mTextAppendConfigs.isEmpty();
    }

    public int getActivationItemBottom() {
        getLocationInWindow(this.mLocation);
        int bottom = this.mLocation[1];
        if (this.mCurrentIndex != -1) {
            return (int) (((float) bottom) + this.mOperationDrawable.findLowerDecorationPosition());
        }
        return bottom;
    }

    private void setCanvasOffsetY(float canvasOffsetY) {
        this.mCanvasOffsetY = canvasOffsetY;
    }

    public void offsetWithAnimator(float targetOffset) {
        if (this.mCurrentIndex != -1 && this.mCurrentTargetOffsetY != targetOffset) {
            if (this.mOffsetAnimator != null) {
                this.mOffsetAnimator.cancel();
            } else {
                this.mOffsetAnimator = new ObjectAnimator();
                this.mOffsetAnimator.addUpdateListener(this.mUpdateListener);
            }
            this.mCurrentTargetOffsetY = targetOffset;
            this.mOffsetAnimator.setTarget(this);
            this.mOffsetAnimator.setPropertyName("canvasOffsetY");
            this.mOffsetAnimator.setFloatValues(new float[]{this.mCanvasOffsetY, targetOffset});
            this.mOffsetAnimator.start();
            Log.d("TextEditorView", "start targetOffset : %f", Float.valueOf(targetOffset));
        }
    }
}
