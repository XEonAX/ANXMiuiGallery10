package com.miui.gallery.util;

import com.miui.gallery.preference.GalleryPreferences.SampleStatistic;

public class StatSampling {
    public static final boolean FILTERED = (SampleStatistic.getUniqId() % 9 != 0);
}
