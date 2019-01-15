package com.miui.internal.variable;

import android.view.ViewGroup;
import com.miui.internal.util.ClassProxy;

public abstract class Android_View_ViewGroup_class extends ClassProxy<ViewGroup> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private Android_View_ViewGroup_class ky;

        private static class Holder {
            static final Factory kz = new Factory();

            private Holder() {
            }
        }

        private Factory() {
            this.ky = (Android_View_ViewGroup_class) create("Android_View_ViewGroup_class");
        }

        public static Factory getInstance() {
            return Holder.kz;
        }

        public Android_View_ViewGroup_class get() {
            return this.ky;
        }
    }

    public Android_View_ViewGroup_class() {
        super(ViewGroup.class);
    }

    public void setTagChildrenSequenceState(ViewGroup viewGroup, boolean z) {
        com.miui.internal.variable.Android_View_View_class.Factory.getInstance().get().getCustomizedValue(viewGroup).mTagChildrenSequenceState = z;
    }

    public boolean getTagChildrenSequenceState(ViewGroup viewGroup) {
        return com.miui.internal.variable.Android_View_View_class.Factory.getInstance().get().getCustomizedValue(viewGroup).mTagChildrenSequenceState;
    }
}
