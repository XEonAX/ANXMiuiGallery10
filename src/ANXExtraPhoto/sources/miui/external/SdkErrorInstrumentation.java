package miui.external;

import android.app.Activity;
import android.app.Application;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.IBinder;
import java.lang.reflect.Field;
import miui.external.SdkConstants.SdkError;

final class SdkErrorInstrumentation extends Instrumentation implements SdkConstants {
    private SdkError mError;

    private SdkErrorInstrumentation(SdkError error) {
        this.mError = error;
    }

    static void handleSdkError(SdkError error) {
        try {
            Class<?> activityThreadClass = Class.forName("android.app.ActivityThread");
            Object at = activityThreadClass.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
            Field instField = getDeclaredField(activityThreadClass, at, (Instrumentation) activityThreadClass.getMethod("getInstrumentation", new Class[0]).invoke(at, new Object[0]), null, null);
            Instrumentation oldInst = (Instrumentation) instField.get(at);
            Instrumentation newInst = new SdkErrorInstrumentation(error);
            for (Class<?> clazz = Instrumentation.class; clazz != null; clazz = clazz.getSuperclass()) {
                for (Field field : clazz.getDeclaredFields()) {
                    field.setAccessible(true);
                    field.set(newInst, field.get(oldInst));
                }
            }
            instField.set(at, newInst);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static Field getDeclaredField(Class<?> clazz, Object holder, Object value, String name, Class<?> type) throws NoSuchFieldException {
        int length;
        int i;
        Field field;
        Field[] fields = clazz.getDeclaredFields();
        int i2 = 0;
        if (!(holder == null || value == null)) {
            length = fields.length;
            i = 0;
            while (i < length) {
                field = fields[i];
                field.setAccessible(true);
                try {
                    if (field.get(holder) == value) {
                        return field;
                    }
                    i++;
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                } catch (IllegalAccessException e2) {
                    e2.printStackTrace();
                }
            }
        }
        if (name != null) {
            for (Field field2 : fields) {
                if (field2.getName().equals(name)) {
                    field2.setAccessible(true);
                    return field2;
                }
            }
        }
        Field candidate = null;
        if (type == null) {
            StringBuilder stringBuilder;
            i = fields.length;
            while (i2 < i) {
                field2 = fields[i2];
                if (field2.getType() == type || field2.getType().isInstance(type)) {
                    if (candidate == null) {
                        candidate = field2;
                    } else {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("More than one matched field found: ");
                        stringBuilder.append(candidate.getName());
                        stringBuilder.append(" and ");
                        stringBuilder.append(field2.getName());
                        throw new NoSuchFieldException(stringBuilder.toString());
                    }
                }
                i2++;
            }
            if (candidate != null) {
                candidate.setAccessible(true);
            } else {
                stringBuilder = new StringBuilder();
                stringBuilder.append("No such field found of value ");
                stringBuilder.append(value);
                throw new NoSuchFieldException(stringBuilder.toString());
            }
        }
        return candidate;
    }

    public Activity newActivity(Class<?> clazz, Context context, IBinder token, Application application, Intent intent, ActivityInfo info, CharSequence title, Activity parent, String id, Object lastNonConfigurationInstance) throws InstantiationException, IllegalAccessException {
        Instrumentation instrumentation;
        Class<?> clazz2;
        Intent intent2;
        if (clazz.getSimpleName().startsWith("SdkError")) {
            instrumentation = this;
            clazz2 = clazz;
            intent2 = intent;
        } else {
            clazz2 = SdkErrorActivity.class;
            if (intent == null) {
                intent2 = new Intent();
            } else {
                intent2 = intent;
            }
            instrumentation = this;
            intent2.putExtra(SdkError.INTENT_EXTRA_KEY, instrumentation.mError);
        }
        return super.newActivity(clazz2, context, token, application, intent2, info, title, parent, id, lastNonConfigurationInstance);
    }

    public Activity newActivity(ClassLoader cl, String className, Intent intent) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        if (!className.startsWith("SdkError")) {
            className = SdkErrorActivity.class.getName();
            if (intent == null) {
                intent = new Intent();
            }
            intent.putExtra(SdkError.INTENT_EXTRA_KEY, this.mError);
        }
        return super.newActivity(cl, className, intent);
    }
}
