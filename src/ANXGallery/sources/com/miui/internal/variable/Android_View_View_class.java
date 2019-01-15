package com.miui.internal.variable;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import com.miui.internal.util.ClassProxy;
import com.miui.internal.util.async.ConcurrentWeakHashMap;
import miui.R;

public abstract class Android_View_View_class extends ClassProxy<View> implements IManagedClassProxy {
    private static SparseIntArray kA = new SparseIntArray();
    private static SparseArray<int[]> kB = new SparseArray();
    private static ConcurrentWeakHashMap<View, CustomizedValue> kC = new ConcurrentWeakHashMap();

    public static class CustomizedValue {
        public boolean mHasInitViewSequenceStates = false;
        public int mHorizontalState = 0;
        public boolean mTagChildrenSequenceState = false;
        public int mVerticalState = 0;
    }

    public static class Factory extends AbsClassFactory {
        private Android_View_View_class kD;

        private static class Holder {
            static final Factory kE = new Factory();

            private Holder() {
            }
        }

        private Factory() {
            this.kD = (Android_View_View_class) create("Android_View_View_class");
        }

        public static Factory getInstance() {
            return Holder.kE;
        }

        public Android_View_View_class get() {
            return this.kD;
        }
    }

    public abstract Bitmap createSnapshot(View view, Config config, int i, boolean z);

    public abstract void relayout(View view);

    public abstract void setImportantForAccessibilityNoHideDescendants(View view);

    public abstract void setLeftDirectly(View view, int i);

    public abstract void setRightDirectly(View view, int i);

    public abstract void setScrollXDirectly(View view, int i);

    public abstract void setScrollYDirectly(View view, int i);

    static {
        kA.put(16842908, 1);
        kA.put(16842910, 1 << kA.size());
        kA.put(16842911, 1 << kA.size());
        kA.put(16842912, 1 << kA.size());
        kA.put(16842913, 1 << kA.size());
        kA.put(16842914, 1 << kA.size());
        kA.put(16842915, 1 << kA.size());
        kA.put(16842916, 1 << kA.size());
        kA.put(16842917, 1 << kA.size());
        kA.put(16842918, 1 << kA.size());
        kA.put(16842919, 1 << kA.size());
        kA.put(16842921, 1 << kA.size());
        kA.put(16843518, 1 << kA.size());
        kA.put(R.attr.state_first_h, 1 << kA.size());
        kA.put(R.attr.state_middle_h, 1 << kA.size());
        kA.put(R.attr.state_last_h, 1 << kA.size());
        kA.put(R.attr.state_single_h, 1 << kA.size());
        kA.put(R.attr.state_first_v, 1 << kA.size());
        kA.put(R.attr.state_middle_v, 1 << kA.size());
        kA.put(R.attr.state_last_v, 1 << kA.size());
        kA.put(R.attr.state_single_v, 1 << kA.size());
    }

    public Android_View_View_class() {
        super(View.class);
    }

    protected CustomizedValue getCustomizedValue(View view) {
        CustomizedValue customizedValue = (CustomizedValue) kC.get(view);
        if (customizedValue != null) {
            return customizedValue;
        }
        customizedValue = new CustomizedValue();
        kC.put(view, customizedValue);
        return customizedValue;
    }

    public int getHorizontalState(View view) {
        return getCustomizedValue(view).mHorizontalState;
    }

    public void setHorizontalState(View view, int i) {
        getCustomizedValue(view).mHorizontalState = i;
    }

    public int getVerticalState(View view) {
        return getCustomizedValue(view).mVerticalState;
    }

    public void setVerticalState(View view, int i) {
        getCustomizedValue(view).mVerticalState = i;
    }

    public boolean hasInitViewSequenceStates(View view) {
        return getCustomizedValue(view).mHasInitViewSequenceStates;
    }

    public void setHasInitViewSequenceStates(View view, boolean z) {
        getCustomizedValue(view).mHasInitViewSequenceStates = z;
    }

    private static int h(int i) {
        if (i == 0) {
            return 0;
        }
        int i2 = kA.get(i, 0);
        if (i2 != 0) {
            return i2;
        }
        if (kA.size() < 32) {
            i2 = 1 << kA.size();
            kA.put(i, i2);
            return i2;
        }
        throw new IllegalArgumentException("State attribute cannot exceed 32!");
    }

    private static int a(int[] iArr) {
        int i = 0;
        if (iArr == null) {
            return 0;
        }
        int i2 = 0;
        while (i < iArr.length) {
            i2 |= h(iArr[i]);
            i++;
        }
        return i2;
    }

    protected int[] onCreateDrawableState(View view, int[] iArr, int i) {
        int horizontalState = getHorizontalState(view);
        int verticalState = getVerticalState(view);
        if (!(horizontalState == 0 || verticalState == 0)) {
            int a = (a(iArr) | h(horizontalState)) | h(verticalState);
            int[] iArr2 = (int[]) kB.get(a);
            if (iArr2 == null) {
                int length;
                if (iArr != null) {
                    length = iArr.length;
                } else {
                    length = 0;
                }
                Object obj = new int[(length + 2)];
                if (length != 0) {
                    System.arraycopy(iArr, 0, obj, 0, length);
                }
                obj[length] = horizontalState;
                obj[length + 1] = verticalState;
                kB.put(a, obj);
                iArr = obj;
            } else {
                iArr = iArr2;
            }
        }
        if (i == 0) {
            return iArr;
        }
        if (iArr == null) {
            return new int[i];
        }
        Object obj2 = new int[(iArr.length + i)];
        System.arraycopy(iArr, 0, obj2, 0, iArr.length);
        return obj2;
    }
}
