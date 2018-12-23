package com.miui.gallery.editor.photo.app.text;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.MenuFragment;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.Metadata;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.common.model.TextData;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import java.util.ArrayList;
import java.util.List;

public class TextMenuFragment extends MenuFragment<AbstractEffectFragment, SdkProvider<TextData, AbstractEffectFragment>> {
    private OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            ((AbstractEffectFragment) TextMenuFragment.this.getRenderFragment()).add((Metadata) TextMenuFragment.this.mTextDataList.get(position), Integer.valueOf(position));
            TextMenuFragment.this.mTextBubbleAdapter.setSelection(position);
            ScrollControlLinearLayoutManager.onItemClick(parent, position);
            return true;
        }
    };
    private SimpleRecyclerView mRecyclerView;
    private TextBubbleAdapter mTextBubbleAdapter;
    private List<TextData> mTextDataList;

    public TextMenuFragment() {
        super(Effect.TEXT);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.text_menu_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mRecyclerView = (SimpleRecyclerView) view.findViewById(R.id.preview_list);
        this.mTextDataList = new ArrayList(this.mSdkProvider.list());
        this.mTextBubbleAdapter = new TextBubbleAdapter(getActivity(), this.mTextDataList, new Selector(getResources().getDrawable(R.drawable.shape_text_edit_menu_selector)));
        LinearLayoutManager linearLayoutManager = new ScrollControlLinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(0);
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        this.mRecyclerView.setAdapter(this.mTextBubbleAdapter);
        ((TextView) view.findViewById(R.id.title)).setText(R.string.photo_editor_text);
        this.mTextBubbleAdapter.setOnItemClickListener(this.mOnItemClickListener);
        this.mRecyclerView.addItemDecoration(new BlankDivider(getResources(), R.dimen.menu_panel_list_item_divider_width, 0));
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mRecyclerView);
    }
}
