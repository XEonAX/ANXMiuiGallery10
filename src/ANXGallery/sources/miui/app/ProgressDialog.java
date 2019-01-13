package miui.app;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.miui.internal.R;
import java.text.NumberFormat;

public class ProgressDialog extends AlertDialog {
    public static final int STYLE_HORIZONTAL = 1;
    public static final int STYLE_SPINNER = 0;
    private TextView cq;
    private CharSequence mMessage;
    private ProgressBar wX;
    private TextView wY;
    private int wZ = 0;
    private String xa;
    private NumberFormat xb;
    private int xc;
    private int xd;
    private int xe;
    private int xf;
    private int xg;
    private Drawable xh;
    private Drawable xi;
    private boolean xj;
    private boolean xk;
    private Handler xl;

    public ProgressDialog(Context context) {
        super(context);
        ca();
    }

    public ProgressDialog(Context context, int i) {
        super(context, i);
        ca();
    }

    private void ca() {
        this.xa = "%1d/%2d";
        this.xb = NumberFormat.getPercentInstance();
        this.xb.setMaximumFractionDigits(0);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2) {
        return show(context, charSequence, charSequence2, false);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z) {
        return show(context, charSequence, charSequence2, z, false, null);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2) {
        return show(context, charSequence, charSequence2, z, z2, null);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2, OnCancelListener onCancelListener) {
        ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setTitle(charSequence);
        progressDialog.setMessage(charSequence2);
        progressDialog.setIndeterminate(z);
        progressDialog.setCancelable(z2);
        progressDialog.setOnCancelListener(onCancelListener);
        progressDialog.show();
        return progressDialog;
    }

    protected void onCreate(Bundle bundle) {
        View inflate;
        LayoutInflater from = LayoutInflater.from(getContext());
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.AlertDialog, 16842845, 0);
        if (this.wZ == 1) {
            this.xl = new Handler() {
                public void handleMessage(Message message) {
                    super.handleMessage(message);
                    ProgressDialog.this.cq.setText(ProgressDialog.this.mMessage);
                    if (ProgressDialog.this.xb != null && ProgressDialog.this.wY != null) {
                        double progress = ((double) ProgressDialog.this.wX.getProgress()) / ((double) ProgressDialog.this.wX.getMax());
                        CharSequence spannableStringBuilder = new SpannableStringBuilder();
                        Object format = ProgressDialog.this.xb.format(progress);
                        spannableStringBuilder.append(format);
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(ProgressDialog.this.getContext().getResources().getColor(R.color.progress_percent_color)), 0, format.length(), 34);
                        ProgressDialog.this.wY.setText(spannableStringBuilder);
                    }
                }
            };
            inflate = from.inflate(obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_horizontalProgressLayout, R.layout.alert_dialog_progress), null);
            this.wY = (TextView) inflate.findViewById(R.id.progress_percent);
        } else {
            inflate = from.inflate(obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_progressLayout, R.layout.progress_dialog), null);
        }
        this.wX = (ProgressBar) inflate.findViewById(16908301);
        this.cq = (TextView) inflate.findViewById(miui.R.id.message);
        setView(inflate);
        obtainStyledAttributes.recycle();
        if (this.xc > 0) {
            setMax(this.xc);
        }
        if (this.xd > 0) {
            setProgress(this.xd);
        }
        if (this.xe > 0) {
            setSecondaryProgress(this.xe);
        }
        if (this.xf > 0) {
            incrementProgressBy(this.xf);
        }
        if (this.xg > 0) {
            incrementSecondaryProgressBy(this.xg);
        }
        if (this.xh != null) {
            setProgressDrawable(this.xh);
        }
        if (this.xi != null) {
            setIndeterminateDrawable(this.xi);
        }
        if (this.mMessage != null) {
            setMessage(this.mMessage);
        }
        setIndeterminate(this.xj);
        onProgressChanged();
        super.onCreate(bundle);
    }

    public void onStart() {
        super.onStart();
        this.xk = true;
    }

    protected void onStop() {
        super.onStop();
        this.xk = false;
    }

    public void setProgress(int i) {
        if (this.xk) {
            this.wX.setProgress(i);
            onProgressChanged();
            return;
        }
        this.xd = i;
    }

    public void setSecondaryProgress(int i) {
        if (this.wX != null) {
            this.wX.setSecondaryProgress(i);
            onProgressChanged();
            return;
        }
        this.xe = i;
    }

    public int getProgress() {
        if (this.wX != null) {
            return this.wX.getProgress();
        }
        return this.xd;
    }

    public int getSecondaryProgress() {
        if (this.wX != null) {
            return this.wX.getSecondaryProgress();
        }
        return this.xe;
    }

    public int getMax() {
        if (this.wX != null) {
            return this.wX.getMax();
        }
        return this.xc;
    }

    public void setMax(int i) {
        if (this.wX != null) {
            this.wX.setMax(i);
            onProgressChanged();
            return;
        }
        this.xc = i;
    }

    public void incrementProgressBy(int i) {
        if (this.wX != null) {
            this.wX.incrementProgressBy(i);
            onProgressChanged();
            return;
        }
        this.xf += i;
    }

    public void incrementSecondaryProgressBy(int i) {
        if (this.wX != null) {
            this.wX.incrementSecondaryProgressBy(i);
            onProgressChanged();
            return;
        }
        this.xg += i;
    }

    public void setProgressDrawable(Drawable drawable) {
        if (this.wX != null) {
            this.wX.setProgressDrawable(drawable);
        } else {
            this.xh = drawable;
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        if (this.wX != null) {
            this.wX.setIndeterminateDrawable(drawable);
        } else {
            this.xi = drawable;
        }
    }

    public void setIndeterminate(boolean z) {
        if (this.wX != null) {
            this.wX.setIndeterminate(z);
        } else {
            this.xj = z;
        }
    }

    public boolean isIndeterminate() {
        if (this.wX != null) {
            return this.wX.isIndeterminate();
        }
        return this.xj;
    }

    public void setMessage(CharSequence charSequence) {
        if (this.wX != null) {
            if (this.wZ == 1) {
                this.mMessage = charSequence;
            }
            this.cq.setText(charSequence);
            return;
        }
        this.mMessage = charSequence;
    }

    public void setProgressStyle(int i) {
        this.wZ = i;
    }

    public void setProgressNumberFormat(String str) {
        this.xa = str;
        onProgressChanged();
    }

    public void setProgressPercentFormat(NumberFormat numberFormat) {
        this.xb = numberFormat;
        onProgressChanged();
    }

    private void onProgressChanged() {
        if (this.wZ == 1 && this.xl != null && !this.xl.hasMessages(0)) {
            this.xl.sendEmptyMessage(0);
        }
    }
}
