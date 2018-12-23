package com.miui.gallery.cloudcontrol;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.cloud.HostManager.CloudControl;
import com.miui.gallery.cloudcontrol.CloudControlRequest.Builder;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.RequestError;
import com.miui.gallery.preference.GalleryPreferences;
import com.miui.gallery.preference.GalleryPreferences.CTA;
import com.miui.gallery.ui.AIAlbumStatusHelper;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.PrivacyAgreementUtils;
import com.miui.gallery.util.SyncUtil;
import java.util.Iterator;
import java.util.Map;

public class CloudControlRequestHelper {
    private Context mContext;

    public CloudControlRequestHelper(Context context) {
        this.mContext = context;
    }

    public boolean execRequestSync(boolean isLoggedIn) {
        boolean result = execRequestSyncInternal(isLoggedIn);
        if (result) {
            try {
                doPostJobs();
            } catch (Object e) {
                Log.e("CloudControlRequestHelper", "Error occurred while executing post cloud control request job, %s", e);
            }
        }
        return result;
    }

    public boolean execRequestSync() {
        return execRequestSync(SyncUtil.existXiaomiAccount(this.mContext));
    }

    private boolean execRequestSyncInternal(boolean isLoggedIn) {
        if (PrivacyAgreementUtils.isCloudServiceAgreementEnable(this.mContext)) {
            int i;
            if (!CTA.canConnectNetwork()) {
                if (BuildUtil.isInternational()) {
                    CTA.setCanConnectNetwork(true);
                } else {
                    Log.e("CloudControlRequestHelper", "Request failed: CTA not confirmed.");
                    return false;
                }
            }
            Builder builder = new Builder();
            if (isLoggedIn) {
                i = 1002;
            } else {
                i = 1;
            }
            try {
                CloudControlResponse response = (CloudControlResponse) builder.setMethod(i).setUrl(isLoggedIn ? CloudControl.getUrl() : CloudControl.getAnonymousUrl()).setSyncToken(GalleryPreferences.CloudControl.getSyncToken()).build().simpleExecuteSync();
                if (response == null) {
                    handleError(ErrorCode.BODY_EMPTY, "Response is empty", "Response is empty", isLoggedIn);
                    return false;
                }
                handleResponse(response);
                GalleryPreferences.CloudControl.setLastRequestSucceedTime(System.currentTimeMillis());
                GalleryPreferences.CloudControl.setLastRequestTime(System.currentTimeMillis());
                return true;
            } catch (RequestError requestError) {
                handleError(requestError.getErrorCode(), requestError.getMessage(), requestError.getResponseData(), isLoggedIn);
                return false;
            } finally {
                GalleryPreferences.CloudControl.setLastRequestTime(System.currentTimeMillis());
            }
        } else {
            Log.w("CloudControlRequestHelper", "Request failed: privacy agreement disabled");
            return false;
        }
    }

    private void handleResponse(CloudControlResponse response) {
        if (MiscUtil.isValid(response.getFeatureProfiles())) {
            boolean persistError = false;
            Iterator it = response.getFeatureProfiles().iterator();
            while (it.hasNext()) {
                FeatureProfile featureProfile = (FeatureProfile) it.next();
                CloudControlManager.getInstance().insertToCache(featureProfile);
                if (CloudControlDBHelper.tryInsertToDB(this.mContext, featureProfile) == 0) {
                    persistError = true;
                    Log.e("CloudControlRequestHelper", "Persist error: %s", String.valueOf(featureProfile));
                }
            }
            if (persistError) {
                Map<String, String> params = GallerySamplingStatHelper.generatorCommonParams();
                params.put("response", String.valueOf(response));
                GallerySamplingStatHelper.recordErrorEvent("cloud_control", "cloud_control_persist_error", params);
            }
        }
        if (!TextUtils.isEmpty(response.getSyncToken())) {
            GalleryPreferences.CloudControl.setSyncToken(response.getSyncToken());
        }
    }

    private void handleError(ErrorCode errorCode, String errorMessage, Object responseData, boolean isLoggedIn) {
        Log.e("CloudControlRequestHelper", "Request failed, errorCode: %s, errorMessage: %s, responseData: %s, isLoggedIn: %b.", errorCode != null ? errorCode.name() : "UNKNOWN", errorMessage, String.valueOf(responseData), Boolean.valueOf(isLoggedIn));
        Map<String, String> params = GallerySamplingStatHelper.generatorCommonParams();
        params.put("request_interval(minutes)", String.valueOf(getRequestIntervalMinutes()));
        params.put("error_code", errorCodeName);
        params.put("error_message", errorMessage);
        params.put("response", String.valueOf(responseData));
        GallerySamplingStatHelper.recordErrorEvent("cloud_control", isLoggedIn ? "cloud_control_real_name_request_error" : "cloud_control_anonymous_request_error", params);
    }

    private int getRequestIntervalMinutes() {
        long lastRequestTime = GalleryPreferences.CloudControl.getLastRequestTime();
        if (lastRequestTime == 0) {
            return Integer.MAX_VALUE;
        }
        return (int) (((System.currentTimeMillis() - lastRequestTime) / 1000) / 60);
    }

    private void doPostJobs() {
        AIAlbumStatusHelper.doPostCloudControlJob();
    }
}
