package com.miui.gallery.cloud;

import android.accounts.Account;
import android.app.IntentService;
import android.content.Intent;

public class AccountChangeService extends IntentService {
    public AccountChangeService() {
        super("AccountChangeService");
    }

    protected void onHandleIntent(Intent intent) {
        int wipeDataStrategy = 1;
        String action = intent.getAction();
        if ("delete_account".equals(action)) {
            Account preAccount = (Account) intent.getParcelableExtra("extra_account");
            if (intent.getBooleanExtra("extra_wipe_data", true)) {
                wipeDataStrategy = 2;
            }
            DeleteAccount.deleteAccountInTask(null, preAccount, wipeDataStrategy, null);
        } else if ("add_account".equals(action)) {
            AddAccount.onAddAccount(this, (Account) intent.getParcelableExtra("extra_account"));
        }
    }
}
