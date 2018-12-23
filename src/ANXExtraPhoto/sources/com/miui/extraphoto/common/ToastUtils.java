package com.miui.extraphoto.common;

import android.content.Context;
import android.widget.Toast;
import com.miui.extraphoto.common.threadpool.ThreadManager;

public class ToastUtils {
    private static Object sSyncObj = new Object();
    private static Toast sToast = null;

    public static void makeText(Context context, CharSequence msg) {
        makeText(context, msg, 0);
    }

    public static void makeTextLong(Context context, CharSequence msg) {
        makeText(context, msg, 1);
    }

    public static void makeText(Context context, int msg) {
        makeText(context, msg, 0);
    }

    public static void makeTextLong(Context context, int msg) {
        makeText(context, msg, 1);
    }

    public static void makeText(Context context, int msg, int len) {
        makeText(context, context.getString(msg), len);
    }

    public static void makeText(final Context context, final CharSequence msg, final int len) {
        ThreadManager.getMainHandler().post(new Runnable() {
            public void run() {
                synchronized (ToastUtils.sSyncObj) {
                    if (ToastUtils.sToast != null) {
                        ToastUtils.sToast.setText(msg);
                        ToastUtils.sToast.setDuration(len);
                    } else {
                        ToastUtils.sToast = Toast.makeText(context.getApplicationContext(), msg, len);
                    }
                    ToastUtils.sToast.show();
                }
            }
        });
    }

    public static void cancelCurrentToast() {
        if (sToast != null) {
            sToast.cancel();
        }
    }
}
