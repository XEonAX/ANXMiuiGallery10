package miui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.media.SoundPool;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnFocusChangeListener;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.DecelerateInterpolator;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.util.SimpleNumberFormatter;
import com.miui.internal.util.async.WorkerThreads;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import miui.util.AppConstants;
import miui.util.ArraySet;
import miui.util.ViewUtils;

public class NumberPicker extends LinearLayout {
    private static final int[] PRESSED_STATE_SET = new int[]{16842919};
    static final Formatter VF = new NumberFormatter(2);
    static final int Vn = 5;
    private static final String Vo = "NumberPicker_sound_play";
    private static final long Vp = 300;
    private static final int Vq = 2;
    private static final int Vr = 8;
    private static final int Vs = 800;
    private static final int Vt = 300;
    private static final float Vu = 0.9f;
    private static final int Vv = 2;
    private static final int Vw = 48;
    private static final int Vx = R.layout.numberpicker_layout;
    private static final int Vy = -1;
    private static final AtomicInteger Vz = new AtomicInteger(0);
    private static final float WP = 45.0f;
    private static final int WR = 202;
    private static final char[] WV = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    private int NH;
    private int VB;
    private int VD;
    private SoundPlayHandler VH;
    private final EditText VJ;
    private final int VK;
    private final int VL;
    private final int VM;
    private final int VO;
    private int VP;
    private final boolean VQ;
    private int VR;
    private String[] VS;
    private int VT;
    private int VV;
    private int VW;
    private OnValueChangeListener VX;
    private OnScrollListener VY;
    private Formatter VZ;
    private boolean WA;
    private boolean WB;
    private AccessibilityNodeProviderImpl WC;
    private final PressedStateHelper WD;
    private int WE;
    private Paint WG;
    private int WH;
    private float WI;
    private int WJ;
    private int WK;
    private int WL;
    private int WM;
    private int WN;
    private float WO;
    private int WQ;
    private CharSequence WT;
    private float WU;
    private long Wa;
    private final SparseArray<String> Wb;
    private final int[] Wc;
    private final Paint Wd;
    private int We;
    private int Wf;
    private int Wg;
    private final Scroller Wh;
    private final Scroller Wi;
    private int Wj;
    private SetSelectionCommand Wk;
    private ChangeCurrentByOneFromLongPressCommand Wl;
    private BeginSoftInputOnLongPressCommand Wm;
    private float Wn;
    private long Wo;
    private float Wp;
    private int Wq;
    private int Wr;
    private boolean Ws;
    private final boolean Wt;
    private final int Wu;
    private boolean Wv;
    private boolean Ww;
    private int Wx;
    private int Wy;
    private int Wz;
    private int fE;
    private final int mh;
    private VelocityTracker qS;
    private final int uA;

    public interface OnValueChangeListener {
        void onValueChange(NumberPicker numberPicker, int i, int i2);
    }

    class AccessibilityNodeProviderImpl extends AccessibilityNodeProvider {
        private static final int UNDEFINED = Integer.MIN_VALUE;
        private static final int WX = 1;
        private static final int WY = 2;
        private static final int WZ = 3;
        private final Rect Mq = new Rect();
        private final int[] Xa = new int[2];
        private int Xb = Integer.MIN_VALUE;

