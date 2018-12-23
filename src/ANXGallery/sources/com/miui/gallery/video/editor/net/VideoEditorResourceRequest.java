package com.miui.gallery.video.editor.net;

import com.miui.gallery.R;
import com.miui.gallery.video.editor.factory.VideoEditorModuleFactory;
import com.miui.gallery.video.editor.model.LocalResource;
import com.miui.gallery.video.editor.model.SmartEffectLocalResource;
import com.miui.gallery.video.editor.model.VideoEditorBaseLocalResource;
import com.miui.gallery.video.editor.model.WaterMarkLocalResource;

public class VideoEditorResourceRequest extends VideoEditorBaseResourceRequest {
    private final long RESOURCE_AUDIO_PARENT_ID = 9507179096834080L;
    private final long RESOURCE_SMARTEFFECT_PARENT_ID = 9506731220402368L;
    private final long RESOURCE_TEXT_PARENT_ID = 9468682483925152L;
    private VideoEditorModuleFactory mModuleFactory;

    public VideoEditorResourceRequest(int type, VideoEditorModuleFactory factory) {
        super(type);
        this.mModuleFactory = factory;
    }

    protected long getParentId() {
        switch (this.type) {
            case R.id.video_editor_audio /*2131886121*/:
                return 9507179096834080L;
            case R.id.video_editor_smart_effect /*2131886126*/:
                return 9506731220402368L;
            case R.id.video_editor_water_mark /*2131886129*/:
                return 9468682483925152L;
            default:
                return 0;
        }
    }

