package miui.core;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.Log;
import com.miui.internal.app.MiuiApplication;
import com.miui.internal.component.ComponentManager;
import com.miui.internal.component.module.ModuleLoader;
import com.miui.internal.util.ClassProxy;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.util.PackageConstants;
import com.miui.internal.util.PackageHelper;
import com.miui.internal.variable.Android_App_Activity_class;
import com.miui.internal.variable.Android_App_AlertDialog_Builder_class;
import com.miui.internal.variable.Android_App_AlertDialog_class;
import com.miui.internal.variable.Android_Content_Res_ResourcesImpl_class;
import com.miui.internal.variable.Android_Content_Res_Resources_class.Factory;
import com.miui.internal.variable.Android_Preference_EditTextPreference_class;
import com.miui.internal.variable.Android_Preference_Preference_class;
import com.miui.internal.variable.Android_Text_Util_Linkify_class;
import com.miui.internal.variable.Android_View_ViewGroup_class;
import com.miui.internal.variable.Android_View_View_class;
import com.miui.internal.variable.Android_Widget_AbsSeekBar_class;
import com.miui.internal.variable.Android_Widget_AbsSpinner_class;
import com.miui.internal.variable.Android_Widget_GridView_class;
import com.miui.internal.variable.Android_Widget_ListPopupWindow_class;
import com.miui.internal.variable.Android_Widget_ListView_class;
import com.miui.internal.variable.Android_Widget_PopupWindow_class;
import com.miui.internal.variable.Android_Widget_RemoteViews_class;
import com.miui.internal.variable.Android_Widget_Spinner_class;
import com.miui.internal.variable.Internal_Policy_Impl_PhoneWindow_class;
import java.util.Map;

public abstract class SdkManager {
    public static final int RETURN_CODE_LOW_SDK_VERSION = 1;
    public static final int RETURN_CODE_SUCCESS = 0;
    private static final String TAG = "miuisdk";
    private static final String xB = "com.miui.internal.server.CoreService";

    private SdkManager() {
    }

    private static int cc() {
        String debugEnable = DeviceHelper.getDebugEnable();
        if (debugEnable.length() == 0) {
            return 0;
        }
        for (String split : debugEnable.split("\\,")) {
            String split2;
            String[] split3 = split2.split("-");
            if (split3.length == 2) {
                String trim = split3[0].trim();
                if ((trim.equals("all") ? 1 : 0) != 0 || ClassProxy.getProcName().trim().equals(trim)) {
                    split2 = split3[1];
                    if (split2.equals("all")) {
                        ClassProxy.setDebugModules(new String[]{"all"});
                    } else {
                        ClassProxy.setDebugModules(split2.split("\\|"));
                    }
                }
            }
        }
        return 0;
    }

