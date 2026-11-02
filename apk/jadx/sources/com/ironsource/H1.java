package com.ironsource;

import com.unity3d.mediation.LevelPlay;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes4.dex */
public final class H1 {
    private final Map<LevelPlay.AdFormat, C3757p> a;

    public H1(JSONObject applicationAuctionSettings) {
        Intrinsics.checkNotNullParameter(applicationAuctionSettings, "applicationAuctionSettings");
        LevelPlay.AdFormat[] adFormatArrValues = LevelPlay.AdFormat.values();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(adFormatArrValues.length), 16));
        for (LevelPlay.AdFormat adFormat : adFormatArrValues) {
            JSONObject jSONObjectOptJSONObject = applicationAuctionSettings.optJSONObject(If.a(adFormat));
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
            }
            linkedHashMap.put(adFormat, new C3757p(jSONObjectOptJSONObject));
        }
        this.a = linkedHashMap;
    }

    public final Map<LevelPlay.AdFormat, C3757p> a() {
        return this.a;
    }
}
