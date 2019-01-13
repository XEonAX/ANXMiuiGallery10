package miui.app;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import com.miui.internal.R;
import miui.date.Calendar;
import miui.date.DateUtils;
import miui.widget.DatePicker;
import miui.widget.DatePicker.OnDateChangedListener;

public class DatePickerDialog extends AlertDialog {
    private static final String DAY = "miui:day";
    private static final String MONTH = "miui:month";
    private static final String YEAR = "miui:year";
    private final DatePicker wL;
    private final OnDateSetListener wM;
    private final Calendar wN;
    private boolean wO;
    private OnDateChangedListener wP;

    public interface OnDateSetListener {
        void onDateSet(DatePicker datePicker, int i, int i2, int i3);
    }

    public DatePickerDialog(Context context, OnDateSetListener onDateSetListener, int i, int i2, int i3) {
        this(context, 0, onDateSetListener, i, i2, i3);
    }

    public DatePickerDialog(Context context, int i, OnDateSetListener onDateSetListener, int i2, int i3, int i4) {
        super(context, i);
        this.wO = true;
        this.wP = new OnDateChangedListener() {
            public void onDateChanged(DatePicker datePicker, int i, int i2, int i3, boolean z) {
                if (DatePickerDialog.this.wO) {
                    DatePickerDialog.this.c(i, i2, i3);
                }
            }
        };
        this.wM = onDateSetListener;
        this.wN = new Calendar();
        context = getContext();
        setButton(-1, context.getText(17039370), new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                DatePickerDialog.this.bZ();
            }
        });
        setButton(-2, getContext().getText(17039360), (OnClickListener) null);
        setIcon(0);
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.date_picker_dialog, null);
        setView(inflate);
        this.wL = (DatePicker) inflate.findViewById(R.id.datePicker);
        this.wL.init(i2, i3, i4, this.wP);
        c(i2, i3, i4);
    }

    public DatePicker getDatePicker() {
        return this.wL;
    }

    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.wO = false;
    }

    public void setTitle(int i) {
        super.setTitle(i);
        this.wO = false;
    }

    public void updateDate(int i, int i2, int i3) {
        this.wL.updateDate(i, i2, i3);
    }

    private void bZ() {
        if (this.wM != null) {
            this.wL.clearFocus();
            this.wM.onDateSet(this.wL, this.wL.getYear(), this.wL.getMonth(), this.wL.getDayOfMonth());
        }
    }

    private void c(int i, int i2, int i3) {
        this.wN.set(1, i);
        this.wN.set(5, i2);
        this.wN.set(9, i3);
        super.setTitle(DateUtils.formatDateTime(this.wN.getTimeInMillis(), 14208));
    }

    public Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        onSaveInstanceState.putInt(YEAR, this.wL.getYear());
        onSaveInstanceState.putInt(MONTH, this.wL.getMonth());
        onSaveInstanceState.putInt(DAY, this.wL.getDayOfMonth());
        return onSaveInstanceState;
    }

    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.wL.init(bundle.getInt(YEAR), bundle.getInt(MONTH), bundle.getInt(DAY), this.wP);
    }
}
