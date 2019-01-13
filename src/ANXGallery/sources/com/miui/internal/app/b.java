package com.miui.internal.app;

import android.app.Fragment;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import miui.app.ActionBar.FragmentViewPagerChangeListener;
import miui.util.ViewUtils;
import miui.view.ViewPager;

class b implements FragmentViewPagerChangeListener {
    ViewPager bL;
    DynamicFragmentPagerAdapter bN;
    Rect db = new Rect();
    ArrayList<View> dc = new ArrayList();
    int dd = -1;
    boolean de = true;
    int df = -1;
    int dg = -1;
    ViewGroup dh = null;

    public b(ViewPager viewPager, DynamicFragmentPagerAdapter dynamicFragmentPagerAdapter) {
        this.bL = viewPager;
        this.bN = dynamicFragmentPagerAdapter;
    }

    public void onPageScrolled(int i, float f, boolean z, boolean z2) {
        int i2 = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
        if (i2 == 0) {
            this.dd = i;
            this.de = true;
            if (this.dh != null) {
                d(this.dh);
            }
        }
        if (this.df != i) {
            if (this.dd < i) {
                this.dd = i;
            } else {
                int i3 = i + 1;
                if (this.dd > i3) {
                    this.dd = i3;
                }
            }
            this.df = i;
            this.de = true;
            if (this.dh != null) {
                d(this.dh);
            }
        }
        if (i2 > 0) {
            if (this.de) {
                this.de = false;
                if (this.dd != i || i >= this.bN.getCount() - 1) {
                    this.dg = i;
                } else {
                    this.dg = i + 1;
                }
                Fragment b = this.bN.b(this.dg, false);
                this.dh = null;
                if (!(b == null || b.getView() == null)) {
                    View findViewById = b.getView().findViewById(16908298);
                    if (findViewById instanceof ViewGroup) {
                        this.dh = (ViewGroup) findViewById;
                    }
                }
            }
            if (this.dg == i) {
                f = 1.0f - f;
            }
            float f2 = f;
            if (this.dh != null) {
                a(this.dh, this.dh.getWidth(), this.dh.getHeight(), f2, this.dg != i);
            }
        }
    }

    public void onPageSelected(int i) {
    }

    public void onPageScrollStateChanged(int i) {
        if (i == 0) {
            this.dd = this.bL.getCurrentItem();
            this.de = true;
            if (this.dh != null) {
                d(this.dh);
            }
        }
    }

    void a(ViewGroup viewGroup, ArrayList<View> arrayList) {
        a((ArrayList) arrayList, viewGroup);
        arrayList.clear();
        ViewUtils.getContentRect(viewGroup, this.db);
        if (!this.db.isEmpty()) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() != 8 || childAt.getHeight() > 0) {
                    arrayList.add(childAt);
                }
            }
        }
    }

    void a(ArrayList<View> arrayList, ViewGroup viewGroup) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            if (viewGroup.indexOfChild(view) == -1 && view.getTranslationX() != 0.0f) {
                view.setTranslationX(0.0f);
            }
        }
    }

    void d(ViewGroup viewGroup) {
        a(viewGroup, this.dc);
        if (!this.dc.isEmpty()) {
            Iterator it = this.dc.iterator();
            while (it.hasNext()) {
                ((View) it.next()).setTranslationX(0.0f);
            }
        }
    }

    void a(ViewGroup viewGroup, int i, int i2, float f, boolean z) {
        a(viewGroup, this.dc);
        if (!this.dc.isEmpty()) {
            int i3 = 0;
            int top = ((View) this.dc.get(0)).getTop();
            int i4 = Integer.MAX_VALUE;
            Iterator it = this.dc.iterator();
            while (it.hasNext()) {
                View view = (View) it.next();
                if (i4 != view.getTop()) {
                    i3 = view.getTop();
                    i4 = a(i3 - top, i, i2, f);
                    if (!z) {
                        i4 = -i4;
                    }
                    int i5 = i4;
                    i4 = i3;
                    i3 = i5;
                }
                view.setTranslationX((float) i3);
            }
        }
    }

    int a(int i, int i2, int i3, float f) {
        if (i < i3) {
            i = (i * i2) / i3;
        } else {
            i = i2;
        }
        float f2 = ((float) i) + ((0.1f - ((f * f) / 0.9f)) * ((float) i2));
        return f2 > 0.0f ? (int) f2 : 0;
    }
}