        AccessibilityNodeProviderImpl() {
        }

        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            if (i == -1) {
                return f(NumberPicker.this.getScrollX(), NumberPicker.this.getScrollY(), NumberPicker.this.getScrollX() + (NumberPicker.this.getRight() - NumberPicker.this.getLeft()), NumberPicker.this.getScrollY() + (NumberPicker.this.getBottom() - NumberPicker.this.getTop()));
            }
            switch (i) {
                case 1:
                    return a(1, fw(), NumberPicker.this.getScrollX(), NumberPicker.this.Wy - NumberPicker.this.Wu, NumberPicker.this.getScrollX() + (NumberPicker.this.getRight() - NumberPicker.this.getLeft()), NumberPicker.this.getScrollY() + (NumberPicker.this.getBottom() - NumberPicker.this.getTop()));
                case 2:
                    return e(NumberPicker.this.getScrollX(), NumberPicker.this.Wx + NumberPicker.this.Wu, NumberPicker.this.getScrollX() + (NumberPicker.this.getRight() - NumberPicker.this.getLeft()), NumberPicker.this.Wy - NumberPicker.this.Wu);
                case 3:
                    return a(3, fv(), NumberPicker.this.getScrollX(), NumberPicker.this.getScrollY(), NumberPicker.this.getScrollX() + (NumberPicker.this.getRight() - NumberPicker.this.getLeft()), NumberPicker.this.Wx + NumberPicker.this.Wu);
                default:
                    return super.createAccessibilityNodeInfo(i);
            }
        }

        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            if (TextUtils.isEmpty(str)) {
                return Collections.emptyList();
            }
            String toLowerCase = str.toLowerCase();
            List arrayList = new ArrayList();
            if (i != -1) {
                switch (i) {
                    case 1:
                    case 2:
                    case 3:
                        a(toLowerCase, i, arrayList);
                        return arrayList;
                    default:
                        return super.findAccessibilityNodeInfosByText(str, i);
                }
            }
            a(toLowerCase, 3, arrayList);
            a(toLowerCase, 2, arrayList);
            a(toLowerCase, 1, arrayList);
            return arrayList;
        }

        public boolean performAction(int i, int i2, Bundle bundle) {
            boolean z = false;
            if (i != -1) {
                switch (i) {
                    case 1:
                        if (i2 != 16) {
                            if (i2 != 64) {
                                if (i2 != 128 || this.Xb != i) {
                                    return false;
                                }
                                this.Xb = Integer.MIN_VALUE;
                                o(i, 65536);
                                NumberPicker.this.invalidate(0, NumberPicker.this.Wy, NumberPicker.this.getRight(), NumberPicker.this.getBottom());
                                return true;
                            } else if (this.Xb == i) {
                                return false;
                            } else {
                                this.Xb = i;
                                o(i, 32768);
                                NumberPicker.this.invalidate(0, NumberPicker.this.Wy, NumberPicker.this.getRight(), NumberPicker.this.getBottom());
                                return true;
                            }
                        } else if (!NumberPicker.this.isEnabled()) {
                            return false;
                        } else {
                            NumberPicker.this.x(true);
                            o(i, 1);
                            return true;
                        }
                    case 2:
                        if (i2 == 16) {
                            return NumberPicker.this.isEnabled();
                        } else {
                            if (i2 != 64) {
                                if (i2 != 128) {
                                    switch (i2) {
                                        case 1:
                                            if (!NumberPicker.this.isEnabled() || NumberPicker.this.VJ.isFocused()) {
                                                return false;
                                            }
                                            return NumberPicker.this.VJ.requestFocus();
                                        case 2:
                                            if (!NumberPicker.this.isEnabled() || !NumberPicker.this.VJ.isFocused()) {
                                                return false;
                                            }
                                            NumberPicker.this.VJ.clearFocus();
                                            return true;
                                        default:
                                            return NumberPicker.this.VJ.performAccessibilityAction(i2, bundle);
                                    }
                                } else if (this.Xb != i) {
                                    return false;
                                } else {
                                    this.Xb = Integer.MIN_VALUE;
                                    o(i, 65536);
                                    NumberPicker.this.VJ.invalidate();
                                    return true;
                                }
                            } else if (this.Xb == i) {
                                return false;
                            } else {
                                this.Xb = i;
                                o(i, 32768);
                                NumberPicker.this.VJ.invalidate();
                                return true;
                            }
                        }
                    case 3:
                        if (i2 != 16) {
                            if (i2 != 64) {
                                if (i2 != 128 || this.Xb != i) {
                                    return false;
                                }
                                this.Xb = Integer.MIN_VALUE;
                                o(i, 65536);
                                NumberPicker.this.invalidate(0, 0, NumberPicker.this.getRight(), NumberPicker.this.Wx);
                                return true;
                            } else if (this.Xb == i) {
                                return false;
                            } else {
                                this.Xb = i;
                                o(i, 32768);
                                NumberPicker.this.invalidate(0, 0, NumberPicker.this.getRight(), NumberPicker.this.Wx);
                                return true;
                            }
                        } else if (!NumberPicker.this.isEnabled()) {
                            return false;
                        } else {
                            if (i == 1) {
                                z = true;
                            }
                            NumberPicker.this.x(z);
                            o(i, 1);
                            return true;
                        }
                }
            } else if (i2 != 64) {
                if (i2 != 128) {
                    if (i2 != 4096) {
                        if (i2 == 8192) {
                            if (!NumberPicker.this.isEnabled() || (!NumberPicker.this.getWrapSelectorWheel() && NumberPicker.this.getValue() <= NumberPicker.this.getMinValue())) {
                                return false;
                            }
                            NumberPicker.this.x(false);
                            return true;
                        }
                    } else if (!NumberPicker.this.isEnabled() || (!NumberPicker.this.getWrapSelectorWheel() && NumberPicker.this.getValue() >= NumberPicker.this.getMaxValue())) {
                        return false;
                    } else {
                        NumberPicker.this.x(true);
                        return true;
                    }
                } else if (this.Xb != i) {
                    return false;
                } else {
                    this.Xb = Integer.MIN_VALUE;
                    return true;
                }
            } else if (this.Xb == i) {
                return false;
            } else {
                this.Xb = i;
                return true;
            }
            return super.performAction(i, i2, bundle);
        }

        public void o(int i, int i2) {
            switch (i) {
                case 1:
                    if (fu()) {
                        a(i, i2, fw());
                        return;
                    }
                    return;
                case 2:
                    ay(i2);
                    return;
                case 3:
                    if (ft()) {
                        a(i, i2, fv());
                        return;
                    }
                    return;
                default:
                    return;
            }
        }

        private void ay(int i) {
            if (((AccessibilityManager) NumberPicker.this.getContext().getSystemService("accessibility")).isEnabled()) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain(i);
                NumberPicker.this.VJ.onInitializeAccessibilityEvent(obtain);
                NumberPicker.this.VJ.onPopulateAccessibilityEvent(obtain);
                obtain.setSource(NumberPicker.this, 2);
                NumberPicker.this.requestSendAccessibilityEvent(NumberPicker.this, obtain);
            }
        }

        private void a(int i, int i2, String str) {
            if (((AccessibilityManager) NumberPicker.this.getContext().getSystemService("accessibility")).isEnabled()) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
                obtain.setClassName(Button.class.getName());
                obtain.setPackageName(NumberPicker.this.getContext().getPackageName());
                obtain.getText().add(str);
                obtain.setEnabled(NumberPicker.this.isEnabled());
                obtain.setSource(NumberPicker.this, i);
                NumberPicker.this.requestSendAccessibilityEvent(NumberPicker.this, obtain);
            }
        }

        private void a(String str, int i, List<AccessibilityNodeInfo> list) {
            Object fw;
            switch (i) {
                case 1:
                    fw = fw();
                    if (!TextUtils.isEmpty(fw) && fw.toString().toLowerCase().contains(str)) {
                        list.add(createAccessibilityNodeInfo(1));
                    }
                    return;
                case 2:
                    CharSequence text = NumberPicker.this.VJ.getText();
                    if (TextUtils.isEmpty(text) || !text.toString().toLowerCase().contains(str)) {
                        text = NumberPicker.this.VJ.getText();
                        if (!TextUtils.isEmpty(text) && text.toString().toLowerCase().contains(str)) {
                            list.add(createAccessibilityNodeInfo(2));
                            return;
                        }
                    }
                    list.add(createAccessibilityNodeInfo(2));
                    return;
                    break;
                case 3:
                    fw = fv();
                    if (!TextUtils.isEmpty(fw) && fw.toString().toLowerCase().contains(str)) {
                        list.add(createAccessibilityNodeInfo(3));
                    }
                    return;
            }
        }

        private AccessibilityNodeInfo e(int i, int i2, int i3, int i4) {
            AccessibilityNodeInfo createAccessibilityNodeInfo = NumberPicker.this.VJ.createAccessibilityNodeInfo();
            createAccessibilityNodeInfo.setSource(NumberPicker.this, 2);
            if (this.Xb != 2) {
                createAccessibilityNodeInfo.addAction(64);
            }
            if (this.Xb == 2) {
                createAccessibilityNodeInfo.addAction(128);
            }
            Rect rect = this.Mq;
            rect.set(i, i2, i3, i4);
            createAccessibilityNodeInfo.setVisibleToUser(NumberPicker.this.getVisibility() == 0);
            createAccessibilityNodeInfo.setBoundsInParent(rect);
            int[] iArr = this.Xa;
            NumberPicker.this.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            createAccessibilityNodeInfo.setBoundsInScreen(rect);
            return createAccessibilityNodeInfo;
        }

        private AccessibilityNodeInfo a(int i, String str, int i2, int i3, int i4, int i5) {
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
            obtain.setClassName(Button.class.getName());
            obtain.setPackageName(NumberPicker.this.getContext().getPackageName());
            obtain.setSource(NumberPicker.this, i);
            obtain.setParent(NumberPicker.this);
            obtain.setText(str);
            obtain.setClickable(true);
            obtain.setLongClickable(true);
            obtain.setEnabled(NumberPicker.this.isEnabled());
            Rect rect = this.Mq;
            rect.set(i2, i3, i4, i5);
            obtain.setVisibleToUser(NumberPicker.this.getVisibility() == 0);
            obtain.setBoundsInParent(rect);
            int[] iArr = this.Xa;
            NumberPicker.this.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            obtain.setBoundsInScreen(rect);
            if (this.Xb != i) {
                obtain.addAction(64);
            }
            if (this.Xb == i) {
                obtain.addAction(128);
            }
            if (NumberPicker.this.isEnabled()) {
                obtain.addAction(16);
            }
            return obtain;
        }

        private AccessibilityNodeInfo f(int i, int i2, int i3, int i4) {
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
            obtain.setClassName(NumberPicker.class.getName());
            obtain.setPackageName(NumberPicker.this.getContext().getPackageName());
            obtain.setSource(NumberPicker.this);
            if (ft()) {
                obtain.addChild(NumberPicker.this, 3);
            }
            obtain.addChild(NumberPicker.this, 2);
            if (fu()) {
                obtain.addChild(NumberPicker.this, 1);
            }
            obtain.setParent((View) NumberPicker.this.getParentForAccessibility());
            obtain.setEnabled(NumberPicker.this.isEnabled());
            obtain.setScrollable(true);
            Rect rect = this.Mq;
            rect.set(i, i2, i3, i4);
            obtain.setBoundsInParent(rect);
            obtain.setVisibleToUser(NumberPicker.this.getVisibility() == 0);
            int[] iArr = this.Xa;
            NumberPicker.this.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            obtain.setBoundsInScreen(rect);
            if (this.Xb != -1) {
                obtain.addAction(64);
            }
            if (this.Xb == -1) {
                obtain.addAction(128);
            }
            if (NumberPicker.this.isEnabled()) {
                if (NumberPicker.this.getWrapSelectorWheel() || NumberPicker.this.getValue() < NumberPicker.this.getMaxValue()) {
                    obtain.addAction(4096);
                }
                if (NumberPicker.this.getWrapSelectorWheel() || NumberPicker.this.getValue() > NumberPicker.this.getMinValue()) {
                    obtain.addAction(8192);
                }
            }
            return obtain;
        }

        private boolean ft() {
            return NumberPicker.this.getWrapSelectorWheel() || NumberPicker.this.getValue() > NumberPicker.this.getMinValue();
        }

        private boolean fu() {
            return NumberPicker.this.getWrapSelectorWheel() || NumberPicker.this.getValue() < NumberPicker.this.getMaxValue();
        }

        private String fv() {
            int j = NumberPicker.this.VW - 1;
            if (NumberPicker.this.Ws) {
                j = NumberPicker.this.au(j);
            }
            if (j < NumberPicker.this.VT) {
                return null;
            }
            String d;
            if (NumberPicker.this.VS == null) {
                d = NumberPicker.this.aw(j);
            } else {
                d = NumberPicker.this.VS[j - NumberPicker.this.VT];
            }
            return d;
        }

        private String fw() {
            int j = NumberPicker.this.VW + 1;
            if (NumberPicker.this.Ws) {
                j = NumberPicker.this.au(j);
            }
            if (j > NumberPicker.this.VV) {
                return null;
            }
            String d;
            if (NumberPicker.this.VS == null) {
                d = NumberPicker.this.aw(j);
            } else {
                d = NumberPicker.this.VS[j - NumberPicker.this.VT];
            }
            return d;
        }
    }

    class BeginSoftInputOnLongPressCommand implements Runnable {
        BeginSoftInputOnLongPressCommand() {
        }

        public void run() {
            NumberPicker.this.Wv = true;
        }
    }

    class ChangeCurrentByOneFromLongPressCommand implements Runnable {
        private boolean Xc;

        ChangeCurrentByOneFromLongPressCommand() {
        }

        private void y(boolean z) {
            this.Xc = z;
        }

        public void run() {
            NumberPicker.this.x(this.Xc);
            NumberPicker.this.postDelayed(this, NumberPicker.this.Wa);
        }
    }

    public static class CustomEditText extends EditText {
        public CustomEditText(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public void onEditorAction(int i) {
            super.onEditorAction(i);
            if (i == 6) {
                clearFocus();
            }
        }
    }

    public interface Formatter {
        String format(int i);
    }

    class InputTextFilter extends NumberKeyListener {
        InputTextFilter() {
        }

        public int getInputType() {
            return 1;
        }

        protected char[] getAcceptedChars() {
            return NumberPicker.WV;
        }

        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            int i5 = 0;
            String stringBuilder;
            if (NumberPicker.this.VS == null) {
                CharSequence filter = super.filter(charSequence, i, i2, spanned, i3, i4);
                if (filter == null) {
                    filter = charSequence.subSequence(i, i2);
                }
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(String.valueOf(spanned.subSequence(0, i3)));
                stringBuilder2.append(filter);
                stringBuilder2.append(spanned.subSequence(i4, spanned.length()));
                stringBuilder = stringBuilder2.toString();
                if ("".equals(stringBuilder)) {
                    return stringBuilder;
                }
                if (NumberPicker.this.N(stringBuilder) > NumberPicker.this.VV || stringBuilder.length() > String.valueOf(NumberPicker.this.VV).length()) {
                    return "";
                }
                return filter;
            }
            charSequence = String.valueOf(charSequence.subSequence(i, i2));
            if (TextUtils.isEmpty(charSequence)) {
                return "";
            }
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append(String.valueOf(spanned.subSequence(0, i3)));
            stringBuilder3.append(charSequence);
            stringBuilder3.append(spanned.subSequence(i4, spanned.length()));
            stringBuilder = stringBuilder3.toString();
            String toLowerCase = String.valueOf(stringBuilder).toLowerCase();
            String[] b = NumberPicker.this.VS;
            int length = b.length;
            while (i5 < length) {
                String str = b[i5];
                if (str.toLowerCase().startsWith(toLowerCase)) {
                    NumberPicker.this.n(stringBuilder.length(), str.length());
                    return str.subSequence(i3, str.length());
                }
                i5++;
            }
            return "";
        }
    }

    static class NumberFormatter implements Formatter {
        private final int Xd;

        public NumberFormatter() {
            this.Xd = -1;
        }

        public NumberFormatter(int i) {
            this.Xd = i;
        }

        public String format(int i) {
            return SimpleNumberFormatter.format(this.Xd, i);
        }
    }

    public interface OnScrollListener {
        public static final int SCROLL_STATE_FLING = 2;
        public static final int SCROLL_STATE_IDLE = 0;
        public static final int SCROLL_STATE_TOUCH_SCROLL = 1;

        void onScrollStateChange(NumberPicker numberPicker, int i);
    }

    class PressedStateHelper implements Runnable {
        public static final int Xe = 1;
        public static final int Xf = 2;
        private final int Xg = 1;
        private final int Xh = 2;
        private int Xi;
        private int Xj;

        PressedStateHelper() {
        }

        public void cancel() {
            this.Xj = 0;
            this.Xi = 0;
            NumberPicker.this.removeCallbacks(this);
            if (NumberPicker.this.WA) {
                NumberPicker.this.WA = false;
                NumberPicker.this.invalidate(0, NumberPicker.this.Wy, NumberPicker.this.getRight(), NumberPicker.this.getBottom());
            }
            if (NumberPicker.this.WB) {
                NumberPicker.this.WB = false;
                NumberPicker.this.invalidate(0, 0, NumberPicker.this.getRight(), NumberPicker.this.Wx);
            }
        }

        public void az(int i) {
            cancel();
            this.Xj = 1;
            this.Xi = i;
            NumberPicker.this.postDelayed(this, (long) ViewConfiguration.getTapTimeout());
        }

        public void aA(int i) {
            cancel();
            this.Xj = 2;
            this.Xi = i;
            NumberPicker.this.post(this);
        }

        public void run() {
            switch (this.Xj) {
                case 1:
                    switch (this.Xi) {
                        case 1:
                            NumberPicker.this.WA = true;
                            NumberPicker.this.invalidate(0, NumberPicker.this.Wy, NumberPicker.this.getRight(), NumberPicker.this.getBottom());
                            return;
                        case 2:
                            NumberPicker.this.WB = true;
                            NumberPicker.this.invalidate(0, 0, NumberPicker.this.getRight(), NumberPicker.this.Wx);
                            return;
                        default:
                            return;
                    }
                case 2:
                    switch (this.Xi) {
                        case 1:
                            if (!NumberPicker.this.WA) {
                                NumberPicker.this.postDelayed(this, (long) ViewConfiguration.getPressedStateDuration());
                            }
                            NumberPicker.a(NumberPicker.this, 1);
                            NumberPicker.this.invalidate(0, NumberPicker.this.Wy, NumberPicker.this.getRight(), NumberPicker.this.getBottom());
                            return;
                        case 2:
                            if (!NumberPicker.this.WB) {
                                NumberPicker.this.postDelayed(this, (long) ViewConfiguration.getPressedStateDuration());
                            }
                            NumberPicker.b(NumberPicker.this, 1);
                            NumberPicker.this.invalidate(0, 0, NumberPicker.this.getRight(), NumberPicker.this.Wx);
                            return;
                        default:
                            return;
                    }
                default:
                    return;
            }
        }
    }

    class SetSelectionCommand implements Runnable {
        private int Xk;
        private int Xl;

        SetSelectionCommand() {
        }

        public void run() {
            if (this.Xl < NumberPicker.this.VJ.length()) {
                NumberPicker.this.VJ.setSelection(this.Xk, this.Xl);
            }
        }
    }

    private static class SoundPlayHandler extends Handler {
        private static final SoundPlayerContainer Xm = new SoundPlayerContainer();
        private static final int Xn = 0;
        private static final int Xo = 1;
        private static final int Xp = 2;

        private static class SoundPlayerContainer {
            private static final long Xq = 50;
            private Set<Integer> Xr;
            private SoundPool Xs;
            private int Xt;
            private long Xu;

            private SoundPlayerContainer() {
                this.Xr = new ArraySet();
            }

            /* synthetic */ SoundPlayerContainer(AnonymousClass1 anonymousClass1) {
                this();
            }

            void init(int i) {
                if (this.Xs == null) {
                    this.Xs = new SoundPool(1, 1, 0);
                    this.Xt = this.Xs.load(AppConstants.getCurrentApplication(), R.raw.numberpicker_value_change, 1);
                }
                this.Xr.add(Integer.valueOf(i));
            }

            void play() {
                long currentTimeMillis = System.currentTimeMillis();
                if (this.Xs != null && currentTimeMillis - this.Xu > Xq) {
                    this.Xs.play(this.Xt, 1.0f, 1.0f, 0, 0, 1.0f);
                    this.Xu = currentTimeMillis;
                }
            }

            void release(int i) {
                if (this.Xr.remove(Integer.valueOf(i)) && this.Xr.isEmpty() && this.Xs != null) {
                    this.Xs.release();
                    this.Xs = null;
                }
            }
        }

        SoundPlayHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    Xm.init(message.arg1);
                    return;
                case 1:
                    Xm.play();
                    return;
                case 2:
                    Xm.release(message.arg1);
                    return;
                default:
                    return;
            }
        }

        void init(int i) {
            sendMessage(obtainMessage(0, i, 0));
        }

        void play() {
            sendMessage(obtainMessage(1));
        }

        void stop() {
            removeMessages(1);
        }

        void release(int i) {
            sendMessage(obtainMessage(2, i, 0));
        }
    }

    public NumberPicker(Context context) {
        this(context, null);
    }

    public NumberPicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.numberPickerStyle);
    }

    public NumberPicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mh = Vz.incrementAndGet();
        this.VB = 1;
        this.VD = 2;
        this.VP = 400;
        this.Wa = Vp;
        this.Wb = new SparseArray();
        this.Wc = new int[5];
        this.Wf = Integer.MIN_VALUE;
        this.NH = 0;
        this.WE = -1;
        this.WH = 30;
        this.WJ = 25;
        this.WK = 14;
        this.WL = 10;
        this.WM = -303101;
        this.WN = 2130706432;
        this.WQ = -303101;
        this.WU = 1.0f;
        float f = getResources().getDisplayMetrics().density;
        if (f != 1.0f) {
            this.WK = (int) (((float) this.WK) * f);
            this.WJ = (int) (((float) this.WJ) * f);
            this.WL = (int) (((float) this.WL) * f);
            this.VB = (int) (((float) this.VB) * f);
            this.VD = (int) (((float) this.VD) * f);
        }
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.NumberPicker, i, 0);
        this.WT = obtainStyledAttributes.getText(R.styleable.NumberPicker_android_text);
        this.WJ = obtainStyledAttributes.getDimensionPixelSize(R.styleable.NumberPicker_textSizeHighlight, this.WJ);
        this.WK = obtainStyledAttributes.getDimensionPixelSize(R.styleable.NumberPicker_textSizeHint, this.WK);
        this.WL = obtainStyledAttributes.getDimensionPixelSize(R.styleable.NumberPicker_android_labelTextSize, this.WL);
        this.WM = obtainStyledAttributes.getColor(R.styleable.NumberPicker_android_textColorHighlight, this.WM);
        this.WN = obtainStyledAttributes.getColor(R.styleable.NumberPicker_android_textColorHint, this.WN);
        this.WQ = obtainStyledAttributes.getColor(R.styleable.NumberPicker_labelTextColor, this.WQ);
        this.WH = obtainStyledAttributes.getDimensionPixelSize(R.styleable.NumberPicker_labelPadding, this.WH);
        obtainStyledAttributes.recycle();
        fd();
        int i2 = R.layout.numberpicker_layout;
        this.Wt = true;
        this.Wu = (int) TypedValue.applyDimension(1, 2.0f, getResources().getDisplayMetrics());
        this.VK = (int) (WP * f);
        this.VL = -1;
        this.VM = (int) (202.0f * f);
        if (this.VL == -1 || this.VM == -1 || this.VL <= this.VM) {
            this.VO = -1;
            this.VP = -1;
            if (this.VO == -1 || this.VP == -1 || this.VO <= this.VP) {
                this.VQ = this.VP == -1;
                this.WD = new PressedStateHelper();
                setWillNotDraw(this.Wt ^ true);
                ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(i2, this, true);
                this.VJ = (EditText) findViewById(R.id.numberpicker_input);
                this.VJ.setOnFocusChangeListener(new OnFocusChangeListener() {
                    public void onFocusChange(View view, boolean z) {
                        if (z) {
                            NumberPicker.this.VJ.selectAll();
                            return;
                        }
                        NumberPicker.this.VJ.setSelection(0, 0);
                        NumberPicker.this.q(view);
                    }
                });
                this.VJ.setFilters(new InputFilter[]{new InputTextFilter()});
                this.VJ.setRawInputType(2);
                this.VJ.setImeOptions(6);
                this.VJ.setVisibility(4);
                this.VJ.setGravity(8388611);
                this.VJ.setScaleX(0.0f);
                this.VJ.setSaveEnabled(false);
                this.VJ.setPadding(this.WH, this.VJ.getPaddingTop(), this.WH, this.VJ.getPaddingRight());
                ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
                this.fE = viewConfiguration.getScaledTouchSlop();
                this.Wq = viewConfiguration.getScaledMinimumFlingVelocity();
                this.Wr = viewConfiguration.getScaledMaximumFlingVelocity() / 8;
                this.uA = (int) this.VJ.getTextSize();
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                paint.setTextAlign(Align.CENTER);
                paint.setTextSize((float) this.WJ);
                paint.setTypeface(this.VJ.getTypeface());
                paint.setColor(this.VJ.getTextColors().getColorForState(ENABLED_STATE_SET, -1));
                this.Wd = paint;
                this.WO = paint.ascent();
                this.WG = new Paint();
                this.WG.setAntiAlias(true);
                this.WG.setFakeBoldText(true);
                this.WG.setColor(this.WQ);
                this.WG.setTextSize((float) this.WL);
                this.Wh = new Scroller(getContext(), null, true);
                this.Wi = new Scroller(getContext(), new DecelerateInterpolator(2.5f));
                fl();
                if (getImportantForAccessibility() == 0) {
                    setImportantForAccessibility(1);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("minWidth > maxWidth");
        }
        throw new IllegalArgumentException("minHeight > maxHeight");
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        fh();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.Wt) {
            i = getMeasuredWidth();
            i2 = getMeasuredHeight();
            i3 = this.VJ.getMeasuredWidth();
            i4 = this.VJ.getMeasuredHeight();
            i = (i - i3) / 2;
            i2 = (i2 - i4) / 2;
            this.VJ.layout(i, i2, i3 + i, i4 + i2);
            if (z) {
                fj();
                fk();
                this.Wx = ((getHeight() - this.VK) / 2) - this.Wu;
                this.Wy = (this.Wx + (2 * this.Wu)) + this.VK;
            }
            return;
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    protected void onMeasure(int i, int i2) {
        if (this.Wt) {
            super.onMeasure(makeMeasureSpec(i, this.VP), makeMeasureSpec(i2, this.VM));
            setMeasuredDimension(i(this.VO, getMeasuredWidth(), i), i(this.VL, getMeasuredHeight(), i2));
            return;
        }
        super.onMeasure(i, i2);
    }

    private void fd() {
        if (this.VH == null) {
            this.VH = new SoundPlayHandler(WorkerThreads.aquireWorker(Vo));
            this.VH.init(this.mh);
        }
    }

    private void fe() {
        if (this.VH != null) {
            this.VH.release(this.mh);
            this.VH = null;
        }
    }

    private void ff() {
        if (this.VH != null) {
            this.VH.play();
        }
    }

    private void fg() {
        if (this.VH != null) {
            this.VH.stop();
        }
    }

    private boolean a(Scroller scroller) {
        scroller.forceFinished(true);
        int finalY = scroller.getFinalY() - scroller.getCurrY();
        int i = this.Wf - ((this.Wg + finalY) % this.We);
        if (i == 0) {
            return false;
        }
        if (Math.abs(i) > this.We / 2) {
            if (i > 0) {
                i -= this.We;
            } else {
                i += this.We;
            }
        }
        scrollBy(0, finalY + i);
        return true;
    }

    /* JADX WARNING: Missing block: B:31:0x00ab, code:
            return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.Wt || !isEnabled() || motionEvent.getActionMasked() != 0) {
            return false;
        }
        fp();
        this.VJ.setVisibility(4);
        float y = motionEvent.getY();
        this.Wn = y;
        this.Wp = y;
        this.Wo = motionEvent.getEventTime();
        this.Wv = false;
        this.Ww = false;
        if (this.Wn < ((float) this.Wx)) {
            if (this.NH == 0) {
                this.WD.az(2);
            }
        } else if (this.Wn > ((float) this.Wy) && this.NH == 0) {
            this.WD.az(1);
        }
        if (!this.Wh.isFinished()) {
            this.Wh.forceFinished(true);
            this.Wi.forceFinished(true);
            at(0);
        } else if (!this.Wi.isFinished()) {
            this.Wh.forceFinished(true);
            this.Wi.forceFinished(true);
        } else if (this.Wn < ((float) this.Wx)) {
            a(false, (long) ViewConfiguration.getLongPressTimeout());
        } else if (this.Wn > ((float) this.Wy)) {
            a(true, (long) ViewConfiguration.getLongPressTimeout());
        } else {
            this.Ww = true;
            fn();
        }
        return true;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || !this.Wt) {
            return false;
        }
        if (this.qS == null) {
            this.qS = VelocityTracker.obtain();
        }
        this.qS.addMovement(motionEvent);
        switch (motionEvent.getActionMasked()) {
            case 1:
                fo();
                fm();
                this.WD.cancel();
                VelocityTracker velocityTracker = this.qS;
                velocityTracker.computeCurrentVelocity(1000, (float) this.Wr);
                int yVelocity = (int) velocityTracker.getYVelocity();
                if (Math.abs(yVelocity) >= Math.abs(this.Wr)) {
                    yVelocity = (int) (((float) yVelocity) * this.WU);
                }
                if (Math.abs(yVelocity) > this.Wq) {
                    fling(yVelocity);
                    at(2);
                } else {
                    yVelocity = (int) motionEvent.getY();
                    long eventTime = motionEvent.getEventTime() - this.Wo;
                    if (((int) Math.abs(((float) yVelocity) - this.Wn)) > this.fE || eventTime >= ((long) ViewConfiguration.getTapTimeout())) {
                        fq();
                    } else if (this.Ww) {
                        this.Ww = false;
                    } else {
                        yVelocity = (yVelocity / this.We) - 2;
                        if (yVelocity > 0) {
                            x(true);
                            this.WD.aA(1);
                        } else if (yVelocity < 0) {
                            x(false);
                            this.WD.aA(2);
                        }
                    }
                    at(0);
                }
                this.qS.recycle();
                this.qS = null;
                break;
            case 2:
                if (!this.Wv) {
                    float y = motionEvent.getY();
                    if (this.NH == 1) {
                        scrollBy(0, (int) (y - this.Wp));
                        invalidate();
                    } else if (((int) Math.abs(y - this.Wn)) > this.fE) {
                        fp();
                        at(1);
                    }
                    this.Wp = y;
                    break;
                }
                break;
        }
        return true;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            fp();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 23 && keyCode != 66) {
            switch (keyCode) {
                case 19:
                case 20:
                    if (this.Wt) {
                        switch (keyEvent.getAction()) {
                            case 0:
                                if (this.Ws || keyCode == 20 ? getValue() >= getMaxValue() : getValue() <= getMinValue()) {
                                    requestFocus();
                                    this.WE = keyCode;
                                    fp();
                                    if (this.Wh.isFinished()) {
                                        x(keyCode == 20);
                                    }
                                    return true;
                                }
                            case 1:
                                if (this.WE == keyCode) {
                                    this.WE = -1;
                                    return true;
                                }
                                break;
                        }
                    }
                    break;
            }
        }
        fp();
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            fp();
        }
        return super.dispatchTrackballEvent(motionEvent);
    }

    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (!this.Wt) {
            return super.dispatchHoverEvent(motionEvent);
        }
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            int y = (int) motionEvent.getY();
            if (y < this.Wx) {
                y = 3;
            } else if (y > this.Wy) {
                y = 1;
            } else {
                y = 2;
            }
            int actionMasked = motionEvent.getActionMasked();
            AccessibilityNodeProviderImpl accessibilityNodeProviderImpl = (AccessibilityNodeProviderImpl) getAccessibilityNodeProvider();
            if (actionMasked != 7) {
                switch (actionMasked) {
                    case 9:
                        accessibilityNodeProviderImpl.o(y, 128);
                        this.Wz = y;
                        accessibilityNodeProviderImpl.performAction(y, 64, null);
                        break;
                    case 10:
                        accessibilityNodeProviderImpl.o(y, 256);
                        this.Wz = -1;
                        break;
                }
            } else if (!(this.Wz == y || this.Wz == -1)) {
                accessibilityNodeProviderImpl.o(this.Wz, 256);
                accessibilityNodeProviderImpl.o(y, 128);
                this.Wz = y;
                accessibilityNodeProviderImpl.performAction(y, 64, null);
            }
        }
        return false;
    }

    public void computeScroll() {
        Scroller scroller = this.Wh;
        if (scroller.isFinished()) {
            scroller = this.Wi;
            if (scroller.isFinished()) {
                return;
            }
        }
        scroller.computeScrollOffset();
        int currY = scroller.getCurrY();
        if (this.Wj == 0) {
            this.Wj = scroller.getStartY();
        }
        scrollBy(0, currY - this.Wj);
        this.Wj = currY;
        if (scroller.isFinished()) {
            b(scroller);
        } else {
            invalidate();
        }
    }

    public void scrollBy(int i, int i2) {
        int[] iArr = this.Wc;
        if (!this.Ws && i2 > 0 && iArr[2] <= this.VT) {
            this.Wg = this.Wf;
        } else if (this.Ws || i2 >= 0 || iArr[2] < this.VV) {
            this.Wg += i2;
            while (this.Wg - this.Wf > this.VR) {
                this.Wg -= this.We;
                d(iArr);
                i(iArr[2], true);
                if (!this.Ws && iArr[2] <= this.VT) {
                    this.Wg = this.Wf;
                }
            }
            while (this.Wg - this.Wf < (-this.VR)) {
                this.Wg += this.We;
                c(iArr);
                i(iArr[2], true);
                if (!this.Ws && iArr[2] >= this.VV) {
                    this.Wg = this.Wf;
                }
            }
        } else {
            this.Wg = this.Wf;
        }
    }

    public void setLabel(String str) {
        if ((this.WT == null && str != null) || (this.WT != null && !this.WT.equals(str))) {
            this.WT = str;
            invalidate();
        }
    }

    public void setOnValueChangedListener(OnValueChangeListener onValueChangeListener) {
        this.VX = onValueChangeListener;
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.VY = onScrollListener;
    }

    public void setFormatter(Formatter formatter) {
        if (formatter != this.VZ) {
            this.VZ = formatter;
            fi();
            fl();
        }
    }

    public void setValue(int i) {
        i(i, false);
    }

    private void fh() {
        if (this.VQ) {
            float f = -1.0f;
            this.Wd.setTextSize((float) this.WJ);
            int i = 0;
            if (this.VS == null) {
                f = 0.0f;
                while (i < 9) {
                    float measureText = this.Wd.measureText(String.valueOf(i));
                    if (measureText > f) {
                        f = measureText;
                    }
                    i++;
                }
                f = (float) ((int) (((float) aw(this.VV).length()) * f));
            } else {
                int length = this.VS.length;
                while (i < length) {
                    float measureText2 = this.Wd.measureText(this.VS[i]);
                    if (measureText2 > f) {
                        f = measureText2;
                    }
                    i++;
                }
            }
            this.WI = f;
            f = ((f + ((float) (this.VJ.getPaddingLeft() + this.VJ.getPaddingRight()))) + ((float) getPaddingLeft())) + ((float) getPaddingRight());
            if (((float) this.VP) != f) {
                if (f > ((float) this.VO)) {
                    this.VP = (int) f;
                } else {
                    this.VP = this.VO;
                }
            }
        }
    }

    public boolean getWrapSelectorWheel() {
        return this.Ws;
    }

    public void setWrapSelectorWheel(boolean z) {
        Object obj = this.VV - this.VT >= this.Wc.length ? 1 : null;
        if (!((z && obj == null) || z == this.Ws)) {
            this.Ws = z;
        }
        fr();
    }

    public void setOnLongPressUpdateInterval(long j) {
        this.Wa = j;
    }

    public int getValue() {
        return this.VW;
    }

    public int getMinValue() {
        return this.VT;
    }

    public void setMinValue(int i) {
        if (this.VT != i) {
            if (i >= 0) {
                this.VT = i;
                if (this.VT > this.VW) {
                    this.VW = this.VT;
                }
                setWrapSelectorWheel(this.VV - this.VT > this.Wc.length);
                fi();
                fl();
                fh();
                invalidate();
                return;
            }
            throw new IllegalArgumentException("minValue must be >= 0");
        }
    }

    public int getMaxValue() {
        return this.VV;
    }

    public void setMaxValue(int i) {
        if (this.VV != i) {
            if (i >= 0) {
                this.VV = i;
                if (this.VV < this.VW) {
                    this.VW = this.VV;
                }
                setWrapSelectorWheel(this.VV - this.VT > this.Wc.length);
                fi();
                fl();
                fh();
                invalidate();
                return;
            }
            throw new IllegalArgumentException("maxValue must be >= 0");
        }
    }

    public String[] getDisplayedValues() {
        return this.VS;
    }

    public void setDisplayedValues(String[] strArr) {
        if (this.VS != strArr) {
            this.VS = strArr;
            if (this.VS != null) {
                this.VJ.setRawInputType(524289);
            } else {
                this.VJ.setRawInputType(2);
            }
            fl();
            fi();
            fh();
        }
    }

    public void setMaxFlingSpeedFactor(float f) {
        if (f >= 0.0f) {
            this.WU = f;
        }
    }

    protected float getTopFadingEdgeStrength() {
        return Vu;
    }

    protected float getBottomFadingEdgeStrength() {
        return Vu;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        fd();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        fe();
        fp();
        WorkerThreads.releaseWorker(Vo);
    }

    protected void onDraw(Canvas canvas) {
        Canvas canvas2 = canvas;
        if (this.Wt) {
            int paddingLeft = getPaddingLeft();
            float right = (float) ((((getRight() - getLeft()) + paddingLeft) - getPaddingRight()) / 2);
            float f = (float) this.Wg;
            float f2 = (float) (this.Wf + (this.We * 2));
            SparseArray sparseArray = this.Wb;
            int[] iArr = this.Wc;
            boolean z = false;
            float f3 = f;
            int i = 0;
            while (i < iArr.length) {
                String str = (String) sparseArray.get(iArr[i]);
                float abs = Math.abs(f2 - f3) / ((float) this.We);
                float a = a(abs, this.WJ, this.WK);
                this.Wd.setTextSize(a);
                this.Wd.setColor(a(abs, this.WN, z));
                canvas2.drawText(str, right, ((a - ((float) this.WK)) / 2.0f) + f3, this.Wd);
                if (abs < 1.0f) {
                    this.Wd.setColor(a(abs, this.WM, true));
                    canvas2.drawText(str, right, ((a - ((float) this.WK)) / 2.0f) + f3, this.Wd);
                }
                f3 += (float) this.We;
                i++;
                z = false;
            }
            if (!(TextUtils.isEmpty(this.WT) || DeviceHelper.IS_INTERNATIONAL_BUILD)) {
                if (ViewUtils.isLayoutRtl(this)) {
                    right = ((right - (this.WI / 2.0f)) - ((float) this.VB)) - this.WG.measureText(this.WT.toString());
                } else {
                    right = (right + (this.WI / 2.0f)) + ((float) this.VB);
                }
                canvas2.drawText(this.WT.toString(), right, ((f2 - ((float) (this.WJ / 2))) + ((float) (this.WL / 2))) + ((float) this.VD), this.WG);
            }
            return;
        }
        super.onDraw(canvas);
    }

    private int a(float f, int i, boolean z) {
        if (f >= 1.0f) {
            return i;
        }
        int alpha;
        if (z) {
            alpha = (int) (((-f) * ((float) Color.alpha(i))) + ((float) Color.alpha(i)));
        } else {
            alpha = (int) (f * ((float) Color.alpha(i)));
        }
        return (alpha << 24) | (i & 16777215);
    }

    private float a(float f, int i, int i2) {
        if (f >= 1.0f) {
            return (float) i2;
        }
        return (f * ((float) (i2 - i))) + ((float) i);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(NumberPicker.class.getName());
        accessibilityEvent.setScrollable(true);
        accessibilityEvent.setScrollY((this.VT + this.VW) * this.We);
        accessibilityEvent.setMaxScrollY((this.VV - this.VT) * this.We);
    }

    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        if (!this.Wt) {
            return super.getAccessibilityNodeProvider();
        }
        if (this.WC == null) {
            this.WC = new AccessibilityNodeProviderImpl();
        }
        return this.WC;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.VJ.getText().toString());
        stringBuilder.append(this.WT == null ? "" : this.WT);
        accessibilityEvent.getText().add(stringBuilder.toString());
    }

    private int makeMeasureSpec(int i, int i2) {
        if (i2 == -1) {
            return i;
        }
        int size = MeasureSpec.getSize(i);
        int mode = MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            return MeasureSpec.makeMeasureSpec(Math.min(size, i2), 1073741824);
        }
        if (mode == 0) {
            return MeasureSpec.makeMeasureSpec(i2, 1073741824);
        }
        if (mode == 1073741824) {
            return i;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Unknown measure mode: ");
        stringBuilder.append(mode);
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    private int i(int i, int i2, int i3) {
        if (i != -1) {
            return resolveSizeAndState(Math.max(i, i2), i3, 0);
        }
        return i2;
    }

    private void fi() {
        this.Wb.clear();
        int[] iArr = this.Wc;
        int value = getValue();
        for (int i = 0; i < this.Wc.length; i++) {
            int i2 = (i - 2) + value;
            if (this.Ws) {
                i2 = au(i2);
            }
            iArr[i] = i2;
            av(iArr[i]);
        }
    }

    private void i(int i, boolean z) {
        if (this.Ws) {
            i = au(i);
        } else {
            i = Math.min(Math.max(i, this.VT), this.VV);
        }
        if (this.VW != i) {
            int i2 = this.VW;
            this.VW = i;
            fl();
            if (z) {
                ax(i2);
            }
            fi();
            invalidate();
        }
    }

    private void x(boolean z) {
        if (this.Wt) {
            this.VJ.setVisibility(4);
            if (!a(this.Wh)) {
                a(this.Wi);
            }
            this.Wj = 0;
            if (z) {
                this.Wh.startScroll(0, 0, 0, -this.We, 300);
            } else {
                this.Wh.startScroll(0, 0, 0, this.We, 300);
            }
            invalidate();
        } else if (z) {
            i(this.VW + 1, true);
        } else {
            i(this.VW - 1, true);
        }
    }

    private void fj() {
        fi();
        int[] iArr = this.Wc;
        float f = 0.0f;
        float bottom = (float) ((getBottom() - getTop()) - (iArr.length * this.uA));
        if (bottom >= 0.0f) {
            f = bottom;
        }
        this.VR = (int) ((f / ((float) iArr.length)) + 0.5f);
        this.We = this.uA + this.VR;
        this.Wf = (this.VJ.getBaseline() + this.VJ.getTop()) - (this.We * 2);
        this.Wg = this.Wf;
        fl();
    }

    private void fk() {
        setVerticalFadingEdgeEnabled(true);
        setFadingEdgeLength(((getBottom() - getTop()) - this.uA) / 2);
    }

    private void b(Scroller scroller) {
        if (scroller == this.Wh) {
            if (!fq()) {
                fl();
            }
            at(0);
        } else if (this.NH != 1) {
            fl();
        }
    }

    private void at(int i) {
        if (this.NH != i) {
            if (i == 0) {
                fg();
            }
            this.NH = i;
            if (this.VY != null) {
                this.VY.onScrollStateChange(this, i);
            }
        }
    }

    private void fling(int i) {
        this.Wj = 0;
        if (i > 0) {
            this.Wh.fling(0, 0, 0, i, 0, 0, 0, Integer.MAX_VALUE);
        } else {
            this.Wh.fling(0, Integer.MAX_VALUE, 0, i, 0, 0, 0, Integer.MAX_VALUE);
        }
        invalidate();
    }

    private int au(int i) {
        if (i > this.VV) {
            return (this.VT + ((i - this.VV) % (this.VV - this.VT))) - 1;
        }
        if (i < this.VT) {
            return (this.VV - ((this.VT - i) % (this.VV - this.VT))) + 1;
        }
        return i;
    }

    private void c(int[] iArr) {
        int i = 0;
        while (i < iArr.length - 1) {
            int i2 = i + 1;
            iArr[i] = iArr[i2];
            i = i2;
        }
        i = iArr[iArr.length - 2] + 1;
        if (this.Ws && i > this.VV) {
            i = this.VT;
        }
        iArr[iArr.length - 1] = i;
        av(i);
    }

    private void d(int[] iArr) {
        int length;
        for (length = iArr.length - 1; length > 0; length--) {
            iArr[length] = iArr[length - 1];
        }
        length = iArr[1] - 1;
        if (this.Ws && length < this.VT) {
            length = this.VV;
        }
        iArr[0] = length;
        av(length);
    }

    private void av(int i) {
        SparseArray sparseArray = this.Wb;
        if (((String) sparseArray.get(i)) == null) {
            Object obj;
            if (i < this.VT || i > this.VV) {
                obj = "";
            } else if (this.VS != null) {
                obj = this.VS[i - this.VT];
            } else {
                obj = aw(i);
            }
            sparseArray.put(i, obj);
        }
    }

    private String aw(int i) {
        return this.VZ != null ? this.VZ.format(i) : SimpleNumberFormatter.format(i);
    }

    private void q(View view) {
        Object valueOf = String.valueOf(((TextView) view).getText());
        if (TextUtils.isEmpty(valueOf)) {
            fl();
        } else {
            i(N(valueOf.toString()), true);
        }
    }

    private boolean fl() {
        CharSequence aw;
        if (this.VS == null) {
            aw = aw(this.VW);
        } else {
            aw = this.VS[this.VW - this.VT];
        }
        if (TextUtils.isEmpty(aw) || aw.equals(this.VJ.getText().toString())) {
            return false;
        }
        this.VJ.setText(aw);
        return true;
    }

    private void ax(int i) {
        sendAccessibilityEvent(4);
        ff();
        if (this.VX != null) {
            this.VX.onValueChange(this, i, this.VW);
        }
    }

    private void a(boolean z, long j) {
        if (this.Wl == null) {
            this.Wl = new ChangeCurrentByOneFromLongPressCommand();
        } else {
            removeCallbacks(this.Wl);
        }
        this.Wl.y(z);
        postDelayed(this.Wl, j);
    }

    private void fm() {
        if (this.Wl != null) {
            removeCallbacks(this.Wl);
        }
    }

    private void fn() {
        if (this.Wm == null) {
            this.Wm = new BeginSoftInputOnLongPressCommand();
        } else {
            removeCallbacks(this.Wm);
        }
        postDelayed(this.Wm, (long) ViewConfiguration.getLongPressTimeout());
    }

    private void fo() {
        if (this.Wm != null) {
            removeCallbacks(this.Wm);
        }
    }

    private void fp() {
        if (this.Wl != null) {
            removeCallbacks(this.Wl);
        }
        if (this.Wk != null) {
            removeCallbacks(this.Wk);
        }
        if (this.Wm != null) {
            removeCallbacks(this.Wm);
        }
        this.WD.cancel();
    }

    private int N(String str) {
        if (this.VS == null) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException e) {
                return this.VT;
            }
        }
        for (int i = 0; i < this.VS.length; i++) {
            str = str.toLowerCase();
            if (this.VS[i].toLowerCase().startsWith(str)) {
                return this.VT + i;
            }
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e2) {
            return this.VT;
        }
    }

    private void n(int i, int i2) {
        if (this.Wk == null) {
            this.Wk = new SetSelectionCommand();
        } else {
            removeCallbacks(this.Wk);
        }
        this.Wk.Xk = i;
        this.Wk.Xl = i2;
        post(this.Wk);
    }

    private boolean fq() {
        int i = this.Wf - this.Wg;
        if (i == 0) {
            return false;
        }
        this.Wj = 0;
        if (Math.abs(i) > this.We / 2) {
            i += i > 0 ? -this.We : this.We;
        }
        this.Wi.startScroll(0, 0, 0, i, 800);
        invalidate();
        return true;
    }

    private void fr() {
        fi();
        invalidate();
    }
}
