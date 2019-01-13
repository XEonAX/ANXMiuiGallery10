package com.miui.internal.app;

import android.animation.ObjectAnimator;
import android.app.ActionBar.Tab;
import android.app.ActionBar.TabListener;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.miui.internal.app.ActionBarImpl.TabImpl;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.widget.ActionBarContainer;
import com.miui.internal.widget.ActionBarOverlayLayout;
import java.util.ArrayList;
import java.util.Iterator;
import miui.R;
import miui.app.ActionBar.FragmentViewPagerChangeListener;
import miui.view.ViewPager;
import miui.view.ViewPager.OnPageChangeListener;

public class ActionBarViewPagerController {
    private ActionBarImpl bK;
    private ViewPager bL;
    private View bM;
    private DynamicFragmentPagerAdapter bN;
    private ArrayList<FragmentViewPagerChangeListener> bO;
    private TabListener bP = new TabListener() {
        public void onTabUnselected(Tab tab, FragmentTransaction fragmentTransaction) {
        }

        public void onTabSelected(Tab tab, FragmentTransaction fragmentTransaction) {
            int count = ActionBarViewPagerController.this.bN.getCount();
            for (int i = 0; i < count; i++) {
                if (ActionBarViewPagerController.this.bN.getTabAt(i) == tab) {
                    ActionBarViewPagerController.this.bL.setCurrentItem(i, true);
                    return;
                }
            }
        }

        public void onTabReselected(Tab tab, FragmentTransaction fragmentTransaction) {
        }
    };
    private ActionMenuChangeAnimatorObject bQ;
    private ObjectAnimator bR;

    class ActionMenuChangeAnimatorObject {
        private boolean bT;
        private int mPosition;

        ActionMenuChangeAnimatorObject() {
        }

        void a(int i, boolean z) {
            this.mPosition = i;
            this.bT = z;
        }

        public void setValue(float f) {
            if (ActionBarViewPagerController.this.bO != null) {
                Iterator it = ActionBarViewPagerController.this.bO.iterator();
                while (it.hasNext()) {
                    FragmentViewPagerChangeListener fragmentViewPagerChangeListener = (FragmentViewPagerChangeListener) it.next();
                    if (fragmentViewPagerChangeListener instanceof ActionBarContainer) {
                        fragmentViewPagerChangeListener.onPageScrolled(this.mPosition, 1.0f - f, this.bT, this.bT ^ 1);
                    }
                }
            }
        }
    }

    ActionBarViewPagerController(ActionBarImpl actionBarImpl, FragmentManager fragmentManager, boolean z) {
        this.bK = actionBarImpl;
        ActionBarOverlayLayout j = this.bK.j();
        Context context = j.getContext();
        View findViewById = j.findViewById(R.id.view_pager);
        if (findViewById instanceof ViewPager) {
            this.bL = (ViewPager) findViewById;
        } else {
            this.bL = new ViewPager(context);
            this.bL.setId(R.id.view_pager);
            ((ViewGroup) j.findViewById(16908290)).addView(this.bL);
        }
        this.bN = new DynamicFragmentPagerAdapter(context, fragmentManager, this.bL);
        this.bL.setInternalPageChangeListener(new OnPageChangeListener() {
            public void onPageScrolled(int i, float f, int i2) {
                boolean z;
                boolean hasActionMenu = ActionBarViewPagerController.this.bN.hasActionMenu(i);
                int i3 = i + 1;
                if (i3 >= ActionBarViewPagerController.this.bN.getCount() || !ActionBarViewPagerController.this.bN.hasActionMenu(i3)) {
                    z = false;
                } else {
                    z = true;
                }
                if (ActionBarViewPagerController.this.bO != null) {
                    Iterator it = ActionBarViewPagerController.this.bO.iterator();
                    while (it.hasNext()) {
                        ((FragmentViewPagerChangeListener) it.next()).onPageScrolled(i, f, hasActionMenu, z);
                    }
                }
            }

            public void onPageSelected(int i) {
                ActionBarViewPagerController.this.bK.setSelectedNavigationItem(i);
                ActionBarViewPagerController.this.bN.setPrimaryItem(ActionBarViewPagerController.this.bL, i, ActionBarViewPagerController.this.bN.b(i, true));
                if (ActionBarViewPagerController.this.bO != null) {
                    Iterator it = ActionBarViewPagerController.this.bO.iterator();
                    while (it.hasNext()) {
                        ((FragmentViewPagerChangeListener) it.next()).onPageSelected(i);
                    }
                }
            }

            public void onPageScrollStateChanged(int i) {
                if (ActionBarViewPagerController.this.bO != null) {
                    Iterator it = ActionBarViewPagerController.this.bO.iterator();
                    while (it.hasNext()) {
                        ((FragmentViewPagerChangeListener) it.next()).onPageScrollStateChanged(i);
                    }
                }
            }
        });
        if (z && DeviceHelper.FEATURE_WHOLE_ANIM) {
            addOnFragmentViewPagerChangeListener(new b(this.bL, this.bN));
        }
    }

