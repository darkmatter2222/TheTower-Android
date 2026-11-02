package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.deeplink.DeepLink;
import com.appsflyer.deeplink.DeepLinkListener;
import com.appsflyer.deeplink.DeepLinkResult;
import com.appsflyer.internal.AFe1nSDK.AnonymousClass3;
import com.ironsource.C3510b4;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class AFa1rSDK {
    public String[] areAllFieldsValid;
    public final AFc1bSDK component1;
    public long component2;
    public Intent getCurrencyIso4217Code;
    public Map<String, String> getMediationNetwork;
    public String getMonetizationNetwork;
    public DeepLinkListener getRevenue;
    public List<List<String>> AFAdRevenueData = new ArrayList();
    public final List<String> component4 = new ArrayList();

    public AFa1rSDK(AFc1bSDK aFc1bSDK) {
        this.component1 = aFc1bSDK;
    }

    private static void getMediationNetwork(String str) {
        AppsFlyerConversionListener appsFlyerConversionListener = AFa1uSDK.getMonetizationNetwork().getMediationNetwork;
        if (appsFlyerConversionListener != null) {
            try {
                AFLogger.afDebugLog("Calling onAppOpenAttributionFailure with: ".concat(String.valueOf(str)));
                appsFlyerConversionListener.onAttributionFailure(str);
            } catch (Throwable th) {
                AFLogger.afErrorLog(th.getLocalizedMessage(), th);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0055  */
    private boolean h_(Intent intent, AFa1gSDK aFa1gSDK) {
        String string;
        Uri uriI_;
        Uri uri = null;
        Uri data = (intent == null || !"android.intent.action.VIEW".equals(intent.getAction())) ? null : intent.getData();
        Intent intent2 = this.getCurrencyIso4217Code;
        Uri data2 = (intent2 == null || !"android.intent.action.VIEW".equals(intent2.getAction())) ? null : intent2.getData();
        if (intent != null) {
            Bundle extras = intent.getExtras();
            if (!this.AFAdRevenueData.isEmpty() && extras != null) {
                for (List<String> list : this.AFAdRevenueData) {
                    if (list == null) {
                        uriI_ = null;
                    } else {
                        Iterator<String> it = list.iterator();
                        if (it.hasNext() && (string = extras.getString(it.next())) != null) {
                            uriI_ = i_(string, it);
                        } else {
                            uriI_ = null;
                        }
                    }
                    if (uriI_ != null) {
                        AFLogger.afDebugLog(new StringBuilder("Found deeplink in push payload at ").append(list.toString()).toString());
                        List<List<String>> list2 = this.AFAdRevenueData;
                        Intrinsics.checkNotNullParameter("payloadKey", "");
                        Map<String, Object> monetizationNetwork = AFa1uSDK.getMonetizationNetwork(aFa1gSDK.getMediationNetwork);
                        Intrinsics.checkNotNullExpressionValue(monetizationNetwork, "");
                        monetizationNetwork.put("payloadKey", list2);
                        AFa1hSDK aFa1hSDK = aFa1gSDK.getMonetizationNetwork;
                        if (aFa1hSDK != null) {
                            aFa1hSDK.getMonetizationNetwork(aFa1gSDK.getMediationNetwork);
                        }
                        uri = uriI_;
                        break;
                    }
                }
            }
        } else {
            AFLogger.afDebugLog("Could not extract deeplink from null intent");
        }
        if (data != null) {
            AFj1kSDK aFj1kSDK = new AFj1kSDK(intent);
            if (aFj1kSDK.getRevenue("af_consumed")) {
                AFLogger.afInfoLog(new StringBuilder("skipping re-use of previously consumed deep link: ").append(data.toString()).append(" w/af_consumed").toString());
                return false;
            }
            aFj1kSDK.I_("af_consumed", System.currentTimeMillis());
            g_(aFa1gSDK, data);
            return true;
        }
        if (data2 != null) {
            AFj1kSDK aFj1kSDK2 = new AFj1kSDK(this.getCurrencyIso4217Code);
            if (aFj1kSDK2.getRevenue("af_consumed")) {
                AFLogger.afInfoLog(new StringBuilder("skipping re-use of previously consumed trampoline deep link: ").append(data2.toString()).append(" w/af_consumed").toString());
                return false;
            }
            aFj1kSDK2.I_("af_consumed", System.currentTimeMillis());
            g_(aFa1gSDK, data2);
            return true;
        }
        if (uri == null) {
            AFLogger.afDebugLog("No deep link detected");
            return false;
        }
        AFj1kSDK aFj1kSDK3 = new AFj1kSDK(intent);
        if (aFj1kSDK3.getRevenue("af_consumed")) {
            AFLogger.afInfoLog(new StringBuilder("skipping re-use of previously consumed deep link from push: ").append(uri.toString()).append(" w/af_consumed").toString());
            return false;
        }
        aFj1kSDK3.I_("af_consumed", System.currentTimeMillis());
        g_(aFa1gSDK, uri);
        return true;
    }

    private Uri i_(Object obj, Iterator<String> it) {
        while (obj != JSONObject.NULL) {
            if (!it.hasNext()) {
                Uri uri = Uri.parse(obj.toString());
                if (uri == null || uri.getScheme() == null || uri.getHost() == null) {
                    return null;
                }
                return uri;
            }
            try {
                obj = new JSONObject(obj.toString()).get(it.next());
            } catch (JSONException e) {
                AFLogger.afErrorLogForExcManagerOnly("recursiveSearch error", e);
                return null;
            }
        }
        return null;
    }

    public final void f_(AFa1gSDK aFa1gSDK, Intent intent, Context context) {
        AFc1dSDK aFc1dSDK = (AFc1dSDK) this.component1;
        if (context != null) {
            AFc1gSDK aFc1gSDK = aFc1dSDK.getMonetizationNetwork;
            if (context != null) {
                aFc1gSDK.getRevenue = context.getApplicationContext();
            }
        }
        if (!h_(intent, aFa1gSDK) && this.getRevenue != null && this.component1.getCurrencyIso4217Code().getMonetizationNetwork.getMediationNetwork("appsFlyerCount", 0) == 0 && !this.component1.component2().getMediationNetwork("ddl_sent", false)) {
            AFa1pSDK aFa1pSDK = new AFa1pSDK();
            AFe1nSDK aFe1nSDKCopydefault = this.component1.copydefault();
            aFe1nSDKCopydefault.AFAdRevenueData.execute(aFe1nSDKCopydefault.new AnonymousClass3(new AFf1wSDK(aFa1pSDK, this.component1)));
        }
        this.component1.component2().getCurrencyIso4217Code("ddl_sent", true);
    }

    public final void g_(AFa1gSDK aFa1gSDK, Uri uri) {
        AFf1xSDK aFf1xSDK = new AFf1xSDK(this, aFa1gSDK, uri, this.component4);
        AFe1nSDK aFe1nSDKCopydefault = this.component1.copydefault();
        aFe1nSDKCopydefault.AFAdRevenueData.execute(aFe1nSDKCopydefault.new AnonymousClass3(aFf1xSDK));
        this.getCurrencyIso4217Code = null;
    }

    public final void getMediationNetwork(String str, DeepLinkResult.Error error) {
        if (this.getRevenue == null) {
            getMediationNetwork(str);
        } else {
            AFLogger.INSTANCE.d(AFg1cSDK.DDL, "Error occurred: ".concat(String.valueOf(str)));
            getMonetizationNetwork(new DeepLinkResult(null, error));
        }
    }

    public final void getMediationNetwork(Map<String, String> map) {
        DeepLinkResult deepLinkResult;
        if (this.getRevenue == null) {
            AppsFlyerConversionListener appsFlyerConversionListener = AFa1uSDK.getMonetizationNetwork().getMediationNetwork;
            if (appsFlyerConversionListener != null) {
                try {
                    AFLogger.afDebugLog(new StringBuilder("Calling onAppOpenAttribution with:\n").append(map.toString()).toString());
                    appsFlyerConversionListener.onAppOpenAttribution(map);
                    return;
                } catch (Throwable th) {
                    AFLogger.afErrorLog(th.getLocalizedMessage(), th);
                    return;
                }
            }
            return;
        }
        try {
            try {
                DeepLink mediationNetwork = DeepLink.getMediationNetwork(map);
                mediationNetwork.getCurrencyIso4217Code.put("is_deferred", false);
                deepLinkResult = new DeepLinkResult(mediationNetwork, null);
            } catch (JSONException e) {
                AFLogger.INSTANCE.e(AFg1cSDK.DDL, "Error occurred", e, true);
                deepLinkResult = new DeepLinkResult(null, DeepLinkResult.Error.UNEXPECTED);
            }
            getMonetizationNetwork(deepLinkResult);
        } catch (Throwable th2) {
            getMonetizationNetwork(new DeepLinkResult(null, null));
            throw th2;
        }
    }

    public final void getMonetizationNetwork(DeepLinkResult deepLinkResult) {
        if (this.getRevenue == null) {
            AFLogger.INSTANCE.d(AFg1cSDK.DDL, "skipping, no callback registered");
            return;
        }
        AFLogger.INSTANCE.d(AFg1cSDK.DDL, new StringBuilder("Calling onDeepLinking with:\n").append(deepLinkResult.toString()).toString());
        try {
            this.getRevenue.onDeepLinking(deepLinkResult);
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getLocalizedMessage(), th);
        }
    }

    public final void j_(AFa1gSDK aFa1gSDK, Uri uri, Uri uri2) {
        if (!aFa1gSDK.getCurrencyIso4217Code("af_deeplink")) {
            String string = uri.toString();
            if (string == null) {
                string = null;
            } else if (string.matches("fb\\d*?://authorize.*") && string.contains("access_token")) {
                int iIndexOf = string.indexOf(63);
                String strSubstring = iIndexOf == -1 ? "" : string.substring(iIndexOf);
                if (strSubstring.length() != 0) {
                    ArrayList arrayList = new ArrayList();
                    if (strSubstring.contains(C3510b4.j.c)) {
                        arrayList = new ArrayList(Arrays.asList(strSubstring.split(C3510b4.j.c)));
                    } else {
                        arrayList.add(strSubstring);
                    }
                    StringBuilder sb = new StringBuilder();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (str.contains("access_token")) {
                            it.remove();
                        } else {
                            if (sb.length() != 0) {
                                sb.append(C3510b4.j.c);
                            } else if (!str.startsWith("?")) {
                                sb.append("?");
                            }
                            sb.append(str);
                        }
                    }
                    string = string.replace(strSubstring, sb.toString());
                }
            }
            String str2 = this.getMonetizationNetwork;
            if (str2 != null && this.getMediationNetwork != null && string.contains(str2)) {
                Uri.Builder builderBuildUpon = Uri.parse(string).buildUpon();
                Uri.Builder builderBuildUpon2 = Uri.EMPTY.buildUpon();
                for (Map.Entry<String, String> entry : this.getMediationNetwork.entrySet()) {
                    builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
                    builderBuildUpon2.appendQueryParameter(entry.getKey(), entry.getValue());
                }
                string = builderBuildUpon.build().toString();
                String encodedQuery = builderBuildUpon2.build().getEncodedQuery();
                Intrinsics.checkNotNullParameter("appended_query_params", "");
                aFa1gSDK.getMediationNetwork.put("appended_query_params", encodedQuery);
                AFa1hSDK aFa1hSDK = aFa1gSDK.getMonetizationNetwork;
                if (aFa1hSDK != null) {
                    aFa1hSDK.getMonetizationNetwork(aFa1gSDK.getMediationNetwork);
                }
            }
            Intrinsics.checkNotNullParameter("af_deeplink", "");
            aFa1gSDK.getMediationNetwork.put("af_deeplink", string);
            AFa1hSDK aFa1hSDK2 = aFa1gSDK.getMonetizationNetwork;
            if (aFa1hSDK2 != null) {
                aFa1hSDK2.getMonetizationNetwork(aFa1gSDK.getMediationNetwork);
            }
        }
        final HashMap map = new HashMap();
        map.put("link", uri.toString());
        if (uri2 != null) {
            map.put("original_link", uri2.toString());
        }
        AFj1iSDK.M_(this.component1.getCurrencyIso4217Code().n_(), map, uri);
        AFf1vSDK aFf1vSDK = new AFf1vSDK(this.component1, UUID.randomUUID(), uri);
        if (aFf1vSDK.copy()) {
            Boolean bool = Boolean.TRUE;
            Intrinsics.checkNotNullParameter("isBrandedDomain", "");
            aFa1gSDK.getMediationNetwork.put("isBrandedDomain", bool);
            AFa1hSDK aFa1hSDK3 = aFa1gSDK.getMonetizationNetwork;
            if (aFa1hSDK3 != null) {
                aFa1hSDK3.getMonetizationNetwork(aFa1gSDK.getMediationNetwork);
            }
        }
        if (!aFf1vSDK.equals()) {
            this.component1.i().getMediationNetwork(map);
            return;
        }
        aFf1vSDK.areAllFieldsValid = new AFf1vSDK.AFa1vSDK() { // from class: com.appsflyer.internal.AFa1rSDK.4
            @Override // com.appsflyer.internal.AFf1vSDK.AFa1vSDK
            public final void getCurrencyIso4217Code(Map<String, String> map2) {
                for (String str3 : map2.keySet()) {
                    map.put(str3, map2.get(str3));
                }
                AFa1rSDK.this.getMediationNetwork(map);
            }

            @Override // com.appsflyer.internal.AFf1vSDK.AFa1vSDK
            public final void getMediationNetwork(String str3) {
                AFa1rSDK.this.getMediationNetwork(str3, DeepLinkResult.Error.NETWORK);
            }
        };
        AFe1nSDK aFe1nSDKCopydefault = this.component1.copydefault();
        aFe1nSDKCopydefault.AFAdRevenueData.execute(aFe1nSDKCopydefault.new AnonymousClass3(aFf1vSDK));
    }
}
