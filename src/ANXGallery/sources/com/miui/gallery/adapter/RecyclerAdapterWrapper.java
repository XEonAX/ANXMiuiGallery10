package com.miui.gallery.adapter;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.ViewGroup;

public class RecyclerAdapterWrapper<T extends Adapter<VH>, VH extends ViewHolder> extends Adapter<VH> {
    protected final T mWrapped;

    public RecyclerAdapterWrapper(T wrapped) {
        if (wrapped == null) {
            throw new RuntimeException("The wrapped adapter can't be null!");
        }
        this.mWrapped = wrapped;
        this.mWrapped.registerAdapterDataObserver(new AdapterDataObserver() {
            public void onChanged() {
                RecyclerAdapterWrapper.this.notifyDataSetChanged();
            }

            public void onItemRangeChanged(int positionStart, int itemCount) {
                RecyclerAdapterWrapper.this.notifyItemRangeChanged(positionStart, itemCount);
            }

            public void onItemRangeInserted(int positionStart, int itemCount) {
                RecyclerAdapterWrapper.this.notifyItemRangeInserted(positionStart, itemCount);
            }

            public void onItemRangeRemoved(int positionStart, int itemCount) {
                RecyclerAdapterWrapper.this.notifyItemRangeRemoved(positionStart, itemCount);
            }

            public void onItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
                RecyclerAdapterWrapper.this.notifyItemMoved(fromPosition, toPosition);
            }
        });
    }

    public VH onCreateViewHolder(ViewGroup parent, int viewType) {
        return this.mWrapped.onCreateViewHolder(parent, viewType);
    }

    public void onBindViewHolder(VH holder, int position) {
        this.mWrapped.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mWrapped.getItemCount();
    }

    public int getItemViewType(int position) {
        return this.mWrapped.getItemViewType(position);
    }

    public void setHasStableIds(boolean hasStableIds) {
        this.mWrapped.setHasStableIds(hasStableIds);
    }

    public long getItemId(int position) {
        return this.mWrapped.getItemId(position);
    }

    public void onViewRecycled(VH holder) {
        this.mWrapped.onViewRecycled(holder);
    }

    public boolean onFailedToRecycleView(VH holder) {
        return this.mWrapped.onFailedToRecycleView(holder);
    }

    public void onViewAttachedToWindow(VH holder) {
        this.mWrapped.onViewAttachedToWindow(holder);
    }

    public void onViewDetachedFromWindow(VH holder) {
        this.mWrapped.onViewDetachedFromWindow(holder);
    }

    public void registerAdapterDataObserver(AdapterDataObserver observer) {
        this.mWrapped.registerAdapterDataObserver(observer);
    }

    public void unregisterAdapterDataObserver(AdapterDataObserver observer) {
        this.mWrapped.unregisterAdapterDataObserver(observer);
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mWrapped.onAttachedToRecyclerView(recyclerView);
    }

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.mWrapped.onDetachedFromRecyclerView(recyclerView);
    }

    public Adapter getWrappedAdapter() {
        return this.mWrapped;
    }
}
