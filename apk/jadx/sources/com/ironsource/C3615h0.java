package com.ironsource;

import com.ironsource.mediationsdk.adquality.AdQualityBridge;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3615h0 implements ImpressionDataListener {
    private final AdQualityBridge a;
    private final C3936yb b;

    public C3615h0(AdQualityBridge adQualityBridge, C3936yb tools) {
        Intrinsics.checkNotNullParameter(adQualityBridge, "adQualityBridge");
        Intrinsics.checkNotNullParameter(tools, "tools");
        this.a = adQualityBridge;
        this.b = tools;
    }

    public /* synthetic */ C3615h0(AdQualityBridge adQualityBridge, C3936yb c3936yb, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(adQualityBridge, (i & 2) != 0 ? new C3936yb() : c3936yb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3615h0 c3615h0, C3533c9 c3533c9) {
        c3615h0.a.sendCustomMediationRevenue$mediationsdk_release(c3533c9);
    }

    @Override // com.ironsource.mediationsdk.impressionData.ImpressionDataListener
    public void onImpressionSuccess(final C3533c9 impressionData) {
        Intrinsics.checkNotNullParameter(impressionData, "impressionData");
        this.b.a(new Runnable() { // from class: com.ironsource.h0$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3615h0.a(this.f$0, impressionData);
            }
        });
    }
}
