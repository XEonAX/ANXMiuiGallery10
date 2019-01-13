package miui.app;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import com.miui.internal.R;
import miui.widget.TimePicker;

public class TimePickerDialog extends AlertDialog {
    private static final String HOUR = "miui:hour";
    private static final String MINUTE = "miui:minute";
    private static final String xn = "miui:is24hour";
    private final TimePicker xo;
    private final OnTimeSetListener xp;
    int xq;
    int xr;
    boolean xs;

    public interface OnTimeSetListener {
        void onTimeSet(TimePicker timePicker, int i, int i2);
    }

    public TimePickerDialog(Context context, OnTimeSetListener onTimeSetListener, int i, int i2, boolean z) {
        this(context, 0, onTimeSetListener, i, i2, z);
    }

    public TimePickerDialog(Context context, int i, OnTimeSetListener onTimeSetListener, int i2, int i3, boolean z) {
        super(context, i);
        this.xp = onTimeSetListener;
        this.xq = i2;
        this.xr = i3;
        this.xs = z;
        setIcon(0);
        setTitle(R.string.time_picker_dialog_title);
        context = getContext();
        setButton(-1, context.getText(17039370), new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                TimePickerDialog.this.cb();
            }
        });
        setButton(-2, getContext().getText(17039360), (OnClickListener) null);
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.time_picker_dialog, null);
        setView(inflate);
        this.xo = (TimePicker) inflate.findViewById(R.id.timePicker);
        this.xo.setIs24HourView(Boolean.valueOf(this.xs));
        this.xo.setCurrentHour(Integer.valueOf(this.xq));
        this.xo.setCurrentMinute(Integer.valueOf(this.xr));
        this.xo.setOnTimeChangedListener(null);
    }

    public void updateTime(int i, int i2) {
        this.xo.setCurrentHour(Integer.valueOf(i));
        this.xo.setCurrentMinute(Integer.valueOf(i2));
    }

    private void cb() {
        if (this.xp != null) {
            this.xo.clearFocus();
            this.xp.onTimeSet(this.xo, this.xo.getCurrentHour().intValue(), this.xo.getCurrentMinute().intValue());
        }
    }

    public Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        onSaveInstanceState.putInt(HOUR, this.xo.getCurrentHour().intValue());
        onSaveInstanceState.putInt(MINUTE, this.xo.getCurrentMinute().intValue());
        onSaveInstanceState.putBoolean(xn, this.xo.is24HourView());
        return onSaveInstanceState;
    }

    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        int i = bundle.getInt(HOUR);
        int i2 = bundle.getInt(MINUTE);
        this.xo.setIs24HourView(Boolean.valueOf(bundle.getBoolean(xn)));
        this.xo.setCurrentHour(Integer.valueOf(i));
        this.xo.setCurrentMinute(Integer.valueOf(i2));
    }
}
