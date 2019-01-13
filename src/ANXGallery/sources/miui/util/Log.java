package miui.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.miui.internal.log.Level;
import com.miui.internal.log.Logger;
import com.miui.internal.log.LoggerFactory;
import com.miui.internal.log.message.Message;
import com.miui.internal.log.message.StringFormattedMessage;
import com.miui.internal.log.receiver.DumpReceiver;

public class Log {

    public static class DumpLogReceiver extends BroadcastReceiver {
        private DumpReceiver Jk = new DumpReceiver();

        public void onReceive(Context context, Intent intent) {
            this.Jk.onReceive(context, intent);
        }
    }

    public static class Facade {
        private static final String TAG = "LogcatFacade";
        private Logger Jl;

        private Facade(Logger logger) {
            this.Jl = logger;
        }

        public void verbose(String str, String str2) {
            log(Level.VERBOSE, str, str2, null);
        }

        public void verbose(String str, String str2, Throwable th) {
            log(Level.VERBOSE, str, str2, th);
        }

        public void verbose(String str, String str2, Object... objArr) {
            a(Level.VERBOSE, str, str2, objArr);
        }

        public void debug(String str, String str2) {
            log(Level.DEBUG, str, str2, null);
        }

        public void debug(String str, String str2, Throwable th) {
            log(Level.DEBUG, str, str2, th);
        }

        public void debug(String str, String str2, Object... objArr) {
            a(Level.DEBUG, str, str2, objArr);
        }

        public void info(String str, String str2) {
            log(Level.INFO, str, str2, null);
        }

        public void info(String str, String str2, Throwable th) {
            log(Level.INFO, str, str2, th);
        }

        public void info(String str, String str2, Object... objArr) {
            a(Level.INFO, str, str2, objArr);
        }

        public void warn(String str, String str2) {
            log(Level.WARNING, str, str2, null);
        }

        public void warn(String str, String str2, Throwable th) {
            log(Level.WARNING, str, str2, th);
        }

        public void warn(String str, String str2, Object... objArr) {
            a(Level.WARNING, str, str2, objArr);
        }

        public void error(String str, String str2) {
            log(Level.ERROR, str, str2, null);
        }

        public void error(String str, String str2, Throwable th) {
            log(Level.ERROR, str, str2, th);
        }

        public void error(String str, String str2, Object... objArr) {
            a(Level.ERROR, str, str2, objArr);
        }

        public void fatal(String str, String str2) {
            log(Level.FATAL, str, str2, null);
        }

        public void fatal(String str, String str2, Throwable th) {
            log(Level.FATAL, str, str2, th);
        }

        public void fatal(String str, String str2, Object... objArr) {
            a(Level.FATAL, str, str2, objArr);
        }

        private void log(Level level, String str, String str2, Throwable th) {
            doLog(level, str, str2, th, null);
        }

        private void a(Level level, String str, String str2, Object... objArr) {
            doLog(level, str, null, null, StringFormattedMessage.obtain().setFormat(str2).setParameters(objArr));
        }

        protected void doLog(Level level, String str, String str2, Throwable th, Message message) {
            if (this.Jl == null) {
                android.util.Log.e(TAG, "mLogger is null");
            } else if (message == null) {
                this.Jl.log(level, str, str2, th);
            } else {
                this.Jl.log(level, str, message);
                message.recycle();
            }
        }
    }

    private static class FileLoggerInstance {
        static final Facade Jm = new Facade(LoggerFactory.getFileLogger());

        private FileLoggerInstance() {
        }
    }

    private static class FullFacade extends Facade {
        private FullFacade() {
            super(null);
        }

        protected void doLog(Level level, String str, String str2, Throwable th, Message message) {
            LogcatLoggerInstance.Jm.doLog(level, str, str2, th, message);
            FileLoggerInstance.Jm.doLog(level, str, str2, th, message);
        }
    }

    private static class FullLoggerInstance {
        static final Facade Jm = new FullFacade();

        private FullLoggerInstance() {
        }
    }

