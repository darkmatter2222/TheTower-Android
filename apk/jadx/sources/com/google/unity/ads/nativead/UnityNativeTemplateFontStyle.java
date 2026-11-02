package com.google.unity.ads.nativead;

import android.graphics.Typeface;
import android.util.Log;
import com.google.unity.ads.PluginUtils;

/* JADX INFO: loaded from: classes4.dex */
public enum UnityNativeTemplateFontStyle {
    NORMAL,
    BOLD,
    ITALIC,
    MONOSPACE;

    public static UnityNativeTemplateFontStyle fromIntValue(int i) {
        if (i >= 0 && i < values().length) {
            return values()[i];
        }
        Log.w(PluginUtils.LOGTAG, "Invalid index for NativeTemplateFontStyle: " + i);
        return NORMAL;
    }

    Typeface getTypeface() {
        int iOrdinal = ordinal();
        if (iOrdinal == 0) {
            return Typeface.DEFAULT;
        }
        if (iOrdinal == 1) {
            return Typeface.DEFAULT_BOLD;
        }
        if (iOrdinal != 2) {
            return iOrdinal != 3 ? Typeface.DEFAULT : Typeface.MONOSPACE;
        }
        return Typeface.defaultFromStyle(2);
    }
}
