package com.miui.internal.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.internal.R;
import java.util.ArrayList;

public class ImmersionMenuAdapter extends BaseAdapter {
    private LayoutInflater mInflater;
    private ArrayList<MenuItem> nj = new ArrayList();

    private static class ViewHolder {
        ImageView nk;
        TextView nl;

        private ViewHolder() {
        }
    }

    ImmersionMenuAdapter(Context context, Menu menu) {
        this.mInflater = LayoutInflater.from(context);
        a(menu, this.nj);
    }

    private void a(Menu menu, ArrayList<MenuItem> arrayList) {
        arrayList.clear();
        if (menu != null) {
            int size = menu.size();
            for (int i = 0; i < size; i++) {
                MenuItem item = menu.getItem(i);
                if (item.isVisible()) {
                    arrayList.add(item);
                }
            }
        }
    }

    public int getCount() {
        return this.nj.size();
    }

    public MenuItem getItem(int i) {
        return (MenuItem) this.nj.get(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = this.mInflater.inflate(R.layout.immersion_popup_menu_item, viewGroup, false);
            viewHolder = new ViewHolder();
            viewHolder.nk = (ImageView) view.findViewById(16908294);
            viewHolder.nl = (TextView) view.findViewById(16908308);
            view.setTag(viewHolder);
        }
        Object tag = view.getTag();
        if (tag != null) {
            viewHolder = (ViewHolder) tag;
            MenuItem item = getItem(i);
            if (item.getIcon() != null) {
                viewHolder.nk.setImageDrawable(item.getIcon());
                viewHolder.nk.setVisibility(0);
            } else {
                viewHolder.nk.setVisibility(8);
            }
            viewHolder.nl.setText(item.getTitle());
        }
        return view;
    }

    public void update(Menu menu) {
        a(menu, this.nj);
        notifyDataSetChanged();
    }
}
