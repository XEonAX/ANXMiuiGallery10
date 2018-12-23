package com.miui.extraphoto.refocus.widget.recyclerview.overscroll;

import android.view.View;

public class IOverScrollInterface {

    public interface IOverScrollDecor {
        void detach();

        int getCurrentState();

        View getView();
    }

    public interface IOverScrollDecoratorAdapter {
        View getView();

        boolean isInAbsoluteEnd();

        boolean isInAbsoluteStart();
    }

    public interface IOverScrollState {
        public static final int STATE_BOUNCE_BACK = 3;
        public static final int STATE_DRAG_END_SIDE = 2;
        public static final int STATE_DRAG_START_SIDE = 1;
        public static final int STATE_IDLE = 0;
    }
}
