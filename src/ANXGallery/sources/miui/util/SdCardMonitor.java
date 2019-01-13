package miui.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.HashSet;
import java.util.Iterator;
import miui.os.Environment;

public class SdCardMonitor {
    private BroadcastReceiver JG;
    private HashSet<SdCardStatusListener> JH;
    private Boolean JI;

    private static class Holder {
        private static final SdCardMonitor JK = new SdCardMonitor();

        private Holder() {
        }
    }

    public interface SdCardStatusListener {
        void onStatusChanged(boolean z);
    }

    /* synthetic */ SdCardMonitor(AnonymousClass1 anonymousClass1) {
        this();
    }

    private SdCardMonitor() {
        this.JH = new HashSet();
        this.JG = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                boolean isExternalStorageMounted = Environment.isExternalStorageMounted();
                if (SdCardMonitor.this.JI == null || SdCardMonitor.this.JI.booleanValue() != isExternalStorageMounted) {
                    SdCardMonitor.this.JI = Boolean.valueOf(isExternalStorageMounted);
                    SdCardMonitor.this.u(isExternalStorageMounted);
                }
            }
        };
    }

    public static SdCardMonitor getInstance() {
        return Holder.JK;
    }

    public void addListener(SdCardStatusListener sdCardStatusListener) {
        if (this.JH.isEmpty()) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.MEDIA_SHARED");
            intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
            intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
            intentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
            intentFilter.addDataScheme("file");
            AppConstants.getCurrentApplication().registerReceiver(this.JG, intentFilter);
        }
        this.JH.add(sdCardStatusListener);
    }

    public void removeListener(SdCardStatusListener sdCardStatusListener) {
        this.JH.remove(sdCardStatusListener);
        if (this.JH.isEmpty()) {
            AppConstants.getCurrentApplication().unregisterReceiver(this.JG);
        }
    }

    private void u(boolean z) {
        Iterator it = this.JH.iterator();
        while (it.hasNext()) {
            ((SdCardStatusListener) it.next()).onStatusChanged(z);
        }
    }

    public static boolean isSdCardAvailable() {
        return Environment.isExternalStorageMounted();
    }
}
