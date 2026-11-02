package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.appsflyer.internal.AFa1uSDK;
import com.tapjoy.TapjoyConstants;
import com.unity3d.ads.core.domain.WebViewScreenCapture;

/* JADX INFO: loaded from: classes2.dex */
public class SingleInstallBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra;
        if (intent == null) {
            return;
        }
        try {
            stringExtra = intent.getStringExtra(TapjoyConstants.TJC_REFERRER);
        } catch (Throwable th) {
            AFLogger.afErrorLog("error in BroadcastReceiver ", th);
            stringExtra = null;
        }
        if (stringExtra != null && AFa1uSDK.d_(context).getString(TapjoyConstants.TJC_REFERRER, null) != null) {
            AFa1uSDK.getMonetizationNetwork().getMonetizationNetwork(context, stringExtra);
            return;
        }
        String string = AppsFlyerProperties.getInstance().getString("referrer_timestamp");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (string == null || jCurrentTimeMillis - Long.parseLong(string) >= WebViewScreenCapture.CACHE_TTL_MS) {
            AFLogger.afInfoLog("SingleInstallBroadcastReceiver called");
            AFa1uSDK monetizationNetwork = AFa1uSDK.getMonetizationNetwork();
            AFa1uSDK.getRevenue(new Object[]{monetizationNetwork, context, intent}, -1666869813, 1666869820, System.identityHashCode(monetizationNetwork));
            AppsFlyerProperties.getInstance().set("referrer_timestamp", String.valueOf(System.currentTimeMillis()));
        }
    }
}
