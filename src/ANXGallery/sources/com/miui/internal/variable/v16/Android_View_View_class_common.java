package com.miui.internal.variable.v16;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import com.miui.internal.util.TaggingDrawableHelper;
import com.miui.internal.variable.Android_View_View_class;
import com.miui.internal.variable.VariableExceptionHandler;
import com.miui.internal.view.menu.ContextMenuBuilder;
import miui.reflect.Field;
import miui.reflect.Method;

public class Android_View_View_class_common extends Android_View_View_class {
    private static final Field lA = Field.of(View.class, "mScrollX", Field.INT_SIGNATURE_PRIMITIVE);
    private static final Field lB = Field.of(View.class, "mScrollY", Field.INT_SIGNATURE_PRIMITIVE);
    private static final Field lC = Field.of(View.class, "mLeft", Field.INT_SIGNATURE_PRIMITIVE);
    private static final Field lD = Field.of(View.class, "mRight", Field.INT_SIGNATURE_PRIMITIVE);
    private static final Method lE = Method.of(View.class, "getContextMenuInfo", "()Landroid/view/ContextMenu$ContextMenuInfo;");
    private static final Method lF = Method.of(View.class, "onCreateContextMenu", "(Landroid/view/ContextMenu;)V");
    private static Method lG;
    private static final Field lH = Field.of(View.class, "mListenerInfo", "Landroid/view/View$ListenerInfo;");
    private static final Field lI = Field.of(View.class, "mKeyedTags", "Landroid/util/SparseArray;");
    private static Class lJ;
    private static Field lK;
    private static final Field lx = Field.of(View.class, "mPrivateFlags", Field.INT_SIGNATURE_PRIMITIVE);
    private static final Field ly = Field.of(View.class, "mOldWidthMeasureSpec", Field.INT_SIGNATURE_PRIMITIVE);
    private static final Field lz = Field.of(View.class, "mOldHeightMeasureSpec", Field.INT_SIGNATURE_PRIMITIVE);

    static {
        try {
            lG = Method.of(View.class, "createSnapshot", "(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;");
        } catch (Exception e) {
            lG = null;
        }
    }

    public void buildProxy() {
        attachMethod("refreshDrawableState", "()V");
        attachMethod("onCreateDrawableState", "(I)[I");
        attachMethod("createContextMenu", "(Landroid/view/ContextMenu;)V");
        attachConstructor("(Landroid/content/Context;Landroid/util/AttributeSet;I)V");
        attachConstructor("(Landroid/content/Context;Landroid/util/AttributeSet;)V");
        attachSpecialMethods();
    }

    protected void handle() {
        handleRefreshDrawableState(0, null);
        handleOnCreateDrawableState(0, null, 0);
        handleCreateContextMenu(0, null, null);
        handle_init_(0, null, null, null, 0);
        handle_init_(0, null, null, null);
    }

    protected void attachSpecialMethods() {
    }

    protected void handleRefreshDrawableState(long j, View view) {
        originalRefreshDrawableState(j, view);
        TaggingDrawableHelper.onDrawableStateChange(view);
    }

