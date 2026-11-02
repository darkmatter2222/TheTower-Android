package com.applovin.impl;

import android.provider.Settings;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {
    public static void a(com.applovin.impl.adview.b bVar, com.applovin.impl.sdk.l lVar) {
        if (bVar == null) {
            return;
        }
        boolean zA = s.a(bVar);
        boolean zCanDrawOverlays = Settings.canDrawOverlays(bVar.getContext());
        if (zCanDrawOverlays || zA) {
            Map mapA = j2.a((AppLovinAdImpl) bVar.getCurrentAd());
            mapA.put("details", "canDrawOverlays=" + zCanDrawOverlays + ",isViewOverlaid=" + zA);
            lVar.E().a(h2.R0, "overlayViolation", mapA);
        }
    }

    public static void a(com.applovin.impl.sdk.ad.b bVar, AppLovinFullscreenActivity appLovinFullscreenActivity, com.applovin.impl.sdk.l lVar) {
        String strB = d.b(appLovinFullscreenActivity);
        String strA = d.a(appLovinFullscreenActivity);
        String packageName = appLovinFullscreenActivity.getPackageName();
        boolean z = StringUtils.isValidString(strB) && !strB.equals(packageName);
        boolean z2 = StringUtils.isValidString(strA) && !strA.equals(packageName);
        if (z || z2) {
            Map mapA = j2.a((AppLovinAdImpl) bVar);
            mapA.put("details", "activityTaskAffinityMismatch=" + z + ",baseActivityTaskAffinityMismatch=" + z2);
            lVar.E().a(h2.R0, "taskAffinityMismatch", mapA);
        }
    }
}
