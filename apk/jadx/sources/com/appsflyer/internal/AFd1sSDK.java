package com.appsflyer.internal;

import p005kotlin.Pair;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class AFd1sSDK {
    public static boolean getCurrencyIso4217Code(String str, String str2) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(str2, "");
        int mediationNetwork = AFk1zSDK.getMediationNetwork(str);
        int mediationNetwork2 = AFk1zSDK.getMediationNetwork(str2);
        Pair<Integer, Integer> currencyIso4217Code = AFd1rSDK.getCurrencyIso4217Code(str2);
        Pair<Integer, Integer> monetizationNetwork = AFd1rSDK.getMonetizationNetwork(str2);
        if (mediationNetwork2 != -1 && currencyIso4217Code == null) {
            return mediationNetwork2 == mediationNetwork;
        }
        if (monetizationNetwork != null) {
            return monetizationNetwork.getFirst().intValue() <= mediationNetwork && mediationNetwork <= monetizationNetwork.getSecond().intValue();
        }
        return currencyIso4217Code != null && currencyIso4217Code.getFirst().intValue() <= mediationNetwork && mediationNetwork <= currencyIso4217Code.getSecond().intValue();
    }
}
