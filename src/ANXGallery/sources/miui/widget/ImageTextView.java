package miui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.util.HashMap;

public class ImageTextView extends LinearLayout {
    private static final int[] Tp = new int[]{16842930, 16843256};
    private static final int Tq = 0;
    private static final int Tr = 1;
    private final LayoutParams To;
    private HashMap<Character, Integer> Ts;
    private CharSequence bH;

    public ImageTextView(Context context) {
        this(context, null);
    }

    public ImageTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ImageTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.To = new LayoutParams(-2, -2);
        setOrientation(0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Tp, i, 0);
        CharSequence[] textArray = obtainStyledAttributes.getTextArray(0);
        Integer[] a = a(obtainStyledAttributes);
        if (!(textArray == null || a == null || textArray.length != a.length)) {
            this.Ts = new HashMap();
            for (int i2 = 0; i2 < textArray.length; i2++) {
                this.Ts.put(Character.valueOf(textArray[i2].charAt(0)), a[i2]);
            }
        }
        obtainStyledAttributes.recycle();
    }

    private Integer[] a(TypedArray typedArray) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(1, typedValue)) {
            return null;
        }
        typedArray = getContext().getResources().obtainTypedArray(typedValue.resourceId);
        Integer[] numArr = new Integer[typedArray.length()];
        for (int i = 0; i < typedArray.length(); i++) {
            numArr[i] = Integer.valueOf(typedArray.peekValue(i).resourceId);
        }
        typedArray.recycle();
        return numArr;
    }

    public void setCharMap(HashMap<Character, Integer> hashMap) {
        this.Ts = hashMap;
    }

    public CharSequence getText() {
        return this.bH == null ? "" : this.bH;
    }

    public void setText(CharSequence charSequence) {
        if (this.Ts != null && charSequence != null && !charSequence.equals(this.bH)) {
            int i;
            this.bH = charSequence;
            for (i = 0; i < charSequence.length(); i++) {
                View childAt;
                if (i < getChildCount()) {
                    childAt = getChildAt(i);
                } else {
                    childAt = new ImageView(getContext());
                    childAt.setLayoutParams(this.To);
                    addView(childAt);
                }
                Integer num = (Integer) this.Ts.get(Character.valueOf(charSequence.charAt(i)));
                if (num != null) {
                    childAt.setBackground(getResources().getDrawable(num.intValue()));
                }
            }
            for (i = getChildCount(); i > charSequence.length(); i--) {
                removeViewAt(i - 1);
            }
        }
    }
}
