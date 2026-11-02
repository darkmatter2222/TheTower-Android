package com.appsflyer.internal;

import android.content.Intent;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes2.dex */
public interface AFh1qSDK {
    void AFAdRevenueData(AFh1jSDK aFh1jSDK);

    void getCurrencyIso4217Code();

    void getMediationNetwork(AFh1jSDK aFh1jSDK);

    boolean getMediationNetwork();

    void getMonetizationNetwork(AFf1rSDK aFf1rSDK, Function0<Unit> function0);

    boolean getMonetizationNetwork();

    void getRevenue(AFh1jSDK aFh1jSDK);

    void u_(Intent intent, AFa1rSDK aFa1rSDK);
}