    protected void originalRefreshDrawableState(long j, View view) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_View_View_class.originalRefreshDrawableState(long, View)");
    }

    protected int[] handleOnCreateDrawableState(long j, View view, int i) {
        return onCreateDrawableState(view, originalOnCreateDrawableState(j, view, 0), i);
    }

    protected int[] originalOnCreateDrawableState(long j, View view, int i) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_View_View_class.originalOnCreateDrawableState(long, View, int)");
    }

    protected void handle_init_(long j, View view, Context context, AttributeSet attributeSet, int i) {
        original_init_(j, view, context, attributeSet, i);
        TaggingDrawableHelper.initViewSequenceStates(view, attributeSet);
    }

    protected void original_init_(long j, View view, Context context, AttributeSet attributeSet, int i) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_View_View_class.original_init_(long, View, Context, AttributeSet, int)");
    }

    protected void handle_init_(long j, View view, Context context, AttributeSet attributeSet) {
        original_init_(j, view, context, attributeSet);
        TaggingDrawableHelper.initViewSequenceStates(view, attributeSet);
    }

    protected void original_init_(long j, View view, Context context, AttributeSet attributeSet) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_View_View_class.original_init_(long, View, Context, AttributeSet)");
    }

    protected void handleCreateContextMenu(long j, View view, ContextMenu contextMenu) {
        if (contextMenu instanceof ContextMenuBuilder) {
            if (lJ == null) {
                try {
                    lJ = Class.forName("android.view.View$ListenerInfo");
                    lK = Field.of(lJ, "mOnCreateContextMenuListener", "Landroid/view/View$OnCreateContextMenuListener;");
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            ContextMenuInfo contextMenuInfo = (ContextMenuInfo) lE.invokeObject(view.getClass(), view, new Object[0]);
            ContextMenuBuilder contextMenuBuilder = (ContextMenuBuilder) contextMenu;
            contextMenuBuilder.setCurrentMenuInfo(contextMenuInfo);
            lF.invoke(view.getClass(), view, contextMenu);
            Object obj = lH.get(view);
            if (obj != null) {
                OnCreateContextMenuListener onCreateContextMenuListener = (OnCreateContextMenuListener) lK.get(obj);
                if (onCreateContextMenuListener != null) {
                    onCreateContextMenuListener.onCreateContextMenu(contextMenu, view, contextMenuInfo);
                }
            }
            contextMenuBuilder.setCurrentMenuInfo(null);
            if (view.getParent() != null) {
                view.getParent().createContextMenu(contextMenu);
            }
        } else {
            originalCreateContextMenu(j, view, contextMenu);
        }
    }

    protected void originalCreateContextMenu(long j, View view, ContextMenu contextMenu) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_View_View_class.originalCreateContextMenu(long, View, ContextMenu)");
    }

    private int b(View view) {
        try {
            return lx.getInt(view);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.view.View.mPrivateFlags", e);
            return 0;
        }
    }

    private void a(View view, int i) {
        try {
            lx.set((Object) view, i);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.view.View.mPrivateFlags", e);
        }
    }

    private int c(View view) {
        try {
            return ly.getInt(view);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.view.View.mOldWidthMeasureSpec", e);
            return 0;
        }
    }

    private int d(View view) {
        try {
            return lz.getInt(view);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.view.View.mOldHeightMeasureSpec", e);
            return 0;
        }
    }

    public void relayout(View view) {
        if (view.getHeight() != 0 && view.getWidth() != 0) {
            int b = b(view);
            view.forceLayout();
            view.measure(c(view), d(view));
            view.layout(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            a(view, b);
        }
    }

    public void setScrollXDirectly(View view, int i) {
        try {
            lA.set((Object) view, i);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.view.View.mScrollX", e);
        }
    }

    public void setScrollYDirectly(View view, int i) {
        try {
            lB.set((Object) view, i);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.view.View.mScrollY", e);
        }
    }

    public void setLeftDirectly(View view, int i) {
        try {
            lC.set((Object) view, i);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.view.View.mScrollY", e);
        }
    }

    public void setRightDirectly(View view, int i) {
        try {
            lD.set((Object) view, i);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.view.View.mScrollY", e);
        }
    }

    public void setImportantForAccessibilityNoHideDescendants(View view) {
    }

    public Bitmap createSnapshot(View view, Config config, int i, boolean z) {
        if (lG != null) {
            try {
                return (Bitmap) lG.invokeObject(View.class, view, config, Integer.valueOf(i), Boolean.valueOf(z));
            } catch (Throwable e) {
                VariableExceptionHandler.getInstance().onThrow("invoke setLayoutInScreenEnabled failed", e);
            }
        }
        return null;
    }
}
