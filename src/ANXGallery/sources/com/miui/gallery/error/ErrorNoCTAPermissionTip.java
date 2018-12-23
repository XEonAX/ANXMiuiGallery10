package com.miui.gallery.error;

import android.app.Activity;
import android.content.Context;
import com.miui.gallery.R;
import com.miui.gallery.error.core.ErrorActionCallback;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.error.core.ErrorTip;
import com.miui.gallery.ui.CtaNoticeFragment;

public class ErrorNoCTAPermissionTip extends ErrorTip {
    public ErrorNoCTAPermissionTip(ErrorCode code) {
        super(code);
    }

    public CharSequence getTitle(Context context) {
        return context.getResources().getString(R.string.error_no_cta_permission_tip);
    }

    public CharSequence getMessage(Context context) {
        return context.getResources().getString(R.string.error_no_cta_permission_msg);
    }

    public CharSequence getActionStr(Context context) {
        return context.getResources().getString(R.string.error_no_cta_permission_action);
    }

    public void action(Context context, ErrorActionCallback callback) {
        boolean handled = false;
        if (context instanceof Activity) {
            CtaNoticeFragment.newInstance(false).showAllowingStateLoss(((Activity) context).getFragmentManager(), "CtaNoticeFragment");
            handled = true;
        }
        if (callback != null) {
            callback.onAction(this.mCode, handled);
        }
    }
}
