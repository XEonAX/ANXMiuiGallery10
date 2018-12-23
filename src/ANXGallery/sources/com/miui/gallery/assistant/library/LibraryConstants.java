package com.miui.gallery.assistant.library;

import android.os.Build;
import android.os.Build.VERSION;
import com.miui.gallery.card.CardManager;
import com.miui.gallery.util.PhotoMovieEntranceUtils;

public class LibraryConstants {
    public static final String CURRENT_ABI = getCurrentAbi();
    public static final Long[] sAllLibraries = getAllLibraries();
    public static final Long[] sImageFeatureSelectionLibraries = new Long[]{Long.valueOf(1002), Long.valueOf(1004)};
    public static final Long[] sPhotoMovieLibraries = new Long[]{Long.valueOf(1009)};
    public static final Long[] sStoryLibraries = new Long[]{Long.valueOf(1002), Long.valueOf(1004), Long.valueOf(1005)};

    public static Long[] getAllLibraries() {
        Long[] allLibraries = new Long[0];
        if (PhotoMovieEntranceUtils.isPhotoMovieAvailable()) {
            allLibraries = concat(allLibraries, sPhotoMovieLibraries);
        }
        if (CardManager.isStoryFunctionEnable()) {
            return concat(allLibraries, sStoryLibraries);
        }
        if (CardManager.isImageFeatureSelectionEnable()) {
            return concat(allLibraries, sImageFeatureSelectionLibraries);
        }
        return allLibraries;
    }

    private static String getCurrentAbi() {
        if (VERSION.SDK_INT < 21) {
            return Build.CPU_ABI;
        }
        String[] supportAbis = Build.SUPPORTED_ABIS;
        String[] support64Abis = Build.SUPPORTED_64_BIT_ABIS;
        if (support64Abis == null || support64Abis.length <= 0) {
            return supportAbis[0];
        }
        return support64Abis[0];
    }

    public static Long[] concat(Long[] arr1, Long[] arr2) {
        if (arr1 == null || arr1.length == 0) {
            return arr2;
        }
        if (arr2 == null || arr2.length == 0) {
            return arr1;
        }
        Long[] result = new Long[(arr1.length + arr2.length)];
        System.arraycopy(arr1, 0, result, 0, arr1.length);
        System.arraycopy(arr2, 0, result, arr1.length, arr2.length);
        return result;
    }
}
