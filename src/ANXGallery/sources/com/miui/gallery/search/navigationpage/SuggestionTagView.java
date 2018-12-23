package com.miui.gallery.search.navigationpage;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.miui.gallery.R;

public class SuggestionTagView extends LinearLayout {
    private SuggestionTagViewAdapter mAdapter;
    private DataSetObserver mAdapterObserver;
    private int mHorizontalMargin;
    private boolean mInvalid;
    private LayoutParams mItemLayoutParam;
    private int mMaxLines;
    private LayoutParams mRowLayoutParam;
    private int mVerticalMargin;

    public interface SuggestionTagViewAdapter extends Adapter {
        View getMoreItemView(View view, ViewGroup viewGroup);

        boolean hasMoreItem();

        boolean isFixedMoreItem();
    }

    public SuggestionTagView(Context context) {
        this(context, null);
    }

    public SuggestionTagView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SuggestionTagView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mInvalid = false;
        this.mAdapterObserver = new DataSetObserver() {
            public void onChanged() {
                SuggestionTagView.this.onAdapterChanged();
            }

            public void onInvalidated() {
                SuggestionTagView.this.onAdapterChanged();
            }
        };
        initView(context, attrs, defStyle);
    }

    private void initView(Context context, AttributeSet attrs, int defStyle) {
        setOrientation(1);
        TypedArray typeArray = context.obtainStyledAttributes(attrs, R.styleable.SuggestionTagView, defStyle, 0);
        this.mHorizontalMargin = (int) typeArray.getDimension(0, 0.0f);
        this.mVerticalMargin = (int) typeArray.getDimension(1, 0.0f);
        this.mMaxLines = typeArray.getInteger(2, Integer.MAX_VALUE);
        typeArray.recycle();
        this.mRowLayoutParam = new LayoutParams(-1, -2);
        this.mRowLayoutParam.setMargins(0, 0, 0, this.mVerticalMargin);
        this.mItemLayoutParam = new LayoutParams(-2, -2);
        this.mItemLayoutParam.setMargins(0, 0, this.mHorizontalMargin, 0);
    }

    public void setAdapter(SuggestionTagViewAdapter adapter) {
        if (this.mAdapter != adapter) {
            this.mAdapter = adapter;
            if (this.mAdapter != null) {
                this.mAdapter.registerDataSetObserver(this.mAdapterObserver);
            }
            onAdapterChanged();
        }
    }

    public Adapter getAdapter() {
        return this.mAdapter;
    }

    private void onAdapterChanged() {
        this.mInvalid = true;
        requestLayout();
    }

    public void setMaxLines(int maxLines) {
        if (maxLines != this.mMaxLines) {
            this.mMaxLines = maxLines;
            this.mInvalid = true;
            requestLayout();
        }
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.mInvalid) {
            layoutTags(getFillWidth(MeasureSpec.getSize(widthMeasureSpec)));
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    private int getItemMeasuredWidth(View itemView) {
        itemView.measure(0, 0);
        return itemView.getMeasuredWidth() + this.mHorizontalMargin;
    }

    private LinearLayout changeToNewLine() {
        LinearLayout rowLayout = new LinearLayout(getContext());
        addView(rowLayout, this.mRowLayoutParam);
        return rowLayout;
    }

    /* JADX WARNING: Removed duplicated region for block: B:64:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0066 A:{SKIP} */
    private void layoutTags(int r13) {
        /*
        r12 = this;
        r4 = 0;
        r10 = 0;
        r12.removeAllViews();
        r12.mInvalid = r4;
        r11 = r12.mMaxLines;
        if (r11 <= 0) goto L_0x000f;
    L_0x000b:
        r11 = r12.mAdapter;
        if (r11 != 0) goto L_0x0010;
    L_0x000f:
        return;
    L_0x0010:
        r11 = r12.mAdapter;
        r0 = r11.isFixedMoreItem();
        r8 = 0;
        r6 = 0;
        r11 = r12.mAdapter;
        r5 = r11.getCount();
        r7 = 0;
        r11 = r12.mAdapter;
        r11 = r11.hasMoreItem();
        if (r11 == 0) goto L_0x0084;
    L_0x0027:
        r11 = r12.mAdapter;
        r3 = r11.getMoreItemView(r10, r12);
    L_0x002d:
        if (r3 == 0) goto L_0x0033;
    L_0x002f:
        r4 = r12.getItemMeasuredWidth(r3);
    L_0x0033:
        r11 = r12.mMaxLines;
        r11 = r11 + -1;
        if (r6 != r11) goto L_0x003c;
    L_0x0039:
        if (r3 == 0) goto L_0x003c;
    L_0x003b:
        r8 = r4;
    L_0x003c:
        r1 = 0;
    L_0x003d:
        if (r1 >= r5) goto L_0x0064;
    L_0x003f:
        r11 = r12.mAdapter;
        r9 = r11.getView(r1, r10, r12);
        r2 = r12.getItemMeasuredWidth(r9);
        r8 = r8 + r2;
        if (r8 <= r13) goto L_0x00ba;
    L_0x004c:
        r6 = r6 + 1;
        r11 = r12.mMaxLines;
        if (r6 < r11) goto L_0x0089;
    L_0x0052:
        if (r3 == 0) goto L_0x0086;
    L_0x0054:
        r10 = r5 + -1;
        if (r1 != r10) goto L_0x0086;
    L_0x0058:
        if (r0 != 0) goto L_0x0086;
    L_0x005a:
        r10 = r8 - r4;
        if (r10 > r13) goto L_0x0086;
    L_0x005e:
        r10 = r12.mItemLayoutParam;
        r7.addView(r9, r10);
        r3 = 0;
    L_0x0064:
        if (r3 == 0) goto L_0x000f;
    L_0x0066:
        if (r0 == 0) goto L_0x0078;
    L_0x0068:
        if (r7 == 0) goto L_0x0074;
    L_0x006a:
        r10 = r12.mMaxLines;
        r10 = r10 + -1;
        if (r6 >= r10) goto L_0x0078;
    L_0x0070:
        r10 = r8 + r4;
        if (r10 <= r13) goto L_0x0078;
    L_0x0074:
        r7 = r12.changeToNewLine();
    L_0x0078:
        if (r0 != 0) goto L_0x007e;
    L_0x007a:
        r10 = r5 + -1;
        if (r1 >= r10) goto L_0x000f;
    L_0x007e:
        r10 = r12.mItemLayoutParam;
        r7.addView(r3, r10);
        goto L_0x000f;
    L_0x0084:
        r3 = r10;
        goto L_0x002d;
    L_0x0086:
        r1 = r1 + -1;
        goto L_0x0064;
    L_0x0089:
        r7 = r12.changeToNewLine();
        r11 = r12.mMaxLines;
        r11 = r11 + -1;
        if (r6 != r11) goto L_0x00b3;
    L_0x0093:
        if (r3 == 0) goto L_0x00b3;
    L_0x0095:
        r8 = r4;
        r11 = r8 + r2;
        if (r11 > r13) goto L_0x00a3;
    L_0x009a:
        r8 = r8 + r2;
        r11 = r12.mItemLayoutParam;
        r7.addView(r9, r11);
    L_0x00a0:
        r1 = r1 + 1;
        goto L_0x003d;
    L_0x00a3:
        r10 = r5 + -1;
        if (r1 != r10) goto L_0x00b0;
    L_0x00a7:
        if (r0 != 0) goto L_0x00b0;
    L_0x00a9:
        r10 = r12.mItemLayoutParam;
        r7.addView(r9, r10);
        r3 = 0;
        goto L_0x0064;
    L_0x00b0:
        r1 = r1 + -1;
        goto L_0x0064;
    L_0x00b3:
        r8 = r2;
        r11 = r12.mItemLayoutParam;
        r7.addView(r9, r11);
        goto L_0x00a0;
    L_0x00ba:
        if (r7 != 0) goto L_0x00c0;
    L_0x00bc:
        r7 = r12.changeToNewLine();
    L_0x00c0:
        r11 = r12.mItemLayoutParam;
        r7.addView(r9, r11);
        goto L_0x00a0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.search.navigationpage.SuggestionTagView.layoutTags(int):void");
    }

    private int getFillWidth(int viewWidth) {
        return (viewWidth - getPaddingLeft()) - getPaddingRight();
    }
}