    private static class LogcatLoggerInstance {
        static final Facade Jm = new Facade(LoggerFactory.getLogcatLogger());

        private LogcatLoggerInstance() {
        }
    }

    protected Log() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    public static Facade getLogcatLogger() {
        return LogcatLoggerInstance.Jm;
    }

    public static Facade getFileLogger() {
        return FileLoggerInstance.Jm;
    }

    public static Facade getFullLogger() {
        return FullLoggerInstance.Jm;
    }

    public static void v(String str, String str2) {
        android.util.Log.v(str, str2);
    }

    public static void v(String str, String str2, Throwable th) {
        android.util.Log.v(str, str2, th);
    }

    public static void verbose(String str, String str2) {
        LogcatLoggerInstance.Jm.verbose(str, str2);
    }

    public static void verbose(String str, String str2, Throwable th) {
        LogcatLoggerInstance.Jm.verbose(str, str2, th);
    }

    public static void verbose(String str, String str2, Object... objArr) {
        LogcatLoggerInstance.Jm.verbose(str, str2, objArr);
    }

    public static void d(String str, String str2) {
        android.util.Log.d(str, str2);
    }

    public static void d(String str, String str2, Throwable th) {
        android.util.Log.d(str, str2, th);
    }

    public static void debug(String str, String str2) {
        LogcatLoggerInstance.Jm.debug(str, str2);
    }

    public static void debug(String str, String str2, Throwable th) {
        LogcatLoggerInstance.Jm.debug(str, str2, th);
    }

    public static void debug(String str, String str2, Object... objArr) {
        LogcatLoggerInstance.Jm.debug(str, str2, objArr);
    }

    public static void i(String str, String str2) {
        android.util.Log.i(str, str2);
    }

    public static void i(String str, String str2, Throwable th) {
        android.util.Log.i(str, str2, th);
    }

    public static void info(String str, String str2) {
        LogcatLoggerInstance.Jm.info(str, str2);
    }

    public static void info(String str, String str2, Throwable th) {
        LogcatLoggerInstance.Jm.info(str, str2, th);
    }

    public static void info(String str, String str2, Object... objArr) {
        LogcatLoggerInstance.Jm.info(str, str2, objArr);
    }

    public static void w(String str, String str2) {
        android.util.Log.w(str, str2);
    }

    public static void w(String str, String str2, Throwable th) {
        android.util.Log.w(str, str2, th);
    }

    public static void warn(String str, String str2) {
        LogcatLoggerInstance.Jm.warn(str, str2);
    }

    public static void warn(String str, String str2, Throwable th) {
        LogcatLoggerInstance.Jm.warn(str, str2, th);
    }

    public static void warn(String str, String str2, Object... objArr) {
        LogcatLoggerInstance.Jm.warn(str, str2, objArr);
    }

    public static void e(String str, String str2) {
        android.util.Log.e(str, str2);
    }

    public static void e(String str, String str2, Throwable th) {
        android.util.Log.e(str, str2, th);
    }

    public static void error(String str, String str2) {
        LogcatLoggerInstance.Jm.error(str, str2);
    }

    public static void error(String str, String str2, Throwable th) {
        LogcatLoggerInstance.Jm.error(str, str2, th);
    }

    public static void error(String str, String str2, Object... objArr) {
        LogcatLoggerInstance.Jm.error(str, str2, objArr);
    }

    public static void wtf(String str, String str2) {
        android.util.Log.wtf(str, str2);
    }

    public static void wtf(String str, String str2, Throwable th) {
        android.util.Log.wtf(str, str2, th);
    }

    public static void fatal(String str, String str2) {
        LogcatLoggerInstance.Jm.fatal(str, str2);
    }

    public static void fatal(String str, String str2, Throwable th) {
        LogcatLoggerInstance.Jm.fatal(str, str2, th);
    }

    public static void fatal(String str, String str2, Object... objArr) {
        LogcatLoggerInstance.Jm.fatal(str, str2, objArr);
    }
}
