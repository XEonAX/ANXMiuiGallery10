package com.miui.gallery.util;

import com.nexstreaming.nexeditorsdk.nexCrop;

public class NotificationHelper {
    public static int getBabyAlbumNotificationId(boolean isSharer, int id) {
        if (isSharer) {
            return 200000 + (id % nexCrop.ABSTRACT_DIMENSION);
        }
        return (id % nexCrop.ABSTRACT_DIMENSION) + nexCrop.ABSTRACT_DIMENSION;
    }

    public static int getPushNotificationId(int id) {
        return 300000 + (id % nexCrop.ABSTRACT_DIMENSION);
    }
}
