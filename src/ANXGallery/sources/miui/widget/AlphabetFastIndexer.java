package miui.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ExpandableListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import android.widget.WrapperListAdapter;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import java.lang.ref.WeakReference;
import java.util.HashMap;

public class AlphabetFastIndexer extends ImageView {
    private static final String Oc = "♥";
    private static final String Oo = "#";
    private static final int Os = 1;
    private static final int Ot = 1500;
    public static final String STARRED_TITLE = "!";
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_NONE = 0;
    private AdapterView<?> Od;
    private TextView Oe;
    private int Of;
    private int Og;
    private boolean Oh;
    private int Oi;
    private int Oj;
    private int Ok;
    private int Ol;
    private Drawable Om;
    HashMap<Object, Integer> On;
    private AnimatorUpdateListener Op;
    private TextHilighter Oq;
    private int Or;
    private Runnable Ou;
    private Handler mHandler;
    private int qH;

    private static class OnScrollerDecorator implements OnScrollListener {
        private final OnScrollListener Ow;
        private final WeakReference<AlphabetFastIndexer> Ox;

        public OnScrollerDecorator(AlphabetFastIndexer alphabetFastIndexer, OnScrollListener onScrollListener) {
            this.Ox = new WeakReference(alphabetFastIndexer);
            this.Ow = onScrollListener;
        }

        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            AlphabetFastIndexer alphabetFastIndexer = (AlphabetFastIndexer) this.Ox.get();
            if (alphabetFastIndexer != null) {
                alphabetFastIndexer.eb();
            }
            if (this.Ow != null) {
                this.Ow.onScroll(absListView, i, i2, i3);
            }
        }

