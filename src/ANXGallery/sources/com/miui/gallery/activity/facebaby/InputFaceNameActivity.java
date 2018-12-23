package com.miui.gallery.activity.facebaby;

import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.ui.renameface.InputFaceNameFragment;
import com.miui.gallery.util.StringUtils;

public class InputFaceNameActivity extends BaseActivity {
    InputFaceNameFragment mFragment;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.input_face_name_activity);
        this.mFragment = (InputFaceNameFragment) getFragmentManager().findFragmentById(R.id.input_face_name_fragment);
    }

    public void onBackPressed() {
        this.mFragment.onBackPressed();
        super.onBackPressed();
    }

    public String[] getRuntimePermissions() {
        return StringUtils.mergeStringArray(super.getRuntimePermissions(), new String[]{"android.permission.READ_CONTACTS"});
    }

    public String[] getFatalPermissions() {
        return super.getRuntimePermissions();
    }

    public void onCheckPermissionSucceed() {
        if (this.mFragment != null) {
            this.mFragment.updateNameList();
        }
    }
}
