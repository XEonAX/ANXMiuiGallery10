package miui.view.inputmethod;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import miui.util.AppConstants;
import miui.util.SoftReferenceSingleton;

public class InputMethodHelper {
    private static final SoftReferenceSingleton<InputMethodHelper> s = new SoftReferenceSingleton<InputMethodHelper>() {
        /* renamed from: ea */
        protected InputMethodHelper createInstance() {
            return new InputMethodHelper();
        }
    };
    private InputMethodManager NW;

    /* synthetic */ InputMethodHelper(AnonymousClass1 anonymousClass1) {
        this();
    }

    private InputMethodHelper() {
        this.NW = (InputMethodManager) AppConstants.getCurrentApplication().getSystemService("input_method");
    }

    public static InputMethodHelper getInstance() {
        return (InputMethodHelper) s.get();
    }

    public InputMethodManager getManager() {
        return this.NW;
    }

    public void showKeyBoard(EditText editText) {
        editText.requestFocus();
        this.NW.viewClicked(editText);
        this.NW.showSoftInput(editText, 0);
    }

    public void hideKeyBoard(EditText editText) {
        this.NW.hideSoftInputFromInputMethod(editText.getWindowToken(), 0);
    }
}
