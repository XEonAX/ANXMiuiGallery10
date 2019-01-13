package miui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View.BaseSavedState;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import com.miui.internal.R;
import com.miui.internal.util.PackageConstants;
import java.util.Locale;
import miui.date.Calendar;
import miui.date.DateUtils;
import miui.widget.NumberPicker.OnValueChangeListener;

public class DateTimePicker extends LinearLayout {
    private static final int QF = 1;
    private static final int QG = 7;
    private static final int QH = 6;
    private static final int QI = 2;
    private static final DayFormatter QO = new DayFormatter();
    private static final ThreadLocal<Calendar> QR = new ThreadLocal();
    private static ThreadLocal<Calendar> QV = new ThreadLocal();
    private NumberPicker QJ;
    private NumberPicker QK;
    private NumberPicker QL;
    private String[] QM;
    private DayFormatter QN;
    private DayFormatter QP;
    private OnDateTimeChangedListener QQ;
    private int QS;
    private int QT;
    String[] QU;
    private Calendar Qu;
    private Calendar Qv;
    private boolean Qy;
    private Calendar wN;

    public static class DayFormatter {
        public String formatDay(int i, int i2, int i3) {
            Calendar calendar = (Calendar) DateTimePicker.QV.get();
            if (calendar == null) {
                calendar = new Calendar();
                DateTimePicker.QV.set(calendar);
            }
            calendar.set(1, i);
            calendar.set(5, i2);
            calendar.set(9, i3);
            if (!Locale.getDefault().getLanguage().equals(Locale.CHINESE.getLanguage())) {
                return DateUtils.formatDateTime(calendar.getTimeInMillis(), 13696);
            }
            String formatDateTime = DateUtils.formatDateTime(calendar.getTimeInMillis(), 4480);
            String formatDateTime2 = DateUtils.formatDateTime(calendar.getTimeInMillis(), 9216);
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(formatDateTime.replace(" ", ""));
            stringBuilder.append(" ");
            stringBuilder.append(formatDateTime2);
            return stringBuilder.toString();
        }
    }

    public static class LunarFormatter extends DayFormatter {
        public String formatDay(int i, int i2, int i3) {
            Calendar calendar = (Calendar) DateTimePicker.QV.get();
            if (calendar == null) {
                calendar = new Calendar();
                DateTimePicker.QV.set(calendar);
            }
            calendar.set(1, i);
            calendar.set(5, i2);
            calendar.set(9, i3);
            return calendar.format(PackageConstants.getCurrentApplication().getString(R.string.fmt_chinese_date));
        }
    }

    public interface OnDateTimeChangedListener {
        void onDateTimeChanged(DateTimePicker dateTimePicker, long j);
    }

    private class PickerValueChangeListener implements OnValueChangeListener {
        private PickerValueChangeListener() {
        }

        public void onValueChange(NumberPicker numberPicker, int i, int i2) {
            if (numberPicker == DateTimePicker.this.QJ) {
                i2 = 1;
                if (((numberPicker.getValue() - DateTimePicker.this.QT) + 7) % 7 != 1) {
                    i2 = -1;
                }
                DateTimePicker.this.wN.add(12, i2);
                DateTimePicker.this.QT = numberPicker.getValue();
            } else if (numberPicker == DateTimePicker.this.QK) {
                DateTimePicker.this.wN.set(18, DateTimePicker.this.QK.getValue());
            } else if (numberPicker == DateTimePicker.this.QL) {
                DateTimePicker.this.wN.set(20, DateTimePicker.this.QS * DateTimePicker.this.QL.getValue());
            }
            DateTimePicker.this.ev();
            DateTimePicker.this.ey();
            DateTimePicker.this.ex();
            DateTimePicker.this.ew();
            l(DateTimePicker.this);
        }

        private void l(DateTimePicker dateTimePicker) {
            DateTimePicker.this.sendAccessibilityEvent(4);
            if (DateTimePicker.this.QQ != null) {
                DateTimePicker.this.QQ.onDateTimeChanged(dateTimePicker, DateTimePicker.this.getTimeInMillis());
            }
        }
    }

    private static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: i */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: an */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private long QX;

        public SavedState(Parcelable parcelable, long j) {
            super(parcelable);
            this.QX = j;
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.QX = parcel.readLong();
        }

