package com.miui.internal.app;

import android.app.ActionBar.Tab;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import miui.view.PagerAdapter;
import miui.view.ViewPager;

class DynamicFragmentPagerAdapter extends PagerAdapter {
    private FragmentManager bn;
    private ArrayList<FragmentInfo> cM = new ArrayList();
    private FragmentTransaction cN = null;
    private Fragment cO = null;
    private Context mContext;

    class FragmentInfo {
        Class<? extends Fragment> cP;
        Fragment cQ = null;
        Bundle cR;
        Tab cS;
        boolean cT;
        String tag;

        FragmentInfo(String str, Class<? extends Fragment> cls, Bundle bundle, Tab tab, boolean z) {
            this.tag = str;
            this.cP = cls;
            this.cR = bundle;
            this.cS = tab;
            this.cT = z;
        }
    }

    public DynamicFragmentPagerAdapter(Context context, FragmentManager fragmentManager, ViewPager viewPager) {
        this.mContext = context;
        this.bn = fragmentManager;
        viewPager.setAdapter(this);
    }

    public void startUpdate(ViewGroup viewGroup) {
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        if (this.cN == null) {
            this.cN = this.bn.beginTransaction();
        }
        this.cN.detach((Fragment) obj);
    }

    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (fragment != this.cO) {
            if (this.cO != null) {
                this.cO.setMenuVisibility(false);
                this.cO.setUserVisibleHint(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            this.cO = fragment;
        }
    }

    public void finishUpdate(ViewGroup viewGroup) {
        if (this.cN != null) {
            this.cN.commitAllowingStateLoss();
            this.cN = null;
            this.bn.executePendingTransactions();
        }
    }

    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        if (this.cN == null) {
            this.cN = this.bn.beginTransaction();
        }
        Fragment b = b(i, true);
        if (b.getFragmentManager() != null) {
            this.cN.attach(b);
        } else {
            this.cN.add(viewGroup.getId(), b, ((FragmentInfo) this.cM.get(i)).tag);
        }
        if (b != this.cO) {
            b.setMenuVisibility(false);
            b.setUserVisibleHint(false);
        }
        return b;
    }

    public int getCount() {
        return this.cM.size();
    }

    public boolean hasActionMenu(int i) {
        return ((FragmentInfo) this.cM.get(i)).cT;
    }

    public int getItemPosition(Object obj) {
        int size = this.cM.size();
        for (int i = 0; i < size; i++) {
            if (obj == ((FragmentInfo) this.cM.get(i)).cQ) {
                return i;
            }
        }
        return -2;
    }

    Tab getTabAt(int i) {
        return ((FragmentInfo) this.cM.get(i)).cS;
    }

    Fragment b(int i, boolean z) {
        FragmentInfo fragmentInfo = (FragmentInfo) this.cM.get(i);
        if (fragmentInfo.cQ == null) {
            fragmentInfo.cQ = this.bn.findFragmentByTag(fragmentInfo.tag);
            if (fragmentInfo.cQ == null && z) {
                fragmentInfo.cQ = Fragment.instantiate(this.mContext, fragmentInfo.cP.getName(), fragmentInfo.cR);
                fragmentInfo.cP = null;
                fragmentInfo.cR = null;
            }
        }
        return fragmentInfo.cQ;
    }

    int a(String str, Class<? extends Fragment> cls, Bundle bundle, Tab tab, boolean z) {
        this.cM.add(new FragmentInfo(str, cls, bundle, tab, z));
        notifyDataSetChanged();
        return this.cM.size() - 1;
    }

    int a(String str, int i, Class<? extends Fragment> cls, Bundle bundle, Tab tab, boolean z) {
        this.cM.add(i, new FragmentInfo(str, cls, bundle, tab, z));
        notifyDataSetChanged();
        return i;
    }

    void c(int i) {
        c(b(i, false));
        this.cM.remove(i);
        notifyDataSetChanged();
    }

    int e(String str) {
        int size = this.cM.size();
        for (int i = 0; i < size; i++) {
            if (((FragmentInfo) this.cM.get(i)).tag.equals(str)) {
                return i;
            }
        }
        return -1;
    }

    int c(Tab tab) {
        int size = this.cM.size();
        for (int i = 0; i < size; i++) {
            FragmentInfo fragmentInfo = (FragmentInfo) this.cM.get(i);
            if (fragmentInfo.cS == tab) {
                c(fragmentInfo.cQ);
                this.cM.remove(i);
                notifyDataSetChanged();
                return i;
            }
        }
        return -1;
    }

    int b(Fragment fragment) {
        int size = this.cM.size();
        for (int i = 0; i < size; i++) {
            if (b(i, false) == fragment) {
                c(fragment);
                this.cM.remove(i);
                notifyDataSetChanged();
                return i;
            }
        }
        return -1;
    }

    void y() {
        z();
        this.cM.clear();
        notifyDataSetChanged();
    }

    void setFragmentActionMenuAt(int i, boolean z) {
        FragmentInfo fragmentInfo = (FragmentInfo) this.cM.get(i);
        if (fragmentInfo.cT != z) {
            fragmentInfo.cT = z;
            notifyDataSetChanged();
        }
    }

    private void z() {
        FragmentTransaction beginTransaction = this.bn.beginTransaction();
        int size = this.cM.size();
        for (int i = 0; i < size; i++) {
            beginTransaction.remove(b(i, false));
        }
        beginTransaction.commitAllowingStateLoss();
        this.bn.executePendingTransactions();
    }

    private void c(Fragment fragment) {
        if (fragment != null) {
            FragmentManager fragmentManager = fragment.getFragmentManager();
            if (fragmentManager != null) {
                FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
                beginTransaction.remove(fragment);
                beginTransaction.commitAllowingStateLoss();
                fragmentManager.executePendingTransactions();
            }
        }
    }
}