    /* JADX WARNING: Missing block: B:22:0x005f, code:
            return 0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int initialize(Application application, Map<String, Object> map) {
        synchronized (SdkManager.class) {
            cc();
            PackageConstants.sInitializingApplication = application;
            if (PackageConstants.sSdkStatus >= 2) {
                Log.d("miuisdk", "sdk already initialized");
                return 0;
            }
            boolean z;
            if (!PackageHelper.isMiuiSystem()) {
                ClassProxy.setupResourceHook();
                ModuleLoader.loadResources(new String[]{PackageConstants.RESOURCE_PATH});
            }
            try {
                z = ClassProxy.setupClassHook(VERSION.SDK_INT, "com/miui/internal/variable/v%d/%s\n.Android_Content_Res_Resources_class\nv16\nloadDrawable\n(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;\nv21\nloadDrawable\n(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;\nv24\n.Android_Content_Res_ResourcesImpl_class\nv24\nloadDrawable\n(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;\nv26\nloadDrawable\n(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;\n.Android_App_AlertDialog_class\nv16\n<init>\n(Landroid/content/Context;IZ)V\n<init>\n(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V\n.Android_App_AlertDialog_Builder_class|Landroid/app/AlertDialog$Builder;\nv16\n<init>\n(Landroid/content/Context;I)V\n.Android_App_Activity_class\nv16\nsetProgressBarVisibility\n(Z)V\nsetProgressBarIndeterminateVisibility\n(Z)V\nsetProgressBarIndeterminate\n(Z)V\nsetProgress\n(I)V\n.Android_View_View_class\nv16\nrefreshDrawableState\n()V\nonCreateDrawableState\n(I)[I\ncreateContextMenu\n(Landroid/view/ContextMenu;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\nsetDisplayListProperties\n(Landroid/view/DisplayList;)V\nv21\nrefreshDrawableState\n()V\nonCreateDrawableState\n(I)[I\ncreateContextMenu\n(Landroid/view/ContextMenu;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\nsetDisplayListProperties\n(Landroid/view/RenderNode;)V\n.Android_View_ViewGroup_class\nv16\naddInArray\n(Landroid/view/View;I)V\nremoveFromArray\n(I)V\nremoveFromArray\n(II)V\nonChildVisibilityChanged\n(Landroid/view/View;II)V\nresolveLayoutDirection\n()Z\ninitFromAttributes\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\nv19\naddInArray\n(Landroid/view/View;I)V\nremoveFromArray\n(I)V\nremoveFromArray\n(II)V\nonChildVisibilityChanged\n(Landroid/view/View;II)V\nresolveLayoutDirection\n()Z\ninitFromAttributes\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\nv21\naddInArray\n(Landroid/view/View;I)V\nremoveFromArray\n(I)V\nremoveFromArray\n(II)V\nonChildVisibilityChanged\n(Landroid/view/View;II)V\nresolveLayoutDirection\n()Z\ninitFromAttributes\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\n.Android_Preference_Preference_class\nv16\nonBindView\n(Landroid/view/View;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n.Android_Preference_EditTextPreference_class\nv0\nonAddEditTextToDialogView\n(Landroid/view/View;Landroid/widget/EditText;)V\n.Android_Widget_RemoteViews_class\nv16\nprepareContext\n(Landroid/content/Context;)Landroid/content/Context;\nv21\ngetContextForResources\n(Landroid/content/Context;)Landroid/content/Context;\n.Android_Widget_ListView_class\nv16\nlayoutChildren\n()V\nfillGap\n(Z)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\nv21\nlayoutChildren\n()V\nfillGap\n(Z)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\n.Android_Widget_GridView_class\nv16\nlayoutChildren\n()V\nfillGap\n(Z)V\n.Android_Widget_ListPopupWindow_class\nv16\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\nshow\n()V\n.Android_Widget_AbsSpinner_class\nv16\nsetAdapter\n(Landroid/widget/SpinnerAdapter;)V\n.Android_Widget_Spinner_class\nv16\nsetPrompt\n(Ljava/lang/CharSequence;)V\n.Android_Widget_PopupWindow_class\nv21\ninvokePopup\n(Landroid/view/WindowManager$LayoutParams;)V\nv23\ninvokePopup\n(Landroid/view/WindowManager$LayoutParams;)V\n.Android_Widget_AbsSeekBar_class\nv16\nonTouchEvent\n(Landroid/view/MotionEvent;)Z\n.Android_Text_Util_Linkify_class\nv16\ngatherLinks\n(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V\naddLinks\n(Landroid/text/Spannable;I)Z\nv19\ngatherLinks\n(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V\naddLinks\n(Landroid/text/Spannable;I)Z\nv27\ngatherLinks\n(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V\naddLinks\n(Landroid/text/Spannable;I)Z\n.Internal_Policy_Impl_PhoneWindow_class|Lcom/android/internal/policy/PhoneWindow;\nv16\ninstallDecor\n()V\n.Android_App_ResourcesManager_class\nv24\ncreateResourcesImpl\n(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;\n");
            } catch (Throwable th) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("setup class hook enconter errors: ");
                stringBuilder.append(th.getMessage());
                Log.w("miuisdk", stringBuilder.toString());
                z = false;
            }
            if (!z) {
                buildProxy();
            }
            ClassProxy.setupInterpreterHook();
            if (PackageConstants.sSdkStatus < 2) {
                PackageConstants.sSdkStatus = 2;
            }
        }
    }

    private static void buildProxy() {
        Factory.getInstance().get().buildProxy();
        if (VERSION.SDK_INT > 23) {
            Android_Content_Res_ResourcesImpl_class.Factory.getInstance().get().buildProxy();
        }
        Android_App_AlertDialog_class.Factory.getInstance().get().buildProxy();
        Android_App_AlertDialog_Builder_class.Factory.getInstance().get().buildProxy();
        Android_App_Activity_class.Factory.getInstance().get().buildProxy();
        Android_View_View_class.Factory.getInstance().get().buildProxy();
        Android_View_ViewGroup_class.Factory.getInstance().get().buildProxy();
        Android_Preference_Preference_class.Factory.getInstance().get().buildProxy();
        Android_Preference_EditTextPreference_class.Factory.getInstance().get().buildProxy();
        Android_Widget_RemoteViews_class.Factory.getInstance().get().buildProxy();
        Android_Widget_ListView_class.Factory.getInstance().get().buildProxy();
        Android_Widget_GridView_class.Factory.getInstance().get().buildProxy();
        Android_Widget_ListPopupWindow_class.Factory.getInstance().get().buildProxy();
        Android_Widget_AbsSpinner_class.Factory.getInstance().get().buildProxy();
        Android_Widget_Spinner_class.Factory.getInstance().get().buildProxy();
        Android_Widget_PopupWindow_class.Factory.getInstance().get().buildProxy();
        Android_Widget_AbsSeekBar_class.Factory.getInstance().get().buildProxy();
        Android_Text_Util_Linkify_class.Factory.getInstance().get().buildProxy();
        Internal_Policy_Impl_PhoneWindow_class.Factory.getInstance().get().buildProxy();
    }

    public static int start(Map<String, Object> map) {
        synchronized (SdkManager.class) {
            if (PackageConstants.sSdkStatus >= 3) {
                Log.d("miuisdk", "sdk already started");
            }
            Application application = PackageConstants.sInitializingApplication;
            PackageConstants.sApplication = application;
            Manifest parse = ManifestParser.create(application).parse(map);
            if ((application instanceof MiuiApplication) || a((Context) application, parse)) {
                if (!"android".equals(application.getPackageName())) {
                    a(application, parse);
                }
                if (PackageConstants.sSdkStatus < 3) {
                    PackageConstants.sSdkStatus = 3;
                }
                return 0;
            }
            return 1;
        }
    }

    private static boolean a(Context context, Manifest manifest) {
        return new CompatibleManager(context, manifest).isCompatible();
    }

    private static void a(Application application, Manifest manifest) {
        new ComponentManager(application, manifest).load();
    }

    private static void m(final Context context) {
        new Handler().post(new Runnable() {
            public void run() {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setClassName(PackageConstants.PACKAGE_NAME, SdkManager.xB);
                context.startService(intent);
            }
        });
    }

    public static boolean supportUpdate(Map<String, Object> map) {
        return false;
    }

    public static boolean update(Map<String, Object> map) {
        return false;
    }
}
