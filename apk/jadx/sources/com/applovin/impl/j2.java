package com.applovin.impl;

import android.net.Uri;
import android.text.format.Formatter;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.sdk.AppLovinAdSize;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.unity.androidbridge.AndroidBridgeConstants;
import com.tapjoy.TapjoyConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j2 {
    public static String a(String str) {
        return StringUtils.prefixToIndex(1000, str);
    }

    public static Map a(c3 c3Var) {
        Map mapA = a((o3) c3Var);
        CollectionUtils.putStringIfValid("bcode", c3Var.C(), mapA);
        CollectionUtils.putStringIfValid("creative_id", c3Var.getCreativeId(), mapA);
        CollectionUtils.putStringIfValid("ad_unit_id", c3Var.getAdUnitId(), mapA);
        CollectionUtils.putStringIfValid("ad_event_id", c3Var.T(), mapA);
        CollectionUtils.putStringIfValid(FirebaseAnalytics.Param.AD_FORMAT, c3Var.getFormat().getLabel(), mapA);
        CollectionUtils.putStringIfValid("dsp_id", c3Var.getDspId(), mapA);
        CollectionUtils.putStringIfValid("dsp_name", c3Var.getDspName(), mapA);
        return mapA;
    }

    public static Map a(o3 o3Var) {
        HashMap map = new HashMap(3);
        CollectionUtils.putStringIfValid("network_name", o3Var.c(), map);
        String strB = o3Var.b();
        CollectionUtils.putStringIfValid("adapter_class", strB, map);
        CollectionUtils.putStringIfValid(TapjoyConstants.TJC_ADAPTER_VERSION, a4.a(strB).getAdapterVersion(), map);
        return map;
    }

    public static Map a(AppLovinAdImpl appLovinAdImpl) {
        HashMap map = new HashMap(10);
        if (appLovinAdImpl != null) {
            CollectionUtils.putStringIfValid("ad_domain", appLovinAdImpl.getAdDomain(), map);
            CollectionUtils.putStringIfValid("ad_id", String.valueOf(appLovinAdImpl.getAdIdNumber()), map);
            MaxAdFormat maxAdFormatD = appLovinAdImpl.getAdZone().d();
            CollectionUtils.putStringIfValid(FirebaseAnalytics.Param.AD_FORMAT, maxAdFormatD != null ? maxAdFormatD.getLabel() : null, map);
            CollectionUtils.putStringIfValid("ad_zone_id", appLovinAdImpl.getAdZone().e(), map);
            CollectionUtils.putStringIfValid("clcode", appLovinAdImpl.getClCode(), map);
            CollectionUtils.putStringIfValid("dsp_id", appLovinAdImpl.getDspId(), map);
            CollectionUtils.putStringIfValid("dsp_name", appLovinAdImpl.getDspName(), map);
            CollectionUtils.putStringIfValid("ad_size", appLovinAdImpl.getSize().getLabel(), map);
            CollectionUtils.putStringIfValid("ad_event_id", appLovinAdImpl.getMediationServeId(), map);
            CollectionUtils.putStringIfValid("is_omsdk_enabled", String.valueOf(appLovinAdImpl.isOpenMeasurementEnabled()), map);
            if (appLovinAdImpl instanceof com.applovin.impl.sdk.ad.b) {
                com.applovin.impl.sdk.ad.b bVar = (com.applovin.impl.sdk.ad.b) appLovinAdImpl;
                CollectionUtils.putStringIfValid("is_persisted_ad", String.valueOf(bVar.z0()), map);
                CollectionUtils.putStringIfValid("template_stage_info", String.valueOf(bVar.b0()), map);
            }
        }
        return map;
    }

    public static Map a(com.applovin.impl.sdk.ad.b bVar) {
        HashMap map = new HashMap();
        if (bVar != null) {
            com.applovin.impl.sdk.l sdk = bVar.getSdk();
            if (((Boolean) sdk.a(c5.L)).booleanValue()) {
                HashMap map2 = new HashMap();
                Iterator it = new ArrayList(bVar.m().keySet()).iterator();
                while (it.hasNext()) {
                    String path = Uri.parse((String) it.next()).getPath();
                    map2.put(path, Formatter.formatFileSize(com.applovin.impl.sdk.l.p(), new File(path).length()));
                }
                map.put("path", map2.toString());
            }
            if ((bVar instanceof com.applovin.impl.sdk.ad.a) && ((Boolean) sdk.a(c5.M)).booleanValue()) {
                map.put("details", ((com.applovin.impl.sdk.ad.a) bVar).h1());
            }
        }
        return map;
    }

    public static Map a(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        HashMap map = new HashMap(7);
        if (appLovinNativeAdImpl == null) {
            return map;
        }
        CollectionUtils.putStringIfValid("ad_domain", appLovinNativeAdImpl.getAdDomain(), map);
        CollectionUtils.putStringIfValid("ad_id", String.valueOf(appLovinNativeAdImpl.getAdIdNumber()), map);
        CollectionUtils.putStringIfValid("clcode", appLovinNativeAdImpl.getClCode(), map);
        CollectionUtils.putStringIfValid("dsp_id", appLovinNativeAdImpl.getDspId(), map);
        CollectionUtils.putStringIfValid("dsp_name", appLovinNativeAdImpl.getDspName(), map);
        CollectionUtils.putStringIfValid("ad_size", AppLovinAdSize.NATIVE.toString(), map);
        CollectionUtils.putStringIfValid("ad_event_id", appLovinNativeAdImpl.getMediationServeId(), map);
        CollectionUtils.putStringIfValid("is_omsdk_enabled", String.valueOf(appLovinNativeAdImpl.isOpenMeasurementEnabled()), map);
        return map;
    }

    public static Map a(MaxError maxError) {
        HashMap map = new HashMap(4);
        CollectionUtils.putStringIfValid("error_message", maxError.getMessage(), map);
        CollectionUtils.putStringIfValid(AndroidBridgeConstants.ERROR_CODE, String.valueOf(maxError.getCode()), map);
        CollectionUtils.putStringIfValid("mediated_network_error_message", maxError.getMediatedNetworkErrorMessage(), map);
        CollectionUtils.putStringIfValid("mediated_network_error_code", String.valueOf(maxError.getMediatedNetworkErrorCode()), map);
        return map;
    }

    public static String b(com.applovin.impl.sdk.ad.b bVar) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putInt(jSONObject, "reshow_count", bVar.T());
        JsonUtils.putInt(jSONObject, "reshow_count_from_render_process_gone", bVar.U());
        return jSONObject.toString();
    }
}
