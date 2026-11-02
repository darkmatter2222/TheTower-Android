package com.ironsource.mediationsdk.adunit.adapter.utility;

import com.ironsource.C3801r4;
import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class NativeAdProperties {
    private final AdOptionsPosition adOptionsPosition;
    private final AdOptionsPosition defaultAdOptionPosition;

    public NativeAdProperties(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.defaultAdOptionPosition = AdOptionsPosition.BOTTOM_LEFT;
        this.adOptionsPosition = getAdOptionsPosition(config);
    }

    private final AdOptionsPosition getAdOptionsPosition(JSONObject jSONObject) {
        String strOptString = jSONObject.optString(AdOptionsPosition.AD_OPTIONS_POSITION_KEY, this.defaultAdOptionPosition.toString());
        try {
            Intrinsics.checkNotNull(strOptString);
            return AdOptionsPosition.valueOf(strOptString);
        } catch (Exception e) {
            C3801r4.d().a(e);
            return this.defaultAdOptionPosition;
        }
    }

    public final AdOptionsPosition getAdOptionsPosition() {
        return this.adOptionsPosition;
    }
}