    protected LocalResource newLocalResource() {
        if (this.type == R.id.video_editor_smart_effect) {
            return new SmartEffectLocalResource(this.mModuleFactory);
        }
        if (this.type == R.id.video_editor_water_mark) {
            return new WaterMarkLocalResource(this.mModuleFactory);
        }
        return new VideoEditorBaseLocalResource(this.mModuleFactory);
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0068  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0068  */
    /* JADX WARNING: Removed duplicated region for block: B:36:? A:{SYNTHETIC, RETURN} */
    protected void setResult(com.miui.gallery.video.editor.model.LocalResource r15) {
        /*
        r14 = this;
        r13 = r15 instanceof com.miui.gallery.video.editor.model.SmartEffectLocalResource;
        if (r13 == 0) goto L_0x0064;
    L_0x0004:
        r10 = r15;
        r10 = (com.miui.gallery.video.editor.model.SmartEffectLocalResource) r10;
        r5 = 0;
        r6 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x00b5 }
        r13 = r15.extra;	 Catch:{ JSONException -> 0x00b5 }
        r6.<init>(r13);	 Catch:{ JSONException -> 0x00b5 }
        r13 = "assetid";
        r0 = r6.optString(r13);	 Catch:{ JSONException -> 0x00d1 }
        r13 = "update";
        r11 = r6.optString(r13);	 Catch:{ JSONException -> 0x00d1 }
        r13 = "assetName";
        r1 = r6.optString(r13);	 Catch:{ JSONException -> 0x00d1 }
        r13 = "longTime";
        r8 = r6.optString(r13);	 Catch:{ JSONException -> 0x00d1 }
        r13 = "shortTime";
        r9 = r6.optString(r13);	 Catch:{ JSONException -> 0x00d1 }
        r13 = "hasSpeedChange";
        r7 = r6.optString(r13);	 Catch:{ JSONException -> 0x00d1 }
        r13 = "enName";
        r4 = r6.optString(r13);	 Catch:{ JSONException -> 0x00d1 }
        r13 = com.miui.gallery.video.editor.util.ToolsUtil.getTrimedString(r0);	 Catch:{ JSONException -> 0x00d1 }
        r10.assetId = r13;	 Catch:{ JSONException -> 0x00d1 }
        r13 = com.miui.gallery.video.editor.util.ToolsUtil.getTrimedString(r11);	 Catch:{ JSONException -> 0x00d1 }
        r10.update = r13;	 Catch:{ JSONException -> 0x00d1 }
        r13 = com.miui.gallery.video.editor.util.ToolsUtil.getTrimedString(r1);	 Catch:{ JSONException -> 0x00d1 }
        r10.assetName = r13;	 Catch:{ JSONException -> 0x00d1 }
        r13 = com.miui.gallery.video.editor.util.ToolsUtil.getTrimedString(r8);	 Catch:{ JSONException -> 0x00d1 }
        r10.longTime = r13;	 Catch:{ JSONException -> 0x00d1 }
        r13 = com.miui.gallery.video.editor.util.ToolsUtil.getTrimedString(r9);	 Catch:{ JSONException -> 0x00d1 }
        r10.shortTime = r13;	 Catch:{ JSONException -> 0x00d1 }
        r13 = com.miui.gallery.video.editor.util.ToolsUtil.getTrimedString(r7);	 Catch:{ JSONException -> 0x00d1 }
        r10.hasSpeedChange = r13;	 Catch:{ JSONException -> 0x00d1 }
        r13 = com.miui.gallery.video.editor.util.ToolsUtil.getTrimedString(r4);	 Catch:{ JSONException -> 0x00d1 }
        r10.enName = r13;	 Catch:{ JSONException -> 0x00d1 }
    L_0x0064:
        r13 = r15 instanceof com.miui.gallery.video.editor.model.WaterMarkLocalResource;
        if (r13 == 0) goto L_0x00b4;
    L_0x0068:
        r12 = r15;
        r12 = (com.miui.gallery.video.editor.model.WaterMarkLocalResource) r12;
        r5 = 0;
        r6 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x00c9 }
        r13 = r15.extra;	 Catch:{ JSONException -> 0x00c9 }
        r6.<init>(r13);	 Catch:{ JSONException -> 0x00c9 }
        r13 = "assetid";
        r0 = r6.optString(r13);	 Catch:{ JSONException -> 0x00ce }
        r13 = "update";
        r11 = r6.optString(r13);	 Catch:{ JSONException -> 0x00ce }
        r13 = "assetName";
        r1 = r6.optString(r13);	 Catch:{ JSONException -> 0x00ce }
        r13 = "cn";
        r2 = r6.optString(r13);	 Catch:{ JSONException -> 0x00ce }
        r13 = android.text.TextUtils.isEmpty(r0);	 Catch:{ JSONException -> 0x00ce }
        if (r13 == 0) goto L_0x00ba;
    L_0x0092:
        r13 = "";
    L_0x0094:
        r12.assetId = r13;	 Catch:{ JSONException -> 0x00ce }
        r13 = android.text.TextUtils.isEmpty(r11);	 Catch:{ JSONException -> 0x00ce }
        if (r13 == 0) goto L_0x00bf;
    L_0x009c:
        r13 = "";
    L_0x009e:
        r12.update = r13;	 Catch:{ JSONException -> 0x00ce }
        r13 = android.text.TextUtils.isEmpty(r1);	 Catch:{ JSONException -> 0x00ce }
        if (r13 == 0) goto L_0x00c4;
    L_0x00a6:
        r13 = "";
    L_0x00a8:
        r12.assetName = r13;	 Catch:{ JSONException -> 0x00ce }
        r13 = com.miui.gallery.video.editor.util.ToolsUtil.getTrimedString(r2);	 Catch:{ JSONException -> 0x00ce }
        r13 = com.miui.gallery.video.editor.util.ToolsUtil.parseIntFromStr(r13);	 Catch:{ JSONException -> 0x00ce }
        r12.isInternational = r13;	 Catch:{ JSONException -> 0x00ce }
    L_0x00b4:
        return;
    L_0x00b5:
        r3 = move-exception;
    L_0x00b6:
        r3.printStackTrace();
        goto L_0x0064;
    L_0x00ba:
        r13 = r0.trim();	 Catch:{ JSONException -> 0x00ce }
        goto L_0x0094;
    L_0x00bf:
        r13 = r11.trim();	 Catch:{ JSONException -> 0x00ce }
        goto L_0x009e;
    L_0x00c4:
        r13 = r1.trim();	 Catch:{ JSONException -> 0x00ce }
        goto L_0x00a8;
    L_0x00c9:
        r3 = move-exception;
    L_0x00ca:
        r3.printStackTrace();
        goto L_0x00b4;
    L_0x00ce:
        r3 = move-exception;
        r5 = r6;
        goto L_0x00ca;
    L_0x00d1:
        r3 = move-exception;
        r5 = r6;
        goto L_0x00b6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.video.editor.net.VideoEditorResourceRequest.setResult(com.miui.gallery.video.editor.model.LocalResource):void");
    }
}
