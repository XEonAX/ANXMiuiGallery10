package com.miui.gallery.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import com.miui.gallery.R;
import com.miui.gallery.preference.GalleryPreferences.CTA;
import com.miui.gallery.util.CtaPermissionRequestBaseDialog;
import com.miui.gallery.util.CtaUtils;

public class CtaNoticeFragment extends CtaPermissionRequestBaseDialog {
    private boolean mMustAgreeBeforeUse = false;
    private OnClickListener mNegativeClickListener;
    private OnClickListener mPositiveClickListener;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle params = getArguments();
        if (params != null) {
            this.mMustAgreeBeforeUse = params.getBoolean("key_must_agree", false);
        }
    }

    public static CtaNoticeFragment newInstance(boolean mustAgreeBeforeUse) {
        CtaNoticeFragment cta = new CtaNoticeFragment();
        Bundle params = new Bundle();
        params.putBoolean("key_must_agree", mustAgreeBeforeUse);
        cta.setArguments(params);
        return cta;
    }

    protected String getTitle() {
        return getString(R.string.user_notice_title);
    }

    protected SpannableStringBuilder getMessage() {
        return CtaUtils.buildUserNotice(getActivity(), R.string.user_notice_identify_summary_format);
    }

    protected String getPositiveText() {
        return getString(R.string.user_agree);
    }

    protected String getNegativeText() {
        return getString(17039360);
    }

    protected OnClickListener getPositiveListener() {
        return new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                CTA.setCanConnectNetwork(true);
                if (CtaNoticeFragment.this.mPositiveClickListener != null) {
                    CtaNoticeFragment.this.mPositiveClickListener.onClick(dialog, which);
                }
            }
        };
    }

    protected OnClickListener getNegativeListener() {
        return new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                if (CtaNoticeFragment.this.mMustAgreeBeforeUse) {
                    CtaNoticeFragment.this.getActivity().finish();
                    return;
                }
                CTA.setToAllowUseOnOfflineGlobal(true);
                if (CtaNoticeFragment.this.mNegativeClickListener != null) {
                    CtaNoticeFragment.this.mNegativeClickListener.onClick(dialog, which);
                }
            }
        };
    }

    public void setOnPositiveButtonClickListener(OnClickListener listener) {
        this.mPositiveClickListener = listener;
    }

    public void setOnNegativeButtonClickListener(OnClickListener listener) {
        this.mNegativeClickListener = listener;
    }
}
