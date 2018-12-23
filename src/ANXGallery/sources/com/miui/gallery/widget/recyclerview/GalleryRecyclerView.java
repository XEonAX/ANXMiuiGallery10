package com.miui.gallery.widget.recyclerview;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.AttributeSet;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemClickListener;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemLongClickListener;

public class GalleryRecyclerView extends RecyclerView implements OnItemLongClickListener {
    private ContextMenuInfo mContextMenuInfo = null;
    protected ItemClickSupport mItemClickSupport = ItemClickSupport.addTo(this);
    private OnItemLongClickListener mOnItemLongClickListener;

    public static class RecyclerContextMenuInfo implements ContextMenuInfo {
        public int position;

        public RecyclerContextMenuInfo(int position) {
            setValues(position);
        }

        public void setValues(int position) {
            this.position = position;
        }
    }

    public GalleryRecyclerView(Context context) {
        super(context);
        this.mItemClickSupport.setOnItemLongClickListener(this);
    }

    public GalleryRecyclerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mItemClickSupport.setOnItemLongClickListener(this);
    }

    public GalleryRecyclerView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mItemClickSupport.setOnItemLongClickListener(this);
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        this.mItemClickSupport.setOnItemClickListener(listener);
    }

    public void setOnItemLongClickListener(OnItemLongClickListener listener) {
        this.mOnItemLongClickListener = listener;
    }

    protected ContextMenuInfo getContextMenuInfo() {
        return this.mContextMenuInfo;
    }

    private boolean openContextMenu(int position) {
        if (position >= 0) {
            createContextMenuInfo(position);
        }
        return showContextMenu();
    }

    protected void createContextMenuInfo(int position) {
        if (this.mContextMenuInfo == null) {
            this.mContextMenuInfo = new RecyclerContextMenuInfo(position);
        } else {
            ((RecyclerContextMenuInfo) this.mContextMenuInfo).setValues(position);
        }
    }

    public boolean onItemLongClick(RecyclerView parent, View view, int position, long id) {
        boolean handled = false;
        if (this.mOnItemLongClickListener != null) {
            handled = this.mOnItemLongClickListener.onItemLongClick(parent, view, position, id);
        }
        return handled || openContextMenu(position);
    }

    public ViewHolder findViewHolderForAdapterPositionForExternal(int position) {
        return findViewHolderForAdapterPosition(position);
    }

    public View findChildViewUnderForExternal(float x, float y) {
        return findChildViewUnder(x, y);
    }

    public int getChildAdapterPositionForExternal(View child) {
        return getChildAdapterPosition(child);
    }
}
