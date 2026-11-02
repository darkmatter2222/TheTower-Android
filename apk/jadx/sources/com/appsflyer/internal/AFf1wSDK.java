package com.appsflyer.internal;

import android.os.Build;
import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.deeplink.DeepLinkResult;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.ironsource.R6;
import com.tapjoy.TapjoyConstants;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.TimeZone;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class AFf1wSDK extends AFe1eSDK<AFa1mSDK> {
    private int AFInAppEventParameterName;
    private int AFInAppEventType;
    private final CountDownLatch AFKeystoreWrapper;
    private int AFLogger;
    private final AFa1pSDK areAllFieldsValid;
    private final AFj1rSDK copy;
    private final AFa1rSDK copydefault;
    private final AFh1tSDK equals;
    private final AFc1eSDK hashCode;
    private final List<AFj1qSDK> registerClient;
    private final AFc1pSDK toString;

    public /* synthetic */ class AFa1ySDK {
        public static final /* synthetic */ int[] AFAdRevenueData;
        public static final /* synthetic */ int[] getMonetizationNetwork;

        static {
            int[] iArr = new int[AFe1uSDK.values().length];
            try {
                iArr[AFe1uSDK.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AFe1uSDK.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            AFAdRevenueData = iArr;
            int[] iArr2 = new int[AFj1qSDK.AFa1vSDK.values().length];
            try {
                iArr2[AFj1qSDK.AFa1vSDK.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[AFj1qSDK.AFa1vSDK.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            getMonetizationNetwork = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFf1wSDK(AFa1pSDK aFa1pSDK, AFc1bSDK aFc1bSDK) {
        super(AFe1mSDK.DLSDK, new AFe1mSDK[]{AFe1mSDK.RC_CDN, AFe1mSDK.FETCH_ADVERTISING_ID}, aFc1bSDK, "DdlSdk");
        Intrinsics.checkNotNullParameter(aFa1pSDK, "");
        Intrinsics.checkNotNullParameter(aFc1bSDK, "");
        this.areAllFieldsValid = aFa1pSDK;
        this.AFKeystoreWrapper = new CountDownLatch(1);
        this.registerClient = new ArrayList();
        AFc1pSDK currencyIso4217Code = aFc1bSDK.getCurrencyIso4217Code();
        Intrinsics.checkNotNullExpressionValue(currencyIso4217Code, "");
        this.toString = currencyIso4217Code;
        AFc1eSDK aFc1eSDKAfInfoLog = aFc1bSDK.afInfoLog();
        Intrinsics.checkNotNullExpressionValue(aFc1eSDKAfInfoLog, "");
        this.hashCode = aFc1eSDKAfInfoLog;
        AFa1rSDK aFa1rSDKI = aFc1bSDK.i();
        Intrinsics.checkNotNullExpressionValue(aFa1rSDKI, "");
        this.copydefault = aFa1rSDKI;
        AFh1tSDK aFh1tSDKComponent3 = aFc1bSDK.component3();
        Intrinsics.checkNotNullExpressionValue(aFh1tSDKComponent3, "");
        this.equals = aFh1tSDKComponent3;
        AFj1rSDK aFj1rSDKAFLogger = aFc1bSDK.AFLogger();
        Intrinsics.checkNotNullExpressionValue(aFj1rSDKAFLogger, "");
        this.copy = aFj1rSDKAFLogger;
        AFj1qSDK[] aFj1qSDKArr = (AFj1qSDK[]) aFj1rSDKAFLogger.getCurrencyIso4217Code.toArray(new AFj1qSDK[0]);
        Intrinsics.checkNotNullExpressionValue(aFj1qSDKArr, "");
        ArrayList arrayList = new ArrayList();
        for (AFj1qSDK aFj1qSDK : aFj1qSDKArr) {
            AFj1qSDK aFj1qSDK2 = aFj1qSDK;
            if (aFj1qSDK2 != null && aFj1qSDK2.areAllFieldsValid != AFj1qSDK.AFa1vSDK.NOT_STARTED) {
                arrayList.add(aFj1qSDK);
            }
        }
        ArrayList<AFj1qSDK> arrayList2 = arrayList;
        this.AFLogger = arrayList2.size();
        for (final AFj1qSDK aFj1qSDK3 : arrayList2) {
            AFj1qSDK.AFa1vSDK aFa1vSDK = aFj1qSDK3.areAllFieldsValid;
            int i = aFa1vSDK == null ? -1 : AFa1ySDK.getMonetizationNetwork[aFa1vSDK.ordinal()];
            if (i == 1) {
                AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.DDL, aFj1qSDK3.AFAdRevenueData.get("source") + " referrer collected earlier", false, 4, null);
                Intrinsics.checkNotNullExpressionValue(aFj1qSDK3, "");
                getMonetizationNetwork(aFj1qSDK3);
            } else if (i == 2) {
                aFj1qSDK3.addObserver(new Observer() { // from class: com.appsflyer.internal.AFf1wSDK$$ExternalSyntheticLambda0
                    @Override // java.util.Observer
                    public final void update(Observable observable, Object obj) {
                        AFf1wSDK.getRevenue(aFj1qSDK3, this, observable, obj);
                    }
                });
            }
        }
    }

    private static boolean AFAdRevenueData(AFj1qSDK aFj1qSDK) {
        Object obj = aFj1qSDK.AFAdRevenueData.get("click_ts");
        Long l = obj instanceof Long ? (Long) obj : null;
        if (l != null) {
            if (System.currentTimeMillis() - TimeUnit.SECONDS.toMillis(l.longValue()) < TimeUnit.DAYS.toMillis(1L)) {
                return true;
            }
        }
        return false;
    }

    private final boolean copy() {
        Object obj = this.areAllFieldsValid.getCurrencyIso4217Code.get("referrers");
        List list = obj instanceof List ? (List) obj : null;
        return (list != null ? list.size() : 0) < this.AFLogger && !this.areAllFieldsValid.getCurrencyIso4217Code.containsKey("referrers");
    }

    private static Map<String, String> getCurrencyIso4217Code(AFb1mSDK aFb1mSDK) {
        String str;
        if (aFb1mSDK == null || (str = aFb1mSDK.getCurrencyIso4217Code) == null) {
            return null;
        }
        Intrinsics.checkNotNullExpressionValue(str, "");
        Boolean bool = aFb1mSDK.getRevenue;
        if (bool == null || !bool.booleanValue()) {
            return MapsKt.mapOf(TuplesKt.to("type", "unhashed"), TuplesKt.to("value", str));
        }
        return null;
    }

    private final void getMonetizationNetwork(AFj1qSDK aFj1qSDK) {
        if (!AFAdRevenueData(aFj1qSDK)) {
            int i = this.AFInAppEventParameterName + 1;
            this.AFInAppEventParameterName = i;
            if (i == this.AFLogger) {
                this.AFKeystoreWrapper.countDown();
                return;
            }
            return;
        }
        this.registerClient.add(aFj1qSDK);
        this.AFKeystoreWrapper.countDown();
        AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.DDL, "Added non-organic " + aFj1qSDK.getClass().getSimpleName(), false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getRevenue(AFj1qSDK aFj1qSDK, AFf1wSDK aFf1wSDK, Observable observable, Object obj) {
        Intrinsics.checkNotNullParameter(aFf1wSDK, "");
        AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.DDL, aFj1qSDK.AFAdRevenueData.get("source") + " referrer collected via observer", false, 4, null);
        Intrinsics.checkNotNull(observable, "");
        aFf1wSDK.getMonetizationNetwork((AFj1qSDK) observable);
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final boolean AFAdRevenueData() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final boolean a_() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    public final /* bridge */ /* synthetic */ AppsFlyerRequestListener areAllFieldsValid() {
        return null;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final boolean copydefault() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final long getCurrencyIso4217Code() {
        return this.copydefault.component2;
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final AFe1uSDK getMediationNetwork() {
        AFe1uSDK aFe1uSDK = AFe1uSDK.FAILURE;
        try {
            AFe1uSDK mediationNetwork = super.getMediationNetwork();
            Intrinsics.checkNotNullExpressionValue(mediationNetwork, "");
            try {
                AFh1tSDK aFh1tSDK = this.equals;
                int i = this.AFInAppEventType;
                if (i <= 0 || i > 2) {
                    AFLogger.afErrorLogForExcManagerOnly("Unexpected ddl requestCount - end", new IllegalStateException("Metrics: Unexpected ddl requestCount = ".concat(String.valueOf(i))));
                } else {
                    int i2 = i - 1;
                    aFh1tSDK.component1[i2] = System.currentTimeMillis();
                    if (aFh1tSDK.component4[i2] != 0) {
                        aFh1tSDK.areAllFieldsValid[i2] = aFh1tSDK.component1[i2] - aFh1tSDK.component4[i2];
                        aFh1tSDK.getRevenue.put("net", aFh1tSDK.areAllFieldsValid);
                    } else {
                        AFLogger.afInfoLog(new StringBuilder("Metrics: ddlStart[").append(i2).append("] ts is missing").toString());
                    }
                }
                int i3 = AFa1ySDK.AFAdRevenueData[mediationNetwork.ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        return mediationNetwork;
                    }
                    AFLogger aFLogger = AFLogger.INSTANCE;
                    AFg1cSDK aFg1cSDK = AFg1cSDK.DDL;
                    ResponseNetwork responseNetwork = ((AFe1eSDK) this).component3;
                    AFh1ySDK.d$default(aFLogger, aFg1cSDK, "Error occurred. Server response code = " + (responseNetwork != null ? Integer.valueOf(responseNetwork.getStatusCode()) : null), false, 4, null);
                    DeepLinkResult deepLinkResult = new DeepLinkResult(null, DeepLinkResult.Error.HTTP_STATUS_CODE);
                    this.equals.getMonetizationNetwork(deepLinkResult, this.copydefault.component2);
                    this.copydefault.getMonetizationNetwork(deepLinkResult);
                    return mediationNetwork;
                }
                ResponseNetwork responseNetwork2 = ((AFe1eSDK) this).component3;
                Intrinsics.checkNotNull(responseNetwork2);
                Object body = responseNetwork2.getBody();
                Intrinsics.checkNotNullExpressionValue(body, "");
                AFa1mSDK aFa1mSDK = (AFa1mSDK) body;
                if (aFa1mSDK.AFAdRevenueData != null) {
                    DeepLinkResult deepLinkResult2 = new DeepLinkResult(aFa1mSDK.AFAdRevenueData, null);
                    this.equals.getMonetizationNetwork(deepLinkResult2, this.copydefault.component2);
                    this.copydefault.getMonetizationNetwork(deepLinkResult2);
                    return mediationNetwork;
                }
                if (this.AFInAppEventType > 1 || !aFa1mSDK.getGetMediationNetwork() || !copy()) {
                    DeepLinkResult deepLinkResult3 = new DeepLinkResult(null, null);
                    this.equals.getMonetizationNetwork(deepLinkResult3, this.copydefault.component2);
                    this.copydefault.getMonetizationNetwork(deepLinkResult3);
                    return mediationNetwork;
                }
                AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.DDL, "Waiting for referrers...", false, 4, null);
                this.AFKeystoreWrapper.await();
                AFh1tSDK aFh1tSDK2 = this.equals;
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (aFh1tSDK2.component1[0] != 0) {
                    aFh1tSDK2.getRevenue.put("rfr_wait", Long.valueOf(jCurrentTimeMillis - aFh1tSDK2.component1[0]));
                } else {
                    AFLogger.afInfoLog("Metrics: ddlEnd[0] ts is missing");
                }
                if (this.AFInAppEventParameterName != this.AFLogger) {
                    return getMediationNetwork();
                }
                DeepLinkResult deepLinkResult4 = new DeepLinkResult(null, null);
                this.equals.getMonetizationNetwork(deepLinkResult4, this.copydefault.component2);
                this.copydefault.getMonetizationNetwork(deepLinkResult4);
                return AFe1uSDK.SUCCESS;
            } catch (Exception e) {
                e = e;
                aFe1uSDK = mediationNetwork;
                Throwable cause = e.getCause();
                if (cause instanceof InterruptedException ? true : cause instanceof InterruptedIOException) {
                    AFLogger.afErrorLogForExcManagerOnly("[DDL] Timeout", new TimeoutException());
                    AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.DDL, "Timeout, didn't manage to find deferred deeplink after " + this.AFInAppEventType + " attempt(s) within " + this.copydefault.component2 + " milliseconds", false, 4, null);
                    DeepLinkResult deepLinkResult5 = new DeepLinkResult(null, DeepLinkResult.Error.TIMEOUT);
                    this.equals.getMonetizationNetwork(deepLinkResult5, this.copydefault.component2);
                    this.copydefault.getMonetizationNetwork(deepLinkResult5);
                    return AFe1uSDK.TIMEOUT;
                }
                if (cause instanceof IOException) {
                    AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.DDL, "Http Exception: the request was not sent to the server", false, 4, null);
                    DeepLinkResult deepLinkResult6 = new DeepLinkResult(null, DeepLinkResult.Error.NETWORK);
                    this.equals.getMonetizationNetwork(deepLinkResult6, this.copydefault.component2);
                    this.copydefault.getMonetizationNetwork(deepLinkResult6);
                    return aFe1uSDK;
                }
                AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.DDL, "Unexpected Exception: " + e, false, 4, null);
                DeepLinkResult deepLinkResult7 = new DeepLinkResult(null, DeepLinkResult.Error.UNEXPECTED);
                this.equals.getMonetizationNetwork(deepLinkResult7, this.copydefault.component2);
                this.copydefault.getMonetizationNetwork(deepLinkResult7);
                return aFe1uSDK;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x015c  */
    @Override // com.appsflyer.internal.AFe1eSDK
    protected final AFd1jSDK<AFa1mSDK> getRevenue(String str) {
        Map mapMapOf;
        String[] strArr;
        Intrinsics.checkNotNullParameter(str, "");
        this.AFInAppEventType++;
        AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.DDL, "Preparing request " + this.AFInAppEventType, false, 4, null);
        Map<String, Object> map = this.areAllFieldsValid.getCurrencyIso4217Code;
        if (this.AFInAppEventType == 1) {
            map.put("is_first", Boolean.valueOf(this.toString.getMonetizationNetwork.getMediationNetwork("appsFlyerCount", 0) == 0));
            map.put(R6.q, Locale.getDefault().getLanguage() + "-" + Locale.getDefault().getCountry());
            map.put(R6.F, Build.VERSION.RELEASE);
            map.put("type", Build.MODEL);
            map.put("request_id", AFb1jSDK.getRevenue(this.toString.getMonetizationNetwork));
            AFb1uSDK aFb1uSDK = this.hashCode.getRevenue;
            if (aFb1uSDK != null && (strArr = aFb1uSDK.getMediationNetwork) != null) {
                Intrinsics.checkNotNullExpressionValue(strArr, "");
                map.put("sharing_filter", strArr);
            }
            AFh1pSDK aFh1pSDK = this.toString.AFAdRevenueData.component2;
            Map<String, String> currencyIso4217Code = getCurrencyIso4217Code(aFh1pSDK != null ? new AFb1mSDK(aFh1pSDK.getRevenue, aFh1pSDK.component2) : null);
            if (currencyIso4217Code != null) {
                map.put(R6.X0, currencyIso4217Code);
            }
            Map<String, String> currencyIso4217Code2 = getCurrencyIso4217Code(AFb1kSDK.getCurrencyIso4217Code(this.toString.getRevenue.getRevenue));
            if (currencyIso4217Code2 != null) {
                map.put("oaid", currencyIso4217Code2);
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        map.put("timestamp", simpleDateFormat.format(new Date(jCurrentTimeMillis)));
        map.put("request_count", Integer.valueOf(this.AFInAppEventType));
        List<AFj1qSDK> list = this.registerClient;
        ArrayList arrayList = new ArrayList();
        for (AFj1qSDK aFj1qSDK : list) {
            if (aFj1qSDK.areAllFieldsValid == AFj1qSDK.AFa1vSDK.FINISHED) {
                Object obj = aFj1qSDK.AFAdRevenueData.get(TapjoyConstants.TJC_REFERRER);
                String str2 = obj instanceof String ? (String) obj : null;
                if (str2 != null) {
                    Object obj2 = aFj1qSDK.AFAdRevenueData.get("source");
                    Intrinsics.checkNotNull(obj2, "");
                    mapMapOf = MapsKt.mapOf(TuplesKt.to("source", (String) obj2), TuplesKt.to("value", str2));
                } else {
                    mapMapOf = null;
                }
            } else {
                mapMapOf = null;
            }
            if (mapMapOf != null) {
                arrayList.add(mapMapOf);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (!arrayList2.isEmpty()) {
            map.put("referrers", arrayList2);
        }
        AFa1pSDK aFa1pSDK = this.areAllFieldsValid;
        AFj1eSDK aFj1eSDK = new AFj1eSDK(this.toString, null, 2, null);
        String mediationNetwork = ((AFe1eSDK) this).component2.getMediationNetwork();
        Object obj3 = this.areAllFieldsValid.getCurrencyIso4217Code.get("timestamp");
        Intrinsics.checkNotNull(obj3, "");
        aFa1pSDK.component3 = aFj1eSDK.getMonetizationNetwork(mediationNetwork, (String) obj3);
        AFh1tSDK aFh1tSDK = this.equals;
        int i = this.AFInAppEventType;
        if (i <= 0 || i > 2) {
            AFLogger.afErrorLogForExcManagerOnly("Unexpected ddl requestCount - start", new IllegalStateException("Metrics: Unexpected ddl requestCount = ".concat(String.valueOf(i))));
        } else {
            int i2 = i - 1;
            aFh1tSDK.component4[i2] = System.currentTimeMillis();
            if (i2 == 0) {
                if (aFh1tSDK.component3 != 0) {
                    aFh1tSDK.getRevenue.put("from_fg", Long.valueOf(aFh1tSDK.component4[i2] - aFh1tSDK.component3));
                } else {
                    AFLogger.afInfoLog("Metrics: fg ts is missing");
                }
            }
        }
        AFd1jSDK<AFa1mSDK> monetizationNetwork = ((AFe1eSDK) this).component1.getMonetizationNetwork(this.areAllFieldsValid);
        Intrinsics.checkNotNullExpressionValue(monetizationNetwork, "");
        return monetizationNetwork;
    }
}
