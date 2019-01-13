package miui.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View.BaseSavedState;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.internal.R;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Locale;
import miui.date.Calendar;
import miui.date.CalendarFormatSymbols;
import miui.date.DateUtils;
import miui.util.AppConstants;
import miui.widget.NumberPicker.OnValueChangeListener;

public class DatePicker extends FrameLayout {
    private static final String DATE_FORMAT = "MM/dd/yyyy";
    private static final String LOG_TAG = DatePicker.class.getSimpleName();
    private static final int Qb = 1900;
    private static final int Qc = 2100;
    private static final boolean Qd = false;
    private static final boolean Qe = true;
    private static final boolean Qf = true;
    private static final String[] Qn = CalendarFormatSymbols.getDefault().getChineseDays();
    private static final String[] Qo = CalendarFormatSymbols.getDefault().getChineseMonths();
    private static final String[] Qp = new String[(Qo.length + 1)];
    private static final String Qq = CalendarFormatSymbols.getDefault().getChineseLeapMonths()[1];
    private final LinearLayout Qg;
    private final NumberPicker Qh;
    private final NumberPicker Qi;
    private final NumberPicker Qj;
    private Locale Qk;
    private String[] Ql;
    private char[] Qm;
    private final DateFormat Qr;
    private int Qs;
    private Calendar Qt;
    private Calendar Qu;
    private Calendar Qv;
    private Calendar Qw;
    private boolean Qx;
    private boolean Qy;
    private OnDateChangedListener wP;

    public interface OnDateChangedListener {
        void onDateChanged(DatePicker datePicker, int i, int i2, int i3, boolean z);
    }

    private static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: h */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: am */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private final int QB;
        private final int QC;
        private final int QD;
        private final boolean QE;

        /* synthetic */ SavedState(Parcel parcel, AnonymousClass1 anonymousClass1) {
            this(parcel);
        }

        /* synthetic */ SavedState(Parcelable parcelable, int i, int i2, int i3, boolean z, AnonymousClass1 anonymousClass1) {
            this(parcelable, i, i2, i3, z);
        }

