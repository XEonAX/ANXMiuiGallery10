package com.miui.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import com.miui.internal.variable.Android_View_Accessibility_AccessibilityEvent_class.Factory;
import java.util.ArrayList;
import java.util.List;

public abstract class ExploreByTouchHelper extends AccessibilityDelegate {
    private static final int CONTENT_CHANGE_TYPE_SUBTREE = 1;
    private static final int CONTENT_CHANGE_TYPE_UNDEFINED = 0;
    public static final int HOST_ID = -1;
    public static final int INVALID_ID = Integer.MIN_VALUE;
    private static final String tS = View.class.getName();
    private static final Rect tT = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    private final Context mContext;
    private final View mView;
    private Rect tU;
    private Rect tV;
    private int[] tW;
    private Rect tX;
    private List<Integer> tY;
    private final AccessibilityManager tZ;
    private ExploreByTouchNodeProvider ua;
    private int ub = Integer.MIN_VALUE;
    private int uc = Integer.MIN_VALUE;

    private class ExploreByTouchNodeProvider extends AccessibilityNodeProvider {
        private ExploreByTouchNodeProvider() {
        }

        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            return ExploreByTouchHelper.this.t(i);
        }

        public boolean performAction(int i, int i2, Bundle bundle) {
            return ExploreByTouchHelper.this.performAction(i, i2, bundle);
        }
    }

    protected abstract int getVirtualViewAt(float f, float f2);

    protected abstract void getVisibleVirtualViews(List<Integer> list);

    protected abstract boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle);

    protected abstract void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent);

    protected abstract void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfo accessibilityNodeInfo);

    public ExploreByTouchHelper(View view) {
        if (view != null) {
            this.mView = view;
            this.mContext = view.getContext();
            this.tZ = (AccessibilityManager) this.mContext.getSystemService("accessibility");
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
        if (this.ua == null) {
            this.ua = new ExploreByTouchNodeProvider();
        }
        return this.ua;
    }

    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (!this.tZ.isEnabled() || !this.tZ.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            switch (action) {
                case 9:
                    break;
                case 10:
                    if (this.ub == Integer.MIN_VALUE) {
                        return false;
                    }
                    r(Integer.MIN_VALUE);
                    return true;
                default:
                    return false;
            }
        }
        int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
        r(virtualViewAt);
        if (virtualViewAt != Integer.MIN_VALUE) {
            z = true;
        }
        return z;
    }

    public boolean sendEventForVirtualView(int i, int i2) {
        if (i == Integer.MIN_VALUE || !this.tZ.isEnabled()) {
            return false;
        }
        ViewParent parent = this.mView.getParent();
        if (parent == null) {
            return false;
        }
        return parent.requestSendAccessibilityEvent(this.mView, d(i, i2));
    }

    public void invalidateRoot() {
        invalidateVirtualView(-1, 1);
    }

    public void invalidateVirtualView(int i) {
        invalidateVirtualView(i, 0);
    }

    public void invalidateVirtualView(int i, int i2) {
        if (i != Integer.MIN_VALUE && this.tZ.isEnabled()) {
            ViewParent parent = this.mView.getParent();
            if (parent != null) {
                AccessibilityEvent d = d(i, 2048);
                Factory.getInstance().get().setContentChangeTypes(d, i2);
                parent.requestSendAccessibilityEvent(this.mView, d);
            }
        }
    }

    public int getFocusedVirtualView() {
        return this.ub;
    }

    private void r(int i) {
        if (this.uc != i) {
            int i2 = this.uc;
            this.uc = i;
            sendEventForVirtualView(i, 128);
            sendEventForVirtualView(i2, 256);
        }
    }

    private AccessibilityEvent d(int i, int i2) {
        if (i != -1) {
            return e(i, i2);
        }
        return s(i2);
    }

    private AccessibilityEvent s(int i) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i);
        this.mView.onInitializeAccessibilityEvent(obtain);
        onPopulateEventForHost(obtain);
        return obtain;
    }

    private AccessibilityEvent e(int i, int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        obtain.setEnabled(true);
        obtain.setClassName(tS);
        onPopulateEventForVirtualView(i, obtain);
        if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        obtain.setPackageName(this.mView.getContext().getPackageName());
        obtain.setSource(this.mView, i);
        return obtain;
    }

    private AccessibilityNodeInfo t(int i) {
        if (i != -1) {
            return u(i);
        }
        return bI();
    }

    private AccessibilityNodeInfo bI() {
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(this.mView);
        this.mView.onInitializeAccessibilityNodeInfo(obtain);
        int childCount = obtain.getChildCount();
        onPopulateNodeForHost(obtain);
        if (this.tY == null) {
            this.tY = new ArrayList();
        } else {
            this.tY.clear();
        }
        List list = this.tY;
        getVisibleVirtualViews(list);
        if (childCount <= 0 || list.size() <= 0) {
            childCount = list.size();
            for (int i = 0; i < childCount; i++) {
                obtain.addChild(this.mView, ((Integer) list.get(i)).intValue());
            }
            return obtain;
        }
        throw new RuntimeException("Views cannot have both real and virtual children");
    }

    private AccessibilityNodeInfo u(int i) {
        bJ();
        Rect rect = this.tV;
        int[] iArr = this.tW;
        Rect rect2 = this.tU;
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        obtain.setEnabled(true);
        obtain.setClassName(tS);
        obtain.setBoundsInParent(tT);
        onPopulateNodeForVirtualView(i, obtain);
        if (obtain.getText() == null && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        obtain.getBoundsInParent(rect);
        if (rect.equals(tT)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = obtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        } else if ((actions & 128) == 0) {
            obtain.setPackageName(this.mView.getContext().getPackageName());
            obtain.setSource(this.mView, i);
            obtain.setParent(this.mView);
            if (this.ub == i) {
                obtain.setAccessibilityFocused(true);
                obtain.addAction(128);
            } else {
                obtain.setAccessibilityFocused(false);
                obtain.addAction(64);
            }
            if (a(rect)) {
                obtain.setVisibleToUser(true);
                obtain.setBoundsInParent(rect);
            }
            this.mView.getLocationOnScreen(iArr);
            i = iArr[0] - this.mView.getScrollX();
            int scrollY = iArr[1] - this.mView.getScrollY();
            rect2.set(rect);
            rect2.offset(i, scrollY);
            obtain.setBoundsInScreen(rect2);
            return obtain;
        } else {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
    }

    private void bJ() {
        this.tW = new int[2];
        this.tV = new Rect();
        this.tU = new Rect();
    }

    private boolean performAction(int i, int i2, Bundle bundle) {
        if (i != -1) {
            return a(i, i2, bundle);
        }
        return a(i2, bundle);
    }

    private boolean a(int i, Bundle bundle) {
        return this.mView.performAccessibilityAction(i, bundle);
    }

    private boolean a(int i, int i2, Bundle bundle) {
        if (i2 == 64 || i2 == 128) {
            return f(i, i2);
        }
        return onPerformActionForVirtualView(i, i2, bundle);
    }

    private boolean f(int i, int i2) {
        if (i2 == 64) {
            return w(i);
        }
        if (i2 != 128) {
            return false;
        }
        return x(i);
    }

    /* JADX WARNING: Missing block: B:26:0x0053, code:
            return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean a(Rect rect) {
        if (rect == null || rect.isEmpty() || this.mView.getWindowVisibility() != 0) {
            return false;
        }
        ViewParent parent = this.mView.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        if (parent == null) {
            return false;
        }
        if (this.tX == null) {
            this.tX = new Rect();
        }
        Rect rect2 = this.tX;
        if (this.mView.getLocalVisibleRect(rect2)) {
            return rect.intersect(rect2);
        }
        return false;
    }

    private boolean v(int i) {
        return this.ub == i;
    }

    /* JADX WARNING: Missing block: B:12:0x003d, code:
            return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean w(int i) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.mContext.getSystemService("accessibility");
        if (!this.tZ.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || v(i)) {
            return false;
        }
        if (this.ub != Integer.MIN_VALUE) {
            sendEventForVirtualView(this.ub, 65536);
        }
        this.ub = i;
        this.mView.invalidate();
        sendEventForVirtualView(i, 32768);
        return true;
    }

    private boolean x(int i) {
        if (!v(i)) {
            return false;
        }
        this.ub = Integer.MIN_VALUE;
        this.mView.invalidate();
        sendEventForVirtualView(i, 65536);
        return true;
    }

    protected void onPopulateEventForHost(AccessibilityEvent accessibilityEvent) {
    }

    protected void onPopulateNodeForHost(AccessibilityNodeInfo accessibilityNodeInfo) {
    }
}
