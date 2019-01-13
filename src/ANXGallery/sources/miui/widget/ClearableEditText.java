package miui.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.EditText;
import com.miui.internal.R;
import com.miui.internal.widget.ExploreByTouchHelper;
import java.util.List;
import miui.util.ViewUtils;

public class ClearableEditText extends EditText {
    private static final int[] EMPTY_STATE_SET = new int[]{16842921};
    private Drawable OH;
    private boolean PP;
    private boolean PQ;
    private AccessHelper PU;

    private class AccessHelper extends ExploreByTouchHelper {
        private static final int PX = 0;
        private final Rect PZ = new Rect();
        private final View Qa;

        public AccessHelper(View view) {
            super(view);
            this.Qa = view;
        }

        protected int getVirtualViewAt(float f, float f2) {
            if (ClearableEditText.this.PQ && d(f, f2)) {
                return 0;
            }
            return Integer.MIN_VALUE;
        }

        protected void onPopulateEventForHost(AccessibilityEvent accessibilityEvent) {
            super.onPopulateEventForHost(accessibilityEvent);
            if (accessibilityEvent.getEventType() == 2048 && !ClearableEditText.this.PQ && this.Qa.isFocused()) {
                this.Qa.sendAccessibilityEvent(32768);
            }
        }

        protected void onPopulateNodeForHost(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onPopulateNodeForHost(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(ClearableEditText.class.getName());
        }

        protected void getVisibleVirtualViews(List list) {
            if (ClearableEditText.this.PQ) {
                list.add(Integer.valueOf(0));
            }
        }

        protected void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setContentDescription(getDescription());
        }

        protected void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfo accessibilityNodeInfo) {
            accessibilityNodeInfo.setContentDescription(getDescription());
            accessibilityNodeInfo.addAction(16);
            accessibilityNodeInfo.setClassName(Button.class.getName());
            b(this.PZ);
            accessibilityNodeInfo.setBoundsInParent(this.PZ);
            accessibilityNodeInfo.setClickable(true);
        }

        protected boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i == Integer.MIN_VALUE || i2 != 16) {
                return false;
            }
            ClearableEditText.this.eo();
            return true;
        }

        private CharSequence getDescription() {
            return ClearableEditText.this.getResources().getString(R.string.clearable_edittext_clear_description);
        }

        private void b(Rect rect) {
            this.Qa.getLocalVisibleRect(this.PZ);
            if (ViewUtils.isLayoutRtl(ClearableEditText.this)) {
                rect.right -= (ClearableEditText.this.getWidth() - ClearableEditText.this.OH.getIntrinsicWidth()) - (ClearableEditText.this.getPaddingLeft() * 2);
            } else {
                rect.left += (ClearableEditText.this.getWidth() - (ClearableEditText.this.getPaddingRight() * 2)) - ClearableEditText.this.OH.getIntrinsicWidth();
            }
        }

        private boolean d(float f, float f2) {
            boolean z = false;
            if (ViewUtils.isLayoutRtl(ClearableEditText.this)) {
                if (f < ((float) (ClearableEditText.this.OH.getIntrinsicWidth() + (ClearableEditText.this.getPaddingLeft() * 2)))) {
                    z = true;
                }
                return z;
            }
            if (f > ((float) ((ClearableEditText.this.getWidth() - (ClearableEditText.this.getPaddingRight() * 2)) - ClearableEditText.this.OH.getIntrinsicWidth()))) {
                z = true;
            }
            return z;
        }
    }

    public ClearableEditText(Context context) {
        this(context, null);
    }

    public ClearableEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextSearchStyle);
    }

    public ClearableEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        if (compoundDrawablesRelative[0] == null && compoundDrawablesRelative[1] == null && compoundDrawablesRelative[2] != null && compoundDrawablesRelative[3] == null) {
            this.OH = compoundDrawablesRelative[2];
            addTextChangedListener(new TextWatcher() {
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public void afterTextChanged(Editable editable) {
                    if (ClearableEditText.this.PQ != (editable.length() > 0)) {
                        ClearableEditText.this.PQ = ClearableEditText.this.PQ ^ true;
                        ClearableEditText.this.refreshDrawableState();
                        if (ClearableEditText.this.PU != null) {
                            ClearableEditText.this.PU.invalidateRoot();
                        }
                    }
                }
            });
            if (VERSION.SDK_INT >= 19) {
                this.PU = new AccessHelper(this);
                setAccessibilityDelegate(this.PU);
                return;
            }
            return;
        }
        throw new IllegalStateException("ClearableEditText need only drawableEnd");
    }

    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new IllegalStateException("ClearableEditText can only set drawables by setCompoundDrawablesRelative()");
    }

    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null && drawable2 == null && drawable3 != null && drawable4 == null) {
            this.OH = drawable3;
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new IllegalStateException("ClearableEditText can only set drawableRight");
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z = this.PQ && (ViewUtils.isLayoutRtl(this) ? motionEvent.getX() >= ((float) (this.OH.getIntrinsicWidth() + getPaddingLeft())) : motionEvent.getX() <= ((float) ((getWidth() - getPaddingRight()) - this.OH.getIntrinsicWidth())));
        if (!z) {
            return super.dispatchTouchEvent(motionEvent);
        }
        c(motionEvent);
        return true;
    }

    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (!this.PQ) {
            mergeDrawableStates(onCreateDrawableState, EMPTY_STATE_SET);
        }
        return onCreateDrawableState;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.OH != null) {
            this.OH.setState(getDrawableState());
            invalidate();
        }
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.OH;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.OH != null) {
            this.OH.jumpToCurrentState();
        }
    }

    private void c(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 3) {
            switch (action) {
                case 0:
                    if (isEnabled() && this.PQ) {
                        this.PP = true;
                        return;
                    }
                    return;
                case 1:
                    if (isEnabled() && this.PP) {
                        eo();
                        return;
                    }
                    return;
                default:
                    return;
            }
        } else if (this.PP) {
            this.PP = false;
        }
    }

    private void eo() {
        setText("");
    }

    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (VERSION.SDK_INT < 19 || this.PU == null || !this.PQ || !this.PU.dispatchHoverEvent(motionEvent)) {
            return super.dispatchHoverEvent(motionEvent);
        }
        return true;
    }
}
