package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.util.Log;
import com.google.gson_nex.Gson;
import com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry;
import com.nexstreaming.kminternal.json.TemplateMetaData.Music;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.Category;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.Item;
import com.nexstreaming.nexeditorsdk.nexCrop.CropMode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class nexBeatTemplateManager {
    private static final String TAG = "nexMusicTempMan";
    private static Context mAppContext;
    private static nexBeatTemplateManager sSingleton = null;
    private List<BeatTemplate> externalView_musicTemplates = null;
    private Object m_musicTemplateLock = new Object();
    private List<BeatTemplate> musicTemplates = new ArrayList();

    public static class BeatTemplate extends c {
        private String bgmId;
        private int internalSourceCount = -1;
        private int maxExtendCount = -1;
        private int maxRecommendCount;
        private int maxSourceCount;
        private boolean parsed = false;

        BeatTemplate(Item item) {
            super(item);
        }

        public static BeatTemplate promote(c cVar) {
            if (cVar.category() != Category.beattemplate) {
                return null;
            }
            return new BeatTemplate(cVar);
        }

        private void parseTemplate() {
            int i = 0;
            if (!this.parsed) {
                this.parsed = true;
                String AssetPackageTemplateJsonToString = nexTemplateComposer.AssetPackageTemplateJsonToString(id());
                if (AssetPackageTemplateJsonToString != null) {
                    Music music = (Music) new Gson().fromJson(AssetPackageTemplateJsonToString, Music.class);
                    if (music != null) {
                        this.bgmId = music.string_audio_id;
                        Iterator it = music.list_effectEntries.iterator();
                        int i2 = -1;
                        int i3 = 1;
                        int i4 = 0;
                        while (it.hasNext()) {
                            EffectEntry effectEntry = (EffectEntry) it.next();
                            i2++;
                            if (effectEntry.b_source_change || effectEntry.int_priority > 0) {
                                if (effectEntry.int_priority > 0) {
                                    i4++;
                                } else if (effectEntry.internal_clip_id != null) {
                                    i++;
                                } else {
                                    i3++;
                                }
                            }
                            int i5 = i;
                            i3 = i3;
                            i4 = i4;
                            i = i5;
                        }
                        this.maxSourceCount = i2;
                        this.maxRecommendCount = i3;
                        this.maxExtendCount = i4;
                        this.internalSourceCount = i;
                    }
                }
            }
        }

        public String getBGMId() {
            parseTemplate();
            return this.bgmId;
        }

        public int getInternalSourceCount() {
            if (this.internalSourceCount == -1) {
                parseTemplate();
            }
            return this.internalSourceCount;
        }

        public int getMaxExtendCount() {
            if (this.maxExtendCount < 0) {
                parseTemplate();
            }
            return this.maxExtendCount;
        }

        public int getMaxRecommendCount() {
            if (this.maxRecommendCount == 0) {
                parseTemplate();
            }
            return this.maxRecommendCount;
        }

        public int getMaxSourceCount() {
            if (this.maxSourceCount == 0) {
                if (id().contains(".sc.")) {
                    String id = id();
                    id = id.substring(id.indexOf(".sc.") + 4, id.length());
                    if (id != null && id.length() > 0) {
                        this.maxSourceCount = Integer.parseInt(id);
                        return this.maxSourceCount;
                    }
                }
                parseTemplate();
            }
            return this.maxSourceCount;
        }
    }

    public enum Level {
        Recommend,
        Extends,
        Max
    }

    private static class a {
        public int a;
        public int b;
        public String c;
        public String d;
        public boolean e;
        public String f;
        public int g;
        public int h;

        private a() {
        }
    }

    private nexBeatTemplateManager(Context context) {
        mAppContext = context;
    }

    public static nexBeatTemplateManager getBeatTemplateManager(Context context) {
        if (sSingleton != null) {
            nexBeatTemplateManager nexbeattemplatemanager = sSingleton;
            if (!mAppContext.getPackageName().equals(context.getPackageName())) {
                sSingleton = null;
            }
        }
        if (sSingleton == null) {
            sSingleton = new nexBeatTemplateManager(context);
        }
        return sSingleton;
    }

    private void resolve(boolean z) {
        synchronized (this.m_musicTemplateLock) {
            this.musicTemplates.clear();
            for (Item item : nexAssetPackageManager.getAssetPackageManager(mAppContext).getInstalledAssetItems(Category.beattemplate)) {
                if (!item.hidden()) {
                    if (z) {
                        nexAssetPackageManager.getAssetPackageManager(mAppContext);
                        if (nexAssetPackageManager.checkExpireAsset(item.packageInfo())) {
                        }
                    }
                    this.musicTemplates.add(new BeatTemplate(item));
                }
            }
        }
    }

    public void loadTemplate() {
        resolve(false);
    }

    public void loadTemplate(boolean z) {
        resolve(z);
    }

    public BeatTemplate getBeatTemplate(String str) {
        BeatTemplate beatTemplate;
        synchronized (this.m_musicTemplateLock) {
            for (BeatTemplate beatTemplate2 : this.musicTemplates) {
                if (beatTemplate2.id().compareTo(str) == 0) {
                    break;
                }
            }
            beatTemplate2 = null;
        }
        return beatTemplate2;
    }

    public List<BeatTemplate> getBeatTemplates() {
        List<BeatTemplate> list;
        synchronized (this.m_musicTemplateLock) {
            if (this.externalView_musicTemplates == null) {
                this.externalView_musicTemplates = Collections.unmodifiableList(this.musicTemplates);
            }
            list = this.externalView_musicTemplates;
        }
        return list;
    }

    /* JADX WARNING: Removed duplicated region for block: B:128:0x049d  */
    /* JADX WARNING: Removed duplicated region for block: B:112:0x0401  */
    /* JADX WARNING: Removed duplicated region for block: B:135:0x04e6  */
    /* JADX WARNING: Removed duplicated region for block: B:115:0x0435  */
    static boolean internalApplyTemplateToProjectById(com.nexstreaming.nexeditorsdk.nexProject r18, java.lang.String r19) {
        /*
        r1 = com.nexstreaming.nexeditorsdk.nexTemplateComposer.AssetPackageTemplateJsonToString(r19);
        r9 = com.nexstreaming.nexeditorsdk.nexBeatTemplateManager.Level.Max;
        if (r1 == 0) goto L_0x0626;
    L_0x0008:
        r7 = 10800000; // 0xa4cb80 float:1.5134023E-38 double:5.335909E-317;
        r6 = 0;
        r2 = new com.google.gson_nex.Gson;
        r2.<init>();
        r3 = com.nexstreaming.kminternal.json.TemplateMetaData.Music.class;
        r1 = r2.fromJson(r1, r3);
        r1 = (com.nexstreaming.kminternal.json.TemplateMetaData.Music) r1;
        r5 = -1;
        r4 = 1;
        r3 = 0;
        r2 = 0;
        r8 = r1.list_effectEntries;
        r10 = r8.iterator();
        r8 = r7;
        r7 = r6;
        r6 = r5;
        r5 = r4;
        r4 = r3;
        r3 = r2;
    L_0x0029:
        r2 = r10.hasNext();
        if (r2 == 0) goto L_0x00b2;
    L_0x002f:
        r2 = r10.next();
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        if (r7 <= 0) goto L_0x003f;
    L_0x0037:
        r11 = r2.int_time;
        r11 = r11 - r7;
        if (r8 <= r11) goto L_0x003f;
    L_0x003c:
        r8 = r2.int_time;
        r8 = r8 - r7;
    L_0x003f:
        r7 = r2.int_time;
        r6 = r6 + 1;
        r11 = r2.b_source_change;
        if (r11 != 0) goto L_0x004b;
    L_0x0047:
        r11 = r2.int_priority;
        if (r11 <= 0) goto L_0x0080;
    L_0x004b:
        r11 = r1.default_effect;
        if (r11 == 0) goto L_0x0063;
    L_0x004f:
        r11 = r2.color_filter_id;
        if (r11 != 0) goto L_0x0059;
    L_0x0053:
        r11 = r1.default_effect;
        r11 = r11.sc_color_effect_id;
        r2.color_filter_id = r11;
    L_0x0059:
        r11 = r2.clip_effect_id;
        if (r11 != 0) goto L_0x0063;
    L_0x005d:
        r11 = r1.default_effect;
        r11 = r11.sc_clip_effect_id;
        r2.clip_effect_id = r11;
    L_0x0063:
        r11 = r2.int_priority;
        if (r11 <= 0) goto L_0x0070;
    L_0x0067:
        r4 = r4 + 1;
        r2 = r3;
        r3 = r4;
        r4 = r5;
    L_0x006c:
        r5 = r4;
        r4 = r3;
        r3 = r2;
        goto L_0x0029;
    L_0x0070:
        r2 = r2.internal_clip_id;
        if (r2 == 0) goto L_0x007a;
    L_0x0074:
        r3 = r3 + 1;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        goto L_0x006c;
    L_0x007a:
        r5 = r5 + 1;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        goto L_0x006c;
    L_0x0080:
        r11 = r1.default_effect;
        if (r11 == 0) goto L_0x0098;
    L_0x0084:
        r11 = r2.color_filter_id;
        if (r11 != 0) goto L_0x008e;
    L_0x0088:
        r11 = r1.default_effect;
        r11 = r11.color_filter_id;
        r2.color_filter_id = r11;
    L_0x008e:
        r11 = r2.clip_effect_id;
        if (r11 != 0) goto L_0x0098;
    L_0x0092:
        r11 = r1.default_effect;
        r11 = r11.clip_effect_id;
        r2.clip_effect_id = r11;
    L_0x0098:
        r11 = r2.clip_effect_id;
        if (r11 == 0) goto L_0x00ae;
    L_0x009c:
        r11 = r2.int_effect_in_duration;
        r12 = -1;
        if (r11 != r12) goto L_0x00a5;
    L_0x00a1:
        r11 = 50;
        r2.int_effect_in_duration = r11;
    L_0x00a5:
        r11 = r2.int_effect_out_duration;
        r12 = -1;
        if (r11 != r12) goto L_0x00ae;
    L_0x00aa:
        r11 = 50;
        r2.int_effect_out_duration = r11;
    L_0x00ae:
        r2 = r3;
        r3 = r4;
        r4 = r5;
        goto L_0x006c;
    L_0x00b2:
        r2 = r1.list_effectEntries;
        r7 = 0;
        r2 = r2.get(r7);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r7 = 0;
        r2.int_effect_in_duration = r7;
        r2 = r1.list_effectEntries;
        r7 = 0;
        r2 = r2.get(r7);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r7 = 0;
        r2.int_effect_out_duration = r7;
        r2 = r1.list_effectEntries;
        r7 = 0;
        r2 = r2.get(r7);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r7 = 0;
        r2.clip_effect_id = r7;
        r2 = r1.list_effectEntries;
        r7 = r1.list_effectEntries;
        r7 = r7.size();
        r7 = r7 + -1;
        r2 = r2.get(r7);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r7 = 0;
        r2.int_effect_in_duration = r7;
        r2 = r1.list_effectEntries;
        r7 = r1.list_effectEntries;
        r7 = r7.size();
        r7 = r7 + -1;
        r2 = r2.get(r7);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r7 = 0;
        r2.int_effect_out_duration = r7;
        r7 = 0;
        r2 = 0;
        r8 = 1;
        r0 = r18;
        r8 = r0.getTotalClipCount(r8);
        if (r8 <= r5) goto L_0x010e;
    L_0x0107:
        r7 = r8 - r5;
        if (r7 <= r4) goto L_0x010e;
    L_0x010b:
        r2 = r7 - r4;
        r7 = r4;
    L_0x010e:
        r10 = com.nexstreaming.nexeditorsdk.nexBeatTemplateManager.Level.Extends;
        if (r9 != r10) goto L_0x01f3;
    L_0x0112:
        r2 = 0;
    L_0x0113:
        r9 = "nexMusicTempMan";
        r10 = new java.lang.StringBuilder;
        r10.<init>();
        r11 = "sourceClipCount=";
        r10 = r10.append(r11);
        r8 = r10.append(r8);
        r10 = ", recommend=";
        r8 = r8.append(r10);
        r5 = r8.append(r5);
        r8 = ", extends=";
        r5 = r5.append(r8);
        r4 = r5.append(r4);
        r5 = " ,max=";
        r4 = r4.append(r5);
        r4 = r4.append(r6);
        r5 = ", priorityLevel=";
        r4 = r4.append(r5);
        r4 = r4.append(r7);
        r5 = ", eventLevel=";
        r4 = r4.append(r5);
        r4 = r4.append(r2);
        r5 = ", internal=";
        r4 = r4.append(r5);
        r3 = r4.append(r3);
        r3 = r3.toString();
        android.util.Log.d(r9, r3);
        r10 = new java.util.ArrayList;
        r10.<init>();
        r5 = new java.util.ArrayList;
        r5.<init>();
        r3 = r1.list_effectEntries;
        r4 = r3.iterator();
        r3 = r2;
    L_0x0179:
        r2 = r4.hasNext();
        if (r2 == 0) goto L_0x01fb;
    L_0x017f:
        r2 = r4.next();
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r6 = r2.int_priority;
        if (r6 <= 0) goto L_0x01b7;
    L_0x0189:
        r6 = r2.int_priority;
        if (r6 > r7) goto L_0x0179;
    L_0x018d:
        r6 = 1;
        r2.b_source_change = r6;
        r6 = "nexMusicTempMan";
        r8 = new java.lang.StringBuilder;
        r8.<init>();
        r9 = "t=";
        r8 = r8.append(r9);
        r9 = r2.int_time;
        r8 = r8.append(r9);
        r9 = ", priority=";
        r8 = r8.append(r9);
        r9 = r2.int_priority;
        r8 = r8.append(r9);
        r8 = r8.toString();
        android.util.Log.d(r6, r8);
    L_0x01b7:
        r6 = r2.b_source_change;
        if (r6 != 0) goto L_0x01ef;
    L_0x01bb:
        if (r3 <= 0) goto L_0x01ef;
    L_0x01bd:
        r6 = r2.internal_clip_id;
        if (r6 != 0) goto L_0x01ef;
    L_0x01c1:
        r6 = r2.int_time;
        if (r6 <= 0) goto L_0x01ef;
    L_0x01c5:
        r6 = 1;
        r2.b_source_change = r6;
        r3 = r3 + -1;
        r6 = "nexMusicTempMan";
        r8 = new java.lang.StringBuilder;
        r8.<init>();
        r9 = "t=";
        r8 = r8.append(r9);
        r9 = r2.int_time;
        r8 = r8.append(r9);
        r9 = ", event=";
        r8 = r8.append(r9);
        r8 = r8.append(r3);
        r8 = r8.toString();
        android.util.Log.d(r6, r8);
    L_0x01ef:
        r5.add(r2);
        goto L_0x0179;
    L_0x01f3:
        r10 = com.nexstreaming.nexeditorsdk.nexBeatTemplateManager.Level.Recommend;
        if (r9 != r10) goto L_0x0113;
    L_0x01f7:
        r7 = 0;
        r2 = 0;
        goto L_0x0113;
    L_0x01fb:
        r3 = 0;
        r2 = r5.size();
        r6 = r2 + -1;
        r2 = 0;
        r17 = r2;
        r2 = r3;
        r3 = r17;
    L_0x0208:
        if (r3 >= r6) goto L_0x0359;
    L_0x020a:
        r7 = new com.nexstreaming.nexeditorsdk.nexBeatTemplateManager$a;
        r4 = 0;
        r7.<init>();
        r7.a = r2;
        r2 = r5.get(r3);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r2 = r2.color_filter_id;
        r7.c = r2;
        r2 = r5.get(r3);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r2 = r2.internal_clip_id;
        r7.f = r2;
        r2 = r3 + 1;
        r2 = r5.get(r2);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r2 = r2.b_source_change;
        if (r2 == 0) goto L_0x029a;
    L_0x0232:
        r2 = r3 + 1;
        r2 = r5.get(r2);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r2 = r2.int_time;
        r7.b = r2;
    L_0x023e:
        r4 = r7.b;
        r2 = r7.b;
        r8 = r7.a;
        r8 = r2 - r8;
        r2 = 100;
        if (r8 >= r2) goto L_0x027e;
    L_0x024a:
        r2 = "nexMusicTempMan";
        r9 = new java.lang.StringBuilder;
        r9.<init>();
        r11 = "W[";
        r9 = r9.append(r11);
        r9 = r9.append(r3);
        r11 = "](";
        r9 = r9.append(r11);
        r11 = r7.a;
        r9 = r9.append(r11);
        r11 = ") lower duration (";
        r9 = r9.append(r11);
        r9 = r9.append(r8);
        r11 = ")";
        r9 = r9.append(r11);
        r9 = r9.toString();
        android.util.Log.w(r2, r9);
    L_0x027e:
        r2 = r5.get(r3);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r2 = r2.b_source_change;
        if (r2 == 0) goto L_0x02b3;
    L_0x0288:
        r2 = 1;
        r7.e = r2;
    L_0x028b:
        r2 = r7.a;
        r8 = r7.b;
        if (r2 >= r8) goto L_0x0294;
    L_0x0291:
        r10.add(r7);
    L_0x0294:
        r2 = r3 + 1;
        r3 = r2;
        r2 = r4;
        goto L_0x0208;
    L_0x029a:
        r2 = r3 + 1;
        r2 = r5.get(r2);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r4 = r2.int_time;
        r2 = r3 + 1;
        r2 = r5.get(r2);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r2 = r2.int_effect_in_duration;
        r2 = r4 - r2;
        r7.b = r2;
        goto L_0x023e;
    L_0x02b3:
        r2 = r5.get(r3);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r2 = r2.clip_effect_id;
        r7.d = r2;
        r2 = 0;
        r7.g = r2;
        r2 = r5.get(r3);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r9 = r2.int_effect_in_duration;
        r2 = r5.get(r3);
        r2 = (com.nexstreaming.kminternal.json.TemplateMetaData.EffectEntry) r2;
        r2 = r2.int_effect_out_duration;
        r2 = r2 + r9;
        r7.h = r2;
        r2 = r7.h;
        r9 = 100;
        if (r2 >= r9) goto L_0x0311;
    L_0x02d9:
        if (r3 == 0) goto L_0x0311;
    L_0x02db:
        r2 = "nexMusicTempMan";
        r9 = new java.lang.StringBuilder;
        r9.<init>();
        r11 = "W[";
        r9 = r9.append(r11);
        r9 = r9.append(r3);
        r11 = "](";
        r9 = r9.append(r11);
        r11 = r7.a;
        r9 = r9.append(r11);
        r11 = ") lower effect duration (";
        r9 = r9.append(r11);
        r11 = r7.h;
        r9 = r9.append(r11);
        r11 = ")";
        r9 = r9.append(r11);
        r9 = r9.toString();
        android.util.Log.w(r2, r9);
    L_0x0311:
        r2 = r7.h;
        if (r8 >= r2) goto L_0x028b;
    L_0x0315:
        r2 = "nexMusicTempMan";
        r9 = new java.lang.StringBuilder;
        r9.<init>();
        r11 = "W[";
        r9 = r9.append(r11);
        r9 = r9.append(r3);
        r11 = "](";
        r9 = r9.append(r11);
        r11 = r7.a;
        r9 = r9.append(r11);
        r11 = ") higher effect duration (";
        r9 = r9.append(r11);
        r9 = r9.append(r8);
        r11 = " < ";
        r9 = r9.append(r11);
        r11 = r7.h;
        r9 = r9.append(r11);
        r11 = ")";
        r9 = r9.append(r11);
        r9 = r9.toString();
        android.util.Log.w(r2, r9);
        r7.h = r8;
        goto L_0x028b;
    L_0x0359:
        r3 = r10.iterator();
    L_0x035d:
        r2 = r3.hasNext();
        if (r2 == 0) goto L_0x03cd;
    L_0x0363:
        r2 = r3.next();
        r2 = (com.nexstreaming.nexeditorsdk.nexBeatTemplateManager.a) r2;
        r4 = "nexMusicTempMan";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "st=";
        r5 = r5.append(r6);
        r6 = r2.a;
        r5 = r5.append(r6);
        r6 = ",et=";
        r5 = r5.append(r6);
        r6 = r2.b;
        r5 = r5.append(r6);
        r6 = ",sc=";
        r5 = r5.append(r6);
        r6 = r2.e;
        r5 = r5.append(r6);
        r6 = ",ei=";
        r5 = r5.append(r6);
        r6 = r2.d;
        r5 = r5.append(r6);
        r6 = ", cf=";
        r5 = r5.append(r6);
        r6 = r2.c;
        r5 = r5.append(r6);
        r6 = ", et=";
        r5 = r5.append(r6);
        r6 = r2.h;
        r5 = r5.append(r6);
        r6 = ", is=";
        r5 = r5.append(r6);
        r2 = r2.f;
        r2 = r5.append(r2);
        r2 = r2.toString();
        android.util.Log.d(r4, r2);
        goto L_0x035d;
    L_0x03cd:
        r11 = com.nexstreaming.nexeditorsdk.nexProject.clone(r18);
        r2 = 1;
        r0 = r18;
        r0.allClear(r2);
        r2 = 1;
        r12 = r11.getTotalClipCount(r2);
        r3 = 0;
        r13 = com.nexstreaming.nexeditorsdk.nexColorEffect.getInternalPresetList();
        r5 = 0;
        r14 = r10.size();
        r6 = 0;
    L_0x03e7:
        if (r6 >= r14) goto L_0x0611;
    L_0x03e9:
        r2 = r10.get(r6);
        r2 = (com.nexstreaming.nexeditorsdk.nexBeatTemplateManager.a) r2;
        r4 = r2.e;
        if (r4 == 0) goto L_0x063d;
    L_0x03f3:
        r4 = r2.f;
        if (r4 != 0) goto L_0x063d;
    L_0x03f7:
        r3 = r3 + 1;
        if (r3 < r12) goto L_0x063d;
    L_0x03fb:
        r3 = 0;
        r4 = r3;
    L_0x03fd:
        r3 = r2.f;
        if (r3 == 0) goto L_0x049d;
    L_0x0401:
        r3 = new com.nexstreaming.nexeditorsdk.nexClip;
        r7 = r2.f;
        r8 = new java.lang.StringBuilder;
        r8.<init>();
        r9 = "@assetItem:";
        r8 = r8.append(r9);
        r9 = r2.f;
        r8 = r8.append(r9);
        r8 = r8.toString();
        r3.<init>(r7, r8);
        r0 = r18;
        r0.add(r3);
        r3 = r18.getLastPrimaryClip();
        r7 = 1;
        r3.setAssetResource(r7);
    L_0x042a:
        r3 = r18.getLastPrimaryClip();
        r3 = r3.getClipType();
        r7 = 1;
        if (r3 != r7) goto L_0x04e6;
    L_0x0435:
        r3 = r18.getLastPrimaryClip();
        r7 = r2.b;
        r8 = r2.a;
        r7 = r7 - r8;
        r3.setImageClipDuration(r7);
        r3 = r18.getLastPrimaryClip();
        r3 = r3.getCrop();
        r7 = 0;
        r8 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.FILL;
        r3.randomizeStartEndPosition(r7, r8);
        r3 = r2.c;
        if (r3 == 0) goto L_0x063a;
    L_0x0453:
        r3 = r2.c;
        r7 = "rand";
        r3 = r3.compareToIgnoreCase(r7);
        if (r3 != 0) goto L_0x04bd;
    L_0x045d:
        r3 = r18.getLastPrimaryClip();
        r7 = r13[r5];
        r3.setColorEffect(r7);
        r3 = r5 + 1;
        r5 = r13.length;
        if (r3 < r5) goto L_0x046c;
    L_0x046b:
        r3 = 0;
    L_0x046c:
        r5 = r2.d;
        if (r5 == 0) goto L_0x0637;
    L_0x0470:
        r5 = r2.d;
        r7 = "none";
        r5 = r5.compareToIgnoreCase(r7);
        if (r5 == 0) goto L_0x0637;
    L_0x047a:
        r5 = r18.getLastPrimaryClip();
        r5 = r5.getClipEffect();
        r7 = r2.d;
        r5.setEffect(r7);
        r5 = r18.getLastPrimaryClip();
        r5 = r5.getClipEffect();
        r7 = r2.g;
        r2 = r2.h;
        r5.setEffectShowTime(r7, r2);
        r2 = r6;
    L_0x0497:
        r6 = r2 + 1;
        r5 = r3;
        r3 = r4;
        goto L_0x03e7;
    L_0x049d:
        r3 = 1;
        r3 = r11.getClip(r4, r3);
        r3 = com.nexstreaming.nexeditorsdk.nexClip.dup(r3);
        r0 = r18;
        r0.add(r3);
        r3 = r18.getLastPrimaryClip();
        r7 = 1;
        r7 = r11.getClip(r4, r7);
        r7 = r7.getRotateDegree();
        r3.setRotateDegree(r7);
        goto L_0x042a;
    L_0x04bd:
        r3 = com.nexstreaming.nexeditorsdk.nexColorEffect.getPresetList();
        r7 = r3.iterator();
    L_0x04c5:
        r3 = r7.hasNext();
        if (r3 == 0) goto L_0x063a;
    L_0x04cb:
        r3 = r7.next();
        r3 = (com.nexstreaming.nexeditorsdk.nexColorEffect) r3;
        r8 = r3.getPresetName();
        r9 = r2.c;
        r8 = r8.compareToIgnoreCase(r9);
        if (r8 != 0) goto L_0x04c5;
    L_0x04dd:
        r7 = r18.getLastPrimaryClip();
        r7.setColorEffect(r3);
        r3 = r5;
        goto L_0x046c;
    L_0x04e6:
        r3 = r18.getLastPrimaryClip();
        r3 = r3.getClipType();
        r7 = 4;
        if (r3 != r7) goto L_0x0633;
    L_0x04f1:
        r3 = 1;
        r3 = r11.getClip(r4, r3);
        r3 = r3.getVideoClipEdit();
        r8 = r3.getStartTrimTime();
        r3 = 1;
        r3 = r11.getClip(r4, r3);
        r3 = r3.getVideoClipEdit();
        r15 = r3.getEndTrimTime();
        r7 = 0;
        r3 = r2.b;
        r9 = r2.a;
        r3 = r3 - r9;
        r9 = r8 + r3;
        if (r9 <= r15) goto L_0x062b;
    L_0x0515:
        r2 = r6;
        r3 = r5;
        goto L_0x0497;
    L_0x0518:
        r9 = 1;
        r9 = r11.getClip(r4, r9);
        r9 = com.nexstreaming.nexeditorsdk.nexClip.dup(r9);
        r0 = r18;
        r0.add(r9);
        r9 = r18.getLastPrimaryClip();
        r16 = 1;
        r0 = r16;
        r16 = r11.getClip(r4, r0);
        r16 = r16.getRotateDegree();
        r0 = r16;
        r9.setRotateDegree(r0);
        r9 = r2;
        r2 = r7;
        r7 = r8;
        r17 = r5;
        r5 = r6;
        r6 = r17;
    L_0x0543:
        r8 = r18.getLastPrimaryClip();
        r8 = r8.getVideoClipEdit();
        r16 = r7 + r2;
        r0 = r16;
        r8.setTrim(r7, r0);
        r8 = r7 + r2;
        r2 = r18.getLastPrimaryClip();
        r2 = r2.getCrop();
        r7 = 0;
        r16 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.FILL;
        r0 = r16;
        r2.randomizeStartEndPosition(r7, r0);
        if (r6 == 0) goto L_0x05ac;
    L_0x0566:
        r2 = r18.getLastPrimaryClip();
        r6 = r13[r3];
        r2.setColorEffect(r6);
        r2 = r3 + 1;
        r3 = r13.length;
        if (r2 < r3) goto L_0x0628;
    L_0x0574:
        r2 = 0;
        r3 = r2;
    L_0x0576:
        r2 = r9.d;
        if (r2 == 0) goto L_0x05a0;
    L_0x057a:
        r2 = r9.d;
        r6 = "none";
        r2 = r2.compareToIgnoreCase(r6);
        if (r2 == 0) goto L_0x05a0;
    L_0x0584:
        r2 = r18.getLastPrimaryClip();
        r2 = r2.getClipEffect();
        r6 = r9.d;
        r2.setEffect(r6);
        r2 = r18.getLastPrimaryClip();
        r2 = r2.getClipEffect();
        r6 = r9.g;
        r7 = r9.h;
        r2.setEffectShowTime(r6, r7);
    L_0x05a0:
        r6 = r5 + 1;
        if (r6 < r14) goto L_0x05f7;
    L_0x05a4:
        r2 = r6;
    L_0x05a5:
        r4 = r4 + 1;
        if (r4 < r12) goto L_0x0497;
    L_0x05a9:
        r4 = 0;
        goto L_0x0497;
    L_0x05ac:
        r2 = r9.c;
        if (r2 == 0) goto L_0x0576;
    L_0x05b0:
        r2 = r9.c;
        r6 = "rand";
        r2 = r2.compareToIgnoreCase(r6);
        if (r2 != 0) goto L_0x05cb;
    L_0x05ba:
        r2 = r18.getLastPrimaryClip();
        r6 = r13[r3];
        r2.setColorEffect(r6);
        r2 = r3 + 1;
        r3 = r13.length;
        if (r2 < r3) goto L_0x0628;
    L_0x05c8:
        r2 = 0;
        r3 = r2;
        goto L_0x0576;
    L_0x05cb:
        r2 = com.nexstreaming.nexeditorsdk.nexColorEffect.getPresetList();
        r6 = r2.iterator();
    L_0x05d3:
        r2 = r6.hasNext();
        if (r2 == 0) goto L_0x0576;
    L_0x05d9:
        r2 = r6.next();
        r2 = (com.nexstreaming.nexeditorsdk.nexColorEffect) r2;
        r7 = r2.getPresetName();
        r0 = r9.c;
        r16 = r0;
        r0 = r16;
        r7 = r7.compareToIgnoreCase(r0);
        if (r7 != 0) goto L_0x05d3;
    L_0x05ef:
        r6 = r18.getLastPrimaryClip();
        r6.setColorEffect(r2);
        goto L_0x0576;
    L_0x05f7:
        r2 = r9.e;
        if (r2 == 0) goto L_0x060e;
    L_0x05fb:
        r2 = 1;
        r5 = r2;
    L_0x05fd:
        r2 = r10.get(r6);
        r2 = (com.nexstreaming.nexeditorsdk.nexBeatTemplateManager.a) r2;
        r7 = r2.b;
        r9 = r2.a;
        r7 = r7 - r9;
        r9 = r8 + r7;
        if (r9 <= r15) goto L_0x0518;
    L_0x060c:
        r2 = r6;
        goto L_0x05a5;
    L_0x060e:
        r2 = 0;
        r5 = r2;
        goto L_0x05fd;
    L_0x0611:
        r1 = r1.string_audio_id;
        r0 = r18;
        r0.setBackgroundMusicPath(r1);
        r1 = 0;
        r0 = r18;
        r0.setProjectAudioFadeInTime(r1);
        r1 = 0;
        r0 = r18;
        r0.setProjectAudioFadeOutTime(r1);
        r1 = 1;
    L_0x0625:
        return r1;
    L_0x0626:
        r1 = 0;
        goto L_0x0625;
    L_0x0628:
        r3 = r2;
        goto L_0x0576;
    L_0x062b:
        r9 = r2;
        r2 = r3;
        r3 = r5;
        r5 = r6;
        r6 = r7;
        r7 = r8;
        goto L_0x0543;
    L_0x0633:
        r2 = r6;
        r3 = r5;
        goto L_0x0497;
    L_0x0637:
        r2 = r6;
        goto L_0x0497;
    L_0x063a:
        r3 = r5;
        goto L_0x046c;
    L_0x063d:
        r4 = r3;
        goto L_0x03fd;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.nexeditorsdk.nexBeatTemplateManager.internalApplyTemplateToProjectById(com.nexstreaming.nexeditorsdk.nexProject, java.lang.String):boolean");
    }

    public boolean applyTemplateToProjectById(nexProject nexproject, String str) {
        BeatTemplate beatTemplate = getBeatTemplate(str);
        if (beatTemplate == null || nexAssetPackageManager.checkExpireAsset(beatTemplate.packageInfo())) {
            return false;
        }
        return internalApplyTemplateToProjectById(nexproject, str);
    }

    public boolean applyTemplateToProjectById2(nexProject nexproject, String str) {
        String AssetPackageTemplateJsonToString = nexTemplateComposer.AssetPackageTemplateJsonToString(str);
        Level level = Level.Max;
        if (AssetPackageTemplateJsonToString == null) {
            return false;
        }
        int i;
        a aVar;
        a aVar2;
        Music music = (Music) new Gson().fromJson(AssetPackageTemplateJsonToString, Music.class);
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        Iterator it = music.list_effectEntries.iterator();
        int i5 = 10800000;
        int i6 = 0;
        int i7 = -1;
        while (true) {
            i = i2;
            i2 = i3;
            i3 = i4;
            if (!it.hasNext()) {
                break;
            }
            EffectEntry effectEntry = (EffectEntry) it.next();
            if (i6 > 0 && i5 > effectEntry.int_time - i6) {
                i5 = effectEntry.int_time - i6;
            }
            i6 = effectEntry.int_time;
            i7++;
            if (effectEntry.b_source_change || effectEntry.int_priority > 0) {
                if (music.default_effect != null) {
                    if (effectEntry.color_filter_id == null) {
                        effectEntry.color_filter_id = music.default_effect.sc_color_effect_id;
                    }
                    if (effectEntry.clip_effect_id == null) {
                        effectEntry.clip_effect_id = music.default_effect.sc_clip_effect_id;
                    }
                }
                if (effectEntry.int_priority > 0) {
                    i2++;
                } else if (effectEntry.internal_clip_id != null) {
                    i3++;
                } else {
                    i++;
                }
            } else {
                if (music.default_effect != null) {
                    if (effectEntry.color_filter_id == null) {
                        effectEntry.color_filter_id = music.default_effect.color_filter_id;
                    }
                    if (effectEntry.clip_effect_id == null) {
                        effectEntry.clip_effect_id = music.default_effect.clip_effect_id;
                    }
                }
                if (!(effectEntry.clip_effect_id == null || effectEntry.clip_effect_id.compareToIgnoreCase("none") == 0)) {
                    if (effectEntry.int_effect_in_duration == 0) {
                        effectEntry.int_effect_in_duration = 50;
                    }
                    if (effectEntry.int_effect_out_duration == 0) {
                        effectEntry.int_effect_out_duration = 50;
                    }
                }
            }
            i4 = i3;
            i3 = i2;
            i2 = i;
        }
        int totalClipCount = nexproject.getTotalClipCount(true);
        i6 = 0;
        i4 = 0;
        if (totalClipCount > i) {
            i6 = totalClipCount - i;
            if (i6 > i2) {
                i4 = i6 - i2;
                i6 = i2;
            }
        }
        if (level == Level.Extends) {
            i4 = 0;
        } else if (level == Level.Recommend) {
            i6 = 0;
            i4 = 0;
        }
        Log.d(TAG, "sourceClipCount=" + totalClipCount + ", recommend=" + i + ", extends=" + i2 + " ,max=" + i7 + ", priorityLevel=" + i6 + ", eventLevel=" + i4 + ", internal=" + i3);
        i7 = music.list_effectEntries.size();
        ArrayList arrayList = new ArrayList();
        i2 = 0;
        i = 1;
        i3 = i4;
        while (i < i7 - 1) {
            aVar = new a();
            aVar.e = ((EffectEntry) music.list_effectEntries.get(i)).b_source_change;
            if (((EffectEntry) music.list_effectEntries.get(i)).int_priority > 0) {
                if (i6 == 0) {
                    i4 = i2;
                    i++;
                    i2 = i4;
                } else if (((EffectEntry) music.list_effectEntries.get(i)).int_priority <= i6) {
                    aVar.e = true;
                    Log.d(TAG, "num=" + i + ", priority=" + ((EffectEntry) music.list_effectEntries.get(i)).int_priority);
                }
            }
            if (!aVar.e && i3 > 0 && aVar.f == null) {
                aVar.e = true;
                i4 = i3 - 1;
                Log.d(TAG, "num=" + i + ", event=" + i4);
                i3 = i4;
            }
            aVar.d = ((EffectEntry) music.list_effectEntries.get(i)).clip_effect_id;
            aVar.c = ((EffectEntry) music.list_effectEntries.get(i)).color_filter_id;
            aVar.f = ((EffectEntry) music.list_effectEntries.get(i)).internal_clip_id;
            if (aVar.e) {
                aVar.a = i2;
                aVar.b = ((EffectEntry) music.list_effectEntries.get(i)).int_time;
                if (aVar.a >= aVar.b) {
                    i4 = i2;
                    i++;
                    i2 = i4;
                } else {
                    i4 = aVar.b;
                }
            } else {
                a aVar3 = new a();
                aVar3.a = i2;
                aVar3.d = "none";
                aVar3.c = "none";
                aVar3.f = aVar.f;
                aVar.a = ((EffectEntry) music.list_effectEntries.get(i)).int_time - ((EffectEntry) music.list_effectEntries.get(i)).int_effect_in_duration;
                aVar.d = ((EffectEntry) music.list_effectEntries.get(i)).clip_effect_id;
                aVar3.b = aVar.a;
                aVar.b = (((EffectEntry) music.list_effectEntries.get(i)).int_effect_out_duration + ((EffectEntry) music.list_effectEntries.get(i)).int_effect_in_duration) + aVar.a;
                i4 = aVar.b;
                if (aVar3.a < aVar3.b) {
                    arrayList.add(aVar3);
                }
            }
            arrayList.add(aVar);
            i++;
            i2 = i4;
        }
        a aVar4 = new a();
        aVar4.e = false;
        aVar4.a = i2;
        aVar4.b = ((EffectEntry) music.list_effectEntries.get(i7 - 1)).int_time;
        aVar4.d = ((EffectEntry) music.list_effectEntries.get(i7 - 1)).clip_effect_id;
        aVar4.c = ((EffectEntry) music.list_effectEntries.get(i7 - 1)).color_filter_id;
        arrayList.add(aVar4);
        Log.d(TAG, "s= ,gap duration=" + i5);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            aVar2 = (a) it2.next();
            Log.d(TAG, "s=" + aVar2.a + ",e=" + aVar2.b + ",c=" + aVar2.e + ",ee=" + aVar2.d + ", sc=" + aVar2.f);
        }
        nexProject clone = nexProject.clone(nexproject);
        nexproject.allClear(true);
        int totalClipCount2 = clone.getTotalClipCount(true);
        i7 = 0;
        nexColorEffect[] internalPresetList = nexColorEffect.getInternalPresetList();
        i2 = 0;
        int size = arrayList.size();
        i = 0;
        while (i < size) {
            aVar2 = (a) arrayList.get(i);
            if (aVar2.f != null) {
                nexproject.add(new nexClip(aVar2.f));
            } else {
                nexproject.add(nexClip.dup(clone.getClip(i7, true)));
            }
            if (nexproject.getLastPrimaryClip().getClipType() == 1) {
                nexproject.getLastPrimaryClip().setImageClipDuration(aVar2.b - aVar2.a);
                nexproject.getLastPrimaryClip().getCrop().randomizeStartEndPosition(false, CropMode.FILL);
                if (aVar2.c != null) {
                    if (aVar2.c.compareToIgnoreCase("rand") != 0) {
                        for (nexColorEffect nexcoloreffect : nexColorEffect.getPresetList()) {
                            if (nexcoloreffect.getPresetName().compareToIgnoreCase(aVar2.c) == 0) {
                                nexproject.getLastPrimaryClip().setColorEffect(nexcoloreffect);
                                i3 = i2;
                                break;
                            }
                        }
                    }
                    nexproject.getLastPrimaryClip().setColorEffect(internalPresetList[i2]);
                    i3 = i2 + 1;
                    if (i3 >= internalPresetList.length) {
                        i3 = 0;
                    }
                    if (!(aVar2.d == null || aVar2.d.compareToIgnoreCase("none") == 0)) {
                        nexproject.getLastPrimaryClip().getClipEffect().setEffect(aVar2.d);
                    }
                }
                i3 = i2;
                nexproject.getLastPrimaryClip().getClipEffect().setEffect(aVar2.d);
            } else if (nexproject.getLastPrimaryClip().getClipType() == 4) {
                i5 = clone.getClip(i7, true).getVideoClipEdit().getStartTrimTime();
                int endTrimTime = clone.getClip(i7, true).getVideoClipEdit().getEndTrimTime();
                i3 = aVar2.b - aVar2.a;
                if (i5 + i3 > endTrimTime) {
                    i4 = i;
                    i3 = i2;
                    i2 = i7;
                } else {
                    aVar = aVar2;
                    i4 = i3;
                    i3 = i2;
                    i2 = i;
                    Object obj = null;
                    i6 = i5;
                    while (true) {
                        nexproject.getLastPrimaryClip().getVideoClipEdit().setTrim(i6, i6 + i4);
                        i5 = i6 + i4;
                        nexproject.getLastPrimaryClip().getCrop().randomizeStartEndPosition(false, CropMode.FILL);
                        if (obj != null) {
                            nexproject.getLastPrimaryClip().setColorEffect(internalPresetList[i3]);
                            i4 = i3 + 1;
                            if (i4 >= internalPresetList.length) {
                                i3 = 0;
                            }
                            i3 = i4;
                        } else if (aVar.c != null) {
                            if (aVar.c.compareToIgnoreCase("rand") != 0) {
                                for (nexColorEffect nexcoloreffect2 : nexColorEffect.getPresetList()) {
                                    if (nexcoloreffect2.getPresetName().compareToIgnoreCase(aVar.c) == 0) {
                                        nexproject.getLastPrimaryClip().setColorEffect(nexcoloreffect2);
                                        break;
                                    }
                                }
                            }
                            nexproject.getLastPrimaryClip().setColorEffect(internalPresetList[i3]);
                            i4 = i3 + 1;
                            if (i4 >= internalPresetList.length) {
                                i3 = 0;
                            }
                            i3 = i4;
                        }
                        if (!(aVar.d == null || aVar.d.compareToIgnoreCase("none") == 0)) {
                            nexproject.getLastPrimaryClip().getClipEffect().setEffect(aVar.d);
                        }
                        i = i2 + 1;
                        if (i >= size) {
                            i4 = i;
                            break;
                        }
                        Object obj2;
                        if (aVar.e) {
                            obj2 = 1;
                        } else {
                            obj2 = null;
                        }
                        aVar2 = (a) arrayList.get(i);
                        i6 = aVar2.b - aVar2.a;
                        if (i5 + i6 > endTrimTime) {
                            i4 = i;
                            break;
                        }
                        nexproject.add(nexClip.dup(clone.getClip(i7, true)));
                        aVar = aVar2;
                        i4 = i6;
                        i6 = i5;
                        Object obj3 = obj2;
                        i2 = i;
                        obj = obj3;
                    }
                    i2 = i7 + 1;
                    if (i2 >= totalClipCount2) {
                        i2 = 0;
                    }
                }
                i = i4 + 1;
                i7 = i2;
                i2 = i3;
            } else {
                i3 = i2;
            }
            if (aVar2.e && aVar2.f == null) {
                i4 = i7 + 1;
                if (i4 >= totalClipCount2) {
                    i2 = 0;
                    i4 = i;
                } else {
                    i2 = i4;
                    i4 = i;
                }
                i = i4 + 1;
                i7 = i2;
                i2 = i3;
            } else {
                i4 = i;
                i2 = i7;
                i = i4 + 1;
                i7 = i2;
                i2 = i3;
            }
        }
        nexproject.setBackgroundMusicPath(music.string_audio_id);
        nexproject.setProjectAudioFadeInTime(0);
        nexproject.setProjectAudioFadeOutTime(0);
        return true;
    }

    boolean updateBeatTemplate(boolean z, Item item) {
        synchronized (this.m_musicTemplateLock) {
            Log.d(TAG, "updateMusicTemplate(" + z + "," + item.packageInfo().assetIdx() + ")");
            if (!z) {
                for (BeatTemplate beatTemplate : this.musicTemplates) {
                    if (beatTemplate.id().compareTo(item.id()) == 0) {
                        this.musicTemplates.remove(beatTemplate);
                        break;
                    }
                }
            } else if (!item.hidden()) {
                this.musicTemplates.add(new BeatTemplate(item));
            }
        }
        return false;
    }
}
