package com.xiaomi.push.service.timers;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.os.Build.VERSION;
import com.xiaomi.channel.commonutils.android.SystemUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.XMJobService;

public final class Alarm {
    private static final String XMSERVICE = XMJobService.class.getCanonicalName();
    private static IAlarm sAlarmInstance;

    interface IAlarm {
        boolean isAlive();

        void registerPing(boolean z);

        void stop();
    }

    public static void initialize(Context context) {
        context = context.getApplicationContext();
        if ("com.xiaomi.xmsf".equals(context.getPackageName())) {
            sAlarmInstance = new AlarmManagerTimer(context);
            return;
        }
        boolean hasXMService = false;
        try {
            PackageInfo pkgInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4);
            if (pkgInfo.services != null) {
                for (ServiceInfo service : pkgInfo.services) {
                    if ("android.permission.BIND_JOB_SERVICE".equals(service.permission)) {
                        if (XMSERVICE.equals(service.name)) {
                            hasXMService = true;
                        } else {
                            try {
                                if (XMSERVICE.equals(Class.forName(service.name).getSuperclass().getCanonicalName())) {
                                    hasXMService = true;
                                }
                            } catch (Exception e) {
                            }
                        }
                        if (hasXMService) {
                            break;
                        }
                    }
                    if (XMSERVICE.equals(service.name) && "android.permission.BIND_JOB_SERVICE".equals(service.permission)) {
                        hasXMService = true;
                        break;
                    }
                }
            }
        } catch (Exception e2) {
            MyLog.w("check service err : " + e2.getMessage());
        }
        if (!hasXMService && SystemUtils.isDebuggable(context)) {
            throw new RuntimeException("Should export service: " + XMSERVICE + " with permission " + "android.permission.BIND_JOB_SERVICE" + " in AndroidManifest.xml file");
        } else if (VERSION.SDK_INT < 21 || !false) {
            sAlarmInstance = new AlarmManagerTimer(context);
        } else {
            try {
                if (Class.forName("android.app.job.JobService").getDeclaredField("mBinder") != null) {
                    sAlarmInstance = new AlarmV21(context);
                }
            } catch (Exception e3) {
                sAlarmInstance = new AlarmManagerTimer(context);
            }
        }
    }

    public static synchronized void registerPing(boolean firstPing) {
        synchronized (Alarm.class) {
            if (sAlarmInstance == null) {
                MyLog.w("timer is not initialized");
            } else {
                sAlarmInstance.registerPing(firstPing);
            }
        }
    }

    public static synchronized void stop() {
        synchronized (Alarm.class) {
            if (sAlarmInstance != null) {
                sAlarmInstance.stop();
            }
        }
    }

    public static synchronized boolean isAlive() {
        boolean z;
        synchronized (Alarm.class) {
            if (sAlarmInstance == null) {
                z = false;
            } else {
                z = sAlarmInstance.isAlive();
            }
        }
        return z;
    }
}
