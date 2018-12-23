package com.miui.gallery.util;

import android.app.Dialog;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import com.miui.gallery.widget.GalleryDialogFragment;
import miui.app.AlertDialog;
import miui.app.AlertDialog.Builder;

public abstract class CtaPermissionRequestBaseDialog extends GalleryDialogFragment {
    protected abstract SpannableStringBuilder getMessage();

    protected abstract OnClickListener getNegativeListener();

    protected abstract String getNegativeText();

    protected abstract OnClickListener getPositiveListener();

    protected abstract String getPositiveText();

    protected abstract String getTitle();

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        return new Builder(getActivity()).setTitle(getTitle()).setMessage(getMessage()).setPositiveButton(getPositiveText(), getPositiveListener()).setNegativeButton(getNegativeText(), getNegativeListener()).create();
    }

    public void onStart() {
        super.onStart();
        ((AlertDialog) getDialog()).getMessageView().setMovementMethod(LinkMovementMethod.getInstance());
    }
}