    int addFragmentTab(String str, Tab tab, Class<? extends Fragment> cls, Bundle bundle, boolean z) {
        ((TabImpl) tab).setInternalTabListener(this.bP);
        this.bK.a(tab);
        return this.bN.a(str, cls, bundle, tab, z);
    }

    int addFragmentTab(String str, Tab tab, int i, Class<? extends Fragment> cls, Bundle bundle, boolean z) {
        ((TabImpl) tab).setInternalTabListener(this.bP);
        this.bK.a(tab, i);
        return this.bN.a(str, i, cls, bundle, tab, z);
    }

    void c(int i) {
        this.bN.c(i);
        this.bK.b(i);
    }

    void removeFragmentTab(String str) {
        int e = this.bN.e(str);
        if (e >= 0) {
            c(e);
        }
    }

    void removeFragmentTab(Tab tab) {
        this.bK.b(tab);
        this.bN.c(tab);
    }

    void removeAllFragmentTab() {
        this.bK.k();
        this.bN.y();
    }

    Fragment getFragmentAt(int i) {
        return this.bN.b(i, true);
    }

    int getFragmentTabCount() {
        return this.bN.getCount();
    }

    void a(Fragment fragment) {
        int b = this.bN.b(fragment);
        if (b >= 0) {
            this.bK.b(b);
        }
    }

    void setFragmentActionMenuAt(int i, boolean z) {
        this.bN.setFragmentActionMenuAt(i, z);
        if (i == this.bL.getCurrentItem()) {
            if (this.bQ == null) {
                long integer;
                this.bQ = new ActionMenuChangeAnimatorObject();
                this.bR = ObjectAnimator.ofFloat(this.bQ, "Value", new float[]{0.0f, 1.0f});
                ObjectAnimator objectAnimator = this.bR;
                if (DeviceHelper.FEATURE_WHOLE_ANIM) {
                    integer = (long) this.bL.getContext().getResources().getInteger(17694720);
                } else {
                    integer = 0;
                }
                objectAnimator.setDuration(integer);
            }
            this.bQ.a(i, z);
            this.bR.start();
        }
    }

    void addOnFragmentViewPagerChangeListener(FragmentViewPagerChangeListener fragmentViewPagerChangeListener) {
        if (this.bO == null) {
            this.bO = new ArrayList();
        }
        this.bO.add(fragmentViewPagerChangeListener);
    }

    void removeOnFragmentViewPagerChangeListener(FragmentViewPagerChangeListener fragmentViewPagerChangeListener) {
        if (this.bO != null) {
            this.bO.remove(fragmentViewPagerChangeListener);
        }
    }

    int getViewPagerOffscreenPageLimit() {
        return this.bL.getOffscreenPageLimit();
    }

    void setViewPagerOffscreenPageLimit(int i) {
        this.bL.setOffscreenPageLimit(i);
    }

    void setViewPagerDecor(View view) {
        if (this.bM != null) {
            this.bL.removeView(this.bM);
        }
        if (view != null) {
            this.bM = view;
            LayoutParams layoutParams = new ViewPager.LayoutParams();
            layoutParams.isDecor = true;
            this.bL.addView(this.bM, -1, layoutParams);
        }
    }
}
