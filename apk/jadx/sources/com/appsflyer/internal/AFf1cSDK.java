package com.appsflyer.internal;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.ironsource.InterfaceC3669k1;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.fh;

/* JADX INFO: loaded from: classes2.dex */
public final class AFf1cSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int copy = 0;
    private static int copydefault = 1;
    private long AFAdRevenueData;
    private volatile String areAllFieldsValid;
    private volatile String component1;
    Map<String, Object> getCurrencyIso4217Code;
    private final AFc1gSDK getMonetizationNetwork;
    private final AFf1eSDK getRevenue;
    private static char[] component4 = {6849, 65232, 53971, 46742, 35473, 28323, 16961, 9801, 14948, 7687, 61969, 54818};
    private static long component3 = -3612185266591219208L;
    private boolean getMediationNetwork = false;
    private volatile boolean component2 = false;

    public AFf1cSDK(AFc1gSDK aFc1gSDK, AFf1eSDK aFf1eSDK) {
        this.getMonetizationNetwork = aFc1gSDK;
        this.getRevenue = aFf1eSDK;
    }

    private static void a(int i, int i2, char c, Object[] objArr) {
        int i3;
        int i4 = 2 % 2;
        AFk1hSDK aFk1hSDK = new AFk1hSDK();
        long[] jArr = new long[i];
        aFk1hSDK.getCurrencyIso4217Code = 0;
        while (aFk1hSDK.getCurrencyIso4217Code < i) {
            int i5 = $10 + 7;
            $11 = i5 % 128;
            int i6 = i5 % 2;
            jArr[aFk1hSDK.getCurrencyIso4217Code] = (((long) ((char) (((long) component4[aFk1hSDK.getCurrencyIso4217Code + i2]) ^ 8195019394385815022L))) ^ (((long) aFk1hSDK.getCurrencyIso4217Code) * (8195019394385815022L ^ component3))) ^ ((long) c);
            aFk1hSDK.getCurrencyIso4217Code++;
        }
        char[] cArr = new char[i];
        aFk1hSDK.getCurrencyIso4217Code = 0;
        while (aFk1hSDK.getCurrencyIso4217Code < i) {
            int i7 = $10 + 67;
            $11 = i7 % 128;
            if (i7 % 2 == 0) {
                cArr[aFk1hSDK.getCurrencyIso4217Code] = (char) jArr[aFk1hSDK.getCurrencyIso4217Code];
                i3 = aFk1hSDK.getCurrencyIso4217Code >>> 1;
            } else {
                cArr[aFk1hSDK.getCurrencyIso4217Code] = (char) jArr[aFk1hSDK.getCurrencyIso4217Code];
                i3 = aFk1hSDK.getCurrencyIso4217Code + 1;
            }
            aFk1hSDK.getCurrencyIso4217Code = i3;
        }
        objArr[0] = new String(cArr);
    }

    private long areAllFieldsValid() {
        int i = 2 % 2;
        int i2 = copydefault + 25;
        copy = i2 % 128;
        if (i2 % 2 == 0) {
            return this.AFAdRevenueData;
        }
        int i3 = 66 / 0;
        return this.AFAdRevenueData;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0023  */
    /* JADX WARN: Code duplicated, block: B:9:0x001b  */
    private boolean component1() {
        int i = 2 % 2;
        int i2 = copy + 25;
        copydefault = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 16 / 0;
            if (this.getCurrencyIso4217Code != null) {
                if (!this.getCurrencyIso4217Code.isEmpty()) {
                    int i4 = copy + 47;
                    copydefault = i4 % 128;
                    int i5 = i4 % 2;
                    return true;
                }
            }
        } else if (this.getCurrencyIso4217Code != null) {
            if (!this.getCurrencyIso4217Code.isEmpty()) {
                int i6 = copy + 47;
                copydefault = i6 % 128;
                int i7 = i6 % 2;
                return true;
            }
        }
        int i8 = copydefault + 43;
        copy = i8 % 128;
        if (i8 % 2 == 0) {
            return false;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    public static void getCurrencyIso4217Code(AFh1jSDK aFh1jSDK) throws Throwable {
        int i = 2 % 2;
        try {
            new AFb1sSDK(aFh1jSDK).afInfoLog();
            int i2 = copydefault + 15;
            copy = i2 % 128;
            if (i2 % 2 == 0) {
                return;
            }
            Object obj = null;
            obj.hashCode();
            throw null;
        } catch (Exception e) {
            AFLogger.afErrorLogForExcManagerOnly("native: reflection init failed", e);
        }
    }

    private static /* synthetic */ Object getMediationNetwork(Object[] objArr) {
        AFf1cSDK aFf1cSDK = (AFf1cSDK) objArr[0];
        int i = 2 % 2;
        int i2 = copy + 115;
        copydefault = i2 % 128;
        int i3 = i2 % 2;
        boolean z = aFf1cSDK.component2;
        int i4 = copydefault + 75;
        copy = i4 % 128;
        if (i4 % 2 == 0) {
            return Boolean.valueOf(z);
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private static boolean getMediationNetwork(Context context) {
        int i = 2 % 2;
        int i2 = copydefault + 83;
        copy = i2 % 128;
        if (i2 % 2 == 0 ? (!AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false)) : !AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false)) {
            int i3 = copydefault + 87;
            copy = i3 % 128;
            int i4 = i3 % 2;
            if (!AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) {
                int i5 = copy + 11;
                copydefault = i5 % 128;
                int i6 = i5 % 2;
                AFa1uSDK.getMonetizationNetwork();
                if (i6 == 0) {
                    AFa1uSDK.getRevenue(context);
                    throw null;
                }
                if (AFa1uSDK.getRevenue(context)) {
                    return false;
                }
            }
        }
        return true;
    }

    private long getMonetizationNetwork(AFc1pSDK aFc1pSDK) {
        int i = 2 % 2;
        long monetizationNetwork = AFj1bSDK.getMonetizationNetwork(AFj1bSDK.getMonetizationNetwork(new StringBuilder().append(AFb1jSDK.getRevenue(aFc1pSDK.getMonetizationNetwork)).append(areAllFieldsValid()).toString()));
        int i2 = copydefault + 41;
        copy = i2 % 128;
        int i3 = i2 % 2;
        return monetizationNetwork;
    }

    private static /* synthetic */ Object getMonetizationNetwork(Object[] objArr) {
        AFf1cSDK aFf1cSDK = (AFf1cSDK) objArr[0];
        AFc1pSDK aFc1pSDK = (AFc1pSDK) objArr[1];
        int i = 2 % 2;
        aFf1cSDK.AFAdRevenueData = System.currentTimeMillis();
        aFf1cSDK.getMediationNetwork = aFf1cSDK.getRevenue.AFAdRevenueData(aFf1cSDK.getMonetizationNetwork(aFc1pSDK), aFf1cSDK.getMonetizationNetwork.getRevenue, new AFf1eSDK.AFa1tSDK() { // from class: com.appsflyer.internal.AFf1cSDK.3
            @Override // com.appsflyer.internal.AFf1eSDK.AFa1tSDK
            public final void AFAdRevenueData(String str, Exception exc) {
                AFf1cSDK.this.getCurrencyIso4217Code = new ConcurrentHashMap();
                String message = exc.getMessage();
                if (message == null) {
                    message = "unknown";
                }
                AFf1cSDK.this.component2();
                AFf1cSDK.this.getCurrencyIso4217Code.put("error", message);
                AFLogger.afErrorLog(str, exc, true, true, false);
            }

            @Override // com.appsflyer.internal.AFf1eSDK.AFa1tSDK
            public final void AFAdRevenueData(String str, String str2) {
                AFf1cSDK.this.getCurrencyIso4217Code = new ConcurrentHashMap();
                AFf1cSDK.this.getCurrencyIso4217Code.put("signedData", str);
                AFf1cSDK.this.getCurrencyIso4217Code.put(InAppPurchaseMetaData.KEY_SIGNATURE, str2);
                AFf1cSDK.this.component2();
                AFLogger.afInfoLog("Successfully retrieved Google LVL data.");
            }
        });
        int i2 = copy + fh.h1;
        copydefault = i2 % 128;
        Object obj = null;
        if (i2 % 2 != 0) {
            return null;
        }
        obj.hashCode();
        throw null;
    }

    public static void getMonetizationNetwork(Map<String, Object> map, AFc1pSDK aFc1pSDK) {
        int i = 2 % 2;
        int i2 = copy + 75;
        copydefault = i2 % 128;
        int i3 = i2 % 2;
        if (AFk1xSDK.getRevenue(aFc1pSDK.getMediationNetwork)) {
            int i4 = copydefault + 59;
            copy = i4 % 128;
            int i5 = i4 % 2;
            String monetizationNetwork = aFc1pSDK.getMonetizationNetwork("com.appsflyer.security.uuid");
            if (!(!AFk1xSDK.getRevenue(monetizationNetwork))) {
                monetizationNetwork = AFc1pSDK.getMonetizationNetwork();
            }
            aFc1pSDK.getMediationNetwork = monetizationNetwork.substring(0, 8);
            int i6 = copydefault + 19;
            copy = i6 % 128;
            int i7 = i6 % 2;
        }
        String str = aFc1pSDK.getMediationNetwork;
        try {
            Object[] objArr = new Object[1];
            a((Process.myPid() >> 22) + 12, View.MeasureSpec.makeMeasureSpec(0, 0), (char) (48974 - TextUtils.indexOf("", "", 0, 0)), objArr);
            long j = Long.parseLong(String.valueOf(map.get(((String) objArr[0]).intern())));
            char[] charArray = str.toCharArray();
            int i8 = ((int) (j % 94)) + 33;
            for (int i9 = 0; i9 < charArray.length; i9++) {
                charArray[i9] = (char) (charArray[i9] ^ i8);
            }
            map.put("sbid", new String(charArray));
        } catch (Exception e) {
            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "Exception occurred while generating sbid ", e);
        }
    }

    private static /* synthetic */ Object getRevenue(Object[] objArr) {
        int i = 2 % 2;
        try {
            try {
                Object[] objArr2 = {(Map) objArr[1], ((AFf1cSDK) objArr[0]).getMonetizationNetwork.getRevenue};
                Object declaredConstructor = AFa1jSDK.unregisterClient.get(-1144864810);
                if (declaredConstructor == null) {
                    declaredConstructor = ((Class) AFa1jSDK.AFAdRevenueData(125 - (SystemClock.elapsedRealtimeNanos() > 0L ? 1 : (SystemClock.elapsedRealtimeNanos() == 0L ? 0 : -1)), (char) (ViewConfiguration.getScrollBarFadeDuration() >> 16), 36 - View.MeasureSpec.getSize(0))).getDeclaredConstructor(Map.class, Context.class);
                    AFa1jSDK.unregisterClient.put(-1144864810, declaredConstructor);
                }
                Object objNewInstance = ((Constructor) declaredConstructor).newInstance(objArr2);
                int i2 = copy + 125;
                copydefault = i2 % 128;
                int i3 = i2 % 2;
                return objNewInstance;
            } catch (Throwable th) {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            }
        } catch (Throwable th2) {
            AFLogger.afErrorLogForExcManagerOnly("AFCksmV3: reflection init failed", th2);
            return new HashMap();
        }
    }

    public static /* synthetic */ Object getRevenue(Object[] objArr, int i, int i2, int i3) {
        int i4 = ~i2;
        int i5 = (i * (-1965)) + (i2 * 984) + ((i | i4) * 983);
        int i6 = ~i;
        int i7 = ~i3;
        int i8 = i5 + (((~(i4 | i7)) | i6) * (-983)) + (((~(i6 | i2)) | (~(i7 | i6))) * 983);
        if (i8 != 1) {
            return i8 != 2 ? getMediationNetwork(objArr) : getMonetizationNetwork(objArr);
        }
        return getRevenue(objArr);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0024 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:9:0x001b  */
    public final boolean AFAdRevenueData() {
        int i = 2 % 2;
        int i2 = copydefault + 57;
        copy = i2 % 128;
        if (i2 % 2 != 0) {
            int i3 = 32 / 0;
            if (this.getMediationNetwork) {
                if (!component1()) {
                    return true;
                }
            }
        } else if (this.getMediationNetwork) {
            if (!component1()) {
                return true;
            }
        }
        int i4 = copydefault + 109;
        copy = i4 % 128;
        int i5 = i4 % 2;
        return false;
    }

    final void component2() {
        int i = 2 % 2;
        int i2 = copy + 75;
        copydefault = i2 % 128;
        int i3 = i2 % 2;
        this.getCurrencyIso4217Code.put("ttr", Long.valueOf(System.currentTimeMillis() - this.AFAdRevenueData));
        this.getCurrencyIso4217Code.put("lvl_timestamp", Long.valueOf(areAllFieldsValid()));
        int i4 = copy + 11;
        copydefault = i4 % 128;
        int i5 = i4 % 2;
    }

    public final String getCurrencyIso4217Code() {
        int i = 2 % 2;
        int i2 = copy + 111;
        copydefault = i2 % 128;
        if (i2 % 2 != 0) {
            return this.areAllFieldsValid;
        }
        throw null;
    }

    public final void getCurrencyIso4217Code(String str) {
        int i = 2 % 2;
        int i2 = copy + 67;
        copydefault = i2 % 128;
        int i3 = i2 % 2;
        this.areAllFieldsValid = str;
        int i4 = copy + 15;
        copydefault = i4 % 128;
        int i5 = i4 % 2;
    }

    public final String getMediationNetwork() {
        int i = 2 % 2;
        int i2 = copydefault + 65;
        copy = i2 % 128;
        int i3 = i2 % 2;
        String str = this.component1;
        int i4 = copydefault + 119;
        copy = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00ce  */
    public final String getMediationNetwork(AFc1oSDK aFc1oSDK) {
        String str;
        int i = 2 % 2;
        int i2 = copydefault + 57;
        copy = i2 % 128;
        int i3 = i2 % 2;
        boolean z = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI, false);
        String monetizationNetwork = aFc1oSDK.getMonetizationNetwork("imeiCached", null);
        if (z && AFk1xSDK.getRevenue(this.areAllFieldsValid)) {
            int i4 = copy + 75;
            copydefault = i4 % 128;
            int i5 = i4 % 2;
            Context context = this.getMonetizationNetwork.getRevenue;
            if (context == null || !getMediationNetwork(context)) {
                str = null;
            } else {
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                    str = (String) telephonyManager.getClass().getMethod("getDeviceId", new Class[0]).invoke(telephonyManager, new Object[0]);
                    if (str == null) {
                        if (monetizationNetwork != null) {
                            AFLogger.afDebugLog("use cached IMEI: ".concat(String.valueOf(monetizationNetwork)));
                        } else {
                            monetizationNetwork = null;
                        }
                        str = monetizationNetwork;
                    }
                } catch (InvocationTargetException e) {
                    if (monetizationNetwork != null) {
                        AFLogger.afDebugLog("use cached IMEI: ".concat(String.valueOf(monetizationNetwork)));
                    } else {
                        monetizationNetwork = null;
                    }
                    AFLogger.afErrorLog(new StringBuilder("WARNING: Can't collect IMEI because of missing permissions: ").append(e.getMessage()).toString(), e);
                } catch (Exception e2) {
                    if (monetizationNetwork != null) {
                        AFLogger.afDebugLog("use cached IMEI: ".concat(String.valueOf(monetizationNetwork)));
                    } else {
                        monetizationNetwork = null;
                    }
                    AFLogger.afErrorLog(new StringBuilder("WARNING: Can't collect IMEI: other reason: ").append(e2.getMessage()).toString(), e2);
                }
            }
        } else if (this.areAllFieldsValid != null) {
            int i6 = copydefault + 5;
            copy = i6 % 128;
            int i7 = i6 % 2;
            str = this.areAllFieldsValid;
        } else {
            str = null;
        }
        if (AFk1xSDK.getRevenue(str)) {
            AFLogger.afInfoLog("IMEI was not collected.");
            int i8 = copy + 47;
            copydefault = i8 % 128;
            if (i8 % 2 == 0) {
                int i9 = 91 / 0;
            }
            return null;
        }
        int i10 = copy + 111;
        copydefault = i10 % 128;
        if (i10 % 2 != 0) {
            aFc1oSDK.AFAdRevenueData("imeiCached", str);
            return str;
        }
        aFc1oSDK.AFAdRevenueData("imeiCached", str);
        throw null;
    }

    public final Map<String, Object> getMediationNetwork(Map<String, Object> map) {
        int i = 2 % 2;
        AFc1iSDK aFc1iSDK = new AFc1iSDK(map, this.getMonetizationNetwork.getRevenue);
        int i2 = copy + 83;
        copydefault = i2 % 128;
        if (i2 % 2 != 0) {
            return aFc1iSDK;
        }
        throw null;
    }

    public final Map<String, Object> getMonetizationNetwork(Map<String, Object> map) {
        return (Map) getRevenue(new Object[]{this, map}, 855506449, -855506448, System.identityHashCode(this));
    }

    public final void getMonetizationNetwork(String str) {
        int i = 2 % 2;
        int i2 = copy + 77;
        copydefault = i2 % 128;
        if (i2 % 2 == 0) {
            this.component1 = str;
            int i3 = 49 / 0;
        } else {
            this.component1 = str;
        }
        int i4 = copydefault + 47;
        copy = i4 % 128;
        int i5 = i4 % 2;
    }

    public final boolean getMonetizationNetwork() {
        return ((Boolean) getRevenue(new Object[]{this}, 680071429, -680071429, System.identityHashCode(this))).booleanValue();
    }

    public final Map<String, Object> getRevenue() {
        int i = 2 % 2;
        HashMap map = new HashMap();
        if (component1()) {
            int i2 = copy + 37;
            copydefault = i2 % 128;
            if (i2 % 2 == 0) {
                map.put("lvl", this.getCurrencyIso4217Code);
                Object obj = null;
                obj.hashCode();
                throw null;
            }
            map.put("lvl", this.getCurrencyIso4217Code);
        } else if (this.getMediationNetwork) {
            this.getCurrencyIso4217Code = new HashMap();
            component2();
            this.getCurrencyIso4217Code.put("error", "pending LVL response");
            map.put("lvl", this.getCurrencyIso4217Code);
        }
        int i3 = copy + InterfaceC3669k1.d.b.k;
        copydefault = i3 % 128;
        int i4 = i3 % 2;
        return map;
    }

    public final void getRevenue(AFc1pSDK aFc1pSDK) {
        getRevenue(new Object[]{this, aFc1pSDK}, 826598914, -826598912, System.identityHashCode(this));
    }

    public final void getRevenue(boolean z) {
        int i = 2 % 2;
        int i2 = copydefault + 63;
        copy = i2 % 128;
        if (i2 % 2 != 0) {
            this.component2 = z;
            Object obj = null;
            obj.hashCode();
            throw null;
        }
        this.component2 = z;
        int i3 = copy + 117;
        copydefault = i3 % 128;
        int i4 = i3 % 2;
    }
}
