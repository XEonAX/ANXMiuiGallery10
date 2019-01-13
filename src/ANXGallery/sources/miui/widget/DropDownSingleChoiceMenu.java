package miui.widget;

import android.content.Context;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import com.miui.internal.R;
import java.util.Arrays;
import java.util.List;
import miui.widget.DropDownPopupWindow.Controller;
import miui.widget.DropDownPopupWindow.DefaultContainerController;
import miui.widget.DropDownPopupWindow.ListController;

public class DropDownSingleChoiceMenu implements Controller {
    private List<String> Ro;
    private int Rp;
    private OnMenuListener Rq;
    private DropDownPopupWindow Rr;
    private Context mContext;
    private View oF;

    public interface OnMenuListener {
        void onDismiss();

        void onItemSelected(DropDownSingleChoiceMenu dropDownSingleChoiceMenu, int i);

        void onShow();
    }

    public DropDownSingleChoiceMenu(Context context) {
        this.mContext = context;
    }

    public void setItems(List<String> list) {
        this.Ro = list;
    }

    public void setItems(String[] strArr) {
        this.Ro = Arrays.asList(strArr);
    }

    public void setSelectedItem(int i) {
        this.Rp = i;
    }

    public int getSelectedItem() {
        return this.Rp;
    }

    public void setAnchorView(View view) {
        this.oF = view;
        m(view);
    }

    public List<String> getItems() {
        return this.Ro;
    }

    public void setOnMenuListener(OnMenuListener onMenuListener) {
        this.Rq = onMenuListener;
    }

    /* JADX WARNING: Missing block: B:8:0x005e, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void show() {
        if (!(this.Ro == null || this.oF == null || this.Rr != null)) {
            this.Rr = new DropDownPopupWindow(this.mContext, null, 0);
            this.Rr.setContainerController(new DefaultContainerController() {
                public void onShow() {
                    if (DropDownSingleChoiceMenu.this.Rq != null) {
                        DropDownSingleChoiceMenu.this.Rq.onShow();
                    }
                }

                public void onDismiss() {
                    DropDownSingleChoiceMenu.this.eF();
                }
            });
            this.Rr.setDropDownController(this);
            ListView listView = new ListController(this.Rr).getListView();
            listView.setAdapter(new ArrayAdapter(this.mContext, R.layout.select_dropdown_popup_singlechoice, this.Ro));
            listView.setOnItemClickListener(new OnItemClickListener() {
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    DropDownSingleChoiceMenu.this.Rp = i;
                    if (DropDownSingleChoiceMenu.this.Rq != null) {
                        DropDownSingleChoiceMenu.this.Rq.onItemSelected(DropDownSingleChoiceMenu.this, i);
                    }
                    DropDownSingleChoiceMenu.this.dismiss();
                }
            });
            listView.setChoiceMode(1);
            listView.setItemChecked(this.Rp, true);
            this.Rr.setAnchor(this.oF);
            this.Rr.show();
        }
    }

    public void dismiss() {
        if (this.Rr != null) {
            this.Rr.dismiss();
        }
    }

    private void eF() {
        this.Rr = null;
    }

    public void onShow() {
    }

    public void onDismiss() {
        if (this.Rq != null) {
            this.Rq.onDismiss();
        }
    }

    public void onAniamtionUpdate(View view, float f) {
    }

    private void m(View view) {
        view.setAccessibilityDelegate(new AccessibilityDelegate() {
            public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                accessibilityEvent.setClassName(Spinner.class.getName());
            }

            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setClassName(Spinner.class.getName());
            }
        });
    }
}