        public long getTimeInMillis() {
            return this.QX;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.QX);
        }
    }

    public DateTimePicker(Context context) {
        this(context, null);
    }

    public DateTimePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dateTimePickerStyle);
    }

    public DateTimePicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.QS = 1;
        this.Qu = null;
        this.Qv = null;
        this.QU = null;
        this.Qy = false;
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.datetime_picker, this, true);
        OnValueChangeListener pickerValueChangeListener = new PickerValueChangeListener();
        this.wN = new Calendar();
        a(this.wN, true);
        Calendar calendar = (Calendar) QR.get();
        if (calendar == null) {
            calendar = new Calendar();
            QR.set(calendar);
        }
        calendar.setTimeInMillis(0);
        this.QJ = (NumberPicker) findViewById(R.id.day);
        this.QK = (NumberPicker) findViewById(R.id.hour);
        this.QL = (NumberPicker) findViewById(R.id.minute);
        this.QJ.setOnValueChangedListener(pickerValueChangeListener);
        this.QJ.setMaxFlingSpeedFactor(3.0f);
        this.QK.setOnValueChangedListener(pickerValueChangeListener);
        this.QL.setOnValueChangedListener(pickerValueChangeListener);
        this.QL.setMinValue(0);
        this.QL.setMaxValue(59);
        this.QK.setFormatter(NumberPicker.VF);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DateTimePicker, i, 0);
        this.Qy = obtainStyledAttributes.getBoolean(R.styleable.DateTimePicker_lunarCalendar, false);
        obtainStyledAttributes.recycle();
        eu();
        ev();
        ey();
        ex();
        ew();
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private void a(Calendar calendar, boolean z) {
        calendar.set(22, 0);
        calendar.set(21, 0);
        int i = calendar.get(20) % this.QS;
        if (i == 0) {
            return;
        }
        if (z) {
            calendar.add(20, this.QS - i);
        } else {
            calendar.add(20, -i);
        }
    }

    private void eu() {
        Resources resources = getResources();
        Object obj = null;
        Object obj2 = resources.getConfiguration().getLayoutDirection() == 1 ? 1 : null;
        boolean startsWith = resources.getString(R.string.fmt_time_12hour_minute).startsWith("h");
        if ((startsWith && obj2 != null) || (!startsWith && obj2 == null)) {
            obj = 1;
        }
        if (obj != null) {
            ViewGroup viewGroup = (ViewGroup) this.QK.getParent();
            viewGroup.removeView(this.QK);
            viewGroup.addView(this.QK, viewGroup.getChildCount());
        }
    }

    private void ev() {
        if (this.Qu != null && this.Qu.getTimeInMillis() > this.wN.getTimeInMillis()) {
            this.wN.setTimeInMillis(this.Qu.getTimeInMillis());
        }
        if (this.Qv != null && this.Qv.getTimeInMillis() < this.wN.getTimeInMillis()) {
            this.wN.setTimeInMillis(this.Qv.getTimeInMillis());
        }
    }

    private void ew() {
        int i;
        boolean z;
        int i2 = 0;
        if (this.Qv != null && a(this.wN, this.Qv) == 0 && this.wN.get(18) == this.Qv.get(18)) {
            i = this.Qv.get(20);
            this.QL.setMinValue(0);
            this.QL.setMaxValue(i / this.QS);
            this.QL.setWrapSelectorWheel(false);
            z = true;
        } else {
            z = false;
        }
        if (this.Qu != null && a(this.wN, this.Qu) == 0 && this.wN.get(18) == this.Qu.get(18)) {
            this.QL.setMinValue(this.Qu.get(20) / this.QS);
            this.QL.setWrapSelectorWheel(false);
            z = true;
        }
        if (!z) {
            b(this.QL, 0, (60 / this.QS) - 1);
            this.QL.setMinValue(0);
            this.QL.setMaxValue((60 / this.QS) - 1);
            this.QL.setWrapSelectorWheel(true);
        }
        i = (this.QL.getMaxValue() - this.QL.getMinValue()) + 1;
        if (this.QM == null || this.QM.length != i) {
            this.QM = new String[i];
            while (i2 < i) {
                this.QM[i2] = NumberPicker.VF.format((this.QL.getMinValue() + i2) * this.QS);
                i2++;
            }
            this.QL.setDisplayedValues(this.QM);
        }
        this.QL.setValue(this.wN.get(20) / this.QS);
    }

    private void ex() {
        boolean z;
        if (this.Qv == null || a(this.wN, this.Qv) != 0) {
            z = false;
        } else {
            this.QK.setMaxValue(this.Qv.get(18));
            this.QK.setWrapSelectorWheel(false);
            z = true;
        }
        if (this.Qu != null && a(this.wN, this.Qu) == 0) {
            this.QK.setMinValue(this.Qu.get(18));
            this.QK.setWrapSelectorWheel(false);
            z = true;
        }
        if (!z) {
            this.QK.setMinValue(0);
            this.QK.setMaxValue(23);
            this.QK.setWrapSelectorWheel(true);
        }
        this.QK.setValue(this.wN.get(18));
    }

    private int a(Calendar calendar, Calendar calendar2) {
        calendar = (Calendar) calendar.clone();
        calendar2 = (Calendar) calendar2.clone();
        calendar.set(18, 0);
        calendar.set(20, 0);
        calendar.set(21, 0);
        calendar.set(22, 0);
        calendar2.set(18, 0);
        calendar2.set(20, 0);
        calendar2.set(21, 0);
        calendar2.set(22, 0);
        return (int) (((((calendar.getTimeInMillis() / 1000) / 60) / 60) / 24) - ((((calendar2.getTimeInMillis() / 1000) / 60) / 60) / 24));
    }

    private void ey() {
        int i;
        int i2;
        int i3;
        int i4 = Integer.MAX_VALUE;
        if (this.Qu == null) {
            i = Integer.MAX_VALUE;
        } else {
            i = a(this.wN, this.Qu);
        }
        if (this.Qv != null) {
            i4 = a(this.Qv, this.wN);
        }
        if (i > 2 || i4 > 2) {
            b(this.QJ, 0, 6);
            this.QJ.setMinValue(0);
            this.QJ.setMaxValue(6);
            if (i <= 2) {
                this.QJ.setValue(i);
                this.QT = i;
                this.QJ.setWrapSelectorWheel(false);
            }
            if (i4 <= 2) {
                this.QT = 6 - i4;
                this.QJ.setValue(this.QT);
                this.QJ.setWrapSelectorWheel(false);
            }
            if (i > 2 && i4 > 2) {
                this.QJ.setWrapSelectorWheel(true);
            }
        } else {
            i4 = a(this.Qv, this.Qu);
            b(this.QJ, 0, i4);
            this.QJ.setMinValue(0);
            this.QJ.setMaxValue(i4);
            this.QJ.setValue(i);
            this.QT = i;
            this.QJ.setWrapSelectorWheel(false);
        }
        i = (this.QJ.getMaxValue() - this.QJ.getMinValue()) + 1;
        if (this.QU == null || this.QU.length != i) {
            this.QU = new String[i];
        }
        i = this.QJ.getValue();
        Calendar calendar = (Calendar) QR.get();
        if (calendar == null) {
            calendar = new Calendar();
            QR.set(calendar);
        }
        calendar.setTimeInMillis(this.wN.getTimeInMillis());
        this.QU[i] = formatDay(calendar.get(1), calendar.get(5), calendar.get(9));
        for (i2 = 1; i2 <= 3; i2++) {
            calendar.add(12, 1);
            i3 = (i + i2) % 7;
            if (i3 >= this.QU.length) {
                break;
            }
            this.QU[i3] = formatDay(calendar.get(1), calendar.get(5), calendar.get(9));
        }
        calendar.setTimeInMillis(this.wN.getTimeInMillis());
        for (i2 = 1; i2 <= 3; i2++) {
            calendar.add(12, -1);
            i3 = ((i - i2) + 7) % 7;
            if (i3 >= this.QU.length) {
                break;
            }
            this.QU[i3] = formatDay(calendar.get(1), calendar.get(5), calendar.get(9));
        }
        this.QJ.setDisplayedValues(this.QU);
    }

    private void b(NumberPicker numberPicker, int i, int i2) {
        String[] displayedValues = numberPicker.getDisplayedValues();
        if (displayedValues != null && displayedValues.length < (i2 - i) + 1) {
            numberPicker.setDisplayedValues(null);
        }
    }

    public void setOnTimeChangedListener(OnDateTimeChangedListener onDateTimeChangedListener) {
        this.QQ = onDateTimeChangedListener;
    }

    public void setMinuteInterval(int i) {
        if (this.QS != i) {
            this.QS = i;
            a(this.wN, true);
            ev();
            ew();
        }
    }

    public void update(long j) {
        this.wN.setTimeInMillis(j);
        a(this.wN, true);
        ev();
        ey();
        ex();
        ew();
    }

    public long getTimeInMillis() {
        return this.wN.getTimeInMillis();
    }

    public void setMinDateTime(long j) {
        if (j <= 0) {
            this.Qu = null;
        } else {
            this.Qu = new Calendar();
            this.Qu.setTimeInMillis(j);
            if (!(this.Qu.get(21) == 0 && this.Qu.get(22) == 0)) {
                this.Qu.add(20, 1);
            }
            a(this.Qu, true);
            if (this.Qv != null && this.Qv.getTimeInMillis() < this.Qu.getTimeInMillis()) {
                this.Qu.setTimeInMillis(this.Qv.getTimeInMillis());
            }
        }
        ev();
        ey();
        ex();
        ew();
    }

    public void setMaxDateTime(long j) {
        if (j <= 0) {
            this.Qv = null;
        } else {
            this.Qv = new Calendar();
            this.Qv.setTimeInMillis(j);
            a(this.Qv, false);
            if (this.Qu != null && this.Qu.getTimeInMillis() > this.Qv.getTimeInMillis()) {
                this.Qv.setTimeInMillis(this.Qu.getTimeInMillis());
            }
        }
        ev();
        ey();
        ex();
        ew();
    }

    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), getTimeInMillis());
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        update(savedState.getTimeInMillis());
    }

    public void setDayFormatter(DayFormatter dayFormatter) {
        this.QN = dayFormatter;
        ey();
    }

    public void setLunarMode(boolean z) {
        this.Qy = z;
        ey();
    }

    private String formatDay(int i, int i2, int i3) {
        DayFormatter dayFormatter = QO;
        if (this.Qy) {
            if (this.QP == null) {
                this.QP = new LunarFormatter();
            }
            dayFormatter = this.QP;
        }
        if (this.QN != null) {
            dayFormatter = this.QN;
        }
        return dayFormatter.formatDay(i, i2, i3);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.getText().add(DateUtils.formatDateTime(this.wN.getTimeInMillis(), 1420));
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(DateTimePicker.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(DateTimePicker.class.getName());
    }
}
