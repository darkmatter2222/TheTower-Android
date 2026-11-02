package com.google.android.libraries.ads.mobile.sdk;

import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationStatus;
import java.util.Map;
import kotlin.jl1;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class d implements InitializationStatus {
    public final Map a = MapsKt.mapOf(TuplesKt.to("com.google.android.libraries.ads.mobile.sdk.MobileAds", jl1.a()));

    @Override // com.google.android.libraries.ads.mobile.sdk.initialization.InitializationStatus
    public final Map getAdapterStatusMap() {
        return this.a;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.initialization.InitializationStatus
    public final int getTotalLatency() {
        return 0;
    }
}
