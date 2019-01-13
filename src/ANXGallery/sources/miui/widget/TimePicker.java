package miui.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.miui.internal.R;
import java.util.Locale;
import miui.date.Calendar;
import miui.date.CalendarFormatSymbols;
import miui.date.DateUtils;
import miui.widget.NumberPicker.OnValueChangeListener;

public class TimePicker extends FrameLayout {
    private static final boolean Qf = true;
    private static final int aaw = 12;
    private static final OnTimeChangedListener aax = new OnTimeChangedListener() {
        public void onTimeChanged(TimePicker timePicker, int i, int i2) {
        }
    };
    private Locale Qk;
    private boolean Qx;
    private final NumberPicker aaA;
    private final NumberPicker aaB;
    private final Button aaC;
    private OnTimeChangedListener aaD;
    private Calendar aaE;
    private boolean aay;
    private final NumberPicker aaz;
    private boolean xs;

    public interface OnTimeChangedListener {
        void onTimeChanged(TimePicker timePicker, int i, int i2);
    }

    private static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: l */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: aK */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private final int aaG;
        private final int aaH;

        /* synthetic */ SavedState(Parcel parcel, AnonymousClass1 anonymousClass1) {
            this(parcel);
        }

        /* synthetic */ SavedState(Parcelable parcelable, int i, int i2, AnonymousClass1 anonymousClass1) {
            this(parcelable, i, i2);
        }

        private SavedState(Parcelable parcelable, int i, int i2) {
            super(parcelable);
            this.aaG = i;
            this.aaH = i2;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.aaG = parcel.readInt();
            this.aaH = parcel.readInt();
        }

        public int getHour() {
            return this.aaG;
        }

