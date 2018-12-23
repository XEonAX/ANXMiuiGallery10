package com.miui.extraphoto.refocus;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.miui.extraphoto.refocus.RefocusEffectManager.RefocusEffectConfig;
import com.miui.extraphoto.refocus.widget.recyclerview.Selectable;
import com.miui.extraphoto.refocus.widget.recyclerview.Selectable.Delegator;
import com.miui.extraphoto.refocus.widget.recyclerview.SimpleRecyclerView.Adapter;
import java.util.List;

class RelightingEffectAdapter extends Adapter<RefocusEffectItemHolder> implements Selectable {
    private Context mContext;
    private Delegator mDelegator = new Delegator(0);
    private final List<RefocusEffectConfig> mRefocusEffectConfigs;

    RelightingEffectAdapter(List<RefocusEffectConfig> refocusEffectConfigs, Context context) {
        this.mRefocusEffectConfigs = refocusEffectConfigs;
        this.mContext = context;
    }

    public RefocusEffectItemHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new RefocusEffectItemHolder(this.mContext, parent);
    }

    public void onBindViewHolder(RefocusEffectItemHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.setData((RefocusEffectConfig) this.mRefocusEffectConfigs.get(position));
        this.mDelegator.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mRefocusEffectConfigs.size();
    }

    public void setSelection(int index) {
        this.mDelegator.setSelection(index);
    }

    public int getSelection() {
        return this.mDelegator.getSelection();
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.mDelegator.onAttachedToRecyclerView(recyclerView);
    }

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.mDelegator.onDetachedFromRecyclerView(recyclerView);
    }
}
