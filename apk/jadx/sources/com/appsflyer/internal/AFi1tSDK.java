package com.appsflyer.internal;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class AFi1tSDK {
    public final String getCurrencyIso4217Code;
    public final String getMediationNetwork;
    private final boolean getMonetizationNetwork;
    public final String getRevenue;

    public AFi1tSDK(String str, String str2, String str3, boolean z) {
        Intrinsics.checkNotNullParameter(str, "");
        this.getRevenue = str;
        this.getMediationNetwork = str2;
        this.getCurrencyIso4217Code = str3;
        this.getMonetizationNetwork = z;
    }

    public final boolean getCurrencyIso4217Code() {
        return this.getMonetizationNetwork;
    }
}
