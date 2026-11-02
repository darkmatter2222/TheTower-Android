package com.appsflyer.internal;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.widget.ExpandableListView;
import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public class AFf1uSDK extends AFe1eSDK<String> {
    private static final AFe1mSDK[] AFLogger = {AFe1mSDK.DLSDK, AFe1mSDK.ONELINK, AFe1mSDK.REGISTER};
    private final AFf1gSDK AFInAppEventType;
    protected final AFc1oSDK areAllFieldsValid;
    protected final AFg1rSDK copy;
    private final AFe1ySDK copydefault;
    private final AFf1lSDK equals;
    private final AFc1pSDK hashCode;
    private final AFc1gSDK registerClient;
    private final AFh1jSDK toString;

    public AFf1uSDK(AFh1jSDK aFh1jSDK, AFc1bSDK aFc1bSDK) {
        this(aFh1jSDK, aFc1bSDK, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFf1uSDK(AFh1jSDK aFh1jSDK, AFc1bSDK aFc1bSDK, String str) {
        super(aFh1jSDK.getCurrencyIso4217Code(), new AFe1mSDK[]{AFe1mSDK.RC_CDN, AFe1mSDK.FETCH_ADVERTISING_ID}, aFc1bSDK, str);
        this.toString = aFh1jSDK;
        this.copydefault = aFc1bSDK.AFInAppEventParameterName();
        this.areAllFieldsValid = aFc1bSDK.component2();
        this.equals = aFc1bSDK.component1();
        this.registerClient = aFc1bSDK.registerClient();
        this.hashCode = aFc1bSDK.getCurrencyIso4217Code();
        this.copy = aFc1bSDK.component4();
        this.AFInAppEventType = aFc1bSDK.force();
        for (AFe1mSDK aFe1mSDK : AFLogger) {
            if (this.getCurrencyIso4217Code == aFe1mSDK) {
                return;
            }
        }
        int i = this.toString.component1;
        AFe1mSDK aFe1mSDK2 = this.getCurrencyIso4217Code;
        if (i > 0) {
            this.getRevenue.add(AFe1mSDK.CONVERSION);
        } else if (aFe1mSDK2 != AFe1mSDK.CONVERSION) {
            this.getMediationNetwork.add(AFe1mSDK.CONVERSION);
        }
    }

    protected void AFAdRevenueData(AFh1jSDK aFh1jSDK) {
        this.copy.getMediationNetwork(aFh1jSDK);
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final AppsFlyerRequestListener areAllFieldsValid() {
        return this.toString.getMonetizationNetwork;
    }

    protected void areAllFieldsValid(AFh1jSDK aFh1jSDK) {
        this.copy.AFAdRevenueData(aFh1jSDK);
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected boolean copydefault() {
        return true;
    }

    protected void getCurrencyIso4217Code(AFh1jSDK aFh1jSDK) {
        this.copy.getCurrencyIso4217Code(aFh1jSDK);
    }

    protected void getMediationNetwork(AFh1jSDK aFh1jSDK) {
        try {
            try {
                AFAdRevenueData(aFh1jSDK);
                getRevenue(aFh1jSDK);
                getMonetizationNetwork(aFh1jSDK);
                getCurrencyIso4217Code(aFh1jSDK);
                areAllFieldsValid(aFh1jSDK);
            } catch (Throwable th) {
                AFLogger.INSTANCE.e(AFg1cSDK.QUEUE, "Error while collecting payload params", th, true, true, false);
            }
            if (aFh1jSDK.getMonetizationNetwork()) {
                aFh1jSDK.getMonetizationNetwork((Map<String, ?>) ((AFe1eSDK) this).component2.getMediationNetwork(aFh1jSDK.getCurrencyIso4217Code));
                AFf1cSDK aFf1cSDK = ((AFe1eSDK) this).component2;
                aFh1jSDK.getMonetizationNetwork((Map<String, ?>) AFf1cSDK.getRevenue(new Object[]{aFf1cSDK, aFh1jSDK.getCurrencyIso4217Code}, 855506449, -855506448, System.identityHashCode(aFf1cSDK)));
                if (this.hashCode.getRevenue("com.appsflyer.security.enable")) {
                    AFf1cSDK aFf1cSDK2 = ((AFe1eSDK) this).component2;
                    AFf1cSDK.getCurrencyIso4217Code(aFh1jSDK);
                }
            }
            if (aFh1jSDK.areAllFieldsValid()) {
                aFh1jSDK.getMonetizationNetwork((Map<String, ?>) ((AFe1eSDK) this).component2.getRevenue());
            }
            Set<AFe1mSDK> set = this.getMediationNetwork;
            boolean z = set.contains(AFe1mSDK.LAUNCH) || set.contains(AFe1mSDK.CONVERSION);
            if (component4() && z) {
                aFh1jSDK.getMonetizationNetwork(this.areAllFieldsValid.getMediationNetwork("appsFlyerCount", 0));
            }
            if (aFh1jSDK.component3()) {
                Map<String, Object> mapAFAdRevenueData = AFj1aSDK.AFAdRevenueData(aFh1jSDK.getCurrencyIso4217Code);
                AFe1ySDK aFe1ySDK = this.copydefault;
                AFe1zSDK aFe1zSDK = new AFe1zSDK(aFe1ySDK.getCurrencyIso4217Code(), aFe1ySDK.getMonetizationNetwork(), AFe1ySDK.getRevenue() ? AFe1tSDK.DEFAULT : AFe1tSDK.API);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("name", aFe1zSDK.getMonetizationNetwork);
                if (aFe1zSDK.AFAdRevenueData != AFe1tSDK.DEFAULT) {
                    jSONObject.put("method", aFe1zSDK.AFAdRevenueData.getMediationNetwork);
                }
                String str = aFe1zSDK.getMediationNetwork;
                if (str != null && !StringsKt.isBlank(str)) {
                    jSONObject.put("prefix", aFe1zSDK.getMediationNetwork);
                }
                mapAFAdRevenueData.put("host", jSONObject);
            }
            if (this.hashCode.getRevenue("AF_PREINSTALL_DISABLED")) {
                AFj1aSDK.AFAdRevenueData(aFh1jSDK.getCurrencyIso4217Code).put("preinstall_disabled", Boolean.TRUE);
            }
            this.AFInAppEventType.getMediationNetwork(aFh1jSDK.getCurrencyIso4217Code, aFh1jSDK.getCurrencyIso4217Code());
        } catch (Throwable th2) {
            AFLogger.INSTANCE.e(AFg1cSDK.QUEUE, "Error while preparing to send event", th2, true, true, false);
        }
    }

    protected void getMonetizationNetwork(AFh1jSDK aFh1jSDK) {
        this.copy.getMonetizationNetwork(aFh1jSDK);
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0124  */
    /* JADX WARN: Code duplicated, block: B:64:0x012b  */
    /* JADX WARN: Code duplicated, block: B:69:0x0146  */
    /* JADX WARN: Code duplicated, block: B:72:0x015f  */
    @Override // com.appsflyer.internal.AFe1eSDK
    protected final AFd1jSDK<String> getRevenue(String str) {
        double d;
        JSONObject jSONObject;
        String string;
        String strReplaceAll;
        Exception exc;
        String str2;
        getMediationNetwork(this.toString);
        if (this.toString.getCurrencyIso4217Code.containsKey("meta")) {
            try {
                d = this.equals.AFAdRevenueData.AFAdRevenueData.getMonetizationNetwork.AFAdRevenueData.getRevenue;
            } catch (NullPointerException unused) {
                d = 1.0d;
            }
            if (AFh1jSDK.getCurrencyIso4217Code(d)) {
                this.toString.getCurrencyIso4217Code.remove("meta");
            }
        }
        AFd1jSDK<String> aFd1jSDKAFAdRevenueData = ((AFe1eSDK) this).component1.AFAdRevenueData(this.toString, str, this.registerClient);
        Map<String, Object> map = this.toString.getCurrencyIso4217Code;
        try {
            jSONObject = new JSONObject(map);
            try {
                string = jSONObject.toString();
                try {
                    if (string == null) {
                        throw new NullPointerException("JSON toString of eventParams map returns null");
                    }
                    strReplaceAll = string.replaceAll("\\p{C}", "*Non-printing character*");
                    str2 = string != null ? string : "";
                    if (strReplaceAll.equals(str2)) {
                        strReplaceAll = str2;
                    } else {
                        AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "Payload contains non-printing characters");
                        try {
                            jSONObject = new JSONObject(strReplaceAll);
                        } catch (JSONException e) {
                            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "Couldn't parse the payload to a json object", e);
                        }
                    }
                    AFg1bSDK.getMediationNetwork(new StringBuilder().append(this).append(": preparing data: ").toString(), jSONObject);
                    this.component4.getMonetizationNetwork(aFd1jSDKAFAdRevenueData != null ? aFd1jSDKAFAdRevenueData.getRevenue.getRevenue : null, strReplaceAll);
                    return aFd1jSDKAFAdRevenueData;
                } catch (NullPointerException e2) {
                    e = e2;
                    AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "JSONObject return null String object. Trying to create AFJsonObject.", e);
                    try {
                        Object[] objArr = {map};
                        Object method = AFa1jSDK.unregisterClient.get(-892712946);
                        if (method == null) {
                            method = ((Class) AFa1jSDK.AFAdRevenueData(Color.argb(0, 0, 0, 0) + 196, (char) (ImageFormat.getBitsPerPixel(0) + 29637), (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 38)).getMethod("getCurrencyIso4217Code", Map.class);
                            AFa1jSDK.unregisterClient.put(-892712946, method);
                        }
                        String str3 = (String) ((Method) method).invoke(null, objArr);
                        try {
                            if (str3 == null) {
                                throw new NullPointerException("JSON toString of eventParams map returns null");
                            }
                            strReplaceAll = str3.replaceAll("\\p{C}", "*Non-printing character*");
                            string = str3;
                        } catch (NullPointerException e3) {
                            e = e3;
                            string = str3;
                            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "AFJsonObject return null String object.", e);
                            strReplaceAll = "";
                        } catch (Exception e4) {
                            exc = e4;
                            string = str3;
                            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "AFFinalizer: reflection init failed.", exc, false, false, true);
                            strReplaceAll = "";
                        } catch (Throwable th) {
                            th = th;
                            string = str3;
                            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "Unexpected error", th);
                            strReplaceAll = "";
                        }
                    } catch (Throwable th2) {
                        try {
                            Throwable cause = th2.getCause();
                            if (cause != null) {
                                throw cause;
                            }
                            throw th2;
                        } catch (NullPointerException e5) {
                            e = e5;
                            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "AFJsonObject return null String object.", e);
                            strReplaceAll = "";
                            if (string != null) {
                            }
                            if (strReplaceAll.equals(str2)) {
                                AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "Payload contains non-printing characters");
                                jSONObject = new JSONObject(strReplaceAll);
                            } else {
                                strReplaceAll = str2;
                            }
                            AFg1bSDK.getMediationNetwork(new StringBuilder().append(this).append(": preparing data: ").toString(), jSONObject);
                            this.component4.getMonetizationNetwork(aFd1jSDKAFAdRevenueData != null ? aFd1jSDKAFAdRevenueData.getRevenue.getRevenue : null, strReplaceAll);
                            return aFd1jSDKAFAdRevenueData;
                        } catch (Exception e6) {
                            exc = e6;
                            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "AFFinalizer: reflection init failed.", exc, false, false, true);
                            strReplaceAll = "";
                            if (string != null) {
                            }
                            if (strReplaceAll.equals(str2)) {
                                AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "Payload contains non-printing characters");
                                jSONObject = new JSONObject(strReplaceAll);
                            } else {
                                strReplaceAll = str2;
                            }
                            AFg1bSDK.getMediationNetwork(new StringBuilder().append(this).append(": preparing data: ").toString(), jSONObject);
                            this.component4.getMonetizationNetwork(aFd1jSDKAFAdRevenueData != null ? aFd1jSDKAFAdRevenueData.getRevenue.getRevenue : null, strReplaceAll);
                            return aFd1jSDKAFAdRevenueData;
                        } catch (Throwable th3) {
                            th = th3;
                            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "Unexpected error", th);
                            strReplaceAll = "";
                            if (string != null) {
                            }
                            if (strReplaceAll.equals(str2)) {
                                AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "Payload contains non-printing characters");
                                jSONObject = new JSONObject(strReplaceAll);
                            } else {
                                strReplaceAll = str2;
                            }
                            AFg1bSDK.getMediationNetwork(new StringBuilder().append(this).append(": preparing data: ").toString(), jSONObject);
                            this.component4.getMonetizationNetwork(aFd1jSDKAFAdRevenueData != null ? aFd1jSDKAFAdRevenueData.getRevenue.getRevenue : null, strReplaceAll);
                            return aFd1jSDKAFAdRevenueData;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "Unexpected error", th);
                    strReplaceAll = "";
                }
            } catch (NullPointerException e7) {
                e = e7;
                string = null;
            } catch (Throwable th5) {
                th = th5;
                string = null;
            }
        } catch (NullPointerException e8) {
            e = e8;
            jSONObject = null;
            string = null;
        } catch (Throwable th6) {
            th = th6;
            jSONObject = null;
            string = null;
        }
    }

    protected void getRevenue(AFh1jSDK aFh1jSDK) {
        this.copy.getCurrencyIso4217Code(aFh1jSDK.getCurrencyIso4217Code);
    }
}
