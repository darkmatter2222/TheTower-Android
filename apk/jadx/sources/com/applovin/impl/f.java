package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAdSize;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.unity.androidbridge.AndroidBridgeConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f extends i2 {
    public f(com.applovin.impl.sdk.l lVar) {
        super(lVar, h2.b.AD);
    }

    private AppLovinAdSize a(u uVar, com.applovin.impl.sdk.ad.b bVar) {
        AppLovinAdSize appLovinAdSizeF = uVar != null ? uVar.f() : null;
        if (appLovinAdSizeF != null) {
            return appLovinAdSizeF;
        }
        if (bVar != null) {
            return bVar.getSize();
        }
        return null;
    }

    private void a(h2 h2Var, u uVar, com.applovin.impl.sdk.ad.b bVar, AppLovinError appLovinError, Map map) {
        if (((Boolean) this.a.a(c5.J)).booleanValue() && this.a.J0()) {
            return;
        }
        if (bVar != null) {
            map.putAll(j2.a((AppLovinAdImpl) bVar));
        } else if (uVar != null) {
            CollectionUtils.putStringIfValid("ad_zone_id", uVar.e(), map);
            MaxAdFormat maxAdFormatD = uVar.d();
            if (maxAdFormatD != null) {
                CollectionUtils.putStringIfValid(FirebaseAnalytics.Param.AD_FORMAT, maxAdFormatD.getLabel(), map);
            }
        }
        AppLovinAdSize appLovinAdSizeA = a(uVar, bVar);
        if (appLovinAdSizeA != null) {
            CollectionUtils.putStringIfValid("ad_size", appLovinAdSizeA.getLabel(), map);
        }
        if (appLovinError != null) {
            CollectionUtils.putStringIfValid("error_message", appLovinError.getMessage(), map);
            CollectionUtils.putStringIfValid(AndroidBridgeConstants.ERROR_CODE, String.valueOf(appLovinError.getCode()), map);
        }
        d(h2Var, map);
    }

    public void a(h2 h2Var, com.applovin.impl.sdk.ad.b bVar) {
        a(h2Var, bVar, new HashMap());
    }

    public void a(h2 h2Var, com.applovin.impl.sdk.ad.b bVar, Map map) {
        a(h2Var, bVar != null ? bVar.getAdZone() : null, bVar, null, map);
    }

    public void a(h2 h2Var, u uVar, AppLovinError appLovinError) {
        a(h2Var, uVar, null, appLovinError, new HashMap());
    }
}
