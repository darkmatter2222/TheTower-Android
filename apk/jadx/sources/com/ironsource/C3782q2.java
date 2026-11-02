package com.ironsource;

import com.ironsource.adapters.facebook.FacebookConstants;
import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.q2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3782q2 {
    private final AbstractC3907x0 a;
    private final Map<String, Object> b;
    private final List<String> c;
    private final StringBuilder d;
    private A e;

    public C3782q2(AbstractC3907x0 adUnitData) {
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        this.a = adUnitData;
        this.b = new HashMap();
        this.c = new ArrayList();
        this.d = new StringBuilder();
    }

    private final void a(String str, int i, Map<String, ? extends Object> map) {
        this.b.put(str, map);
        this.d.append(i).append(str).append(FacebookConstants.PLACEMENT_IDS_SEPARATOR);
    }

    public final Map<String, Object> a() {
        return this.b;
    }

    public final void a(A3 biddingResponse) {
        Intrinsics.checkNotNullParameter(biddingResponse, "biddingResponse");
        String strC = biddingResponse.c();
        Intrinsics.checkNotNullExpressionValue(strC, "getInstanceName(...)");
        int iD = biddingResponse.d();
        Map<String, Object> mapA = biddingResponse.a();
        Intrinsics.checkNotNullExpressionValue(mapA, "getBiddingData(...)");
        a(strC, iD, mapA);
    }

    public final void a(A a) {
        this.e = a;
        if (a != null) {
            this.d.append(a.r()).append(a.p()).append(FacebookConstants.PLACEMENT_IDS_SEPARATOR);
        }
    }

    public final void a(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        List<String> list = this.c;
        String providerInstanceName = providerSettings.getProviderInstanceName();
        Intrinsics.checkNotNullExpressionValue(providerInstanceName, "getProviderInstanceName(...)");
        list.add(providerInstanceName);
        this.d.append(providerSettings.getInstanceType(this.a.b().a())).append(providerSettings.getProviderInstanceName()).append(FacebookConstants.PLACEMENT_IDS_SEPARATOR);
    }

    public final void a(NetworkSettings providerSettings, Map<String, ? extends Object> biddingData) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        Intrinsics.checkNotNullParameter(biddingData, "biddingData");
        String providerInstanceName = providerSettings.getProviderInstanceName();
        Intrinsics.checkNotNullExpressionValue(providerInstanceName, "getProviderInstanceName(...)");
        a(providerInstanceName, providerSettings.getInstanceType(this.a.b().a()), biddingData);
    }

    public final List<String> b() {
        return this.c;
    }

    public final A c() {
        return this.e;
    }

    public final StringBuilder d() {
        return this.d;
    }

    public final boolean e() {
        return (this.e == null && this.b.isEmpty() && this.c.isEmpty()) ? false : true;
    }
}
