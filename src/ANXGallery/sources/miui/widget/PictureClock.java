package miui.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.internal.R;
import java.util.TimeZone;
import miui.date.Calendar;
import miui.date.CalendarFormatSymbols;
import miui.date.DateUtils;

public class PictureClock extends LinearLayout {
    private final BroadcastReceiver Xv;
    private ImageTextView Xw;
    private AmPm Xx;
    private boolean Xy;
    private boolean Xz;
    private final Handler mHandler;
    private Calendar wN;

    static class AmPm {
        private TextView XC;
        private String XD;
        private String XE;

        AmPm(View view) {
            this.XC = (TextView) view.findViewById(R.id.am_pm);
            String[] amPms = CalendarFormatSymbols.getDefault().getAmPms();
            this.XD = amPms[0];
            this.XE = amPms[1];
        }

        void A(boolean z) {
            if (this.XC != null) {
                this.XC.setVisibility(z ? 0 : 8);
            }
        }

        void B(boolean z) {
            if (this.XC != null) {
                this.XC.setText(z ? this.XD : this.XE);
            }
        }
    }

    public PictureClock(Context context) {
        this(context, null);
    }

    public PictureClock(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHandler = new Handler();
        this.Xv = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                if (PictureClock.this.Xy && intent.getAction().equals("android.intent.action.TIMEZONE_CHANGED")) {
                    PictureClock.this.wN = new Calendar(TimeZone.getTimeZone(intent.getStringExtra("time-zone")));
                }
                PictureClock.this.mHandler.post(new Runnable() {
                    public void run() {
                        PictureClock.this.fx();
                    }
                });
            }
        };
        this.Xy = true;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.Xw = (ImageTextView) findViewById(R.id.time_display);
        this.Xx = new AmPm(this);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.Xz) {
            this.Xz = true;
            if (this.Xy) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.TIME_TICK");
                intentFilter.addAction("android.intent.action.TIME_SET");
                intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
                getContext().registerReceiver(this.Xv, intentFilter);
            }
            this.wN = new Calendar();
            fx();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.Xz) {
            this.Xz = false;
            if (this.Xy) {
                getContext().unregisterReceiver(this.Xv);
            }
        }
    }

    private void fx() {
        if (this.Xy) {
            this.wN.setTimeInMillis(System.currentTimeMillis());
        }
        this.Xw.setText(DateUtils.formatDateTime(this.wN.getTimeInMillis(), 76));
        boolean z = true;
        this.Xx.A(DateFormat.is24HourFormat(getContext()) ^ true);
        AmPm amPm = this.Xx;
        if (this.wN.get(17) != 0) {
            z = false;
        }
        amPm.B(z);
    }

    void z(boolean z) {
        this.Xy = z;
    }
}
