package com.miui.internal.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import com.miui.internal.view.menu.MenuBuilder.ItemInvoker;
import com.miui.internal.view.menu.MenuView.ItemView;
import miui.R;
import miui.util.AttributeResolver;

public class ListMenuItemView extends LinearLayout implements ItemView {
    private TextView cp;
    private Context mContext;
    private LayoutInflater mInflater;
    private MenuItemImpl mw;
    private Context nA;
    private boolean nB;
    private boolean nC;
    private ImageView nt;
    private RadioButton nu;
    private CheckBox nv;
    private TextView nw;
    private View nx;
    private Drawable ny;
    private int nz;

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.mContext = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MenuView, i, 0);
        this.ny = obtainStyledAttributes.getDrawable(R.styleable.MenuView_android_itemBackground);
        this.nz = obtainStyledAttributes.getResourceId(R.styleable.MenuView_android_itemTextAppearance, -1);
        this.nB = obtainStyledAttributes.getBoolean(com.miui.internal.R.styleable.MenuView_android_preserveIconSpacing, false);
        this.nA = context;
        obtainStyledAttributes.recycle();
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setBackground(this.ny);
        this.cp = (TextView) findViewById(com.miui.internal.R.id.title);
        if (this.nz != -1) {
            this.cp.setTextAppearance(this.nA, this.nz);
        }
        this.nw = (TextView) findViewById(com.miui.internal.R.id.shortcut);
        this.nx = getChildAt(0);
    }

    public void initialize(MenuItemImpl menuItemImpl, int i) {
        this.mw = menuItemImpl;
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        setTitle(menuItemImpl.a((ItemView) this));
        setCheckable(menuItemImpl.isCheckable());
        setShortcut(menuItemImpl.aT(), menuItemImpl.aR());
        setIcon(menuItemImpl.getIcon());
        setEnabled(menuItemImpl.isEnabled());
    }

    public void setForceShowIcon(boolean z) {
        this.nC = z;
        this.nB = z;
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.cp.setText(charSequence);
            if (this.cp.getVisibility() != 0) {
                this.cp.setVisibility(0);
            }
        } else if (this.cp.getVisibility() != 8) {
            this.cp.setVisibility(8);
        }
    }

    public MenuItemImpl getItemData() {
        return this.mw;
    }

    public void setCheckable(boolean z) {
        if (z || this.nu != null || this.nv != null) {
            CompoundButton compoundButton;
            CompoundButton compoundButton2;
            if (this.mw.isExclusiveCheckable()) {
                if (this.nu == null) {
                    aL();
                }
                compoundButton = this.nu;
                compoundButton2 = this.nv;
            } else {
                if (this.nv == null) {
                    aM();
                }
                compoundButton = this.nv;
                compoundButton2 = this.nu;
            }
            int i = 0;
            if (z) {
                compoundButton.setChecked(this.mw.isChecked());
                if (compoundButton.getVisibility() != 0) {
                    compoundButton.setVisibility(0);
                }
                if (!(compoundButton2 == null || compoundButton2.getVisibility() == 8)) {
                    compoundButton2.setVisibility(8);
                }
            } else {
                if (this.nv != null) {
                    this.nv.setVisibility(8);
                }
                if (this.nu != null) {
                    this.nu.setVisibility(8);
                }
            }
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.nx.getLayoutParams();
            if (!(z && this.mw.isExclusiveCheckable())) {
                i = AttributeResolver.resolveDimensionPixelSize(getContext(), 16843683);
            }
            marginLayoutParams.setMarginStart(i);
            this.nx.setLayoutParams(marginLayoutParams);
            setActivated(this.mw.isChecked());
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.mw.isExclusiveCheckable()) {
            if (this.nu == null) {
                aL();
            }
            compoundButton = this.nu;
        } else {
            if (this.nv == null) {
                aM();
            }
            compoundButton = this.nv;
        }
        compoundButton.setChecked(z);
        setActivated(z);
    }

    public void setItemInvoker(ItemInvoker itemInvoker) {
        throw new UnsupportedOperationException();
    }

    public void setShortcut(boolean z, char c) {
        int i = (z && this.mw.aT()) ? 0 : 8;
        if (i == 0) {
            this.nw.setText(this.mw.aS());
        }
        if (this.nw.getVisibility() != i) {
            this.nw.setVisibility(i);
        }
    }

    public void setIcon(Drawable drawable) {
        int i;
        if (this.mw.shouldShowIcon() || this.nC) {
            i = 1;
        } else {
            i = 0;
        }
        if (i == 0 && !this.nB) {
            return;
        }
        if (this.nt != null || drawable != null || this.nB) {
            if (this.nt == null) {
                aK();
            }
            if (drawable != null || this.nB) {
                ImageView imageView = this.nt;
                if (i == 0) {
                    drawable = null;
                }
                imageView.setImageDrawable(drawable);
                if (this.nt.getVisibility() != 0) {
                    this.nt.setVisibility(0);
                }
            } else {
                this.nt.setVisibility(8);
            }
        }
    }

    protected void onMeasure(int i, int i2) {
        if (this.nt != null && this.nB) {
            LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.nt.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }

    private void aK() {
        this.nt = (ImageView) aN().inflate(com.miui.internal.R.layout.list_menu_item_icon, this, false);
        addView(this.nt, 0);
    }

    private void aL() {
        this.nu = (RadioButton) aN().inflate(com.miui.internal.R.layout.list_menu_item_radio, this, false);
        addView(this.nu, 0);
    }

    private void aM() {
        this.nv = (CheckBox) aN().inflate(com.miui.internal.R.layout.list_menu_item_checkbox, this, false);
        addView(this.nv);
    }

    public boolean prefersCondensedTitle() {
        return false;
    }

    public boolean showsIcon() {
        return this.nC;
    }

    private LayoutInflater aN() {
        if (this.mInflater == null) {
            this.mInflater = LayoutInflater.from(this.mContext);
        }
        return this.mInflater;
    }
}
