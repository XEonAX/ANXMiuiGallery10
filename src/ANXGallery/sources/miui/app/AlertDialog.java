package miui.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.DialogInterface.OnShowListener;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.miui.internal.variable.AlertControllerWrapper;
import com.miui.internal.variable.AlertControllerWrapper.AlertParams;
import com.miui.internal.variable.AlertControllerWrapper.AlertParams.ActionItem;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.util.ArrayList;
import miui.R;
import miui.util.AttributeResolver;

public class AlertDialog extends Dialog implements DialogInterface {
    public static final int THEME_DARK = 2;
    public static final int THEME_DARK_EDIT = 4;
    public static final int THEME_DARK_EDIT_DEFAULT = 6;
    public static final int THEME_LIGHT = 3;
    public static final int THEME_LIGHT_EDIT = 5;
    public static final int THEME_LIGHT_EDIT_DEFAULT = 7;
    private AlertControllerWrapper wI;

    public static class Builder {
        private AlertParams wJ;
        private int wK;

        public Builder(Context context) {
            this(context, AlertDialog.a(context, 0));
        }

        public Builder(Context context, int i) {
            this.wJ = new AlertParams(new ContextThemeWrapper(context, AlertDialog.a(context, i)));
            AlertParams alertParams = this.wJ;
            boolean z = i >= 4 && i <= 7;
            alertParams.mEditMode = z;
            this.wK = i;
        }

        public Context getContext() {
            return this.wJ.mContext;
        }

        public Builder setTitle(int i) {
            this.wJ.mTitle = this.wJ.mContext.getText(i);
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.wJ.mTitle = charSequence;
            return this;
        }

        public Builder setCustomTitle(View view) {
            this.wJ.mCustomTitleView = view;
            return this;
        }

        public Builder setMessage(int i) {
            this.wJ.mMessage = this.wJ.mContext.getText(i);
            return this;
        }

        public Builder setMessage(CharSequence charSequence) {
            this.wJ.mMessage = charSequence;
            return this;
        }

        public Builder setCheckBox(boolean z, CharSequence charSequence) {
            this.wJ.mIsChecked = z;
            this.wJ.mCheckBoxMessage = charSequence;
            return this;
        }

        public Builder setIcon(int i) {
            this.wJ.mIconId = i;
            return this;
        }

        public Builder setIcon(Drawable drawable) {
            this.wJ.mIcon = drawable;
            return this;
        }

        public Builder setIconAttribute(int i) {
            this.wJ.mIconId = AttributeResolver.resolve(this.wJ.mContext, i);
            return this;
        }