        public int getMinute() {
            return this.aaH;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.aaG);
            parcel.writeInt(this.aaH);
        }
    }

    public TimePicker(Context context) {
        this(context, null);
    }

    public TimePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TimePicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Qx = true;
        b(Locale.getDefault());
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.time_picker, this, true);
        this.aaz = (NumberPicker) findViewById(R.id.hour);
        this.aaz.setOnValueChangedListener(new OnValueChangeListener() {
            public void onValueChange(NumberPicker numberPicker, int i, int i2) {
                if (!TimePicker.this.is24HourView() && ((i == 11 && i2 == 12) || (i == 12 && i2 == 11))) {
                    TimePicker.this.aay = TimePicker.this.aay ^ 1;
                    TimePicker.this.fS();
                }
                TimePicker.this.fT();
            }
        });
        ((EditText) this.aaz.findViewById(R.id.numberpicker_input)).setImeOptions(5);
        this.aaA = (NumberPicker) findViewById(R.id.minute);
        this.aaA.setMinValue(0);
        this.aaA.setMaxValue(59);
        this.aaA.setOnLongPressUpdateInterval(100);
        this.aaA.setFormatter(NumberPicker.VF);
        this.aaA.setOnValueChangedListener(new OnValueChangeListener() {
            public void onValueChange(NumberPicker numberPicker, int i, int i2) {
                TimePicker.this.fT();
            }
        });
        ((EditText) this.aaA.findViewById(R.id.numberpicker_input)).setImeOptions(5);
        View findViewById = findViewById(R.id.amPm);
        if (findViewById instanceof Button) {
            this.aaB = null;
            this.aaC = (Button) findViewById;
            this.aaC.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    view.requestFocus();
                    TimePicker.this.aay = TimePicker.this.aay ^ 1;
                    TimePicker.this.fS();
                    TimePicker.this.fT();
                }
            });
        } else {
            this.aaC = null;
            this.aaB = (NumberPicker) findViewById;
            this.aaB.setMinValue(0);
            this.aaB.setMaxValue(1);
            this.aaB.setDisplayedValues(CalendarFormatSymbols.getDefault().getAmPms());
            this.aaB.setOnValueChangedListener(new OnValueChangeListener() {
                public void onValueChange(NumberPicker numberPicker, int i, int i2) {
                    numberPicker.requestFocus();
                    TimePicker.this.aay = TimePicker.this.aay ^ 1;
                    TimePicker.this.fS();
                    TimePicker.this.fT();
                }
            });
            ((EditText) this.aaB.findViewById(R.id.numberpicker_input)).setImeOptions(6);
        }
        if (fQ()) {
            ViewGroup viewGroup = (ViewGroup) findViewById(R.id.timePickerLayout);
            viewGroup.removeView(findViewById);
            viewGroup.addView(findViewById, 0);
        }
        fR();
        fS();
        setOnTimeChangedListener(aax);
        setCurrentHour(Integer.valueOf(this.aaE.get(18)));
        setCurrentMinute(Integer.valueOf(this.aaE.get(20)));
        if (!isEnabled()) {
            setEnabled(false);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private boolean fQ() {
        boolean startsWith = getContext().getString(R.string.fmt_time_12hour_pm).startsWith("a");
        return getResources().getConfiguration().getLayoutDirection() == 1 ? startsWith ^ 1 : startsWith;
    }

    public void setEnabled(boolean z) {
        if (this.Qx != z) {
            super.setEnabled(z);
            this.aaA.setEnabled(z);
            this.aaz.setEnabled(z);
            if (this.aaB != null) {
                this.aaB.setEnabled(z);
            } else {
                this.aaC.setEnabled(z);
            }
            this.Qx = z;
        }
    }

    public boolean isEnabled() {
        return this.Qx;
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b(configuration.locale);
    }

    private void b(Locale locale) {
        if (!locale.equals(this.Qk)) {
            this.Qk = locale;
            if (this.aaE == null) {
                this.aaE = new Calendar();
            }
        }
    }

    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), getCurrentHour().intValue(), getCurrentMinute().intValue(), null);
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentHour(Integer.valueOf(savedState.getHour()));
        setCurrentMinute(Integer.valueOf(savedState.getMinute()));
    }

    public void setOnTimeChangedListener(OnTimeChangedListener onTimeChangedListener) {
        this.aaD = onTimeChangedListener;
    }

    public Integer getCurrentHour() {
        int value = this.aaz.getValue();
        if (is24HourView()) {
            return Integer.valueOf(value);
        }
        if (this.aay) {
            return Integer.valueOf(value % 12);
        }
        return Integer.valueOf((value % 12) + 12);
    }

    public void setCurrentHour(Integer num) {
        if (num != null && !num.equals(getCurrentHour())) {
            if (!is24HourView()) {
                if (num.intValue() >= 12) {
                    this.aay = false;
                    if (num.intValue() > 12) {
                        num = Integer.valueOf(num.intValue() - 12);
                    }
                } else {
                    this.aay = true;
                    if (num.intValue() == 0) {
                        num = Integer.valueOf(12);
                    }
                }
                fS();
            }
            this.aaz.setValue(num.intValue());
            fT();
        }
    }

    public void setIs24HourView(Boolean bool) {
        if (this.xs != bool.booleanValue()) {
            this.xs = bool.booleanValue();
            int intValue = getCurrentHour().intValue();
            fR();
            setCurrentHour(Integer.valueOf(intValue));
            fS();
        }
    }

    public boolean is24HourView() {
        return this.xs;
    }

    public Integer getCurrentMinute() {
        return Integer.valueOf(this.aaA.getValue());
    }

    public void setCurrentMinute(Integer num) {
        if (!num.equals(getCurrentMinute())) {
            this.aaA.setValue(num.intValue());
            fT();
        }
    }

    public int getBaseline() {
        return this.aaz.getBaseline();
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        int i;
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        if (this.xs) {
            i = 44;
        } else {
            i = 28;
        }
        this.aaE.set(18, getCurrentHour().intValue());
        this.aaE.set(20, getCurrentMinute().intValue());
        accessibilityEvent.getText().add(DateUtils.formatDateTime(this.aaE.getTimeInMillis(), i));
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(TimePicker.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(TimePicker.class.getName());
    }

    private void fR() {
        if (is24HourView()) {
            this.aaz.setMinValue(0);
            this.aaz.setMaxValue(23);
            this.aaz.setFormatter(NumberPicker.VF);
            return;
        }
        this.aaz.setMinValue(1);
        this.aaz.setMaxValue(12);
        this.aaz.setFormatter(null);
    }

    private void fS() {
        if (!is24HourView()) {
            int i = this.aay ^ 1;
            if (this.aaB != null) {
                this.aaB.setValue(i);
                this.aaB.setVisibility(0);
            } else {
                this.aaC.setText(CalendarFormatSymbols.getDefault().getAmPms()[i]);
                this.aaC.setVisibility(0);
            }
        } else if (this.aaB != null) {
            this.aaB.setVisibility(8);
        } else {
            this.aaC.setVisibility(8);
        }
        sendAccessibilityEvent(4);
    }

    private void fT() {
        sendAccessibilityEvent(4);
        if (this.aaD != null) {
            this.aaD.onTimeChanged(this, getCurrentHour().intValue(), getCurrentMinute().intValue());
        }
    }

    private void c(View view, int i, int i2) {
        view = view.findViewById(i);
        if (view != null) {
            view.setContentDescription(getContext().getString(i2));
        }
    }
}
