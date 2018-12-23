package com.miui.gallery.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Process;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.os.Device;
import com.miui.telephony.TelephonyHelper;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import miui.net.ConnectivityHelper;

public class MiscUtil {
    private static long[] sCrcTable = new long[256];
    private static String sHashedDeviceId;

    static {
        for (int i = 0; i < 256; i++) {
            long part = (long) i;
            for (int j = 0; j < 8; j++) {
                part = (part >> 1) ^ ((((int) part) & 1) != 0 ? -7661587058870466123L : 0);
            }
            sCrcTable[i] = part;
        }
    }

    public static void closeSilently(Closeable c) {
        if (c != null) {
            try {
                c.close();
            } catch (IOException e) {
                Log.w("MiscUtil", "close fail", e);
            }
        }
    }

    public static boolean isValid(Collection collection) {
        return collection != null && collection.size() > 0;
    }

    public static final long crc64Long(byte[] buffer) {
        long crc = -1;
        for (byte b : buffer) {
            crc = sCrcTable[(((int) crc) ^ b) & 255] ^ (crc >> 8);
        }
        return crc;
    }

    public static boolean floatEquals(float f1, float f2) {
        return floatNear(f1, f2, 1.0E-7f);
    }

    public static boolean doubleEquals(double f1, double f2) {
        return doubleNear(f1, f2, 1.0E-7d);
    }

    public static boolean floatNear(float f1, float f2, float eps) {
        return Math.abs(f1 - f2) < Math.abs(eps);
    }

    public static boolean doubleNear(double f1, double f2, double eps) {
        return Math.abs(f1 - f2) < Math.abs(eps);
    }

    public static boolean equals(Object o1, Object o2) {
        return o1 == o2 || (o1 != null && o1.equals(o2));
    }

    public static float clamp(float x, float min, float max) {
        if (x > max) {
            return max;
        }
        return x < min ? min : x;
    }

    public static int clamp(int x, int min, int max) {
        if (x > max) {
            return max;
        }
        return x < min ? min : x;
    }

    public static boolean isKeyGuardLocked(Context context) {
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        return keyguardManager != null && keyguardManager.isKeyguardLocked();
    }

    public static String getHashedDeviceId(Activity activity) {
        if (TextUtils.isEmpty(sHashedDeviceId)) {
            sHashedDeviceId = selectHashedId(activity);
        }
        return sHashedDeviceId;
    }

    private static String selectHashedId(Context context) {
        if (Device.IS_TABLET) {
            return ConnectivityHelper.getInstance().getMacAddress();
        }
        return hashDeviceInfo(TelephonyHelper.getDeviceId());
    }

    private static String hashDeviceInfo(String plain) {
        if (plain == null) {
            return null;
        }
        try {
            return Base64.encodeToString(MessageDigest.getInstance("SHA1").digest(plain.getBytes()), 8).substring(0, 16);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("failed to init SHA1 digest");
        }
    }

    private static Method getDeclaredMethod(Object target, String methodName, Class<?>[] parameterTypes) {
        if (target instanceof Class) {
            try {
                return ((Class) target).getMethod(methodName, parameterTypes);
            } catch (Exception e) {
            }
        } else {
            Class<?> clazz = target.getClass();
            while (clazz != Object.class) {
                try {
                    return clazz.getDeclaredMethod(methodName, parameterTypes);
                } catch (Exception e2) {
                    clazz = clazz.getSuperclass();
                }
            }
            return null;
        }
    }

    public static Object invokeSafely(Object target, String methodName, Class<?>[] parameterTypes, Object... parameters) {
        try {
            Method method = getDeclaredMethod(target, methodName, parameterTypes);
            if (method != null) {
                if (!method.isAccessible()) {
                    method.setAccessible(true);
                }
                return method.invoke(target, parameters);
            }
        } catch (Throwable e) {
            Log.e("MiscUtil", e);
        } catch (Throwable e2) {
            Log.e("MiscUtil", e2);
        } catch (Throwable e22) {
            Log.e("MiscUtil", e22);
        } catch (Throwable e222) {
            Log.e("MiscUtil", e222);
        } catch (Throwable e2222) {
            Log.e("MiscUtil", e2222);
        }
        return null;
    }

