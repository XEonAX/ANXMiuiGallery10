package com.miui.gallery.adapter;

import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.GridLayoutManager.SpanSizeLookup;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.support.v7.widget.StaggeredGridLayoutManager.LayoutParams;
import android.view.View;
import android.view.ViewGroup;

public abstract class HeaderFooterRecyclerAdapterWrapper<ADAPTER extends Adapter<VH>, VH extends ViewHolder> extends RecyclerAdapterWrapper<ADAPTER, VH> {
    private View mFooterView;
    private View mHeaderView;
    private LayoutManager mLayoutManager;

    private static class HeaderFooterSpanSizeLookup extends SpanSizeLookup {
        private HeaderFooterRecyclerAdapterWrapper mAdapterWrapper;
        private int mSpanCount;
        private SpanSizeLookup mWrapped;

        public HeaderFooterSpanSizeLookup(SpanSizeLookup wrapped, HeaderFooterRecyclerAdapterWrapper adapterWrapper, int spanCount) {
            this.mWrapped = wrapped;
            this.mAdapterWrapper = adapterWrapper;
            this.mSpanCount = spanCount;
        }

        public int getSpanSize(int position) {
            boolean isShowFooter;
            boolean isShowHeader;
            if (position == 0 && this.mAdapterWrapper.hasHeader()) {
                isShowHeader = true;
            } else {
                isShowHeader = false;
            }
            if (position == this.mAdapterWrapper.getItemCount() - 1 && this.mAdapterWrapper.hasFooter()) {
                isShowFooter = true;
            } else {
                isShowFooter = false;
            }
            if (isShowFooter || isShowHeader) {
                return this.mSpanCount;
            }
            return this.mWrapped.getSpanSize(position);
        }
    }

    protected abstract VH onCreateHeaderFooterViewHolder(View view);

    public HeaderFooterRecyclerAdapterWrapper(ADAPTER wrapped) {
        super(wrapped);
    }

    public boolean hasHeader() {
        return this.mHeaderView != null;
    }

    public boolean hasFooter() {
        return this.mFooterView != null;
    }

    public void setHeaderView(View view) {
        this.mHeaderView = view;
        getWrappedAdapter().notifyDataSetChanged();
    }

    public void setFooterView(View view) {
        this.mFooterView = view;
        getWrappedAdapter().notifyDataSetChanged();
    }

    public void removeFooterView() {
        this.mFooterView = null;
        getWrappedAdapter().notifyDataSetChanged();
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.mLayoutManager = recyclerView.getLayoutManager();
        if (this.mLayoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = this.mLayoutManager;
            gridLayoutManager.setSpanSizeLookup(new HeaderFooterSpanSizeLookup(gridLayoutManager.getSpanSizeLookup(), this, gridLayoutManager.getSpanCount()));
        }
    }

    public int getItemCount() {
        int i = 1;
        int itemCount = (hasHeader() ? 1 : 0) + super.getItemCount();
        if (!hasFooter()) {
            i = 0;
        }
        return itemCount + i;
    }

    public long getItemId(int position) {
        if (hasHeader() && position == 0) {
            return -1;
        }
        if (hasFooter() && position == getItemCount() - 1) {
            return -1;
        }
        if (hasHeader()) {
            position--;
        }
        return super.getItemId(position);
    }

    public int getItemViewType(int position) {
        if (hasHeader() && position == 0) {
            return -2;
        }
        if (hasFooter() && position == getItemCount() - 1) {
            return -3;
        }
        if (hasHeader()) {
            position--;
        }
        return super.getItemViewType(position);
    }

    public VH onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = null;
        if (viewType == -2) {
            itemView = this.mHeaderView;
        } else if (viewType == -3) {
            itemView = this.mFooterView;
        }
        if (itemView == null) {
            return super.onCreateViewHolder(parent, viewType);
        }
        if (this.mLayoutManager instanceof StaggeredGridLayoutManager) {
            LayoutParams staggerLayoutParams;
            ViewGroup.LayoutParams targetParams = itemView.getLayoutParams();
            if (targetParams != null) {
                staggerLayoutParams = new LayoutParams(targetParams.width, targetParams.height);
            } else {
                staggerLayoutParams = new LayoutParams(-1, -2);
            }
            staggerLayoutParams.setFullSpan(true);
            itemView.setLayoutParams(staggerLayoutParams);
        }
        return onCreateHeaderFooterViewHolder(itemView);
    }

    public void onBindViewHolder(VH holder, int position) {
        if (getItemViewType(position) != -2 && getItemViewType(position) != -3) {
            if (hasHeader()) {
                position--;
            }
            super.onBindViewHolder(holder, position);
        }
    }
}
