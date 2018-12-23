package com.miui.gallery.hybrid;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.hybrid.GalleryHybridFragment.HybridViewEventListener;
import com.miui.gallery.preference.GalleryPreferences.CTA;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StringUtils;

public class GalleryHybridActivity extends BaseActivity implements HybridViewEventListener {
    private GalleryHybridFragment mHybridFragment;
    private TextView mTitleView;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.hybrid_activity);
        configureActionBar();
        this.mHybridFragment = (GalleryHybridFragment) getFragmentManager().findFragmentById(R.id.hybrid_fragment);
        this.mHybridFragment.setHybridViewEventListener(this);
        loadURL();
    }

    protected void onCtaChecked(boolean agreed) {
        if (agreed && resumed()) {
            loadURL();
        }
    }

    private void configureActionBar() {
        this.mActionBar.setDisplayShowCustomEnabled(true);
        this.mActionBar.setDisplayShowHomeEnabled(false);
        this.mActionBar.setDisplayShowTitleEnabled(false);
        this.mActionBar.setHomeButtonEnabled(true);
        this.mActionBar.setCustomView(R.layout.hybrid_action_bar_custom_view);
        View customView = this.mActionBar.getCustomView();
        this.mTitleView = (TextView) customView.findViewById(R.id.title);
        customView.findViewById(R.id.close).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                GalleryHybridActivity.this.finish();
            }
        });
    }

    private void loadURL() {
        if (this.mHybridFragment == null) {
            Log.w("GalleryHybridActivity", "Hybrid fragment not attached, couldn't load url now!");
        } else if (CTA.canConnectNetwork()) {
            String action = getIntent().getAction();
            if ("android.intent.action.VIEW".equals(action)) {
                String url = getIntent().getData().getQueryParameter("url");
                if (TextUtils.isEmpty(url)) {
                    url = getIntent().getDataString();
                }
                this.mHybridFragment.loadUrl(url);
            } else if ("com.miui.gallery.action.VIEW_WEB".equals(action)) {
                this.mHybridFragment.loadUrl(getIntent().getStringExtra("url"));
            } else if ("com.miui.gallery.action.VIEW_WEB_LOGIN".equals(action)) {
                this.mHybridFragment.loadWebLoginUrl(getIntent().getStringExtra("url"));
            } else {
                Log.e("GalleryHybridActivity", "Not supported action " + action);
            }
        } else {
            Log.w("GalleryHybridActivity", "CTA not allowed, couldn't connect to network!");
        }
    }

    public void onReceivedTitle(String title) {
        if (!TextUtils.isEmpty(title)) {
            this.mTitleView.setText(title);
        }
    }

    public void onBackPressed() {
        if (!this.mHybridFragment.onBackPressed()) {
            super.onBackPressed();
        }
    }

    public String[] getRuntimePermissions() {
        return StringUtils.mergeStringArray(super.getRuntimePermissions(), new String[]{"android.permission.READ_PHONE_STATE"});
    }

    protected boolean allowUseOnOffline() {
        return false;
    }
}
