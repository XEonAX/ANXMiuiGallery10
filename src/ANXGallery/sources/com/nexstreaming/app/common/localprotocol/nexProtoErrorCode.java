package com.nexstreaming.app.common.localprotocol;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.widget.ActionBarMovableLayout;

public enum nexProtoErrorCode {
    OK(0),
    InvalidHDR(BaiduSceneResult.SHOOTING),
    InvalidRQ(BaiduSceneResult.TAEKWONDO),
    InvalidRS(BaiduSceneResult.MOUNTAINEERING),
    InvalidSSID(BaiduSceneResult.SPORTS_OTHER),
    Unrecognized(ActionBarMovableLayout.DEFAULT_SPRING_BACK_DURATION);
    
    private final int mValue;

    private nexProtoErrorCode(int i) {
        this.mValue = i;
    }

    public int getValue() {
        return this.mValue;
    }

    static nexProtoErrorCode fromValue(int i) {
        for (nexProtoErrorCode nexprotoerrorcode : values()) {
            if (nexprotoerrorcode.getValue() == i) {
                return nexprotoerrorcode;
            }
        }
        return Unrecognized;
    }
}
