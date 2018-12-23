package com.xiaomi.push.service;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.OnAccountsUpdateListener;
import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.MIIDUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import java.util.ArrayList;

public class MIIDManager {
    private static volatile MIIDManager sInstance;
    private AccountManager mAccountManager;
    private Context mContext;
    private ArrayList<MIIDUpdatedCallback> mMIIDUpdatedCallbacks;
    private OnAccountsUpdateListener mMIIDUpdatedlistener;
    private Object mObject = new Object();

    public interface MIIDUpdatedCallback {
        void onMIIDUpdate(String str, Context context);
    }

    private MIIDManager(Context context) {
        this.mContext = context;
        if (MIIDUtils.checkGETACCOUNTPermission(this.mContext)) {
            this.mAccountManager = AccountManager.get(this.mContext);
            this.mMIIDUpdatedCallbacks = new ArrayList();
        }
    }

    public static MIIDManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (MIIDManager.class) {
                if (sInstance == null) {
                    sInstance = new MIIDManager(context);
                }
            }
        }
        return sInstance;
    }

    private void initMIIDUpdateListener() {
        if (this.mMIIDUpdatedlistener == null) {
            this.mMIIDUpdatedlistener = new OnAccountsUpdateListener() {
                public void onAccountsUpdated(final Account[] accounts) {
                    ScheduledJobManager.getInstance(MIIDManager.this.mContext).addOneShootJob(new Runnable() {
                        public void run() {
                            MIIDManager.this.updateMIIDAccount(accounts);
                        }
                    });
                }
            };
        }
    }

    private void updateMIIDAccount(Account[] accounts) {
        boolean hasNewMIID = false;
        Account miAccount = null;
        if (accounts != null && accounts.length > 0) {
            for (Account account : accounts) {
                if (account != null && TextUtils.equals("com.xiaomi", account.type)) {
                    miAccount = account;
                    break;
                }
            }
            if (!(miAccount == null || TextUtils.isEmpty(miAccount.name))) {
                hasNewMIID = true;
            }
            boolean hasCachedMIID = MIIDSPCacheHelper.getInstance(this.mContext).hasCachedMIID();
            if (hasNewMIID && !hasCachedMIID) {
                MIIDSPCacheHelper.getInstance(this.mContext).updateCachedMIID(miAccount.name);
                executeCallback(miAccount.name);
            } else if (!hasNewMIID && hasCachedMIID) {
                MIIDSPCacheHelper.getInstance(this.mContext).removeCachedMIID();
                executeCallback("0");
            } else if (hasNewMIID && hasCachedMIID && !TextUtils.equals(MIIDSPCacheHelper.getInstance(this.mContext).getCachedMIID(), miAccount.name)) {
                MIIDSPCacheHelper.getInstance(this.mContext).updateCachedMIID(miAccount.name);
                executeCallback(miAccount.name);
            }
        }
    }

    public boolean startMIIDUpdateListener() {
        try {
            if (!MIIDUtils.checkGETACCOUNTPermission(this.mContext)) {
                return false;
            }
            if (this.mMIIDUpdatedlistener == null) {
                initMIIDUpdateListener();
            }
            this.mAccountManager.addOnAccountsUpdatedListener(this.mMIIDUpdatedlistener, null, true);
            return true;
        } catch (Exception e) {
            MyLog.e(e.toString());
            return false;
        }
    }

    public void recycleMIIDUpdateListener() {
        if (MIIDUtils.checkGETACCOUNTPermission(this.mContext) && this.mMIIDUpdatedlistener != null) {
            this.mAccountManager.removeOnAccountsUpdatedListener(this.mMIIDUpdatedlistener);
        }
    }

    /* JADX WARNING: Missing block: B:10:0x001a, code:
            r2 = r1.iterator();
     */
    /* JADX WARNING: Missing block: B:12:0x0022, code:
            if (r2.hasNext() == false) goto L_0x0011;
     */
    /* JADX WARNING: Missing block: B:13:0x0024, code:
            ((com.xiaomi.push.service.MIIDManager.MIIDUpdatedCallback) r2.next()).onMIIDUpdate(r6, r5.mContext);
     */
    /* JADX WARNING: Missing block: B:22:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:23:?, code:
            return;
     */
    private void executeCallback(java.lang.String r6) {
        /*
        r5 = this;
        r3 = r5.mObject;
        monitor-enter(r3);
        r2 = r5.mMIIDUpdatedCallbacks;	 Catch:{ all -> 0x0030 }
        if (r2 == 0) goto L_0x0010;
    L_0x0007:
        r2 = r5.mMIIDUpdatedCallbacks;	 Catch:{ all -> 0x0030 }
        r2 = r2.size();	 Catch:{ all -> 0x0030 }
        r4 = 1;
        if (r2 >= r4) goto L_0x0012;
    L_0x0010:
        monitor-exit(r3);	 Catch:{ all -> 0x0030 }
    L_0x0011:
        return;
    L_0x0012:
        r1 = new java.util.ArrayList;	 Catch:{ all -> 0x0030 }
        r2 = r5.mMIIDUpdatedCallbacks;	 Catch:{ all -> 0x0030 }
        r1.<init>(r2);	 Catch:{ all -> 0x0030 }
        monitor-exit(r3);	 Catch:{ all -> 0x0030 }
        r2 = r1.iterator();
    L_0x001e:
        r3 = r2.hasNext();
        if (r3 == 0) goto L_0x0011;
    L_0x0024:
        r0 = r2.next();
        r0 = (com.xiaomi.push.service.MIIDManager.MIIDUpdatedCallback) r0;
        r3 = r5.mContext;
        r0.onMIIDUpdate(r6, r3);
        goto L_0x001e;
    L_0x0030:
        r2 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0030 }
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.MIIDManager.executeCallback(java.lang.String):void");
    }

    public String getMIID() {
        String miid = getMIIDFromSystem();
        if (TextUtils.isEmpty(miid)) {
            MIIDSPCacheHelper.getInstance(this.mContext).updateCachedMIID("0");
            return "0";
        }
        MIIDSPCacheHelper.getInstance(this.mContext).updateCachedMIID(miid);
        return miid;
    }

    private String getMIIDFromSystem() {
        Account xmAccount = MIIDUtils.getXiaomiAccount(this.mContext);
        return xmAccount == null ? "" : xmAccount.name;
    }

    public void addMIIDUpdateCallback(MIIDUpdatedCallback miidUpdateCallback) {
        synchronized (this.mObject) {
            if (this.mMIIDUpdatedCallbacks == null) {
                this.mMIIDUpdatedCallbacks = new ArrayList();
            }
            if (miidUpdateCallback != null) {
                int callbacksSize = this.mMIIDUpdatedCallbacks.size();
                this.mMIIDUpdatedCallbacks.add(miidUpdateCallback);
                if (callbacksSize == 0 && !startMIIDUpdateListener()) {
                    MyLog.w("MIIDManager startMIIDUpdateListener failed cause lack of GET_ACCOUNTS permission");
                }
            }
        }
    }

    /* JADX WARNING: Missing block: B:15:?, code:
            return;
     */
    public void removeMIIDUpdateCallback(com.xiaomi.push.service.MIIDManager.MIIDUpdatedCallback r3) {
        /*
        r2 = this;
        r1 = r2.mObject;
        monitor-enter(r1);
        r0 = r2.mMIIDUpdatedCallbacks;	 Catch:{ all -> 0x001d }
        if (r0 != 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
    L_0x0008:
        return;
    L_0x0009:
        if (r3 == 0) goto L_0x001b;
    L_0x000b:
        r0 = r2.mMIIDUpdatedCallbacks;	 Catch:{ all -> 0x001d }
        r0.remove(r3);	 Catch:{ all -> 0x001d }
        r0 = r2.mMIIDUpdatedCallbacks;	 Catch:{ all -> 0x001d }
        r0 = r0.size();	 Catch:{ all -> 0x001d }
        if (r0 != 0) goto L_0x001b;
    L_0x0018:
        r2.recycleMIIDUpdateListener();	 Catch:{ all -> 0x001d }
    L_0x001b:
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
        goto L_0x0008;
    L_0x001d:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.MIIDManager.removeMIIDUpdateCallback(com.xiaomi.push.service.MIIDManager$MIIDUpdatedCallback):void");
    }
}