        public void onScrollStateChanged(AbsListView absListView, int i) {
            AlphabetFastIndexer alphabetFastIndexer = (AlphabetFastIndexer) this.Ox.get();
            if (alphabetFastIndexer != null) {
                alphabetFastIndexer.Or = i;
            }
            if (this.Ow != null) {
                this.Ow.onScrollStateChanged(absListView, i);
            }
        }
    }

    private static class TextHilighter {
        String[] OA;
        int OB;
        int OC;
        float OD;
        float OE;
        Rect Oy = new Rect();
        Rect Oz = new Rect();
        Paint rb = new Paint();
        int vt;
        ValueAnimator vv;

        TextHilighter(Context context, TypedArray typedArray) {
            Resources resources = context.getResources();
            CharSequence[] textArray = typedArray.getTextArray(R.styleable.AlphabetFastIndexer_indexerTable);
            if (textArray != null) {
                int i = 0;
                this.OA = new String[textArray.length];
                int length = textArray.length;
                int i2 = 0;
                while (i < length) {
                    int i3 = i2 + 1;
                    this.OA[i2] = textArray[i].toString();
                    i++;
                    i2 = i3;
                }
            } else {
                this.OA = resources.getStringArray(R.array.alphabet_table);
            }
            if (this.OA.length > 1) {
                String str = this.OA[this.OA.length - 1];
            }
            this.vt = typedArray.getColor(R.styleable.AlphabetFastIndexer_indexerTextColor, resources.getColor(R.color.alphabet_indexer_text_color));
            this.OB = typedArray.getColor(R.styleable.AlphabetFastIndexer_indexerTextActivatedColor, resources.getColor(R.color.alphabet_indexer_activated_text_color));
            this.OC = typedArray.getColor(R.styleable.AlphabetFastIndexer_indexerTextHighlightColor, resources.getColor(R.color.alphabet_indexer_highlight_text_color));
            this.rb.setTextSize(typedArray.getDimension(R.styleable.AlphabetFastIndexer_indexerTextSize, resources.getDimension(R.dimen.alphabet_indexer_text_size)));
            this.rb.setAntiAlias(true);
            this.rb.setTextAlign(Align.CENTER);
            if (DeviceHelper.IS_INTERNATIONAL_BUILD) {
                this.rb.setTypeface(Typeface.DEFAULT_BOLD);
            } else {
                this.rb.setTypeface(Typeface.create("miui", 1));
            }
            c(0.0f, 0.0f);
        }

        void c(float f, float f2) {
            this.OD = f;
            this.OE = f2;
        }

        void a(Canvas canvas, boolean z, int i, float f, float f2) {
            Paint paint = this.rb;
            String str = TextUtils.equals(this.OA[i], AlphabetFastIndexer.STARRED_TITLE) ? AlphabetFastIndexer.Oc : this.OA[i];
            paint.getTextBounds(str, 0, str.length(), this.Oz);
            float width = ((float) this.Oz.width()) / 2.0f;
            float height = ((float) this.Oz.height()) / 2.0f;
            this.Oy.set((int) ((this.OD - width) + 1.0f), (int) (this.OE - height), (int) ((this.OD + width) + 1.0f), (int) (this.OE + height));
            if (z) {
                paint.setColor(this.OB);
            } else if (this.Oy.intersect((int) (f - width), (int) (f2 - height), (int) (width + f), (int) (height + f2))) {
                paint.setColor(this.OC);
            } else {
                paint.setColor(this.vt);
            }
            if (str.equals(AlphabetFastIndexer.Oc)) {
                paint.setColorFilter(new PorterDuffColorFilter(paint.getColor(), Mode.SRC_IN));
            } else {
                paint.setColorFilter(null);
            }
            canvas.drawText(str, f, f2 - (((float) (this.Oz.top + this.Oz.bottom)) / 2.0f), paint);
        }

        void a(float f, AnimatorUpdateListener animatorUpdateListener) {
            float f2;
            if (this.vv != null) {
                this.vv.cancel();
            }
            if (this.Oy == null) {
                f2 = f;
            } else {
                f2 = ((float) (this.Oy.top + this.Oy.bottom)) / 2.0f;
            }
            this.vv = ValueAnimator.ofFloat(new float[]{f2, f});
            this.vv.addUpdateListener(animatorUpdateListener);
            this.vv.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? 200 : 0);
            this.vv.start();
        }
    }

    public AlphabetFastIndexer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AlphabetFastIndexer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.On = new HashMap();
        this.Op = new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AlphabetFastIndexer.this.Oq.c(((float) AlphabetFastIndexer.this.getWidth()) / 2.0f, ((Float) valueAnimator.getAnimatedValue()).floatValue());
                AlphabetFastIndexer.this.postInvalidate();
            }
        };
        this.Or = 0;
        this.qH = 0;
        this.Ou = new Runnable() {
            public void run() {
                AlphabetFastIndexer.this.eb();
            }
        };
        this.mHandler = new Handler() {
            public void handleMessage(Message message) {
                if (message.what == 1 && AlphabetFastIndexer.this.Oe != null) {
                    AlphabetFastIndexer.this.Oe.setVisibility(8);
                }
            }
        };
        Resources resources = context.getResources();
        if (attributeSet.getStyleAttribute() != 0) {
            i = attributeSet.getStyleAttribute();
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AlphabetFastIndexer, 0, i);
        this.Oq = new TextHilighter(context, obtainStyledAttributes);
        this.Oh = obtainStyledAttributes.getBoolean(R.styleable.AlphabetFastIndexer_drawOverlay, true);
        if (this.Oh) {
            this.Oi = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.AlphabetFastIndexer_overlayMarginLeft, resources.getDimensionPixelOffset(R.dimen.alphabet_indexer_overlay_offset));
            this.Oj = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.AlphabetFastIndexer_overlayMarginTop, resources.getDimensionPixelOffset(R.dimen.alphabet_indexer_overlay_padding_top));
            this.Ok = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AlphabetFastIndexer_overlayTextSize, resources.getDimensionPixelSize(R.dimen.alphabet_indexer_overlay_text_size));
            this.Ol = obtainStyledAttributes.getColor(R.styleable.AlphabetFastIndexer_overlayTextColor, resources.getColor(R.color.alphabet_indexer_overlay_text_color));
            this.Om = obtainStyledAttributes.getDrawable(R.styleable.AlphabetFastIndexer_overlayBackground);
            if (this.Om == null) {
                this.Om = resources.getDrawable(R.drawable.alphabet_indexer_overlay);
            }
        }
        obtainStyledAttributes.recycle();
        this.Og = 8388613;
    }

    public void setVerticalPosition(boolean z) {
        this.Og = z ? 8388613 : 8388611;
    }

    public void setOverlayOffset(int i, int i2) {
        this.Oi = i;
        this.Oj = i2;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.Of = -1;
        post(this.Ou);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int paddingTop = getPaddingTop();
        int height = (getHeight() - paddingTop) - getPaddingBottom();
        if (height > 0) {
            String[] strArr = this.Oq.OA;
            float length = ((float) height) / ((float) strArr.length);
            float width = ((float) getWidth()) / 2.0f;
            float f = ((float) paddingTop) + (length / 2.0f);
            for (int i = 0; i < strArr.length; i++) {
                this.Oq.a(canvas, isPressed(), i, width, f);
                f += length;
            }
        }
    }

    public void attatch(AdapterView<?> adapterView) {
        if (this.Od != adapterView) {
            detach();
            if (adapterView != null) {
                this.Of = -1;
                this.Od = adapterView;
                Context context = getContext();
                FrameLayout frameLayout = (FrameLayout) getParent();
                if (this.Oh) {
                    this.Oe = new TextView(context);
                    LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
                    layoutParams.leftMargin = this.Oi;
                    layoutParams.topMargin = this.Oj;
                    this.Oe.setLayoutParams(layoutParams);
                    this.Oe.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
                    this.Oe.setBackground(this.Om);
                    this.Oe.setGravity(17);
                    this.Oe.setTextSize(0, (float) this.Ok);
                    this.Oe.setTextColor(this.Ol);
                    this.Oe.setVisibility(8);
                    frameLayout.addView(this.Oe);
                }
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) getLayoutParams();
                layoutParams2.gravity = 48 | this.Og;
                setLayoutParams(layoutParams2);
                eb();
            }
        }
    }

    public void detach() {
        if (this.Od != null) {
            stop(0);
            FrameLayout frameLayout = (FrameLayout) getParent();
            if (this.Oe != null) {
                frameLayout.removeView(this.Oe);
            }
            setVisibility(8);
            this.Od = null;
        }
    }

    public OnScrollListener decorateScrollListener(OnScrollListener onScrollListener) {
        return new OnScrollerDecorator(this, onScrollListener);
    }

    public void drawThumb(CharSequence charSequence) {
        if (this.qH == 0 && this.Or == 2) {
            c(charSequence);
        }
    }

    private void eb() {
        if (this.Od != null) {
            SectionIndexer ec = ec();
            int i = 0;
            if (ec != null) {
                int sectionForPosition = ec.getSectionForPosition(this.Od.getFirstVisiblePosition() - ed());
                if (sectionForPosition != -1) {
                    String str = (String) ec.getSections()[sectionForPosition];
                    if (!TextUtils.isEmpty(str)) {
                        for (sectionForPosition = 0; sectionForPosition < this.Oq.OA.length; sectionForPosition++) {
                            if (TextUtils.equals(str, this.Oq.OA[sectionForPosition])) {
                                i = sectionForPosition;
                                break;
                            }
                        }
                    }
                }
            }
            if (this.Of != i) {
                this.Of = i;
                if (1 != this.qH) {
                    ah(this.Of);
                }
                invalidate();
            }
        }
    }

    public int getIndexerIntrinsicWidth() {
        Drawable background = getBackground();
        return background != null ? background.getIntrinsicWidth() : 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x001e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private SectionIndexer ec() {
        SectionIndexer sectionIndexer = null;
        if (this.Od == null) {
            return null;
        }
        boolean z;
        Adapter adapter = this.Od.getAdapter();
        while (true) {
            z = adapter instanceof SectionIndexer;
            if (!z && (adapter instanceof WrapperListAdapter)) {
                adapter = ((WrapperListAdapter) adapter).getWrappedAdapter();
            } else if (z) {
                sectionIndexer = (SectionIndexer) adapter;
            }
        }
        if (z) {
        }
        return sectionIndexer;
    }

    private int ed() {
        if (this.Od instanceof ListView) {
            return ((ListView) this.Od).getHeaderViewsCount();
        }
        return 0;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.Od == null) {
            stop(0);
            return false;
        }
        SectionIndexer ec = ec();
        if (ec == null) {
            stop(0);
            return false;
        }
        switch (255 & motionEvent.getAction()) {
            case 0:
                this.qH = 1;
                setPressed(true);
                break;
            case 1:
            case 3:
                ah(this.Of);
                stop(Ot);
                break;
            case 2:
                break;
            default:
                stop(Ot);
                break;
        }
        int a = a(motionEvent.getY(), ec);
        if (a < 0) {
            this.Od.setSelection(0);
        } else {
            a(ec, a);
            if (this.Oq != null && motionEvent.getY() > ((float) (getTop() + getPaddingTop())) && motionEvent.getY() < ((float) (getBottom() - getPaddingBottom()))) {
                this.Oq.c((float) (getWidth() / 2), motionEvent.getY());
                postInvalidate();
            }
        }
        return true;
    }

    void stop(int i) {
        setPressed(false);
        this.qH = 0;
        postInvalidate();
        this.mHandler.removeMessages(1);
        if (i > 0) {
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1), (long) i);
        } else if (this.Oe != null) {
            this.Oe.setVisibility(8);
        }
    }

    private int a(float f, SectionIndexer sectionIndexer) {
        Object[] sections = sectionIndexer.getSections();
        if (sections == null) {
            return -1;
        }
        int paddingTop = getPaddingTop();
        int height = (getHeight() - paddingTop) - getPaddingBottom();
        if (height <= 0) {
            return -1;
        }
        int length = (int) (((float) this.Oq.OA.length) * ((f - ((float) paddingTop)) / ((float) height)));
        if (length < 0) {
            return -1;
        }
        if (length >= this.Oq.OA.length) {
            return sections.length;
        }
        this.On.clear();
        int i = 0;
        for (paddingTop = 0; paddingTop < sections.length; paddingTop++) {
            this.On.put(sections[paddingTop], Integer.valueOf(paddingTop));
        }
        String[] strArr = this.Oq.OA;
        paddingTop = 0;
        while (true) {
            int i2 = paddingTop + length;
            if (i2 >= strArr.length && length < paddingTop) {
                break;
            }
            height = length - paddingTop;
            if (i2 >= strArr.length || !this.On.containsKey(strArr[i2])) {
                if (height >= 0 && this.On.containsKey(strArr[height])) {
                    i = ((Integer) this.On.get(strArr[height])).intValue();
                    break;
                }
                paddingTop++;
            } else {
                i = ((Integer) this.On.get(strArr[i2])).intValue();
                break;
            }
        }
        return i;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00a8  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0096  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(SectionIndexer sectionIndexer, int i) {
        int i2;
        SectionIndexer sectionIndexer2 = sectionIndexer;
        int i3 = i;
        int count = this.Od.getCount();
        int ed = ed();
        float f = (1.0f / ((float) count)) / 8.0f;
        Object[] sections = sectionIndexer.getSections();
        if (sections == null || sections.length <= 1) {
            int round = Math.round((float) (i3 * count));
            if (this.Od instanceof ExpandableListView) {
                ExpandableListView expandableListView = (ExpandableListView) this.Od;
                expandableListView.setSelectionFromTop(expandableListView.getFlatListPosition(ExpandableListView.getPackedPositionForGroup(round + ed)), 0);
            } else if (this.Od instanceof ListView) {
                ((ListView) this.Od).setSelectionFromTop(round + ed, 0);
            } else {
                this.Od.setSelection(round + ed);
            }
            i2 = -1;
        } else {
            int i4;
            int positionForSection;
            int i5;
            int i6;
            int i7;
            float f2;
            float f3;
            float f4;
            float f5;
            int length = sections.length;
            if (i3 >= length) {
                i4 = length - 1;
            } else {
                i4 = i3;
            }
            i2 = sectionIndexer2.getPositionForSection(i4);
            int i8 = i4 + 1;
            if (i4 < length - 1) {
                positionForSection = sectionIndexer2.getPositionForSection(i8);
            } else {
                positionForSection = count;
            }
            if (positionForSection == i2) {
                i5 = i4;
                i6 = i2;
                while (i5 > 0) {
                    i5--;
                    i6 = sectionIndexer2.getPositionForSection(i5);
                    if (i6 == i2) {
                        if (i5 == 0) {
                            i5 = i4;
                            i2 = 0;
                            break;
                        }
                    }
                }
                i2 = i4;
                i5 = i2;
                i7 = i8;
                i8++;
                while (i8 < length && sectionIndexer2.getPositionForSection(i8) == positionForSection) {
                    i8++;
                    i7++;
                }
                f2 = (float) length;
                f3 = ((float) i5) / f2;
                f4 = ((float) i7) / f2;
                f5 = ((float) i3) / f2;
                if (i5 != i4 || f5 - f3 >= f) {
                    i6 += Math.round((((float) (positionForSection - i6)) * (f5 - f3)) / (f4 - f3));
                }
                i3 = count - 1;
                if (i6 > i3) {
                    i6 = i3;
                }
                if (!(this.Od instanceof ExpandableListView)) {
                    ExpandableListView expandableListView2 = (ExpandableListView) this.Od;
                    expandableListView2.setSelectionFromTop(expandableListView2.getFlatListPosition(ExpandableListView.getPackedPositionForGroup(i6 + ed)), 0);
                } else if (this.Od instanceof ListView) {
                    ((ListView) this.Od).setSelectionFromTop(i6 + ed, 0);
                } else {
                    this.Od.setSelection(i6 + ed);
                }
            } else {
                i5 = i4;
                i6 = i2;
            }
            i2 = i5;
            i7 = i8;
            i8++;
            while (i8 < length) {
                i8++;
                i7++;
            }
            f2 = (float) length;
            f3 = ((float) i5) / f2;
            f4 = ((float) i7) / f2;
            f5 = ((float) i3) / f2;
            i6 += Math.round((((float) (positionForSection - i6)) * (f5 - f3)) / (f4 - f3));
            i3 = count - 1;
            if (i6 > i3) {
            }
            if (!(this.Od instanceof ExpandableListView)) {
            }
        }
        if (i2 >= 0 && sections != null) {
            Object obj = sections[i2].toString();
            if (!TextUtils.isEmpty(obj)) {
                c(obj.subSequence(0, 1));
            }
        }
    }

    private void c(CharSequence charSequence) {
        if (this.Od != null) {
            if (this.Oe != null) {
                if (TextUtils.equals(charSequence, STARRED_TITLE)) {
                    charSequence = Oc;
                }
                this.Oe.setText(charSequence);
            }
            if (getVisibility() == 0) {
                if (this.Oe != null) {
                    this.Oe.setVisibility(0);
                }
                this.mHandler.removeMessages(1);
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1), 1500);
            }
        }
    }

    private void ah(int i) {
        if (this.Oq != null) {
            if (i < 0) {
                i = 0;
            }
            int paddingTop = getPaddingTop();
            float height = ((float) ((getHeight() - paddingTop) - getPaddingBottom())) / ((float) this.Oq.OA.length);
            this.Oq.a((((((float) i) * height) + ((float) paddingTop)) + (height / 2.0f)) + 1.0f, this.Op);
        }
    }
}
