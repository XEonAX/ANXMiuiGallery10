package com.miui.gallery.util.deprecated;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.preference.GalleryPreferences.PrefKeys;
import com.miui.gallery.util.Log;

public class Preference {
    private static SharedPreferences getDefaultPreferences(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context);
    }

    public static SharedPreferences sGetDefaultPreferences() {
        return getDefaultPreferences(GalleryApp.sGetAndroidContext());
    }

    private static Editor sGetDefaultEditor() {
        return sGetDefaultPreferences().edit();
    }

    public static void setDBUpgradeTo42() {
        sGetDefaultEditor().putBoolean("database_upgrade_to_42_clean_data", true).apply();
    }

    @Deprecated
    public static boolean sIsShowHidden() {
        return sGetDefaultPreferences().getBoolean(PrefKeys.HIDDEN_ALBUM_SHOW, false);
    }

    @Deprecated
    public static int sGetSlideshowInterval() {
        int interval = 2;
        try {
            interval = Integer.valueOf(sGetDefaultPreferences().getString(PrefKeys.SLIDESHOW_INTERVAL, "")).intValue();
        } catch (Exception e) {
        }
        return Math.max(1, interval) * 1000;
    }

    @Deprecated
    public static int sGetCloudFaceStatus() {
        return sGetDefaultPreferences().getInt(PrefKeys.FACE_CLOUD_STATUS, 0);
    }

    @Deprecated
    public static long sGetCloudFaceStatusNextCheckTime() {
        return sGetDefaultPreferences().getLong(PrefKeys.FACE_CLOUD_STATUS_NEXT_CHECK_TIME, 0);
    }

    @Deprecated
    public static boolean sGetFaceFeaturePending() {
        return sGetDefaultPreferences().getBoolean(PrefKeys.FACE_FEATURE_SWITCH_PENDING, false);
    }

    @Deprecated
    public static String sGetFaceUrlForWaiting() {
        return sGetDefaultPreferences().getString(PrefKeys.FACE_URL_FOR_WAITING, "");
    }

    @Deprecated
    public static String sGetFaceUrlForQueuing() {
        return sGetDefaultPreferences().getString(PrefKeys.FACE_URL_FOR_QUEUING, "");
    }

    public static boolean getSyncFetchSyncExtraInfoFromV2ToV3() {
        return sGetDefaultPreferences().getBoolean("sync_fetch_syncextreinfo_from_v2_to_v3", false);
    }

    public static void setSyncFetchSyncExtraInfoFromV2ToV3(boolean fetch) {
        sGetDefaultEditor().putBoolean("sync_fetch_syncextreinfo_from_v2_to_v3", fetch).apply();
    }

    public static boolean getSyncFetchAllPrivateData() {
        return sGetDefaultPreferences().getBoolean("sync_fetch_all_private_data", false);
    }

    public static void setSyncFetchAllPrivateData() {
        sGetDefaultEditor().putBoolean("sync_fetch_all_private_data", true).commit();
    }

    public static void sSetCloudGallerySpaceFull(boolean isFull) {
        sGetDefaultEditor().putBoolean("cloud_gallery_space_full", isFull).putLong("cloud_gallery_space_full_time", System.currentTimeMillis()).commit();
    }

    public static boolean sGetCloudGallerySpaceFull() {
        long spaceFullTime = sGetDefaultPreferences().getLong("cloud_gallery_space_full_time", 0);
        long now = System.currentTimeMillis();
        if (now - spaceFullTime >= 3600000 || now < spaceFullTime) {
            return false;
        }
        return sGetDefaultPreferences().getBoolean("cloud_gallery_space_full", false);
    }

    public static void sSetCloudGalleryRecyclebinFull(boolean isFull) {
        sGetDefaultEditor().putBoolean("cloud_gallery_recyclebin_full", isFull).commit();
    }

    public static boolean sGetCloudGalleryRecyclebinFull() {
        return sGetDefaultPreferences().getBoolean("cloud_gallery_recyclebin_full", false);
    }

    public static void sSetIsInternationalAccount(int state) {
        sGetDefaultEditor().putInt("is_international_account", state).commit();
    }

    public static int sIsInternationalAccount() {
        return sGetDefaultPreferences().getInt("is_international_account", 2);
    }

    public static boolean getSyncShouldClearDataBase() {
        return sGetDefaultPreferences().getBoolean("sync_should_clean_data", false);
    }

    public static void setSyncShouldClearDataBase(boolean shouldClear) {
        sGetDefaultEditor().putBoolean("sync_should_clean_data", shouldClear).commit();
    }

    public static void setSyncRetryTimes(int times) {
        Log.i("Preference", "setSyncRetryTimes, times=" + times);
        sGetDefaultEditor().putInt("sync_retry_times", times).commit();
    }

    public static boolean sIsFirstSynced() {
        return sGetDefaultPreferences().getBoolean("first_synced", false);
    }

    public static void sSetFirstSynced() {
        sGetDefaultEditor().putBoolean("first_synced", true).commit();
    }

    @Deprecated
    public static boolean sOnlySyncInWifi() {
        return sGetDefaultPreferences().getBoolean("sync_only_in_wifi", true);
    }

    public static void sRemoveCloudSettings() {
        sGetDefaultEditor().remove("last_slowscan_time").remove("cloud_gallery_space_full").remove("cloud_gallery_recyclebin_full").remove("sync_only_in_wifi").remove("sync_fetch_syncextreinfo_from_v2_to_v3").remove("sync_fetch_all_private_data").remove("first_synced").remove("is_international_account").remove(PrefKeys.FACE_CLOUD_STATUS).remove(PrefKeys.FACE_CLOUD_STATUS_NEXT_CHECK_TIME).remove(PrefKeys.FACE_FEATURE_SWITCH_PENDING).remove(PrefKeys.FACE_URL_FOR_WAITING).remove(PrefKeys.FACE_URL_FOR_QUEUING).remove("micloud_vip_level").remove("has_ever_synced_system_album").commit();
        Editor editor = sGetDefaultEditor();
        for (String key : sGetDefaultPreferences().getAll().keySet()) {
            if (isAutoUploadAlbumPreferenceKey(key)) {
                editor.remove(key);
            }
        }
        editor.commit();
    }

    public static boolean sGetImpunityDeclarationEveryTime() {
        return sGetDefaultPreferences().getBoolean(PrefKeys.CTA_IMPUNITY_DECLARATION_EVERY_TIME, true);
    }

    public static boolean sCanConnectNetworkByImpunity() {
        return sGetDefaultPreferences().getBoolean(PrefKeys.CTA_CAN_CONNECT_NETWORK_BY_IMPUNITY, false);
    }

    public static long sGetFilterMinSize() {
        long minSize = 0;
        try {
            return Long.parseLong(sGetDefaultPreferences().getString("filter_min_size", String.valueOf(minSize)));
        } catch (NumberFormatException e) {
            return minSize;
        }
    }

    public static boolean sGetIsAlbumAutoUploadOpen(String albumKey) {
        return sGetDefaultPreferences().getBoolean(createAutoUploadAlbumPreferenceKey(albumKey), false);
    }

    public static boolean sGetIsScreenShotAutoUploadOpen() {
        return sGetDefaultPreferences().getBoolean(createAutoUploadAlbumPreferenceKey("auto-upload-screenshot"), true);
    }

    private static boolean isAutoUploadAlbumPreferenceKey(String key) {
        return key.startsWith("auto_upload_album_preference_key_prefix_");
    }

    public static String createAutoUploadAlbumPreferenceKey(String albumKey) {
        return "auto_upload_album_preference_key_prefix_" + albumKey;
    }

    public static void sSetLastSlowScanTime(long lastTime) {
        sGetDefaultEditor().putLong("last_slowscan_time", lastTime).apply();
    }

    private static SharedPreferences getMultiProcessSharedPreferences(Context context) {
        return context.getSharedPreferences(context.getPackageName() + "_preferences_multi", 4);
    }

    public static boolean sHaveCheckBabyForNewService(Context context) {
        return getMultiProcessSharedPreferences(context).getBoolean("have_check_baby_for_new_face_service", false);
    }

    public static void sSetHaveCheckBabyForNewService(Context context) {
        getMultiProcessSharedPreferences(context).edit().putBoolean("have_check_baby_for_new_face_service", true).commit();
    }
}
