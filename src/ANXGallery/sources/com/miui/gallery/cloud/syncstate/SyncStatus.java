package com.miui.gallery.cloud.syncstate;

public enum SyncStatus {
    SYNC_PENDING,
    SYNCING,
    SYNCING_METADATA,
    SYNCED,
    SYNC_PAUSE,
    SYNC_ERROR,
    NO_ACCOUNT,
    MASTER_SYNC_OFF,
    SYNC_OFF,
    CTA_NOT_ALLOW,
    DISCONNECTED,
    NO_WIFI,
    BATTERY_LOW,
    SYSTEM_SPACE_LOW,
    CLOUD_SPACE_FULL,
    UNKNOWN_ERROR,
    UNAVAILABLE
}