        private SavedState(Parcelable parcelable, int i, int i2, int i3, boolean z) {
            super(parcelable);
            this.QB = i;
            this.QC = i2;
            this.QD = i3;
            this.QE = z;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.QB = parcel.readInt();
            this.QC = parcel.readInt();
            this.QD = parcel.readInt();
            boolean z = true;
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.QE = z;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.QB);
            parcel.writeInt(this.QC);
            parcel.writeInt(this.QD);
            parcel.writeInt(this.QE);
        }
    }

    static {
        Resources resources = AppConstants.getCurrentApplication().getResources();
        for (int i = 0; i < Qo.length; i++) {
            StringBuilder stringBuilder = new StringBuilder();
            String[] strArr = Qo;
            stringBuilder.append(strArr[i]);
            stringBuilder.append(resources.getString(R.string.chinese_month));
            strArr[i] = stringBuilder.toString();
        }
    }

    public DatePicker(Context context) {
        this(context, null);
    }

    public DatePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.datePickerStyle);
    }

    public DatePicker(Context context, AttributeSet attributeSet, int i) {
        Object obj;
        Context context2 = context;
        super(context, attributeSet, i);
        this.Qr = new SimpleDateFormat(DATE_FORMAT);
        this.Qx = true;
        this.Qy = false;
        this.Qt = new Calendar();
        this.Qu = new Calendar();
        this.Qv = new Calendar();
        this.Qw = new Calendar();
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.DatePicker, i, 0);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.DatePicker_spinnersShown, true);
        int i2 = obtainStyledAttributes.getInt(R.styleable.DatePicker_startYear, Qb);
        int i3 = obtainStyledAttributes.getInt(R.styleable.DatePicker_endYear, Qc);
        Object string = obtainStyledAttributes.getString(R.styleable.DatePicker_minDate);
        String string2 = obtainStyledAttributes.getString(R.styleable.DatePicker_maxDate);
        int i4 = R.layout.date_picker;
        this.Qy = obtainStyledAttributes.getBoolean(R.styleable.DatePicker_lunarCalendar, false);
        boolean z2 = obtainStyledAttributes.getBoolean(R.styleable.DatePicker_showYear, true);
        boolean z3 = obtainStyledAttributes.getBoolean(R.styleable.DatePicker_showMonth, true);
        boolean z4 = obtainStyledAttributes.getBoolean(R.styleable.DatePicker_showDay, true);
        obtainStyledAttributes.recycle();
        b(Locale.getDefault());
        ((LayoutInflater) context2.getSystemService("layout_inflater")).inflate(i4, this, true);
        OnValueChangeListener anonymousClass1 = new OnValueChangeListener() {
            public void onValueChange(NumberPicker numberPicker, int i, int i2) {
                DatePicker.this.Qt.setTimeInMillis(DatePicker.this.Qw.getTimeInMillis());
                if (numberPicker == DatePicker.this.Qh) {
                    DatePicker.this.Qt.add(DatePicker.this.Qy ? 10 : 9, i2 - i);
                } else if (numberPicker == DatePicker.this.Qi) {
                    DatePicker.this.Qt.add(DatePicker.this.Qy ? 6 : 5, i2 - i);
                } else if (numberPicker == DatePicker.this.Qj) {
                    DatePicker.this.Qt.set(DatePicker.this.Qy ? 2 : 1, i2);
                } else {
                    throw new IllegalArgumentException();
                }
                DatePicker.this.h(DatePicker.this.Qt.get(1), DatePicker.this.Qt.get(5), DatePicker.this.Qt.get(9));
                if (numberPicker == DatePicker.this.Qj) {
                    DatePicker.this.eq();
                }
                DatePicker.this.es();
                DatePicker.this.et();
            }
        };
        this.Qg = (LinearLayout) findViewById(R.id.pickers);
        this.Qh = (NumberPicker) findViewById(R.id.day);
        this.Qh.setOnLongPressUpdateInterval(100);
        this.Qh.setOnValueChangedListener(anonymousClass1);
        if (!z4) {
            this.Qh.setVisibility(8);
        }
        this.Qi = (NumberPicker) findViewById(R.id.month);
        this.Qi.setMinValue(0);
        this.Qi.setMaxValue(this.Qs - 1);
        this.Qi.setDisplayedValues(this.Ql);
        this.Qi.setOnLongPressUpdateInterval(200);
        this.Qi.setOnValueChangedListener(anonymousClass1);
        if (!z3) {
            this.Qi.setVisibility(8);
        }
        this.Qj = (NumberPicker) findViewById(R.id.year);
        this.Qj.setOnLongPressUpdateInterval(100);
        this.Qj.setOnValueChangedListener(anonymousClass1);
        if (!z2) {
            this.Qj.setVisibility(8);
        }
        ep();
        if (z) {
            setSpinnersShown(z);
        } else {
            setSpinnersShown(true);
        }
        this.Qt.setTimeInMillis(0);
        if (TextUtils.isEmpty(string)) {
            obj = string2;
            this.Qt.set(i2, 0, 1, 0, 0, 0, 0);
        } else if (a(string, this.Qt)) {
            obj = string2;
        } else {
            obj = string2;
            this.Qt.set(i2, 0, 1, 0, 0, 0, 0);
        }
        setMinDate(this.Qt.getTimeInMillis());
        this.Qt.setTimeInMillis(0);
        if (TextUtils.isEmpty(obj)) {
            this.Qt.set(i3, 11, 31, 0, 0, 0, 0);
        } else if (!a(obj, this.Qt)) {
            this.Qt.set(i3, 11, 31, 0, 0, 0, 0);
        }
        setMaxDate(this.Qt.getTimeInMillis());
        this.Qw.setTimeInMillis(System.currentTimeMillis());
        init(this.Qw.get(1), this.Qw.get(5), this.Qw.get(9), null);
        er();
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private void ep() {
        if (this.Qh != null && this.Qj != null) {
            this.Qh.setFormatter(NumberPicker.VF);
            this.Qj.setFormatter(new NumberFormatter());
        }
    }

    public long getMinDate() {
        return this.Qu.getTimeInMillis();
    }

    public void setMinDate(long j) {
        this.Qt.setTimeInMillis(j);
        if (this.Qt.get(1) != this.Qu.get(1) || this.Qt.get(12) == this.Qu.get(12)) {
            this.Qu.setTimeInMillis(j);
            if (this.Qw.before(this.Qu)) {
                this.Qw.setTimeInMillis(this.Qu.getTimeInMillis());
            }
            es();
        }
    }

    public long getMaxDate() {
        return this.Qv.getTimeInMillis();
    }

    public void setMaxDate(long j) {
        this.Qt.setTimeInMillis(j);
        if (this.Qt.get(1) != this.Qv.get(1) || this.Qt.get(12) == this.Qv.get(12)) {
            this.Qv.setTimeInMillis(j);
            if (this.Qw.after(this.Qv)) {
                this.Qw.setTimeInMillis(this.Qv.getTimeInMillis());
            }
            es();
        }
    }

    public void setEnabled(boolean z) {
        if (this.Qx != z) {
            super.setEnabled(z);
            this.Qh.setEnabled(z);
            this.Qi.setEnabled(z);
            this.Qj.setEnabled(z);
            this.Qx = z;
        }
    }

    public boolean isEnabled() {
        return this.Qx;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.getText().add(DateUtils.formatDateTime(this.Qw.getTimeInMillis(), 896));
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(DatePicker.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(DatePicker.class.getName());
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b(configuration.locale);
    }

    public boolean getSpinnersShown() {
        return this.Qg.isShown();
    }

    public void setSpinnersShown(boolean z) {
        this.Qg.setVisibility(z ? 0 : 8);
    }

    public void setLunarMode(boolean z) {
        if (z != this.Qy) {
            this.Qy = z;
            eq();
            es();
        }
    }

    public void showYearPicker(boolean z) {
        this.Qj.setVisibility(z ? 0 : 8);
    }

    public void showMonthPicker(boolean z) {
        this.Qi.setVisibility(z ? 0 : 8);
    }

    public void showDayPicker(boolean z) {
        this.Qh.setVisibility(z ? 0 : 8);
    }

    private void b(Locale locale) {
        if (!locale.equals(this.Qk)) {
            this.Qk = locale;
            this.Qs = this.Qt.getActualMaximum(5) + 1;
            eq();
            ep();
        }
    }

    private void eq() {
        int i = 0;
        if (this.Qy) {
            int chineseLeapMonth = this.Qw.getChineseLeapMonth();
            if (chineseLeapMonth < 0) {
                this.Ql = Qo;
                return;
            }
            this.Ql = Qp;
            int i2 = chineseLeapMonth + 1;
            System.arraycopy(Qo, 0, this.Ql, 0, i2);
            System.arraycopy(Qo, chineseLeapMonth, this.Ql, i2, Qo.length - chineseLeapMonth);
            String[] strArr = this.Ql;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(Qq);
            stringBuilder.append(this.Ql[i2]);
            strArr[i2] = stringBuilder.toString();
        } else if ("en".equals(this.Qk.getLanguage().toLowerCase())) {
            this.Ql = CalendarFormatSymbols.getDefault().getShortMonths();
        } else {
            this.Ql = new String[12];
            while (i < this.Ql.length) {
                int i3 = i + 1;
                this.Ql[i] = NumberPicker.VF.format(i3);
                i = i3;
            }
        }
    }

    private void er() {
        char[] dateFormatOrder;
        this.Qg.removeAllViews();
        if (this.Qm == null) {
            dateFormatOrder = android.text.format.DateFormat.getDateFormatOrder(getContext());
        } else {
            dateFormatOrder = this.Qm;
        }
        int length = dateFormatOrder.length;
        for (int i = 0; i < length; i++) {
            char c = dateFormatOrder[i];
            if (c == 'M') {
                this.Qg.addView(this.Qi);
                a(this.Qi, length, i);
            } else if (c == 'd') {
                this.Qg.addView(this.Qh);
                a(this.Qh, length, i);
            } else if (c == 'y') {
                this.Qg.addView(this.Qj);
                a(this.Qj, length, i);
            } else {
                throw new IllegalArgumentException();
            }
        }
    }

    public void updateDate(int i, int i2, int i3) {
        if (g(i, i2, i3)) {
            h(i, i2, i3);
            es();
            et();
        }
    }

    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.Qw.get(1), this.Qw.get(5), this.Qw.get(9), this.Qy, null);
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        h(savedState.QB, savedState.QC, savedState.QD);
        this.Qy = savedState.QE;
        es();
    }

    public void init(int i, int i2, int i3, OnDateChangedListener onDateChangedListener) {
        h(i, i2, i3);
        es();
        this.wP = onDateChangedListener;
    }

    private boolean a(String str, Calendar calendar) {
        try {
            calendar.setTimeInMillis(this.Qr.parse(str).getTime());
            return true;
        } catch (ParseException e) {
            String str2 = LOG_TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Date: ");
            stringBuilder.append(str);
            stringBuilder.append(" not in format: ");
            stringBuilder.append(DATE_FORMAT);
            Log.w(str2, stringBuilder.toString());
            return false;
        }
    }

    private boolean g(int i, int i2, int i3) {
        if (this.Qw.get(1) == i && this.Qw.get(5) == i3 && this.Qw.get(9) == i2) {
            return false;
        }
        return true;
    }

    private void h(int i, int i2, int i3) {
        this.Qw.set(i, i2, i3, 0, 0, 0, 0);
        if (this.Qw.before(this.Qu)) {
            this.Qw.setTimeInMillis(this.Qu.getTimeInMillis());
        } else if (this.Qw.after(this.Qv)) {
            this.Qw.setTimeInMillis(this.Qv.getTimeInMillis());
        }
    }

    private void es() {
        int actualMaximum;
        int i;
        if (this.Qy) {
            this.Qh.setLabel(null);
            this.Qi.setLabel(null);
            this.Qj.setLabel(null);
        } else {
            this.Qh.setLabel(getContext().getString(R.string.date_picker_label_day));
            this.Qi.setLabel(getContext().getString(R.string.date_picker_label_month));
            this.Qj.setLabel(getContext().getString(R.string.date_picker_label_year));
        }
        this.Qh.setDisplayedValues(null);
        this.Qh.setMinValue(1);
        NumberPicker numberPicker = this.Qh;
        if (this.Qy) {
            actualMaximum = this.Qw.getActualMaximum(10);
        } else {
            actualMaximum = this.Qw.getActualMaximum(9);
        }
        numberPicker.setMaxValue(actualMaximum);
        this.Qh.setWrapSelectorWheel(true);
        this.Qi.setDisplayedValues(null);
        boolean z = false;
        this.Qi.setMinValue(0);
        numberPicker = this.Qi;
        int i2 = 11;
        if (this.Qy && this.Qw.getChineseLeapMonth() >= 0) {
            i2 = 12;
        }
        numberPicker.setMaxValue(i2);
        this.Qi.setWrapSelectorWheel(true);
        int i3 = this.Qy ? 2 : 1;
        if (this.Qw.get(i3) == this.Qu.get(i3)) {
            this.Qi.setMinValue(this.Qy ? this.Qu.get(6) : this.Qu.get(5));
            this.Qi.setWrapSelectorWheel(false);
            i2 = this.Qy ? 6 : 5;
            if (this.Qw.get(i2) == this.Qu.get(i2)) {
                int i4;
                NumberPicker numberPicker2 = this.Qh;
                if (this.Qy) {
                    i4 = this.Qu.get(10);
                } else {
                    i4 = this.Qu.get(9);
                }
                numberPicker2.setMinValue(i4);
                this.Qh.setWrapSelectorWheel(false);
            }
        }
        if (this.Qw.get(i3) == this.Qv.get(i3)) {
            this.Qi.setMaxValue(this.Qy ? this.Qu.get(6) : this.Qv.get(5));
            this.Qi.setWrapSelectorWheel(false);
            this.Qi.setDisplayedValues(null);
            i3 = this.Qy ? 6 : 5;
            if (this.Qw.get(i3) == this.Qv.get(i3)) {
                numberPicker = this.Qh;
                if (this.Qy) {
                    i = this.Qv.get(10);
                } else {
                    i = this.Qv.get(9);
                }
                numberPicker.setMaxValue(i);
                this.Qh.setWrapSelectorWheel(false);
            }
        }
        this.Qi.setDisplayedValues((String[]) Arrays.copyOfRange(this.Ql, this.Qi.getMinValue(), this.Ql.length));
        if (this.Qy) {
            this.Qh.setDisplayedValues((String[]) Arrays.copyOfRange(Qn, this.Qh.getMinValue() - 1, Qn.length));
        }
        this.Qj.setMinValue(this.Qu.get(1));
        this.Qj.setMaxValue(this.Qv.get(1));
        this.Qj.setWrapSelectorWheel(false);
        i3 = this.Qw.getChineseLeapMonth();
        if (i3 >= 0 && (this.Qw.isChineseLeapMonth() || this.Qw.get(6) > i3)) {
            z = true;
        }
        this.Qj.setValue(this.Qy ? this.Qw.get(2) : this.Qw.get(1));
        numberPicker = this.Qi;
        i = this.Qy ? z ? this.Qw.get(6) + 1 : this.Qw.get(6) : this.Qw.get(5);
        numberPicker.setValue(i);
        numberPicker = this.Qh;
        if (this.Qy) {
            i = this.Qw.get(10);
        } else {
            i = this.Qw.get(9);
        }
        numberPicker.setValue(i);
    }

    public int getYear() {
        return this.Qw.get(this.Qy ? 2 : 1);
    }

    public int getMonth() {
        if (this.Qy) {
            return this.Qw.isChineseLeapMonth() ? this.Qw.get(6) + 12 : this.Qw.get(6);
        } else {
            return this.Qw.get(5);
        }
    }

    public int getDayOfMonth() {
        return this.Qw.get(this.Qy ? 10 : 9);
    }

    public boolean isLunarMode() {
        return this.Qy;
    }

    private void et() {
        sendAccessibilityEvent(4);
        if (this.wP != null) {
            this.wP.onDateChanged(this, getYear(), getMonth(), getDayOfMonth(), this.Qy);
        }
    }

    private void a(NumberPicker numberPicker, int i, int i2) {
        if (i2 < i - 1) {
            i = 5;
        } else {
            i = 6;
        }
        ((TextView) numberPicker.findViewById(R.id.numberpicker_input)).setImeOptions(i);
    }

    public void setDateFormatOrder(char[] cArr) {
        this.Qm = cArr;
        er();
    }
}
