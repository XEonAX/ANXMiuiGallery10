package com.miui.gallery.ui;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.cloud.syncstate.SyncStateInfo;
import com.miui.gallery.cloud.syncstate.SyncStateManager;
import com.miui.gallery.cloud.syncstate.SyncStatus;
import com.miui.gallery.cloud.syncstate.SyncType;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.FormatUtil;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.SyncUtil.Request.Builder;
import com.miui.gallery.widget.ColorRingProgress;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class BackupTitle extends LinearLayout {
    private SyncStatus mCurSyncStatus;
    private SyncType mCurSyncType;
    private View mDirtyContainer;
    private TextView mDirtyCountText;
    private ViewGroup mItemsContainer;
    private OnMenuItemClickListener mMenuItemClickListener;
    private List<PauseMenuItem> mMenuItems;
    private Animation mSyncingIconAnim;

    private abstract class BaseClickListener implements OnClickListener {
        protected abstract void onCustomClick(View view);

        private BaseClickListener() {
        }

        /* synthetic */ BaseClickListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public final void onClick(View v) {
            onCustomClick(v);
            BackupTitle.this.tryStatSyncStateCorrect(getClass().getSimpleName());
        }
    }

    private class ExpanseCloudSpaceListener extends BaseClickListener {
        private ExpanseCloudSpaceListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ ExpanseCloudSpaceListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            IntentUtil.gotoMiCloudVipPage(BackupTitle.this.getContext());
        }
    }

    private class LoginAccountListener extends BaseClickListener {
        private LoginAccountListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ LoginAccountListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            IntentUtil.guideToLoginXiaomiAccount(BackupTitle.this.getContext(), CloudGuideSource.TOPBAR);
        }
    }

    private class OpenSyncSwitchListener extends BaseClickListener {
        private OpenSyncSwitchListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ OpenSyncSwitchListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            IntentUtil.gotoTurnOnSyncSwitch(BackupTitle.this.getContext());
        }
    }

    private class PauseMenuItem {
        private final int hour;
        private final int itemId;
        private final String title;

        public PauseMenuItem(String title, int hour) {
            this.itemId = Math.abs(title.hashCode());
            this.title = title;
            this.hour = hour;
        }
    }

    private class PauseSyncListener extends BaseClickListener {
        private PauseSyncListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ PauseSyncListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            BackupTitle.this.showContextMenu();
        }
    }

    private class SyncImmediateListener extends BaseClickListener {
        private SyncType mSyncType;

        public SyncImmediateListener(SyncType syncType) {
            super(BackupTitle.this, null);
            this.mSyncType = syncType;
        }

        public void onCustomClick(View v) {
            if (this.mSyncType == SyncType.GPRS_FORCE) {
                Resources res = BackupTitle.this.getContext().getResources();
                DialogUtil.showInfoDialog(BackupTitle.this.getContext(), res.getString(R.string.backup_with_gprs_dialog_message, new Object[]{FormatUtil.formatFileSize(BackupTitle.this.getContext(), SyncStateManager.getInstance().getSyncState().getDirtySize())}), res.getString(R.string.backup_with_gprs_dialog_title), (int) R.string.backup_with_gprs_dialog_btn, (int) R.string.cancel, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        BackupTitle.this.requestSync(SyncImmediateListener.this.mSyncType);
                    }
                }, null);
                return;
            }
            BackupTitle.this.requestSync(this.mSyncType);
        }
    }

    private class ResumeSyncListener extends SyncImmediateListener {
        public ResumeSyncListener(SyncType syncType) {
            super(syncType);
        }

        public void onCustomClick(View v) {
            SyncUtil.resumeSync(BackupTitle.this.getContext());
            super.onCustomClick(v);
        }
    }

    private class SetCTAListener extends BaseClickListener {
        private SetCTAListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ SetCTAListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            CtaNoticeFragment.newInstance(true).showAllowingStateLoss(((Activity) BackupTitle.this.getContext()).getFragmentManager(), "CtaNoticeFragment");
        }
    }

    private class SetNetworkListener extends BaseClickListener {
        private SetNetworkListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ SetNetworkListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            BackupTitle.this.getContext().startActivity(new Intent("android.settings.SETTINGS"));
        }
    }

    private class SlimDeviceSpaceListener extends BaseClickListener {
        private SlimDeviceSpaceListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ SlimDeviceSpaceListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            IntentUtil.gotoDeepClean(BackupTitle.this.getContext());
        }
    }

    private class StopSyncListener extends BaseClickListener {
        private StopSyncListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ StopSyncListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            SyncUtil.stopSync(BackupTitle.this.getContext());
        }
    }

    private class TitleData {
        public int mDirtyPhoto;
        public int mDirtyVideo;
        public List<TitleItemData> mItems;
        public boolean mShowDirty;

        private TitleData() {
            this.mItems = new LinkedList();
        }

        /* synthetic */ TitleData(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }
    }

    private class TitleItemData {
        public int mBtnBgRes;
        public OnClickListener mBtnClickListener;
        public CharSequence mBtnTxt;
        public CharSequence mDesc;
        public Animation mIconAnim;
        public int mIconRes;
        public float mProgress;
        public CharSequence mTitle;
        public OnClickListener mTitleClickListener;

        private TitleItemData() {
            this.mProgress = 0.0f;
        }

        /* synthetic */ TitleItemData(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public TitleItemData setIconRes(int iconRes) {
            this.mIconRes = iconRes;
            return this;
        }

        public TitleItemData setTitle(CharSequence title) {
            this.mTitle = title;
            return this;
        }

        public TitleItemData setDesc(CharSequence desc) {
            this.mDesc = desc;
            return this;
        }

        public TitleItemData setBtnTxt(CharSequence btnTxt) {
            this.mBtnTxt = btnTxt;
            return this;
        }

        public TitleItemData setBtnBgRes(int btnBgRes) {
            this.mBtnBgRes = btnBgRes;
            return this;
        }

        public TitleItemData setBtnClickListener(OnClickListener btnClickListener) {
            this.mBtnClickListener = btnClickListener;
            return this;
        }

        public TitleItemData setIconAnim(Animation iconAnim) {
            this.mIconAnim = iconAnim;
            return this;
        }

        public TitleItemData setProgress(float progress) {
            this.mProgress = progress;
            return this;
        }
    }

    private class TitleItemViewHolder {
        public TextView mBtn;
        public TextView mDesc;
        public ImageView mIcon;
        public ColorRingProgress mProgress;
        public View mTextContainer;
        public TextView mTitle;

        private TitleItemViewHolder() {
        }

        /* synthetic */ TitleItemViewHolder(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }
    }

    public BackupTitle(Context context) {
        this(context, null);
    }

    public BackupTitle(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BackupTitle(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mMenuItemClickListener = new OnMenuItemClickListener() {
            public boolean onMenuItemClick(MenuItem item) {
                PauseMenuItem pauseItem = BackupTitle.this.findPauseItem(item.getItemId());
                if (pauseItem == null) {
                    return false;
                }
                if (pauseItem.hour == Integer.MAX_VALUE) {
                    SyncUtil.setSyncAutomatically(BackupTitle.this.getContext(), false);
                } else {
                    long pauseInterval = (long) (((pauseItem.hour * 60) * 60) * 1000);
                    Log.i("BackupTitle", "pause %d hours", Integer.valueOf(pauseItem.hour));
                    SyncUtil.pauseSync(BackupTitle.this.getContext(), pauseInterval);
                }
                return true;
            }
        };
        this.mCurSyncType = SyncType.UNKNOW;
        this.mCurSyncStatus = SyncStatus.UNAVAILABLE;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mItemsContainer = (ViewGroup) findViewById(R.id.item_container);
        this.mDirtyContainer = findViewById(R.id.dirty_container);
        this.mDirtyCountText = (TextView) findViewById(R.id.dirty_count_num);
    }

    private List<PauseMenuItem> getPauseMenuItems() {
        if (this.mMenuItems == null) {
            this.mMenuItems = new ArrayList();
            for (int hour : getContext().getResources().getIntArray(R.array.backup_pause_hours)) {
                this.mMenuItems.add(new PauseMenuItem(getContext().getResources().getQuantityString(R.plurals.backup_after_hours, hour, new Object[]{Integer.valueOf(hour)}), hour));
            }
        }
        return this.mMenuItems;
    }

    private PauseMenuItem findPauseItem(int itemId) {
        for (PauseMenuItem item : this.mMenuItems) {
            if (item.itemId == itemId) {
                return item;
            }
        }
        return null;
    }

    protected void onCreateContextMenu(ContextMenu menu) {
        super.onCreateContextMenu(menu);
        List<PauseMenuItem> items = getPauseMenuItems();
        for (int i = 0; i < items.size(); i++) {
            PauseMenuItem item = (PauseMenuItem) items.get(i);
            menu.add(0, item.itemId, i, item.title).setOnMenuItemClickListener(this.mMenuItemClickListener);
        }
    }

    public void refreshSyncState(SyncStateInfo syncState) {
        int i;
        TitleData data = genTitleData(syncState);
        int itemDataCount = data.mItems.size();
        int itemViewCount = this.mItemsContainer.getChildCount();
        for (i = itemDataCount; i < itemViewCount; i++) {
            this.mItemsContainer.removeViewAt(i);
        }
        for (i = 0; i < itemDataCount; i++) {
            View convertView = this.mItemsContainer.getChildAt(i);
            View view = getView((TitleItemData) data.mItems.get(i), convertView, this.mItemsContainer);
            if (view != convertView) {
                this.mItemsContainer.addView(view);
            }
        }
        if (data.mShowDirty) {
            this.mDirtyContainer.setVisibility(0);
            TextView textView = this.mDirtyCountText;
            Resources resources = getContext().getResources();
            Object[] objArr = new Object[1];
            objArr[0] = String.format("%d", new Object[]{Integer.valueOf(data.mDirtyPhoto + data.mDirtyVideo)});
            textView.setText(resources.getString(R.string.backup_dirty_num, objArr));
            return;
        }
        this.mDirtyContainer.setVisibility(8);
    }

    private View getView(TitleItemData itemData, View convertView, ViewGroup parent) {
        TitleItemViewHolder holder;
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.backup_title_item, parent, false);
            holder = new TitleItemViewHolder(this, null);
            holder.mIcon = (ImageView) convertView.findViewById(R.id.icon);
            holder.mProgress = (ColorRingProgress) convertView.findViewById(R.id.progress);
            holder.mTitle = (TextView) convertView.findViewById(R.id.title);
            holder.mDesc = (TextView) convertView.findViewById(R.id.summary);
            holder.mTextContainer = convertView.findViewById(R.id.text_container);
            holder.mBtn = (TextView) convertView.findViewById(R.id.btn);
            convertView.setTag(holder);
        }
        holder = (TitleItemViewHolder) convertView.getTag();
        holder.mIcon.setImageResource(itemData.mIconRes);
        holder.mTitle.setText(itemData.mTitle);
        holder.mTextContainer.setOnClickListener(itemData.mTitleClickListener);
        if (itemData.mTitleClickListener != null) {
            holder.mTitle.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.backup_title_arrow, 0);
        } else {
            holder.mTitle.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        }
        if (TextUtils.isEmpty(itemData.mDesc)) {
            holder.mDesc.setVisibility(8);
        } else {
            holder.mDesc.setVisibility(0);
            holder.mDesc.setText(itemData.mDesc);
        }
        if (TextUtils.isEmpty(itemData.mBtnTxt)) {
            holder.mBtn.setVisibility(8);
        } else {
            holder.mBtn.setVisibility(0);
            holder.mBtn.setText(itemData.mBtnTxt);
            holder.mBtn.setBackgroundResource(itemData.mBtnBgRes);
            holder.mBtn.setOnClickListener(itemData.mBtnClickListener);
        }
        if (itemData.mProgress > 0.0f) {
            holder.mProgress.setVisibility(0);
            holder.mProgress.setProgress(itemData.mProgress);
        } else {
            holder.mProgress.setVisibility(4);
        }
        if (itemData.mIconAnim != null) {
            Animation anim = holder.mIcon.getAnimation();
            if (anim == null || !anim.hasStarted() || anim.hasEnded()) {
                Log.i("BackupTitle", "startAnimation");
                holder.mIcon.startAnimation(itemData.mIconAnim);
            }
        } else {
            holder.mIcon.clearAnimation();
            Log.i("BackupTitle", "clearAnimation");
        }
        return convertView;
    }

    private TitleData genTitleData(SyncStateInfo syncState) {
        TitleData data = new TitleData(this, null);
        addSyncItem(data, syncState);
        addOperationItem(data, syncState);
        addDirtyItem(data, syncState);
        return data;
    }

    private void addDirtyItem(TitleData data, SyncStateInfo syncState) {
        boolean z = true;
        switch (syncState.getSyncStatus()) {
            case SYNC_PENDING:
            case SYNCING:
            case SYNCING_METADATA:
            case SYNCED:
                data.mShowDirty = false;
                return;
            default:
                int[] dirtyCount = syncState.getDirtyCount();
                data.mDirtyPhoto = dirtyCount[0];
                data.mDirtyVideo = dirtyCount[1];
                if (dirtyCount[0] + dirtyCount[1] <= 0) {
                    z = false;
                }
                data.mShowDirty = z;
                return;
        }
    }

    private void addOperationItem(TitleData data, SyncStateInfo syncState) {
    }

    /* JADX WARNING: Missing block: B:3:0x0038, code:
            if (r6 == com.miui.gallery.cloud.syncstate.SyncStatus.UNAVAILABLE) goto L_0x0041;
     */
    /* JADX WARNING: Missing block: B:4:0x003a, code:
            r17.mItems.add(r4);
     */
    /* JADX WARNING: Missing block: B:5:0x0041, code:
            tryStatSyncStateError(r18);
     */
    /* JADX WARNING: Missing block: B:6:0x0048, code:
            return;
     */
    /* JADX WARNING: Missing block: B:8:0x005d, code:
            if (r2 != 0) goto L_0x0069;
     */
    /* JADX WARNING: Missing block: B:9:0x005f, code:
            r4.setTitle(r5.getString(com.miui.gallery.R.string.syncing_metadata_title));
     */
    /* JADX WARNING: Missing block: B:10:0x0069, code:
            r4.setIconRes(com.miui.gallery.R.drawable.backup_icon_syncing).setBtnClickListener(genClickListener(r18));
            r7 = r18.getSyncType();
     */
    /* JADX WARNING: Missing block: B:11:0x0081, code:
            if (r7 != com.miui.gallery.cloud.syncstate.SyncType.GPRS_FORCE) goto L_0x00dd;
     */
    /* JADX WARNING: Missing block: B:13:0x0085, code:
            if (r4.mTitle != null) goto L_0x0091;
     */
    /* JADX WARNING: Missing block: B:14:0x0087, code:
            r4.setTitle(r5.getString(com.miui.gallery.R.string.backuping_title_gprs));
     */
    /* JADX WARNING: Missing block: B:15:0x0091, code:
            if (r2 <= 0) goto L_0x00b6;
     */
    /* JADX WARNING: Missing block: B:16:0x0093, code:
            r4.setDesc(r5.getQuantityString(com.miui.gallery.R.plurals.backuping_desc_gprs, r2, new java.lang.Object[]{java.lang.Integer.valueOf(r2), com.miui.gallery.util.FormatUtil.formatFileSize(getContext(), r18.getDirtySize())}));
     */
    /* JADX WARNING: Missing block: B:18:0x00b8, code:
            if (r4.mBtnTxt != null) goto L_0x00ca;
     */
    /* JADX WARNING: Missing block: B:20:0x00be, code:
            if (r7.isForce() == false) goto L_0x0102;
     */
    /* JADX WARNING: Missing block: B:21:0x00c0, code:
            r4.setBtnTxt(r5.getString(com.miui.gallery.R.string.backup_stop));
     */
    /* JADX WARNING: Missing block: B:22:0x00ca, code:
            r4.setBtnBgRes(com.miui.gallery.R.drawable.list_item_btn_bg_light);
     */
    /* JADX WARNING: Missing block: B:23:0x00d2, code:
            if (r6 == com.miui.gallery.cloud.syncstate.SyncStatus.SYNC_PENDING) goto L_0x0036;
     */
    /* JADX WARNING: Missing block: B:24:0x00d4, code:
            r4.setIconAnim(getSyncingAnim());
     */
    /* JADX WARNING: Missing block: B:26:0x00df, code:
            if (r4.mTitle != null) goto L_0x00eb;
     */
    /* JADX WARNING: Missing block: B:27:0x00e1, code:
            r4.setTitle(r5.getString(com.miui.gallery.R.string.backuping_title_normal));
     */
    /* JADX WARNING: Missing block: B:28:0x00eb, code:
            if (r2 <= 0) goto L_0x00b6;
     */
    /* JADX WARNING: Missing block: B:29:0x00ed, code:
            r4.setDesc(r5.getQuantityString(com.miui.gallery.R.plurals.backuping_desc_normal, r2, new java.lang.Object[]{java.lang.Integer.valueOf(r2)}));
     */
    /* JADX WARNING: Missing block: B:30:0x0102, code:
            r4.setBtnTxt(r5.getString(com.miui.gallery.R.string.backup_pause));
     */
    private void addSyncItem(com.miui.gallery.ui.BackupTitle.TitleData r17, com.miui.gallery.cloud.syncstate.SyncStateInfo r18) {
        /*
        r16 = this;
        r4 = new com.miui.gallery.ui.BackupTitle$TitleItemData;
        r9 = 0;
        r0 = r16;
        r4.<init>(r0, r9);
        r9 = r16.getContext();
        r5 = r9.getResources();
        r3 = r18.getDirtyCount();
        r9 = 0;
        r9 = r3[r9];
        r10 = 1;
        r10 = r3[r10];
        r2 = r9 + r10;
        r9 = "BackupTitle";
        r10 = "refresh status: %s";
        r11 = r18.getSyncStatus();
        com.miui.gallery.util.Log.i(r9, r10, r11);
        r6 = r18.getSyncStatus();
        r9 = com.miui.gallery.ui.BackupTitle.AnonymousClass2.$SwitchMap$com$miui$gallery$cloud$syncstate$SyncStatus;
        r10 = r6.ordinal();
        r9 = r9[r10];
        switch(r9) {
            case 1: goto L_0x0049;
            case 2: goto L_0x0069;
            case 3: goto L_0x005d;
            case 4: goto L_0x010d;
            case 5: goto L_0x012b;
            case 6: goto L_0x0184;
            case 7: goto L_0x01c0;
            case 8: goto L_0x01fc;
            case 9: goto L_0x01fc;
            case 10: goto L_0x01fc;
            case 11: goto L_0x0238;
            case 12: goto L_0x0274;
            case 13: goto L_0x02b0;
            case 14: goto L_0x02ec;
            case 15: goto L_0x0328;
            case 16: goto L_0x0364;
            default: goto L_0x0036;
        };
    L_0x0036:
        r9 = com.miui.gallery.cloud.syncstate.SyncStatus.UNAVAILABLE;
        if (r6 == r9) goto L_0x0041;
    L_0x003a:
        r0 = r17;
        r9 = r0.mItems;
        r9.add(r4);
    L_0x0041:
        r0 = r16;
        r1 = r18;
        r0.tryStatSyncStateError(r1);
        return;
    L_0x0049:
        r9 = 2131624098; // 0x7f0e00a2 float:1.8875366E38 double:1.0531622367E-314;
        r9 = r5.getString(r9);
        r4.setTitle(r9);
        r9 = 2131624084; // 0x7f0e0094 float:1.8875338E38 double:1.0531622298E-314;
        r9 = r5.getString(r9);
        r4.setBtnTxt(r9);
    L_0x005d:
        if (r2 != 0) goto L_0x0069;
    L_0x005f:
        r9 = 2131625133; // 0x7f0e04ad float:1.8877465E38 double:1.053162748E-314;
        r9 = r5.getString(r9);
        r4.setTitle(r9);
    L_0x0069:
        r9 = 2130837599; // 0x7f02005f float:1.7280157E38 double:1.0527736545E-314;
        r9 = r4.setIconRes(r9);
        r0 = r16;
        r1 = r18;
        r10 = r0.genClickListener(r1);
        r9.setBtnClickListener(r10);
        r7 = r18.getSyncType();
        r9 = com.miui.gallery.cloud.syncstate.SyncType.GPRS_FORCE;
        if (r7 != r9) goto L_0x00dd;
    L_0x0083:
        r9 = r4.mTitle;
        if (r9 != 0) goto L_0x0091;
    L_0x0087:
        r9 = 2131624114; // 0x7f0e00b2 float:1.8875399E38 double:1.0531622446E-314;
        r9 = r5.getString(r9);
        r4.setTitle(r9);
    L_0x0091:
        if (r2 <= 0) goto L_0x00b6;
    L_0x0093:
        r9 = 2131558416; // 0x7f0d0010 float:1.8742147E38 double:1.0531297854E-314;
        r10 = 2;
        r10 = new java.lang.Object[r10];
        r11 = 0;
        r12 = java.lang.Integer.valueOf(r2);
        r10[r11] = r12;
        r11 = 1;
        r12 = r16.getContext();
        r14 = r18.getDirtySize();
        r12 = com.miui.gallery.util.FormatUtil.formatFileSize(r12, r14);
        r10[r11] = r12;
        r9 = r5.getQuantityString(r9, r2, r10);
        r4.setDesc(r9);
    L_0x00b6:
        r9 = r4.mBtnTxt;
        if (r9 != 0) goto L_0x00ca;
    L_0x00ba:
        r9 = r7.isForce();
        if (r9 == 0) goto L_0x0102;
    L_0x00c0:
        r9 = 2131624099; // 0x7f0e00a3 float:1.8875368E38 double:1.053162237E-314;
        r9 = r5.getString(r9);
        r4.setBtnTxt(r9);
    L_0x00ca:
        r9 = 2130837939; // 0x7f0201b3 float:1.7280846E38 double:1.0527738225E-314;
        r4.setBtnBgRes(r9);
        r9 = com.miui.gallery.cloud.syncstate.SyncStatus.SYNC_PENDING;
        if (r6 == r9) goto L_0x0036;
    L_0x00d4:
        r9 = r16.getSyncingAnim();
        r4.setIconAnim(r9);
        goto L_0x0036;
    L_0x00dd:
        r9 = r4.mTitle;
        if (r9 != 0) goto L_0x00eb;
    L_0x00e1:
        r9 = 2131624115; // 0x7f0e00b3 float:1.88754E38 double:1.053162245E-314;
        r9 = r5.getString(r9);
        r4.setTitle(r9);
    L_0x00eb:
        if (r2 <= 0) goto L_0x00b6;
    L_0x00ed:
        r9 = 2131558417; // 0x7f0d0011 float:1.874215E38 double:1.053129786E-314;
        r10 = 1;
        r10 = new java.lang.Object[r10];
        r11 = 0;
        r12 = java.lang.Integer.valueOf(r2);
        r10[r11] = r12;
        r9 = r5.getQuantityString(r9, r2, r10);
        r4.setDesc(r9);
        goto L_0x00b6;
    L_0x0102:
        r9 = 2131624096; // 0x7f0e00a0 float:1.8875362E38 double:1.0531622357E-314;
        r9 = r5.getString(r9);
        r4.setBtnTxt(r9);
        goto L_0x00ca;
    L_0x010d:
        r9 = 2130837598; // 0x7f02005e float:1.7280155E38 double:1.052773654E-314;
        r9 = r4.setIconRes(r9);
        r10 = 2131624113; // 0x7f0e00b1 float:1.8875397E38 double:1.053162244E-314;
        r10 = r5.getString(r10);
        r9 = r9.setTitle(r10);
        r10 = 2131624112; // 0x7f0e00b0 float:1.8875395E38 double:1.0531622436E-314;
        r10 = r5.getString(r10);
        r9.setDesc(r10);
        goto L_0x0036;
    L_0x012b:
        r9 = 2130837599; // 0x7f02005f float:1.7280157E38 double:1.0527736545E-314;
        r9 = r4.setIconRes(r9);
        r10 = 2131558415; // 0x7f0d000f float:1.8742145E38 double:1.053129785E-314;
        r11 = 1;
        r11 = new java.lang.Object[r11];
        r12 = 0;
        r13 = java.lang.Integer.valueOf(r2);
        r11[r12] = r13;
        r10 = r5.getQuantityString(r10, r2, r11);
        r9 = r9.setDesc(r10);
        r10 = 2131624084; // 0x7f0e0094 float:1.8875338E38 double:1.0531622298E-314;
        r10 = r5.getString(r10);
        r9 = r9.setBtnTxt(r10);
        r10 = 2130837939; // 0x7f0201b3 float:1.7280846E38 double:1.0527738225E-314;
        r9 = r9.setBtnBgRes(r10);
        r0 = r16;
        r1 = r18;
        r10 = r0.genClickListener(r1);
        r9.setBtnClickListener(r10);
        r9 = 2131624097; // 0x7f0e00a1 float:1.8875364E38 double:1.053162236E-314;
        r10 = 1;
        r10 = new java.lang.Object[r10];
        r11 = 0;
        r12 = r16.getContext();
        r0 = r18;
        r12 = r0.getResumeInterval(r12);
        r12 = com.miui.gallery.util.FormatUtil.formatHourMinutes(r12);
        r10[r11] = r12;
        r8 = r5.getString(r9, r10);
        r4.setTitle(r8);
        goto L_0x0036;
    L_0x0184:
        r9 = 2130837596; // 0x7f02005c float:1.728015E38 double:1.052773653E-314;
        r9 = r4.setIconRes(r9);
        r10 = 2131624105; // 0x7f0e00a9 float:1.887538E38 double:1.05316224E-314;
        r10 = r5.getString(r10);
        r9 = r9.setTitle(r10);
        r10 = 2131624104; // 0x7f0e00a8 float:1.8875378E38 double:1.0531622396E-314;
        r10 = r5.getString(r10);
        r9 = r9.setDesc(r10);
        r10 = 2131624103; // 0x7f0e00a7 float:1.8875376E38 double:1.053162239E-314;
        r10 = r5.getString(r10);
        r9 = r9.setBtnTxt(r10);
        r10 = 2130837939; // 0x7f0201b3 float:1.7280846E38 double:1.0527738225E-314;
        r9 = r9.setBtnBgRes(r10);
        r0 = r16;
        r1 = r18;
        r10 = r0.genClickListener(r1);
        r9.setBtnClickListener(r10);
        goto L_0x0036;
    L_0x01c0:
        r9 = 2130837596; // 0x7f02005c float:1.728015E38 double:1.052773653E-314;
        r9 = r4.setIconRes(r9);
        r10 = 2131624086; // 0x7f0e0096 float:1.8875342E38 double:1.0531622307E-314;
        r10 = r5.getString(r10);
        r9 = r9.setTitle(r10);
        r10 = 2131624085; // 0x7f0e0095 float:1.887534E38 double:1.05316223E-314;
        r10 = r5.getString(r10);
        r9 = r9.setDesc(r10);
        r10 = 2131624084; // 0x7f0e0094 float:1.8875338E38 double:1.0531622298E-314;
        r10 = r5.getString(r10);
        r9 = r9.setBtnTxt(r10);
        r10 = 2130837939; // 0x7f0201b3 float:1.7280846E38 double:1.0527738225E-314;
        r9 = r9.setBtnBgRes(r10);
        r0 = r16;
        r1 = r18;
        r10 = r0.genClickListener(r1);
        r9.setBtnClickListener(r10);
        goto L_0x0036;
    L_0x01fc:
        r9 = 2130837597; // 0x7f02005d float:1.7280153E38 double:1.0527736535E-314;
        r9 = r4.setIconRes(r9);
        r10 = 2131624108; // 0x7f0e00ac float:1.8875386E38 double:1.0531622416E-314;
        r10 = r5.getString(r10);
        r9 = r9.setTitle(r10);
        r10 = 2131624107; // 0x7f0e00ab float:1.8875384E38 double:1.053162241E-314;
        r10 = r5.getString(r10);
        r9 = r9.setDesc(r10);
        r10 = 2131624106; // 0x7f0e00aa float:1.8875382E38 double:1.0531622406E-314;
        r10 = r5.getString(r10);
        r9 = r9.setBtnTxt(r10);
        r10 = 2130837939; // 0x7f0201b3 float:1.7280846E38 double:1.0527738225E-314;
        r9 = r9.setBtnBgRes(r10);
        r0 = r16;
        r1 = r18;
        r10 = r0.genClickListener(r1);
        r9.setBtnClickListener(r10);
        goto L_0x0036;
    L_0x0238:
        r9 = 2130837593; // 0x7f020059 float:1.7280144E38 double:1.0527736516E-314;
        r9 = r4.setIconRes(r9);
        r10 = 2131624075; // 0x7f0e008b float:1.887532E38 double:1.0531622253E-314;
        r10 = r5.getString(r10);
        r9 = r9.setTitle(r10);
        r10 = 2131624074; // 0x7f0e008a float:1.8875317E38 double:1.053162225E-314;
        r10 = r5.getString(r10);
        r9 = r9.setDesc(r10);
        r10 = 2131624073; // 0x7f0e0089 float:1.8875315E38 double:1.0531622243E-314;
        r10 = r5.getString(r10);
        r9 = r9.setBtnTxt(r10);
        r10 = 2130837939; // 0x7f0201b3 float:1.7280846E38 double:1.0527738225E-314;
        r9 = r9.setBtnBgRes(r10);
        r0 = r16;
        r1 = r18;
        r10 = r0.genClickListener(r1);
        r9.setBtnClickListener(r10);
        goto L_0x0036;
    L_0x0274:
        r9 = 2130837595; // 0x7f02005b float:1.7280149E38 double:1.0527736526E-314;
        r9 = r4.setIconRes(r9);
        r10 = 2131624089; // 0x7f0e0099 float:1.8875348E38 double:1.053162232E-314;
        r10 = r5.getString(r10);
        r9 = r9.setTitle(r10);
        r10 = 2131624088; // 0x7f0e0098 float:1.8875346E38 double:1.0531622317E-314;
        r10 = r5.getString(r10);
        r9 = r9.setDesc(r10);
        r10 = 2131624087; // 0x7f0e0097 float:1.8875344E38 double:1.053162231E-314;
        r10 = r5.getString(r10);
        r9 = r9.setBtnTxt(r10);
        r10 = 2130837939; // 0x7f0201b3 float:1.7280846E38 double:1.0527738225E-314;
        r9 = r9.setBtnBgRes(r10);
        r0 = r16;
        r1 = r18;
        r10 = r0.genClickListener(r1);
        r9.setBtnClickListener(r10);
        goto L_0x0036;
    L_0x02b0:
        r9 = 2130837595; // 0x7f02005b float:1.7280149E38 double:1.0527736526E-314;
        r9 = r4.setIconRes(r9);
        r10 = 2131624092; // 0x7f0e009c float:1.8875354E38 double:1.0531622337E-314;
        r10 = r5.getString(r10);
        r9 = r9.setTitle(r10);
        r10 = 2131624091; // 0x7f0e009b float:1.8875352E38 double:1.053162233E-314;
        r10 = r5.getString(r10);
        r9 = r9.setDesc(r10);
        r10 = 2131624090; // 0x7f0e009a float:1.887535E38 double:1.0531622327E-314;
        r10 = r5.getString(r10);
        r9 = r9.setBtnTxt(r10);
        r10 = 2130837939; // 0x7f0201b3 float:1.7280846E38 double:1.0527738225E-314;
        r9 = r9.setBtnBgRes(r10);
        r0 = r16;
        r1 = r18;
        r10 = r0.genClickListener(r1);
        r9.setBtnClickListener(r10);
        goto L_0x0036;
    L_0x02ec:
        r9 = 2130837591; // 0x7f020057 float:1.728014E38 double:1.0527736506E-314;
        r9 = r4.setIconRes(r9);
        r10 = 2131624068; // 0x7f0e0084 float:1.8875305E38 double:1.053162222E-314;
        r10 = r5.getString(r10);
        r9 = r9.setTitle(r10);
        r10 = 2131624067; // 0x7f0e0083 float:1.8875303E38 double:1.0531622214E-314;
        r10 = r5.getString(r10);
        r9 = r9.setDesc(r10);
        r10 = 2131624084; // 0x7f0e0094 float:1.8875338E38 double:1.0531622298E-314;
        r10 = r5.getString(r10);
        r9 = r9.setBtnTxt(r10);
        r10 = 2130837939; // 0x7f0201b3 float:1.7280846E38 double:1.0527738225E-314;
        r9 = r9.setBtnBgRes(r10);
        r0 = r16;
        r1 = r18;
        r10 = r0.genClickListener(r1);
        r9.setBtnClickListener(r10);
        goto L_0x0036;
    L_0x0328:
        r9 = 2130837594; // 0x7f02005a float:1.7280146E38 double:1.052773652E-314;
        r9 = r4.setIconRes(r9);
        r10 = 2131624080; // 0x7f0e0090 float:1.887533E38 double:1.053162228E-314;
        r10 = r5.getString(r10);
        r9 = r9.setTitle(r10);
        r10 = 2131624079; // 0x7f0e008f float:1.8875328E38 double:1.0531622273E-314;
        r10 = r5.getString(r10);
        r9 = r9.setDesc(r10);
        r10 = 2131624078; // 0x7f0e008e float:1.8875326E38 double:1.053162227E-314;
        r10 = r5.getString(r10);
        r9 = r9.setBtnTxt(r10);
        r10 = 2130837939; // 0x7f0201b3 float:1.7280846E38 double:1.0527738225E-314;
        r9 = r9.setBtnBgRes(r10);
        r0 = r16;
        r1 = r18;
        r10 = r0.genClickListener(r1);
        r9.setBtnClickListener(r10);
        goto L_0x0036;
    L_0x0364:
        r9 = 2130837592; // 0x7f020058 float:1.7280142E38 double:1.052773651E-314;
        r9 = r4.setIconRes(r9);
        r10 = 2131624072; // 0x7f0e0088 float:1.8875313E38 double:1.053162224E-314;
        r10 = r5.getString(r10);
        r9 = r9.setTitle(r10);
        r10 = 2131624071; // 0x7f0e0087 float:1.8875311E38 double:1.0531622233E-314;
        r11 = 2;
        r11 = new java.lang.Object[r11];
        r12 = 0;
        r13 = r16.getContext();
        r14 = r18.getCloudSpaceTotalSize();
        r13 = com.miui.gallery.cloud.syncstate.SyncStateUtil.getQuantityStringWithUnit(r13, r14);
        r11[r12] = r13;
        r12 = 1;
        r13 = r16.getContext();
        r14 = r18.getCloudSpaceRemainingSize();
        r13 = com.miui.gallery.cloud.syncstate.SyncStateUtil.getQuantityStringWithUnit(r13, r14);
        r11[r12] = r13;
        r10 = r5.getString(r10, r11);
        r9 = r9.setDesc(r10);
        r10 = 2131624070; // 0x7f0e0086 float:1.887531E38 double:1.053162223E-314;
        r10 = r5.getString(r10);
        r9 = r9.setBtnTxt(r10);
        r10 = 2130837939; // 0x7f0201b3 float:1.7280846E38 double:1.0527738225E-314;
        r9 = r9.setBtnBgRes(r10);
        r0 = r16;
        r1 = r18;
        r10 = r0.genClickListener(r1);
        r9.setBtnClickListener(r10);
        r10 = r18.getCloudSpaceTotalSize();
        r12 = 0;
        r9 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1));
        if (r9 <= 0) goto L_0x0036;
    L_0x03c9:
        r9 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r10 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r12 = r18.getCloudSpaceRemainingSize();
        r11 = (float) r12;
        r10 = r10 * r11;
        r12 = r18.getCloudSpaceTotalSize();
        r11 = (float) r12;
        r10 = r10 / r11;
        r9 = r9 - r10;
        r4.setProgress(r9);
        goto L_0x0036;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.ui.BackupTitle.addSyncItem(com.miui.gallery.ui.BackupTitle$TitleData, com.miui.gallery.cloud.syncstate.SyncStateInfo):void");
    }

    private boolean isNormalSyncStatus(SyncStatus syncStatus) {
        return syncStatus == SyncStatus.SYNC_PENDING || syncStatus == SyncStatus.SYNCING || syncStatus == SyncStatus.SYNCING_METADATA || syncStatus == SyncStatus.SYNCED;
    }

    private void tryStatSyncStateError(SyncStateInfo syncState) {
        SyncStatus status = syncState.getSyncStatus();
        if (!(isNormalSyncStatus(status) || (this.mCurSyncType == syncState.getSyncType() && this.mCurSyncStatus == status))) {
            HashMap<String, String> params = new HashMap();
            params.put("error_state", syncState.getSyncType().name() + "_" + status.name());
            GallerySamplingStatHelper.recordCountEvent("Sync", "sync_state_error", params);
        }
        this.mCurSyncType = syncState.getSyncType();
        this.mCurSyncStatus = status;
    }

    private void tryStatSyncStateCorrect(String clickName) {
        if (this.mCurSyncStatus != null && this.mCurSyncType != null && !isNormalSyncStatus(this.mCurSyncStatus)) {
            HashMap<String, String> params = new HashMap();
            params.put("error_correct", this.mCurSyncType.name() + "_" + this.mCurSyncStatus.name() + "_" + clickName);
            GallerySamplingStatHelper.recordCountEvent("Sync", "sync_state_error_correct", params);
        }
    }

    private Animation getSyncingAnim() {
        if (this.mSyncingIconAnim == null) {
            this.mSyncingIconAnim = AnimationUtils.loadAnimation(getContext(), R.anim.photo_status_syncing_rotate_anim);
        }
        return this.mSyncingIconAnim;
    }

    private SyncType getImmediateSyncType(SyncStateInfo curState) {
        SyncType syncType = curState.getSyncType();
        SyncStatus syncStatus = curState.getSyncStatus();
        if (syncStatus == SyncStatus.BATTERY_LOW) {
            return SyncType.POWER_FORCE;
        }
        if (syncStatus == SyncStatus.NO_WIFI) {
            return SyncType.GPRS_FORCE;
        }
        if (syncStatus == SyncStatus.UNKNOWN_ERROR) {
            return SyncType.NORMAL;
        }
        return syncType;
    }

    private OnClickListener genClickListener(SyncStateInfo stateInfo) {
        switch (stateInfo.getSyncStatus()) {
            case SYNC_PENDING:
            case SYNC_ERROR:
            case UNKNOWN_ERROR:
            case NO_WIFI:
            case BATTERY_LOW:
                return new SyncImmediateListener(getImmediateSyncType(stateInfo));
            case SYNCING:
            case SYNCING_METADATA:
                if (stateInfo.getSyncType().isForce()) {
                    return new StopSyncListener(this, null);
                }
                return new PauseSyncListener(this, null);
            case SYNC_PAUSE:
                return new ResumeSyncListener(getImmediateSyncType(stateInfo));
            case NO_ACCOUNT:
                return new LoginAccountListener(this, null);
            case MASTER_SYNC_OFF:
            case SYNC_OFF:
                return new OpenSyncSwitchListener(this, null);
            case CTA_NOT_ALLOW:
                return new SetCTAListener(this, null);
            case DISCONNECTED:
                return new SetNetworkListener(this, null);
            case SYSTEM_SPACE_LOW:
                return new SlimDeviceSpaceListener(this, null);
            case CLOUD_SPACE_FULL:
                return new ExpanseCloudSpaceListener(this, null);
            default:
                return null;
        }
    }

    private void requestSync(SyncType syncType) {
        SyncUtil.requestSync(getContext(), new Builder().setSyncType(syncType).setSyncReason(1).setDelayUpload(false).setManual(true).build());
    }
}
