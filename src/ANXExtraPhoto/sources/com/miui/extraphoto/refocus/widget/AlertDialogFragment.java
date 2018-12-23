package com.miui.extraphoto.refocus.widget;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;

public class AlertDialogFragment extends DialogFragment {
    private static final String ARGS_MESSAGE_RESOURCE = "AlertDialogFragment:message_resource";
    private static final String ARGS_NEGATIVE_RESOURCE = "AlertDialogFragment:negative_resource";
    private static final String ARGS_POSITIVE_RESOURCE = "AlertDialogFragment:positive_resource";
    private static final String TAG = "AlertDialogFragment";
    private Callbacks mCallbacks;
    private OnClickListener mOnClickListener = new OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
            if (dialog != AlertDialogFragment.this.getDialog()) {
                throw new IllegalStateException("click event is not from current fragment, maybe listener not detached");
            } else if (AlertDialogFragment.this.mCallbacks != null) {
                AlertDialogFragment.this.mCallbacks.onClick(AlertDialogFragment.this, which);
            }
        }
    };

    public interface Callbacks {
        public static final int BUTTON_NEGATIVE = -2;
        public static final int BUTTON_POSITIVE = -1;

        void onCancel(AlertDialogFragment alertDialogFragment);

        void onClick(AlertDialogFragment alertDialogFragment, int i);

        void onDismiss(AlertDialogFragment alertDialogFragment);
    }

    public static class Builder {
        private boolean mCancellable;
        private int mMessageId;
        private int mNegativeId;
        private int mPositiveId;

        public Builder setMessage(int msg) {
            this.mMessageId = msg;
            return this;
        }

        public Builder setPositiveButton(int positive) {
            this.mPositiveId = positive;
            return this;
        }

        public Builder setNegativeButton(int negative) {
            this.mNegativeId = negative;
            return this;
        }

        public Builder setCancellable(boolean cancellable) {
            this.mCancellable = cancellable;
            return this;
        }

        public AlertDialogFragment build() {
            Bundle arguments = new Bundle();
            if (this.mMessageId != 0) {
                arguments.putInt(AlertDialogFragment.ARGS_MESSAGE_RESOURCE, this.mMessageId);
            }
            if (this.mPositiveId != 0) {
                arguments.putInt(AlertDialogFragment.ARGS_POSITIVE_RESOURCE, this.mPositiveId);
            }
            if (this.mNegativeId != 0) {
                arguments.putInt(AlertDialogFragment.ARGS_NEGATIVE_RESOURCE, this.mNegativeId);
            }
            AlertDialogFragment dialog = new AlertDialogFragment();
            dialog.setCancelable(this.mCancellable);
            dialog.setArguments(arguments);
            return dialog;
        }
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getActivity());
        Bundle args = getArguments();
        int res = args.getInt(ARGS_MESSAGE_RESOURCE);
        if (res != 0) {
            builder.setMessage(res);
        }
        res = args.getInt(ARGS_NEGATIVE_RESOURCE);
        if (res != 0) {
            builder.setNegativeButton(res, this.mOnClickListener);
        }
        res = args.getInt(ARGS_POSITIVE_RESOURCE);
        if (res != 0) {
            builder.setPositiveButton(res, this.mOnClickListener);
        }
        return builder.create();
    }

    public void onCancel(DialogInterface dialog) {
        super.onCancel(dialog);
        if (this.mCallbacks != null) {
            this.mCallbacks.onCancel(this);
        }
    }

    public void onDismiss(DialogInterface dialog) {
        super.onDismiss(dialog);
        if (this.mCallbacks != null) {
            this.mCallbacks.onDismiss(this);
        }
    }

    public final void setCallbacks(Callbacks callbacks) {
        this.mCallbacks = callbacks;
    }

    public void showAllowingStateLoss(FragmentManager manager, String tag) {
        try {
            show(manager, tag);
        } catch (IllegalStateException e) {
        }
    }

    public void dismissSafely() {
        Dialog dialog = getDialog();
        if (dialog != null && dialog.isShowing()) {
            dismissAllowingStateLoss();
        }
    }
}
