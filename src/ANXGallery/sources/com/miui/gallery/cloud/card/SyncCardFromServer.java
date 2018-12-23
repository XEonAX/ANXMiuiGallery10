package com.miui.gallery.cloud.card;

import android.accounts.Account;
import com.miui.gallery.card.CardManager;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils;
import com.miui.gallery.cloud.HostManager.Story;
import com.miui.gallery.cloud.SyncConditionManager;
import com.miui.gallery.cloud.card.model.CardInfo;
import com.miui.gallery.cloud.card.model.CardInfoList;
import com.miui.gallery.cloud.card.network.CommonGalleryRequestHelper;
import com.miui.gallery.cloud.card.network.RequestArguments;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.SyncLog;
import java.util.List;
import java.util.Locale;

public class SyncCardFromServer {
    protected Account mAccount;

    public SyncCardFromServer(Account account) {
        this.mAccount = account;
    }

    public void sync() {
        long startTime = System.currentTimeMillis();
        while (SyncConditionManager.check(0) != 2) {
            CardInfoList cardInfoList = getCardInfoList(GalleryCloudSyncTagUtils.getCardSyncTag(this.mAccount), GalleryCloudSyncTagUtils.getCardSyncInfo(this.mAccount), 10);
            if (cardInfoList != null) {
                List<CardInfo> cardInfos = cardInfoList.getGalleryCards();
                if (MiscUtil.isValid(cardInfos)) {
                    for (CardInfo cardInfo : cardInfos) {
                        CardManager.getInstance().updateCardFromServer(cardInfo);
                    }
                }
                GalleryCloudSyncTagUtils.setCardSyncTag(this.mAccount, cardInfoList.getSyncTag());
                GalleryCloudSyncTagUtils.setCardSyncInfo(this.mAccount, cardInfoList.getSyncExtraInfo());
                if (cardInfoList.isLastPage()) {
                    CardManager.getInstance().triggerGuaranteeScenarios(true);
                }
            }
            SyncLog.d("SyncCardFromServer", "sync story card from server finish, cost time: " + (System.currentTimeMillis() - startTime));
            return;
        }
    }

    public CardInfoList getCardInfoList(long syncTag, String syncExtraInfo, long limit) {
        try {
            return (CardInfoList) new CommonGalleryRequestHelper(new RequestArguments<CardInfoList>() {
                public int getMethod() {
                    return 1001;
                }

                public String getUrl() {
                    return Story.getCardInfosUrl();
                }
            }).addParam("syncTag", Long.toString(syncTag)).addParam("limit", Long.toString(limit)).addParam("syncExtraInfo", syncExtraInfo).addParam("language", Locale.getDefault().toString()).setUseCache(false).executeSync();
        } catch (Object requestError) {
            Log.e("SyncCardFromServer", "Get getCardInfoList failed, %s", requestError);
        } catch (Object e) {
            Log.e("SyncCardFromServer", "Get getCardInfoList failed, %s", e);
        }
        return null;
    }
}
