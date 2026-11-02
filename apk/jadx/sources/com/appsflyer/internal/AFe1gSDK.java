package com.appsflyer.internal;

import android.os.Build;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.tapjoy.TapjoyConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AFe1gSDK extends AFe1eSDK<String> {
    private final AFe1mSDK areAllFieldsValid;
    private final Map<String, Object> copy;
    private final AFc1pSDK copydefault;
    private final AFc1oSDK equals;
    private final AFf1gSDK hashCode;
    private final AFg1rSDK toString;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFe1gSDK(AFe1mSDK aFe1mSDK, AFe1mSDK[] aFe1mSDKArr, AFc1bSDK aFc1bSDK, String str, Map<String, ? extends Object> map) {
        super(aFe1mSDK, aFe1mSDKArr, aFc1bSDK, null);
        Intrinsics.checkNotNullParameter(aFe1mSDK, "");
        Intrinsics.checkNotNullParameter(aFe1mSDKArr, "");
        Intrinsics.checkNotNullParameter(aFc1bSDK, "");
        Intrinsics.checkNotNullParameter(map, "");
        this.areAllFieldsValid = aFe1mSDK;
        this.copy = map;
        AFc1pSDK currencyIso4217Code = aFc1bSDK.getCurrencyIso4217Code();
        Intrinsics.checkNotNullExpressionValue(currencyIso4217Code, "");
        this.copydefault = currencyIso4217Code;
        AFc1oSDK aFc1oSDKComponent2 = aFc1bSDK.component2();
        Intrinsics.checkNotNullExpressionValue(aFc1oSDKComponent2, "");
        this.equals = aFc1oSDKComponent2;
        AFg1rSDK aFg1rSDKComponent4 = aFc1bSDK.component4();
        Intrinsics.checkNotNullExpressionValue(aFg1rSDKComponent4, "");
        this.toString = aFg1rSDKComponent4;
        AFf1gSDK aFf1gSDKForce = aFc1bSDK.force();
        Intrinsics.checkNotNullExpressionValue(aFf1gSDKForce, "");
        this.hashCode = aFf1gSDKForce;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final AppsFlyerRequestListener areAllFieldsValid() {
        return null;
    }

    protected boolean component2() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final boolean copydefault() {
        return true;
    }

    public abstract AFd1jSDK<String> getMediationNetwork(Map<String, Object> map, String str, String str2);

    protected String getMediationNetwork(Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(map, "");
        return null;
    }

    protected void getMediationNetwork(Map<String, Object> map, String str) {
        Intrinsics.checkNotNullParameter(map, "");
        map.put(TapjoyConstants.TJC_APP_ID, this.copydefault.getRevenue.getRevenue.getPackageName());
        String revenue = AFc1pSDK.getRevenue();
        if (revenue != null) {
            map.put("cuid", revenue);
        }
        map.put("app_version_name", this.copydefault.n_().versionName);
        if (component2()) {
            map.put("event_timestamp", Long.valueOf(this.toString.getCurrencyIso4217Code()));
        }
        if (str != null) {
            map.put("billing_lib_version", str);
        }
    }

    protected String getMonetizationNetwork(Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(map, "");
        return null;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final AFd1jSDK<String> getRevenue(String str) {
        AFd1dSDK aFd1dSDK;
        Intrinsics.checkNotNullParameter(str, "");
        Map<String, Object> mutableMap = MapsKt.toMutableMap(this.copy);
        String mediationNetwork = getMediationNetwork(mutableMap);
        String monetizationNetwork = getMonetizationNetwork(mutableMap);
        Map<String, Object> mutableMap2 = MapsKt.toMutableMap(mutableMap);
        getMediationNetwork(mutableMap2, mediationNetwork);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String strComponent4 = this.copydefault.component4();
        String str2 = strComponent4;
        if (str2 != null && !StringsKt.isBlank(str2)) {
            linkedHashMap.put(TapjoyConstants.TJC_ADVERTISING_ID, strComponent4);
        }
        AFb1mSDK currencyIso4217Code = AFb1kSDK.getCurrencyIso4217Code(this.copydefault.getRevenue.getRevenue);
        String str3 = null;
        String str4 = currencyIso4217Code != null ? currencyIso4217Code.getCurrencyIso4217Code : null;
        String str5 = str4;
        if (str5 != null && !StringsKt.isBlank(str5)) {
            linkedHashMap.put("oaid", str4);
        }
        AFb1mSDK aFb1mSDKL_ = AFb1kSDK.l_(this.copydefault.getRevenue.getRevenue.getContentResolver());
        String str6 = aFb1mSDKL_ != null ? aFb1mSDKL_.getCurrencyIso4217Code : null;
        String str7 = str6;
        if (str7 != null && !StringsKt.isBlank(str7)) {
            linkedHashMap.put("amazon_aid", str6);
        }
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, false)) {
            mutableMap2.put(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, "true");
        } else {
            String mediationNetwork2 = ((AFe1eSDK) this).component2.getMediationNetwork(this.equals);
            String str8 = mediationNetwork2;
            if (str8 != null && !StringsKt.isBlank(str8)) {
                linkedHashMap.put("imei", mediationNetwork2);
            }
        }
        String revenue = AFb1jSDK.getRevenue(this.copydefault.getMonetizationNetwork);
        if (revenue == null) {
            revenue = "";
        }
        linkedHashMap.put("appsflyer_id", revenue);
        linkedHashMap.put(TapjoyConstants.TJC_DEVICE_OS_VERSION_NAME, String.valueOf(Build.VERSION.SDK_INT));
        linkedHashMap.put("sdk_version", "6.17.3");
        String str9 = monetizationNetwork;
        if (str9 != null && !StringsKt.isBlank(str9)) {
            linkedHashMap.put("sdk_connector_version", monetizationNetwork);
        }
        this.toString.getMonetizationNetwork(linkedHashMap, this.areAllFieldsValid);
        mutableMap2.put("device_data", linkedHashMap);
        this.hashCode.getMediationNetwork(mutableMap2, this.areAllFieldsValid);
        AFd1jSDK<String> mediationNetwork3 = getMediationNetwork(mutableMap2, str, mediationNetwork);
        if (mediationNetwork3 != null && (aFd1dSDK = mediationNetwork3.getRevenue) != null) {
            str3 = aFd1dSDK.getRevenue;
        }
        if (str3 != null) {
            JSONObject jSONObject = new JSONObject(mutableMap2);
            AFg1bSDK.getMediationNetwork(toString() + ": preparing data: ", jSONObject);
            AFd1mSDK aFd1mSDK = this.component4;
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "");
            aFd1mSDK.getMonetizationNetwork(str3, string);
        }
        return mediationNetwork3;
    }
}