    public static long[] ListToArray(List<Long> list) {
        if (!isValid(list)) {
            return null;
        }
        int size = list.size();
        long[] array = new long[size];
        for (int i = 0; i < size; i++) {
            Long obj = (Long) list.get(i);
            array[i] = obj == null ? 0 : obj.longValue();
        }
        return array;
    }

    public static List<Long> arrayToList(long[] array) {
        List<Long> l = new ArrayList(array.length);
        for (long valueOf : array) {
            l.add(Long.valueOf(valueOf));
        }
        return l;
    }

    public static long[] listToArray(List<Long> list) {
        if (list == null) {
            return null;
        }
        long[] array = new long[list.size()];
        for (int i = 0; i < list.size(); i++) {
            array[i] = ((Long) list.get(i)).longValue();
        }
        return array;
    }

    public static String[] copyStringArray(String[] origin) {
        if (origin == null || origin.length <= 0) {
            return null;
        }
        String[] ret = new String[origin.length];
        System.arraycopy(origin, 0, ret, 0, origin.length);
        return ret;
    }

    public static int getAppVersionCode() {
        return getAppVersionCode("com.miui.gallery");
    }

    public static int getAppVersionCode(String packageName) {
        int versioncode = -1;
        if (TextUtils.isEmpty(packageName)) {
            return versioncode;
        }
        try {
            return GalleryApp.sGetAndroidContext().getPackageManager().getPackageInfo(packageName, 16384).versionCode;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return versioncode;
        }
    }

    public static boolean isIntentSupported(Intent intent) {
        if (intent == null || GalleryApp.sGetAndroidContext().getPackageManager().queryIntentActivities(intent, 0).isEmpty()) {
            return false;
        }
        return true;
    }

    public static boolean isPackageInstalled(String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setPackage(packageName);
        return isIntentSupported(intent);
    }

    public static boolean isAppProcessInForeground(Context context) {
        List<RunningAppProcessInfo> runningAppProcessInfos = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (!isValid(runningAppProcessInfos)) {
            return false;
        }
        int pid = Process.myPid();
        for (RunningAppProcessInfo appProcess : runningAppProcessInfos) {
            if (appProcess.pid == pid) {
                if (appProcess.importance == 100) {
                    return true;
                }
                return false;
            }
        }
        return false;
    }

    public static String getSimOperator() {
        return ((TelephonyManager) GalleryApp.sGetAndroidContext().getSystemService("phone")).getSimOperator();
    }

    public static String getDeviceId() {
        return TelephonyHelper.getDeviceId();
    }

    public static int getStatusBarHeight(Context context) {
        return getDimensionPixelOffset(context.getResources(), "status_bar_height", "dimen", "android");
    }

    public static int getDefaultSplitActionBarHeight(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.action_button_default_height);
    }

    private static int getDimensionPixelOffset(Resources resources, String name, String defType, String defPackage) {
        int resourceId = resources.getIdentifier(name, defType, defPackage);
        if (resourceId > 0) {
            return resources.getDimensionPixelSize(resourceId);
        }
        return 0;
    }

    public static String getCurrentDate() {
        return new SimpleDateFormat("yyyy:MM:dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
    }

    public static void setRecyclerViewScrollToBottomListener(RecyclerView recyclerView, final Runnable scrollToBottomListener) {
        if (recyclerView != null && scrollToBottomListener != null) {
            recyclerView.addOnScrollListener(new OnScrollListener() {
                public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                    View lastChild = recyclerView.getChildAt(recyclerView.getChildCount() - 1);
                    if (lastChild != null) {
                        Adapter adapter = recyclerView.getAdapter();
                        int adapterCount = adapter == null ? 0 : adapter.getItemCount();
                        LayoutParams params = (LayoutParams) lastChild.getLayoutParams();
                        if (params != null && params.getViewAdapterPosition() == adapterCount - 1) {
                            scrollToBottomListener.run();
                        }
                    }
                }
            });
        }
    }

    public static int dip2px(Context context, float dpValue) {
        return (int) ((dpValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