        public Builder setPositiveButton(int i, OnClickListener onClickListener) {
            this.wJ.mPositiveButtonText = this.wJ.mContext.getText(i);
            this.wJ.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setPositiveButton(CharSequence charSequence, OnClickListener onClickListener) {
            this.wJ.mPositiveButtonText = charSequence;
            this.wJ.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButton(int i, OnClickListener onClickListener) {
            this.wJ.mNegativeButtonText = this.wJ.mContext.getText(i);
            this.wJ.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButton(CharSequence charSequence, OnClickListener onClickListener) {
            this.wJ.mNegativeButtonText = charSequence;
            this.wJ.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButton(int i, OnClickListener onClickListener) {
            this.wJ.mNeutralButtonText = this.wJ.mContext.getText(i);
            this.wJ.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButton(CharSequence charSequence, OnClickListener onClickListener) {
            this.wJ.mNeutralButtonText = charSequence;
            this.wJ.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setCancelable(boolean z) {
            this.wJ.mCancelable = z;
            return this;
        }

        public Builder setOnCancelListener(OnCancelListener onCancelListener) {
            this.wJ.mOnCancelListener = onCancelListener;
            return this;
        }

        public Builder setOnDismissListener(OnDismissListener onDismissListener) {
            this.wJ.mOnDismissListener = onDismissListener;
            return this;
        }

        public Builder setOnShowListener(OnShowListener onShowListener) {
            this.wJ.mOnShowListener = onShowListener;
            return this;
        }

        public Builder setOnKeyListener(OnKeyListener onKeyListener) {
            this.wJ.mOnKeyListener = onKeyListener;
            return this;
        }

        public Builder addActionItem(CharSequence charSequence, int i, int i2) {
            if (this.wJ.mActionItems == null) {
                this.wJ.mActionItems = new ArrayList();
            }
            this.wJ.mActionItems.add(new ActionItem(charSequence, i, i2));
            return this;
        }

        public Builder addActionItem(int i, int i2, int i3) {
            return addActionItem(this.wJ.mContext.getText(i), i2, i3);
        }

        public Builder setOnActionItemClickListener(OnClickListener onClickListener) {
            this.wJ.mOnActionItemClickListener = onClickListener;
            return this;
        }

        public Builder setItems(int i, OnClickListener onClickListener) {
            this.wJ.mItems = this.wJ.mContext.getResources().getTextArray(i);
            this.wJ.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setItems(CharSequence[] charSequenceArr, OnClickListener onClickListener) {
            this.wJ.mItems = charSequenceArr;
            this.wJ.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setAdapter(ListAdapter listAdapter, OnClickListener onClickListener) {
            this.wJ.mAdapter = listAdapter;
            this.wJ.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setCursor(Cursor cursor, OnClickListener onClickListener, String str) {
            this.wJ.mCursor = cursor;
            this.wJ.mLabelColumn = str;
            this.wJ.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setMultiChoiceItems(int i, boolean[] zArr, OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.wJ.mItems = this.wJ.mContext.getResources().getTextArray(i);
            this.wJ.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.wJ.mCheckedItems = zArr;
            this.wJ.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.wJ.mItems = charSequenceArr;
            this.wJ.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.wJ.mCheckedItems = zArr;
            this.wJ.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceItems(Cursor cursor, String str, String str2, OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.wJ.mCursor = cursor;
            this.wJ.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.wJ.mIsCheckedColumn = str;
            this.wJ.mLabelColumn = str2;
            this.wJ.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceAdapter(ListAdapter listAdapter, OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.wJ.mAdapter = listAdapter;
            this.wJ.mIsMultiChoice = true;
            this.wJ.mOnCheckboxClickListener = onMultiChoiceClickListener;
            return this;
        }

        public Builder setSingleChoiceItems(int i, int i2, OnClickListener onClickListener) {
            this.wJ.mItems = this.wJ.mContext.getResources().getTextArray(i);
            this.wJ.mOnClickListener = onClickListener;
            this.wJ.mCheckedItem = i2;
            this.wJ.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(Cursor cursor, int i, String str, OnClickListener onClickListener) {
            this.wJ.mCursor = cursor;
            this.wJ.mOnClickListener = onClickListener;
            this.wJ.mCheckedItem = i;
            this.wJ.mLabelColumn = str;
            this.wJ.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(CharSequence[] charSequenceArr, int i, OnClickListener onClickListener) {
            this.wJ.mItems = charSequenceArr;
            this.wJ.mOnClickListener = onClickListener;
            this.wJ.mCheckedItem = i;
            this.wJ.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(ListAdapter listAdapter, int i, OnClickListener onClickListener) {
            this.wJ.mAdapter = listAdapter;
            this.wJ.mOnClickListener = onClickListener;
            this.wJ.mCheckedItem = i;
            this.wJ.mIsSingleChoice = true;
            return this;
        }

        public Builder setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener) {
            this.wJ.mOnItemSelectedListener = onItemSelectedListener;
            return this;
        }

        public Builder setView(int i) {
            this.wJ.mView = this.wJ.mInflater.inflate(i, null);
            return this;
        }

        public Builder setView(View view) {
            this.wJ.mView = view;
            return this;
        }

        public AlertDialog create() {
            AlertDialog alertDialog = new AlertDialog(this.wJ.mContext, this.wK);
            this.wJ.apply(alertDialog.wI);
            alertDialog.setCancelable(this.wJ.mCancelable);
            if (this.wJ.mCancelable) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(this.wJ.mOnCancelListener);
            alertDialog.setOnDismissListener(this.wJ.mOnDismissListener);
            alertDialog.setOnShowListener(this.wJ.mOnShowListener);
            if (this.wJ.mOnKeyListener != null) {
                alertDialog.setOnKeyListener(this.wJ.mOnKeyListener);
            }
            return alertDialog;
        }

        public AlertDialog show() {
            AlertDialog create = create();
            create.show();
            return create;
        }
    }

    protected AlertDialog(Context context) {
        this(context, a(context, 0));
    }

    protected AlertDialog(Context context, int i) {
        super(context, a(context, i));
        this.wI = new AlertControllerWrapper(context, this, getWindow());
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.wI.installContent();
    }

    public ActionBar getMiuiActionBar() {
        return this.wI.getImpl().getActionBar();
    }

    static int a(Context context, int i) {
        switch (i) {
            case 2:
                return R.style.Theme_Dark_Dialog_Alert;
            case 3:
                return R.style.Theme_Light_Dialog_Alert;
            case 4:
                return com.miui.internal.R.style.Theme_Dark_Dialog_Edit;
            case 5:
                return com.miui.internal.R.style.Theme_Light_Dialog_Edit;
            case 6:
                return com.miui.internal.R.style.Theme_Dark_Dialog_Edit_Default;
            case 7:
                return com.miui.internal.R.style.Theme_Light_Dialog_Edit_Default;
            default:
                if (i >= nexEngine.ExportHEVCMainTierLevel62) {
                    return i;
                }
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(16843529, typedValue, true);
                return typedValue.resourceId;
        }
    }

    public Button getButton(int i) {
        return this.wI.getButton(i);
    }

    public ListView getListView() {
        return this.wI.getListView();
    }

    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.wI.setTitle(charSequence);
    }

    public void setCustomTitle(View view) {
        this.wI.setCustomTitle(view);
    }

    public void setMessage(CharSequence charSequence) {
        this.wI.setMessage(charSequence);
    }

    public TextView getMessageView() {
        return this.wI.getMessageView();
    }

    public void setView(View view) {
        this.wI.setView(view);
    }

    public void setButton(int i, CharSequence charSequence, Message message) {
        this.wI.setButton(i, charSequence, null, message);
    }

    public void setButton(int i, CharSequence charSequence, OnClickListener onClickListener) {
        this.wI.setButton(i, charSequence, onClickListener, null);
    }

    public void setIcon(int i) {
        this.wI.setIcon(i);
    }

    public void setIcon(Drawable drawable) {
        this.wI.setIcon(drawable);
    }

    public void setIconAttribute(int i) {
        this.wI.setIcon(AttributeResolver.resolve(getContext(), i));
    }

    public boolean[] getCheckedItems() {
        return this.wI.getCheckedItems();
    }

    public boolean isChecked() {
        return this.wI.isChecked();
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.wI.onKeyUp(i, keyEvent) || super.onKeyUp(i, keyEvent);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.wI.onKeyDown(i, keyEvent) || super.onKeyDown(i, keyEvent);
    }
}
