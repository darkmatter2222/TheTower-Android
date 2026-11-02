package com.appsflyer.internal;

import com.appsflyer.AppsFlyerLib;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class AFk1wSDK implements AFk1ySDK {
    @Override // com.appsflyer.internal.AFk1ySDK
    public final String getCurrencyIso4217Code(String str) {
        Intrinsics.checkNotNullParameter(str, "");
        String str2 = String.format(str, AppsFlyerLib.getInstance().getHostPrefix(), AFa1uSDK.getMonetizationNetwork().getHostName());
        Intrinsics.checkNotNullExpressionValue(str2, "");
        return str2;
    }
}
