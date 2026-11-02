package com.appsflyer.internal;

import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.sdk.AppLovinEventTypes;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.facebook.ads.internal.util.common.FbValidationUtils;
import com.ironsource.C3510b4;
import com.ironsource.InterfaceC3669k1;
import com.ironsource.R6;
import com.tapjoy.TapjoyConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.fh;
import org.json.JSONObject;
import p005kotlin.Lazy;
import p005kotlin.LazyKt;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class AFg1qSDK implements AFg1rSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int i = 1;
    private static int w;
    private final AFg1sSDK AFAdRevenueData;
    private final Lazy AFKeystoreWrapper;
    private final AFc1pSDK areAllFieldsValid;
    private final AFc1oSDK component1;
    private final AFg1vSDK component2;
    private final AFh1tSDK component3;
    private final AFi1sSDK component4;
    private final AFf1cSDK copy;
    private final Lazy copydefault;
    private final AFc1gSDK equals;
    private final AFi1lSDK getCurrencyIso4217Code;
    private final Context getMediationNetwork;
    private final AFj1pSDK getMonetizationNetwork;
    private final String getRevenue;
    private final AFg1xSDK hashCode;
    private final AFc1eSDK toString;
    private static char[] AFInAppEventType = {35909, 35928, 35921, 35926, 35927, 35903, 35904, 35924, 35933, 35910, 35931, 35879, 35908, 35905, 35911};
    private static int AFLogger = 1912311267;
    private static boolean AFInAppEventParameterName = true;
    private static boolean registerClient = true;

    public AFg1qSDK(String str, Context context, AFi1lSDK aFi1lSDK, AFg1sSDK aFg1sSDK, AFj1pSDK aFj1pSDK, AFg1vSDK aFg1vSDK, AFh1tSDK aFh1tSDK, AFc1oSDK aFc1oSDK, AFc1pSDK aFc1pSDK, AFi1sSDK aFi1sSDK, AFf1cSDK aFf1cSDK, AFc1gSDK aFc1gSDK, AFg1xSDK aFg1xSDK, AFc1eSDK aFc1eSDK) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(context, "");
        Intrinsics.checkNotNullParameter(aFi1lSDK, "");
        Intrinsics.checkNotNullParameter(aFg1sSDK, "");
        Intrinsics.checkNotNullParameter(aFj1pSDK, "");
        Intrinsics.checkNotNullParameter(aFg1vSDK, "");
        Intrinsics.checkNotNullParameter(aFh1tSDK, "");
        Intrinsics.checkNotNullParameter(aFc1oSDK, "");
        Intrinsics.checkNotNullParameter(aFc1pSDK, "");
        Intrinsics.checkNotNullParameter(aFi1sSDK, "");
        Intrinsics.checkNotNullParameter(aFf1cSDK, "");
        Intrinsics.checkNotNullParameter(aFc1gSDK, "");
        Intrinsics.checkNotNullParameter(aFg1xSDK, "");
        Intrinsics.checkNotNullParameter(aFc1eSDK, "");
        this.getRevenue = str;
        this.getMediationNetwork = context;
        this.getCurrencyIso4217Code = aFi1lSDK;
        this.AFAdRevenueData = aFg1sSDK;
        this.getMonetizationNetwork = aFj1pSDK;
        this.component2 = aFg1vSDK;
        this.component3 = aFh1tSDK;
        this.component1 = aFc1oSDK;
        this.areAllFieldsValid = aFc1pSDK;
        this.component4 = aFi1sSDK;
        this.copy = aFf1cSDK;
        this.equals = aFc1gSDK;
        this.hashCode = aFg1xSDK;
        this.toString = aFc1eSDK;
        this.copydefault = LazyKt.lazy(new Function0<AppsFlyerProperties>() { // from class: com.appsflyer.internal.AFg1qSDK.5
            @Override // p005kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: getCurrencyIso4217Code, reason: merged with bridge method [inline-methods] */
            public final AppsFlyerProperties invoke() {
                return AppsFlyerProperties.getInstance();
            }
        });
        this.AFKeystoreWrapper = LazyKt.lazy(new Function0<SimpleDateFormat>() { // from class: com.appsflyer.internal.AFg1qSDK.3
            @Override // p005kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: AFAdRevenueData, reason: merged with bridge method [inline-methods] */
            public final SimpleDateFormat invoke() {
                return new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US);
            }
        });
    }

    private static File AFAdRevenueData(String str) {
        int i2 = 2 % 2;
        if (str != null) {
            try {
                if (StringsKt.trim((CharSequence) str).toString().length() > 0) {
                    return new File(StringsKt.trim((CharSequence) str).toString());
                }
                int i3 = w + 3;
                i = i3 % 128;
                int i4 = i3 % 2;
            } catch (Throwable th) {
                AFLogger.afErrorLog(th.getMessage(), th);
            }
        }
        int i5 = i + 5;
        w = i5 % 128;
        int i6 = i5 % 2;
        return null;
    }

    private static /* synthetic */ Object AFAdRevenueData(Object[] objArr) {
        AFg1qSDK aFg1qSDK = (AFg1qSDK) objArr[0];
        Map map = (Map) objArr[1];
        int i2 = 2 % 2;
        int i3 = i + 119;
        w = i3 % 128;
        if (i3 % 2 != 0) {
            Intrinsics.checkNotNullParameter(map, "");
            map.putAll(aFg1qSDK.hashCode.getCurrencyIso4217Code());
            int i4 = 68 / 0;
        } else {
            Intrinsics.checkNotNullParameter(map, "");
            map.putAll(aFg1qSDK.hashCode.getCurrencyIso4217Code());
        }
        int i5 = i + 53;
        w = i5 % 128;
        if (i5 % 2 != 0) {
            int i6 = 1 / 0;
        }
        return null;
    }

    private String AFAdRevenueData(int i2) {
        String monetizationNetwork;
        int i3 = 2 % 2;
        int i4 = i + 53;
        w = i4 % 128;
        int i5 = i4 % 2;
        String string = getMonetizationNetwork().getString("preInstallName");
        if (string != null) {
            int i6 = w + 15;
            i = i6 % 128;
            if (i6 % 2 == 0) {
                int i7 = 12 / 0;
            }
            return string;
        }
        Object obj = null;
        if (this.component1.getRevenue("preInstallName")) {
            monetizationNetwork = this.component1.getMonetizationNetwork("preInstallName", null);
        } else {
            if (i2 <= 1) {
                int i8 = i + 99;
                w = i8 % 128;
                if (i8 % 2 != 0) {
                    equals();
                    throw null;
                }
                String strEquals = equals();
                if (strEquals == null) {
                    int i9 = w + 19;
                    i = i9 % 128;
                    if (i9 % 2 == 0) {
                        getCurrencyIso4217Code("AF_PRE_INSTALL_NAME");
                        obj.hashCode();
                        throw null;
                    }
                    strEquals = getCurrencyIso4217Code("AF_PRE_INSTALL_NAME");
                }
                string = strEquals;
            }
            if (string != null) {
                this.component1.AFAdRevenueData("preInstallName", string);
            }
            monetizationNetwork = string;
        }
        if (monetizationNetwork != null) {
            int i10 = w + 73;
            i = i10 % 128;
            int i11 = i10 % 2;
            getMonetizationNetwork().set("preInstallName", monetizationNetwork);
        }
        return monetizationNetwork;
    }

    private static String AFAdRevenueData(AFc1oSDK aFc1oSDK, String str) {
        int i2 = 2 % 2;
        int i3 = i + 77;
        w = i3 % 128;
        int i4 = i3 % 2;
        String monetizationNetwork = aFc1oSDK.getMonetizationNetwork("CACHED_CHANNEL", null);
        if (monetizationNetwork == null) {
            aFc1oSDK.AFAdRevenueData("CACHED_CHANNEL", str);
            return str;
        }
        int i5 = w + 27;
        i = i5 % 128;
        int i6 = i5 % 2;
        return monetizationNetwork;
    }

    private final void AFAdRevenueData(Map<String, Object> map) {
        int i2 = 2 % 2;
        try {
            long jLongValue = ((Long) getMediationNetwork(new Object[]{this}, -1521351773, 1521351785, System.identityHashCode(this))).longValue();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            map.put("installDate", simpleDateFormat.format(new Date(jLongValue)));
            int i3 = i + 15;
            w = i3 % 128;
            if (i3 % 2 == 0) {
                return;
            }
            Object obj = null;
            obj.hashCode();
            throw null;
        } catch (Exception e) {
            AFLogger.afErrorLog("Exception while collecting install date. ", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003f  */
    private void AFAdRevenueData(Map<String, Object> map, int i2) {
        boolean z;
        boolean z2;
        int i3 = 2 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        String strAreAllFieldsValid = this.areAllFieldsValid.areAllFieldsValid();
        String strAFAdRevenueData = AFAdRevenueData(this.component1, strAreAllFieldsValid);
        if (strAFAdRevenueData == null || Intrinsics.areEqual(strAFAdRevenueData, strAreAllFieldsValid)) {
            z = false;
        } else {
            int i4 = w + 17;
            i = i4 % 128;
            int i5 = i4 % 2;
            z = true;
        }
        Object obj = null;
        if (strAFAdRevenueData == null) {
            int i6 = i + 79;
            w = i6 % 128;
            if (i6 % 2 != 0) {
                obj.hashCode();
                throw null;
            }
            z2 = strAreAllFieldsValid != null;
        }
        if (z || z2) {
            map.put("af_latestchannel", strAreAllFieldsValid);
        }
        String monetizationNetwork = getMonetizationNetwork(i2);
        if (monetizationNetwork != null) {
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "");
            Object lowerCase = monetizationNetwork.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "");
            map.put("af_installstore", lowerCase);
        }
        String strAFAdRevenueData2 = AFAdRevenueData(i2);
        if (strAFAdRevenueData2 != null) {
            int i7 = i + 11;
            w = i7 % 128;
            if (i7 % 2 != 0) {
                Locale locale2 = Locale.getDefault();
                Intrinsics.checkNotNullExpressionValue(locale2, "");
                Object lowerCase2 = strAFAdRevenueData2.toLowerCase(locale2);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "");
                map.put("af_preinstall_name", lowerCase2);
                obj.hashCode();
                throw null;
            }
            Locale locale3 = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale3, "");
            Object lowerCase3 = strAFAdRevenueData2.toLowerCase(locale3);
            Intrinsics.checkNotNullExpressionValue(lowerCase3, "");
            map.put("af_preinstall_name", lowerCase3);
        } else {
            int i8 = w + 77;
            i = i8 % 128;
            int i9 = i8 % 2;
        }
        String strComponent2 = component2();
        if (strComponent2 != null) {
            Locale locale4 = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale4, "");
            Object lowerCase4 = strComponent2.toLowerCase(locale4);
            Intrinsics.checkNotNullExpressionValue(lowerCase4, "");
            map.put("af_currentstore", lowerCase4);
        }
    }

    private static void AFAdRevenueData(Map<String, Object> map, AFh1jSDK aFh1jSDK) {
        Intrinsics.checkNotNullParameter(map, "");
        Intrinsics.checkNotNullParameter(aFh1jSDK, "");
        String str = aFh1jSDK.component4;
        if (str != null) {
            map.put("eventName", str);
            map.put("eventValue", new JSONObject(aFh1jSDK.AFAdRevenueData == null ? new HashMap() : aFh1jSDK.AFAdRevenueData).toString());
        }
    }

    private void AFAdRevenueData(Map<String, Object> map, String str) {
        boolean z;
        int i2 = 2 % 2;
        int i3 = w + 101;
        i = i3 % 128;
        Object obj = null;
        if (i3 % 2 == 0) {
            Intrinsics.checkNotNullParameter(map, "");
            throw null;
        }
        Intrinsics.checkNotNullParameter(map, "");
        String str2 = str;
        if (str2 != null && str2.length() != 0) {
            int i4 = i + 17;
            w = i4 % 128;
            if (i4 % 2 != 0) {
                map.put(TapjoyConstants.TJC_REFERRER, str);
                obj.hashCode();
                throw null;
            }
            map.put(TapjoyConstants.TJC_REFERRER, str);
            int i5 = i + 67;
            w = i5 % 128;
            int i6 = i5 % 2;
        }
        String monetizationNetwork = this.component1.getMonetizationNetwork("extraReferrers", null);
        if (monetizationNetwork != null) {
            map.put("extraReferrers", monetizationNetwork);
        }
        String referrer = getMonetizationNetwork().getReferrer(this.component1);
        String str3 = referrer;
        if (str3 == null || str3.length() == 0) {
            int i7 = i + 17;
            w = i7 % 128;
            int i8 = i7 % 2;
            z = true;
        } else {
            z = false;
        }
        if (!(!z)) {
            return;
        }
        int i9 = w + 67;
        i = i9 % 128;
        if (i9 % 2 == 0) {
            int i10 = 10 / 0;
            if (map.get(TapjoyConstants.TJC_REFERRER) != null) {
                return;
            }
        } else if (map.get(TapjoyConstants.TJC_REFERRER) != null) {
            return;
        }
        map.put(TapjoyConstants.TJC_REFERRER, referrer);
    }

    private void AFAdRevenueData(Map<String, Object> map, boolean z) {
        int i2 = 2 % 2;
        int i3 = i + 53;
        w = i3 % 128;
        int i4 = i3 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        map.put("platformextension", this.getRevenue);
        if (z) {
            map.put("platform_extension_v2", this.getCurrencyIso4217Code.AFAdRevenueData());
            int i5 = i + 125;
            w = i5 % 128;
            int i6 = i5 % 2;
        }
    }

    private void AFInAppEventParameterName(Map<String, Object> map) {
        int i2 = 2 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        long j = this.component3.hashCode;
        if (j != 0) {
            int i3 = i + 41;
            w = i3 % 128;
            int i4 = i3 % 2;
            map.put("prev_session_dur", Long.valueOf(j));
            int i5 = w + 31;
            i = i5 % 128;
            if (i5 % 2 == 0) {
                int i6 = 2 % 3;
            }
        }
        int i7 = i + 111;
        w = i7 % 128;
        int i8 = i7 % 2;
    }

    private void AFInAppEventType(Map<String, Object> map) {
        getMediationNetwork(new Object[]{this, map}, -2015365334, 2015365335, System.identityHashCode(this));
    }

    private static void AFKeystoreWrapper(Map<String, Object> map) {
        int i2 = 2 % 2;
        int i3 = w + 41;
        i = i3 % 128;
        if (i3 % 2 == 0) {
            Intrinsics.checkNotNullParameter(map, "");
            AFa1zSDK aFa1zSDK = AFa1zSDK.INSTANCE;
            AFa1zSDK.getMonetizationNetwork();
            AFa1zSDK aFa1zSDK2 = AFa1zSDK.INSTANCE;
            AFa1zSDK.getRevenue();
            throw null;
        }
        Intrinsics.checkNotNullParameter(map, "");
        AFa1zSDK aFa1zSDK3 = AFa1zSDK.INSTANCE;
        Object monetizationNetwork = AFa1zSDK.getMonetizationNetwork();
        AFa1zSDK aFa1zSDK4 = AFa1zSDK.INSTANCE;
        String revenue = AFa1zSDK.getRevenue();
        if (monetizationNetwork == null || revenue == null || Integer.parseInt(revenue) <= 0) {
            return;
        }
        int i4 = i + 57;
        w = i4 % 128;
        int i5 = i4 % 2;
        map.put("reinstallCounter", revenue);
        map.put("originalAppsflyerId", monetizationNetwork);
    }

    private void AFLogger(Map<String, Object> map) {
        int i2 = 2 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        String string = getMonetizationNetwork().getString(AppsFlyerProperties.EXTENSION);
        String str = string;
        if (str != null) {
            int i3 = i + 39;
            w = i3 % 128;
            int i4 = i3 % 2;
            if (str.length() == 0) {
                return;
            }
            int i5 = i + 117;
            w = i5 % 128;
            int i6 = i5 % 2;
            map.put(AppsFlyerProperties.EXTENSION, string);
        }
    }

    private static void a(String str, String str2, int[] iArr, int i2, Object[] objArr) throws UnsupportedEncodingException {
        int i3;
        char[] cArr;
        int i4 = 2 % 2;
        int i5 = $11 + 111;
        $10 = i5 % 128;
        Object bytes = str2;
        if (i5 % 2 != 0) {
            Object obj = null;
            obj.hashCode();
            throw null;
        }
        if (str2 != null) {
            bytes = str2.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr2 = (char[]) charArray;
        AFk1iSDK aFk1iSDK = new AFk1iSDK();
        char[] cArr3 = AFInAppEventType;
        if (cArr3 != null) {
            int i6 = $11 + 115;
            $10 = i6 % 128;
            int i7 = i6 % 2;
            int length = cArr3.length;
            char[] cArr4 = new char[length];
            for (int i8 = 0; i8 < length; i8++) {
                int i9 = $11 + 53;
                $10 = i9 % 128;
                int i10 = i9 % 2;
                cArr4[i8] = (char) (((long) cArr3[i8]) ^ 1825820251896122634L);
            }
            cArr3 = cArr4;
        }
        int i11 = (int) (1825820251896122634L ^ ((long) AFLogger));
        if (registerClient) {
            int i12 = $11 + 119;
            $10 = i12 % 128;
            if (i12 % 2 != 0) {
                aFk1iSDK.getCurrencyIso4217Code = bArr.length;
                cArr = new char[aFk1iSDK.getCurrencyIso4217Code];
                aFk1iSDK.getMediationNetwork = 1;
            } else {
                aFk1iSDK.getCurrencyIso4217Code = bArr.length;
                cArr = new char[aFk1iSDK.getCurrencyIso4217Code];
                aFk1iSDK.getMediationNetwork = 0;
            }
            while (aFk1iSDK.getMediationNetwork < aFk1iSDK.getCurrencyIso4217Code) {
                int i13 = $10 + 29;
                $11 = i13 % 128;
                int i14 = i13 % 2;
                cArr[aFk1iSDK.getMediationNetwork] = (char) (cArr3[bArr[(aFk1iSDK.getCurrencyIso4217Code - 1) - aFk1iSDK.getMediationNetwork] + i2] - i11);
                aFk1iSDK.getMediationNetwork++;
            }
            objArr[0] = new String(cArr);
            return;
        }
        if (!AFInAppEventParameterName) {
            aFk1iSDK.getCurrencyIso4217Code = iArr.length;
            char[] cArr5 = new char[aFk1iSDK.getCurrencyIso4217Code];
            aFk1iSDK.getMediationNetwork = 0;
            while (aFk1iSDK.getMediationNetwork < aFk1iSDK.getCurrencyIso4217Code) {
                cArr5[aFk1iSDK.getMediationNetwork] = (char) (cArr3[iArr[(aFk1iSDK.getCurrencyIso4217Code - 1) - aFk1iSDK.getMediationNetwork] - i2] - i11);
                aFk1iSDK.getMediationNetwork++;
            }
            objArr[0] = new String(cArr5);
            return;
        }
        aFk1iSDK.getCurrencyIso4217Code = cArr2.length;
        char[] cArr6 = new char[aFk1iSDK.getCurrencyIso4217Code];
        aFk1iSDK.getMediationNetwork = 0;
        while (aFk1iSDK.getMediationNetwork < aFk1iSDK.getCurrencyIso4217Code) {
            int i15 = $10 + 77;
            $11 = i15 % 128;
            if (i15 % 2 == 0) {
                cArr6[aFk1iSDK.getMediationNetwork] = (char) (cArr3[cArr2[(aFk1iSDK.getCurrencyIso4217Code << 1) >>> aFk1iSDK.getMediationNetwork] + i2] >>> i11);
                i3 = aFk1iSDK.getMediationNetwork % 0;
            } else {
                cArr6[aFk1iSDK.getMediationNetwork] = (char) (cArr3[cArr2[(aFk1iSDK.getCurrencyIso4217Code - 1) - aFk1iSDK.getMediationNetwork] - i2] - i11);
                i3 = aFk1iSDK.getMediationNetwork + 1;
            }
            aFk1iSDK.getMediationNetwork = i3;
        }
        objArr[0] = new String(cArr6);
    }

    private void afDebugLog(Map<String, Object> map) {
        String revenue;
        int i2 = 2 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        if (getMonetizationNetwork().getBoolean(AppsFlyerProperties.COLLECT_FACEBOOK_ATTR_ID, true)) {
            int i3 = w + InterfaceC3669k1.d.b.k;
            i = i3 % 128;
            int i4 = i3 % 2;
            try {
                this.getMediationNetwork.getPackageManager().getApplicationInfo(FbValidationUtils.FB_PACKAGE, 0);
                revenue = this.areAllFieldsValid.getRevenue(this.getMediationNetwork);
                int i5 = i + 105;
                w = i5 % 128;
                if (i5 % 2 != 0) {
                    int i6 = 5 % 5;
                }
            } catch (Throwable unused) {
                revenue = null;
            }
            if (revenue != null) {
                int i7 = i + 119;
                w = i7 % 128;
                int i8 = i7 % 2;
                map.put("fb", revenue);
            }
        }
    }

    private static long areAllFieldsValid() {
        int i2 = 2 % 2;
        int i3 = w + 121;
        i = i3 % 128;
        int i4 = i3 % 2;
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        int i5 = w + 3;
        i = i5 % 128;
        int i6 = i5 % 2;
        return jCurrentTimeMillis;
    }

    private static /* synthetic */ Object areAllFieldsValid(Object[] objArr) {
        AFg1qSDK aFg1qSDK = (AFg1qSDK) objArr[0];
        Map map = (Map) objArr[1];
        int i2 = 2 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        AFh1tSDK aFh1tSDK = aFg1qSDK.component3;
        HashMap map2 = new HashMap(aFh1tSDK.AFAdRevenueData);
        aFh1tSDK.AFAdRevenueData.clear();
        aFh1tSDK.getCurrencyIso4217Code.getCurrencyIso4217Code("gcd");
        Intrinsics.checkNotNullExpressionValue(map2, "");
        if (map2.isEmpty()) {
            int i3 = i + 29;
            w = i3 % 128;
            int i4 = i3 % 2;
            return null;
        }
        int i5 = i + 111;
        int i6 = i5 % 128;
        w = i6;
        int i7 = i5 % 2;
        int i8 = i6 + 31;
        i = i8 % 128;
        if (i8 % 2 != 0) {
            Map<String, Object> monetizationNetwork = AFa1uSDK.getMonetizationNetwork((Map<String, Object>) map);
            Intrinsics.checkNotNullExpressionValue(monetizationNetwork, "");
            monetizationNetwork.put("gcd", map2);
            return null;
        }
        Map<String, Object> monetizationNetwork2 = AFa1uSDK.getMonetizationNetwork((Map<String, Object>) map);
        Intrinsics.checkNotNullExpressionValue(monetizationNetwork2, "");
        monetizationNetwork2.put("gcd", map2);
        int i9 = 88 / 0;
        return null;
    }

    private static void areAllFieldsValid(Map<String, Object> map) throws UnsupportedEncodingException {
        int i2 = 2 % 2;
        int i3 = i + 59;
        w = i3 % 128;
        int i4 = i3 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        Object[] objArr = new Object[1];
        a(null, "\u008f\u0089\u0087\u0083\u008e", null, (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 126, objArr);
        map.put(((String) objArr[0]).intern(), Build.BRAND);
        map.put("device", Build.DEVICE);
        map.put(AppLovinEventTypes.USER_VIEWED_PRODUCT, Build.PRODUCT);
        map.put("sdk", String.valueOf(Build.VERSION.SDK_INT));
        map.put(R6.B, Build.MODEL);
        map.put("deviceType", Build.TYPE);
        int i5 = i + 21;
        w = i5 % 128;
        int i6 = i5 % 2;
    }

    private static /* synthetic */ Object component1(Object[] objArr) {
        AFg1qSDK aFg1qSDK = (AFg1qSDK) objArr[0];
        Map map = (Map) objArr[1];
        int i2 = 2 % 2;
        AFg1sSDK.AFa1uSDK aFa1uSDKAFAdRevenueData = aFg1qSDK.AFAdRevenueData.AFAdRevenueData(aFg1qSDK.getMediationNetwork);
        float f = aFa1uSDKAFAdRevenueData.getRevenue;
        String str = aFa1uSDKAFAdRevenueData.AFAdRevenueData;
        map.put("btl", String.valueOf(f));
        if (str != null) {
            int i3 = w + 95;
            i = i3 % 128;
            int i4 = i3 % 2;
            map.put("btch", str);
        }
        int i5 = i + 31;
        w = i5 % 128;
        if (i5 % 2 != 0) {
            int i6 = 14 / 0;
        }
        return null;
    }

    private final String component1() {
        return (String) getMediationNetwork(new Object[]{this}, 969328908, -969328900, System.identityHashCode(this));
    }

    private void component1(Map<String, Object> map) {
        int i2 = 2 % 2;
        int i3 = w + 53;
        i = i3 % 128;
        int i4 = i3 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        AFf1cSDK.getMonetizationNetwork(map, this.areAllFieldsValid);
        int i5 = i + 43;
        w = i5 % 128;
        if (i5 % 2 == 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private static /* synthetic */ Object component2(Object[] objArr) {
        AFg1qSDK aFg1qSDK = (AFg1qSDK) objArr[0];
        int i2 = 2 % 2;
        int i3 = i + 79;
        w = i3 % 128;
        int i4 = i3 % 2;
        Object obj = null;
        String monetizationNetwork = aFg1qSDK.component1.getMonetizationNetwork("androidIdCached", null);
        try {
            String string = Settings.Secure.getString(aFg1qSDK.getMediationNetwork.getContentResolver(), TapjoyConstants.TJC_ANDROID_ID);
            if (string != null) {
                int i5 = i + 13;
                w = i5 % 128;
                int i6 = i5 % 2;
                return string;
            }
        } catch (Exception e) {
            AFLogger.afErrorLog(e.getMessage(), e);
        }
        if (monetizationNetwork == null) {
            return null;
        }
        AFLogger.afDebugLog("use cached AndroidId: " + monetizationNetwork);
        int i7 = w + 3;
        i = i7 % 128;
        if (i7 % 2 != 0) {
            return monetizationNetwork;
        }
        obj.hashCode();
        throw null;
    }

    private String component2() {
        int i2 = 2 % 2;
        String string = getMonetizationNetwork().getString(AppsFlyerProperties.AF_STORE_FROM_API);
        if (string == null) {
            int i3 = w + 75;
            i = i3 % 128;
            int i4 = i3 % 2;
            string = getCurrencyIso4217Code("AF_STORE");
        }
        int i5 = i + 95;
        w = i5 % 128;
        if (i5 % 2 == 0) {
            return string;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private void component2(Map<String, ? extends Object> map) {
        getMediationNetwork(new Object[]{this, map}, -2029029470, 2029029475, System.identityHashCode(this));
    }

    private static /* synthetic */ Object component3(Object[] objArr) {
        AFg1qSDK aFg1qSDK = (AFg1qSDK) objArr[0];
        Map map = (Map) objArr[1];
        String str = (String) objArr[2];
        int i2 = 2 % 2;
        int i3 = w + 85;
        i = i3 % 128;
        int i4 = i3 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        if (aFg1qSDK.getMonetizationNetwork().getBoolean(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, false)) {
            map.put(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, "true");
            return null;
        }
        String mediationNetwork = aFg1qSDK.copy.getMediationNetwork(aFg1qSDK.component1);
        String str2 = mediationNetwork;
        if (str2 != null && str2.length() != 0) {
            int i5 = w + 87;
            i = i5 % 128;
            if (i5 % 2 == 0) {
                map.put("imei", mediationNetwork);
                int i6 = 7 / 0;
            } else {
                map.put("imei", mediationNetwork);
            }
        }
        String revenue = aFg1qSDK.getRevenue(str);
        if (revenue != null) {
            int i7 = w + 43;
            i = i7 % 128;
            if (i7 % 2 == 0) {
                aFg1qSDK.component1.AFAdRevenueData("androidIdCached", revenue);
                map.put(TapjoyConstants.TJC_ANDROID_ID, revenue);
                int i8 = 37 / 0;
            } else {
                aFg1qSDK.component1.AFAdRevenueData("androidIdCached", revenue);
                map.put(TapjoyConstants.TJC_ANDROID_ID, revenue);
            }
        } else {
            AFLogger.afInfoLog("Android ID was not collected.");
        }
        AFb1mSDK currencyIso4217Code = AFb1kSDK.getCurrencyIso4217Code(aFg1qSDK.getMediationNetwork);
        if (currencyIso4217Code != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Boolean bool = currencyIso4217Code.getMediationNetwork;
            Intrinsics.checkNotNullExpressionValue(bool, "");
            linkedHashMap.put("isManual", bool);
            String str3 = currencyIso4217Code.getCurrencyIso4217Code;
            Intrinsics.checkNotNullExpressionValue(str3, "");
            linkedHashMap.put("val", str3);
            Boolean bool2 = currencyIso4217Code.getRevenue;
            if (bool2 != null) {
                linkedHashMap.put("isLat", bool2);
            }
            map.put("oaid", linkedHashMap);
        }
        return null;
    }

    private static String component3() {
        return (String) getMediationNetwork(new Object[0], -879088668, 879088672, (int) System.currentTimeMillis());
    }

    private void component3(Map<String, Object> map) {
        getMediationNetwork(new Object[]{this, map}, 1978462197, -1978462194, System.identityHashCode(this));
    }

    private static /* synthetic */ Object component4(Object[] objArr) {
        Map map = (Map) objArr[0];
        int i2 = 2 % 2;
        int i3 = i + fh.h1;
        w = i3 % 128;
        try {
            if (i3 % 2 != 0) {
                Intrinsics.checkNotNullParameter(map, "");
                map.put(R6.q, Locale.getDefault().getDisplayLanguage());
                throw null;
            }
            Intrinsics.checkNotNullParameter(map, "");
            map.put(R6.q, Locale.getDefault().getDisplayLanguage());
            try {
                map.put("lang_code", Locale.getDefault().getLanguage());
                int i4 = w + 51;
                i = i4 % 128;
                int i5 = i4 % 2;
            } catch (Exception e) {
                AFLogger.afErrorLog("Exception while collecting display language code. ", e);
            }
            try {
                map.put("country", Locale.getDefault().getCountry());
                return null;
            } catch (Exception e2) {
                AFLogger.afErrorLog("Exception while collecting country name. ", e2);
                return null;
            }
        } catch (Exception e3) {
            AFLogger.afErrorLog("Exception while collecting display language name. ", e3);
        }
    }

    private final void component4(Map<String, Object> map) {
        getMediationNetwork(new Object[]{this, map}, -217749996, 217750002, System.identityHashCode(this));
    }

    private boolean component4() {
        int i2 = 2 % 2;
        int i3 = i + 59;
        w = i3 % 128;
        int i4 = i3 % 2;
        boolean z = Boolean.parseBoolean(this.component1.getMonetizationNetwork("sentSuccessfully", null));
        int i5 = i + 69;
        w = i5 % 128;
        int i6 = i5 % 2;
        return z;
    }

    private final void copy(Map<String, Object> map) {
        UiModeManager uiModeManager;
        int i2 = 2 % 2;
        int i3 = w + 19;
        i = i3 % 128;
        if (i3 % 2 != 0 || Build.VERSION.SDK_INT >= 117) {
            uiModeManager = (UiModeManager) this.getMediationNetwork.getSystemService(UiModeManager.class);
        } else {
            Object systemService = this.getMediationNetwork.getSystemService("uimode");
            uiModeManager = systemService instanceof UiModeManager ? (UiModeManager) systemService : null;
        }
        if (uiModeManager == null || uiModeManager.getCurrentModeType() != 4) {
            return;
        }
        map.put("tv", Boolean.TRUE);
        int i4 = w + 63;
        i = i4 % 128;
        int i5 = i4 % 2;
    }

    private final boolean copy() {
        return ((Boolean) getMediationNetwork(new Object[]{this}, -932948428, 932948439, System.identityHashCode(this))).booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0050, code lost:
    
        if (r12 != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0064, code lost:
    
        if (r1.toString.equals != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0066, code lost:
    
        r12 = com.appsflyer.internal.AFg1qSDK.i + 93;
        com.appsflyer.internal.AFg1qSDK.w = r12 % 128;
        r12 = r12 % 2;
        com.appsflyer.internal.AFh1ySDK.i$default(com.appsflyer.AFLogger.INSTANCE, com.appsflyer.internal.AFg1cSDK.APP_SET_ID, "App Set Id was collected, but will not be included in the payload.To prevent collection entirely, call disableAppSetId() before initializing the SDK.", false, 4, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x007e, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007f, code lost:
    
        com.appsflyer.internal.AFh1ySDK.i$default(com.appsflyer.AFLogger.INSTANCE, com.appsflyer.internal.AFg1cSDK.APP_SET_ID, "App Set ID collection is disabled. Skipping inclusion in the event payload.", false, 4, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x008e, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ java.lang.Object copydefault(java.lang.Object[] r12) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1qSDK.copydefault(java.lang.Object[]):java.lang.Object");
    }

    private static List<AFe1mSDK> copydefault() {
        int i2 = 2 % 2;
        int i3 = i + 103;
        w = i3 % 128;
        int i4 = i3 % 2;
        List<AFe1mSDK> listListOf = CollectionsKt.listOf((Object[]) new AFe1mSDK[]{AFe1mSDK.CONVERSION, AFe1mSDK.LAUNCH, AFe1mSDK.INAPP, AFe1mSDK.MANUAL_PURCHASE_VALIDATION, AFe1mSDK.ARS_VALIDATE, AFe1mSDK.PURCHASE_VALIDATE, AFe1mSDK.ADREVENUE});
        int i5 = i + 67;
        w = i5 % 128;
        int i6 = i5 % 2;
        return listListOf;
    }

    private void copydefault(Map<String, Object> map) {
        long seconds;
        TimeUnit timeUnit;
        long j;
        int i2 = 2 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        long currencyIso4217Code = this.component1.getCurrencyIso4217Code("AppsFlyerTimePassedSincePrevLaunch", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.component1.getRevenue("AppsFlyerTimePassedSincePrevLaunch", jCurrentTimeMillis);
        if (currencyIso4217Code > 0) {
            int i3 = w + 121;
            i = i3 % 128;
            if (i3 % 2 == 0) {
                timeUnit = TimeUnit.MILLISECONDS;
                j = jCurrentTimeMillis % currencyIso4217Code;
            } else {
                timeUnit = TimeUnit.MILLISECONDS;
                j = jCurrentTimeMillis - currencyIso4217Code;
            }
            seconds = timeUnit.toSeconds(j);
        } else {
            int i4 = i + 13;
            w = i4 % 128;
            int i5 = i4 % 2;
            seconds = -1;
        }
        map.put("timepassedsincelastlaunch", String.valueOf(seconds));
    }

    private void d(Map<String, Object> map) {
        int i2 = 2 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        if (this.component1.getRevenue("is_stop_tracking_used")) {
            int i3 = w + 49;
            i = i3 % 128;
            int i4 = i3 % 2;
            map.put("istu", String.valueOf(this.component1.getMediationNetwork("is_stop_tracking_used", false)));
            int i5 = w + 79;
            i = i5 % 128;
            int i6 = i5 % 2;
        }
        int i7 = i + 125;
        w = i7 % 128;
        if (i7 % 2 != 0) {
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x005c  */
    /* JADX WARN: Code duplicated, block: B:12:0x0062  */
    /* JADX WARN: Code duplicated, block: B:9:0x004f  */
    private void e(Map<String, Object> map) {
        int i2;
        int i3 = 2 % 2;
        int i4 = w + 5;
        i = i4 % 128;
        if (i4 % 2 == 0) {
            Intrinsics.checkNotNullParameter(map, "");
            boolean mediationNetwork = AFg1tSDK.getMediationNetwork(this.getMediationNetwork);
            AFLogger.afDebugLog("didConfigureTokenRefreshService=" + mediationNetwork);
            int i5 = 45 / 0;
            if (!mediationNetwork) {
                i2 = i + 33;
                w = i2 % 128;
                if (i2 % 2 == 0) {
                    map.put("tokenRefreshConfigured", Boolean.FALSE);
                    throw null;
                }
                map.put("tokenRefreshConfigured", Boolean.FALSE);
            }
        } else {
            Intrinsics.checkNotNullParameter(map, "");
            boolean mediationNetwork2 = AFg1tSDK.getMediationNetwork(this.getMediationNetwork);
            AFLogger.afDebugLog("didConfigureTokenRefreshService=" + mediationNetwork2);
            if (!mediationNetwork2) {
                i2 = i + 33;
                w = i2 % 128;
                if (i2 % 2 == 0) {
                    map.put("tokenRefreshConfigured", Boolean.FALSE);
                    throw null;
                }
                map.put("tokenRefreshConfigured", Boolean.FALSE);
            }
        }
        map.put("registeredUninstall", Boolean.valueOf(AFg1tSDK.getCurrencyIso4217Code(this.component1)));
    }

    private final String equals() {
        int i2 = 2 % 2;
        File fileAFAdRevenueData = AFAdRevenueData(getMediationNetwork("ro.appsflyer.preinstall.path"));
        if (getMonetizationNetwork(fileAFAdRevenueData)) {
            fileAFAdRevenueData = AFAdRevenueData(getCurrencyIso4217Code("AF_PRE_INSTALL_PATH"));
        }
        if (getMonetizationNetwork(fileAFAdRevenueData)) {
            fileAFAdRevenueData = AFAdRevenueData("/data/local/tmp/pre_install.appsflyer");
        }
        if (getMonetizationNetwork(fileAFAdRevenueData)) {
            fileAFAdRevenueData = AFAdRevenueData("/etc/pre_install.appsflyer");
            int i3 = i + 51;
            w = i3 % 128;
            int i4 = i3 % 2;
        }
        if (!getMonetizationNetwork(fileAFAdRevenueData)) {
            String packageName = this.getMediationNetwork.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "");
            return getMonetizationNetwork(fileAFAdRevenueData, packageName);
        }
        int i5 = w + 101;
        i = i5 % 128;
        int i6 = i5 % 2;
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0025  */
    private final void equals(Map<String, Object> map) {
        int i2 = 2 % 2;
        int i3 = w + 85;
        i = i3 % 128;
        if (i3 % 2 == 0) {
            int i4 = 2 / 0;
            if (!getMonetizationNetwork().isOtherSdkStringDisabled()) {
                map.put(C3510b4.j.Y, String.valueOf(this.AFAdRevenueData.AFAdRevenueData(this.getMediationNetwork).getRevenue));
            }
        } else if (!getMonetizationNetwork().isOtherSdkStringDisabled()) {
            map.put(C3510b4.j.Y, String.valueOf(this.AFAdRevenueData.AFAdRevenueData(this.getMediationNetwork).getRevenue));
        }
        int i5 = i + 69;
        w = i5 % 128;
        if (i5 % 2 == 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private static /* synthetic */ Object getCurrencyIso4217Code(Object[] objArr) throws NoSuchAlgorithmException, PackageManager.NameNotFoundException, CertificateException {
        AFg1qSDK aFg1qSDK = (AFg1qSDK) objArr[0];
        int i2 = 2 % 2;
        int i3 = w + 55;
        i = i3 % 128;
        int i4 = i3 % 2;
        String strN_ = AFj1iSDK.N_(aFg1qSDK.getMediationNetwork.getApplicationContext().getPackageManager(), aFg1qSDK.getMediationNetwork.getApplicationContext().getPackageName());
        int i5 = i + 121;
        w = i5 % 128;
        if (i5 % 2 != 0) {
            int i6 = 27 / 0;
        }
        return strN_;
    }

    private final String getCurrencyIso4217Code(String str) {
        int i2 = 2 % 2;
        int i3 = i + 63;
        w = i3 % 128;
        int i4 = i3 % 2;
        String monetizationNetwork = this.areAllFieldsValid.getMonetizationNetwork(str);
        int i5 = i + 3;
        w = i5 % 128;
        if (i5 % 2 == 0) {
            return monetizationNetwork;
        }
        throw null;
    }

    private String getCurrencyIso4217Code(SimpleDateFormat simpleDateFormat, int i2) {
        int i3 = 2 % 2;
        Intrinsics.checkNotNullParameter(simpleDateFormat, "");
        String monetizationNetwork = this.component1.getMonetizationNetwork("appsFlyerFirstInstall", null);
        if (monetizationNetwork == null) {
            int i4 = i + 125;
            w = i4 % 128;
            if (i4 % 2 == 0 ? i2 > 1 : i2 > 0) {
                monetizationNetwork = "";
            } else {
                AFLogger.afDebugLog("AppsFlyer: first launch detected");
                String str = simpleDateFormat.format(new Date());
                int i5 = i + 121;
                w = i5 % 128;
                int i6 = i5 % 2;
                monetizationNetwork = str;
            }
            this.component1.AFAdRevenueData("appsFlyerFirstInstall", monetizationNetwork);
            int i7 = w + 59;
            i = i7 % 128;
            int i8 = i7 % 2;
        }
        AFh1ySDK.i$default(AFLogger.INSTANCE, AFg1cSDK.GENERAL, "AppsFlyer: first launch date: " + monetizationNetwork, false, 4, null);
        Intrinsics.checkNotNullExpressionValue(monetizationNetwork, "");
        return monetizationNetwork;
    }

    private void getCurrencyIso4217Code(AFh1jSDK aFh1jSDK, String str, String str2, AFb1rSDK aFb1rSDK) {
        int i2 = 2 % 2;
        int i3 = w + 53;
        i = i3 % 128;
        int i4 = i3 % 2;
        Intrinsics.checkNotNullParameter(aFh1jSDK, "");
        Map<String, Object> map = aFh1jSDK.getCurrencyIso4217Code;
        if (aFh1jSDK.getCurrencyIso4217Code() == AFe1mSDK.CONVERSION) {
            int i5 = w + 13;
            i = i5 % 128;
            int i6 = i5 % 2;
            Intrinsics.checkNotNullExpressionValue(map, "");
            equals(map);
            copy(map);
            toString(map);
            AFa1zSDK.getMonetizationNetwork(this.equals, this.areAllFieldsValid);
            int i7 = w + 3;
            i = i7 % 128;
            int i8 = i7 % 2;
        }
        Intrinsics.checkNotNullExpressionValue(map, "");
        copydefault(map);
        getMediationNetwork(new Object[]{this, map}, 1978462197, -1978462194, System.identityHashCode(this));
        getMediationNetwork(new Object[]{this, map}, -2029029470, 2029029475, System.identityHashCode(this));
        getMonetizationNetwork(map, str2);
        AFAdRevenueData(map, str);
        AFInAppEventParameterName(map);
        if (aFb1rSDK != null) {
            int i9 = i + 9;
            w = i9 % 128;
            if (i9 % 2 == 0) {
                aFb1rSDK.getMonetizationNetwork(map);
            } else {
                aFb1rSDK.getMonetizationNetwork(map);
                int i10 = 18 / 0;
            }
        }
    }

    private final void getCurrencyIso4217Code(Map<String, Object> map, int i2) {
        int i3 = 2 % 2;
        int i4 = i + 75;
        w = i4 % 128;
        int i5 = i4 % 2;
        try {
            if (this.areAllFieldsValid.n_().versionCode > this.component1.getMediationNetwork("versionCode", 0)) {
                int i6 = i + 39;
                w = i6 % 128;
                int i7 = i6 % 2;
                this.component1.getRevenue("versionCode", this.areAllFieldsValid.n_().versionCode);
            }
            map.put("app_version_code", String.valueOf(this.areAllFieldsValid.n_().versionCode));
            map.put("app_version_name", this.areAllFieldsValid.n_().versionName);
            map.put("targetSDKver", Integer.valueOf(this.areAllFieldsValid.getRevenue.getRevenue.getApplicationInfo().targetSdkVersion));
            map.put("date1", getMediationNetwork().format(new Date(((Long) getMediationNetwork(new Object[]{this}, -1521351773, 1521351785, System.identityHashCode(this))).longValue())));
            map.put("date2", getMediationNetwork().format(new Date(this.areAllFieldsValid.n_().lastUpdateTime)));
            Object[] objArr = new Object[1];
            a(null, "\u008d\u0085\u0087\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081", null, 126 - TextUtils.lastIndexOf("", '0', 0), objArr);
            String strIntern = ((String) objArr[0]).intern();
            SimpleDateFormat mediationNetwork = getMediationNetwork();
            Intrinsics.checkNotNullExpressionValue(mediationNetwork, "");
            map.put(strIntern, getCurrencyIso4217Code(mediationNetwork, i2));
        } catch (Throwable th) {
            AFLogger.afErrorLog("Exception while collecting app version data ", th, true);
        }
    }

    private void getCurrencyIso4217Code(Map<String, Object> map, String str) {
        getMediationNetwork(new Object[]{this, map, str}, -361587280, 361587287, System.identityHashCode(this));
    }

    /* JADX WARN: Code duplicated, block: B:11:0x007e  */
    /* JADX WARN: Code duplicated, block: B:13:0x0089  */
    /* JADX WARN: Code duplicated, block: B:14:0x0093  */
    private void getCurrencyIso4217Code(Map<String, Object> map, boolean z) {
        int i2;
        int i3 = 2 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        HashMap map2 = new HashMap();
        map2.put("cpu_abi", getMediationNetwork("ro.product.cpu.abi"));
        map2.put("cpu_abi2", getMediationNetwork("ro.product.cpu.abi2"));
        map2.put("arch", getMediationNetwork("os.arch"));
        map2.put("build_display_id", getMediationNetwork("ro.build.display.id"));
        if (z) {
            int i4 = w + 41;
            i = i4 % 128;
            if (i4 % 2 == 0) {
                getMediationNetwork(new Object[]{this, map2}, -217749996, 217750002, System.identityHashCode(this));
                if (this.areAllFieldsValid.getMonetizationNetwork.getMediationNetwork("appsFlyerCount", 1) <= 5) {
                    i2 = i + 85;
                    w = i2 % 128;
                    if (i2 % 2 == 0) {
                        map2.putAll(this.getMonetizationNetwork.AFAdRevenueData());
                        throw null;
                    }
                    map2.putAll(this.getMonetizationNetwork.AFAdRevenueData());
                }
            } else {
                getMediationNetwork(new Object[]{this, map2}, -217749996, 217750002, System.identityHashCode(this));
                if (this.areAllFieldsValid.getMonetizationNetwork.getMediationNetwork("appsFlyerCount", 0) <= 2) {
                    i2 = i + 85;
                    w = i2 % 128;
                    if (i2 % 2 == 0) {
                        map2.putAll(this.getMonetizationNetwork.AFAdRevenueData());
                        throw null;
                    }
                    map2.putAll(this.getMonetizationNetwork.AFAdRevenueData());
                }
            }
        }
        map2.put("dim", this.component2.getMediationNetwork(this.getMediationNetwork));
        map.put("deviceData", map2);
    }

    private static /* synthetic */ Object getMediationNetwork(Object[] objArr) {
        int i2 = 2 % 2;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
        long blockSizeLong = statFs.getBlockSizeLong();
        long availableBlocksLong = statFs.getAvailableBlocksLong() * blockSizeLong;
        long blockCountLong = statFs.getBlockCountLong() * blockSizeLong;
        double dPow = Math.pow(2.0d, 20.0d);
        String str = ((long) (availableBlocksLong / dPow)) + DomExceptionUtils.SEPARATOR + ((long) (blockCountLong / dPow));
        int i3 = w + 117;
        i = i3 % 128;
        if (i3 % 2 != 0) {
            return str;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x009e  */
    public static /* synthetic */ Object getMediationNetwork(Object[] objArr, int i2, int i3, int i4) {
        int i5 = ~i3;
        int i6 = ~i4;
        switch ((i2 * 50) + (i3 * (-97)) + (((~(i5 | i6)) | (~(i5 | i2))) * 98) + (((~(i6 | (~i2))) | i5 | (~(i2 | i4))) * (-49)) + (((~(i2 | i3)) | (~(i4 | i5))) * 49)) {
            case 1:
                return AFAdRevenueData(objArr);
            case 2:
                return getMonetizationNetwork(objArr);
            case 3:
                return getRevenue(objArr);
            case 4:
                return getMediationNetwork(objArr);
            case 5:
                return areAllFieldsValid(objArr);
            case 6:
                return component1(objArr);
            case 7:
                return component3(objArr);
            case 8:
                return component2(objArr);
            case 9:
                return component4(objArr);
            case 10:
                return copydefault(objArr);
            case 11:
                AFg1qSDK aFg1qSDK = (AFg1qSDK) objArr[0];
                int i7 = 2 % 2;
                if (aFg1qSDK.getMonetizationNetwork().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false)) {
                    int i8 = i + 93;
                    w = i8 % 128;
                    int i9 = i8 % 2;
                } else {
                    int i10 = w + 57;
                    i = i10 % 128;
                    int i11 = i10 % 2;
                    if (aFg1qSDK.getMonetizationNetwork().getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) {
                        int i12 = i + 93;
                        w = i12 % 128;
                        int i13 = i12 % 2;
                    } else {
                        int i14 = i + 81;
                        w = i14 % 128;
                        int i15 = i14 % 2;
                        AFa1uSDK.getMonetizationNetwork();
                        if (AFa1uSDK.getRevenue(aFg1qSDK.getMediationNetwork)) {
                            int i16 = w + 59;
                            i = i16 % 128;
                            int i17 = i16 % 2;
                            return false;
                        }
                    }
                }
                return true;
            case 12:
                AFg1qSDK aFg1qSDK2 = (AFg1qSDK) objArr[0];
                int i18 = 2 % 2;
                int i19 = i + 83;
                w = i19 % 128;
                int i20 = i19 % 2;
                Long lValueOf = Long.valueOf(aFg1qSDK2.areAllFieldsValid.n_().firstInstallTime);
                int i21 = w + 45;
                i = i21 % 128;
                int i22 = i21 % 2;
                return lValueOf;
            default:
                return getCurrencyIso4217Code(objArr);
        }
    }

    private static String getMediationNetwork(String str) {
        int i2 = 2 % 2;
        int i3 = i + 95;
        w = i3 % 128;
        int i4 = i3 % 2;
        Object obj = null;
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            Intrinsics.checkNotNull(objInvoke, "");
            String str2 = (String) objInvoke;
            int i5 = w + 69;
            i = i5 % 128;
            if (i5 % 2 != 0) {
                return str2;
            }
            obj.hashCode();
            throw null;
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getMessage(), th);
            return null;
        }
    }

    private final SimpleDateFormat getMediationNetwork() {
        int i2 = 2 % 2;
        int i3 = i + 87;
        w = i3 % 128;
        int i4 = i3 % 2;
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) this.AFKeystoreWrapper.getValue();
        int i5 = w + 45;
        i = i5 % 128;
        if (i5 % 2 != 0) {
            return simpleDateFormat;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private void getMediationNetwork(Map<String, Object> map, String str) {
        getMediationNetwork(new Object[]{this, map, str}, 1127076864, -1127076862, System.identityHashCode(this));
    }

    private final AppsFlyerProperties getMonetizationNetwork() {
        int i2 = 2 % 2;
        int i3 = i + 79;
        w = i3 % 128;
        int i4 = i3 % 2;
        AppsFlyerProperties appsFlyerProperties = (AppsFlyerProperties) this.copydefault.getValue();
        if (i4 != 0) {
            int i5 = 88 / 0;
        }
        return appsFlyerProperties;
    }

    private static /* synthetic */ Object getMonetizationNetwork(Object[] objArr) {
        AFg1qSDK aFg1qSDK = (AFg1qSDK) objArr[0];
        Map map = (Map) objArr[1];
        String str = (String) objArr[2];
        int i2 = 2 % 2;
        int i3 = w + 81;
        i = i3 % 128;
        int i4 = i3 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        Intrinsics.checkNotNullParameter(str, "");
        try {
            String monetizationNetwork = aFg1qSDK.component1.getMonetizationNetwork("prev_event_name", null);
            if (monetizationNetwork != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("prev_event_timestamp", aFg1qSDK.component1.getCurrencyIso4217Code("prev_event_timestamp", -1L));
                jSONObject.put("prev_event_name", monetizationNetwork);
                map.put("prev_event", jSONObject);
            }
            aFg1qSDK.component1.AFAdRevenueData("prev_event_name", str);
            aFg1qSDK.component1.getRevenue("prev_event_timestamp", System.currentTimeMillis());
            int i5 = i + 59;
            w = i5 % 128;
            if (i5 % 2 == 0) {
                return null;
            }
            throw null;
        } catch (Exception e) {
            AFLogger.afErrorLog("Error while processing previous event.", e);
            return null;
        }
    }

    private String getMonetizationNetwork(int i2) {
        boolean z;
        int i3 = 2 % 2;
        int i4 = w + 57;
        i = i4 % 128;
        String strComponent2 = null;
        if (i4 % 2 == 0) {
            this.component1.getRevenue("INSTALL_STORE");
            strComponent2.hashCode();
            throw null;
        }
        if (this.component1.getRevenue("INSTALL_STORE")) {
            return this.component1.getMonetizationNetwork("INSTALL_STORE", null);
        }
        if (i2 <= 1) {
            z = true;
        } else {
            int i5 = w + 117;
            i = i5 % 128;
            int i6 = i5 % 2;
            z = false;
        }
        if (!z) {
            int i7 = i + 23;
            w = i7 % 128;
            int i8 = i7 % 2;
        } else {
            strComponent2 = component2();
        }
        this.component1.AFAdRevenueData("INSTALL_STORE", strComponent2);
        return strComponent2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.Properties] */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.Reader] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Reader] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.Reader] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.Reader] */
    private static String getMonetizationNetwork(File file, String str) {
        int i2 = 2 % 2;
        InputStreamReader inputStreamReader = w;
        int i3 = inputStreamReader + 87;
        i = i3 % 128;
        if (i3 % 2 == 0) {
            throw null;
        }
        try {
            try {
                if (file == null) {
                    int i4 = inputStreamReader + 39;
                    i = i4 % 128;
                    if (i4 % 2 == 0) {
                        int i5 = 58 / 0;
                    }
                    return null;
                }
                try {
                    ?? properties = new Properties();
                    inputStreamReader = new InputStreamReader(new FileInputStream(file), Charset.defaultCharset());
                    try {
                        properties.load(inputStreamReader);
                        AFLogger.afInfoLog("Found PreInstall property!");
                        String property = properties.getProperty(str);
                        try {
                            inputStreamReader.close();
                            return property;
                        } catch (Throwable th) {
                            AFLogger.afErrorLog(th.getMessage(), th);
                            return property;
                        }
                    } catch (FileNotFoundException unused) {
                        AFLogger.afDebugLog("PreInstall file wasn't found: " + file.getAbsolutePath());
                        if (inputStreamReader != 0) {
                            inputStreamReader.close();
                            inputStreamReader = inputStreamReader;
                        }
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        AFLogger.afErrorLog(th.getMessage(), th);
                        if (inputStreamReader != 0) {
                            inputStreamReader.close();
                            inputStreamReader = inputStreamReader;
                        }
                        return null;
                    }
                } catch (FileNotFoundException unused2) {
                    inputStreamReader = 0;
                } catch (Throwable th3) {
                    th = th3;
                    inputStreamReader = 0;
                }
            } catch (Throwable th4) {
                AFLogger.afErrorLog(th4.getMessage(), th4);
            }
        } catch (Throwable th5) {
            if (inputStreamReader != 0) {
                try {
                    inputStreamReader.close();
                } catch (Throwable th6) {
                    AFLogger.afErrorLog(th6.getMessage(), th6);
                }
            }
            throw th5;
        }
        return null;
    }

    private static void getMonetizationNetwork(Map<String, Object> map, String str) {
        int i2 = 2 % 2;
        int i3 = w + 43;
        i = i3 % 128;
        int i4 = i3 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        if (str != null) {
            int i5 = w + 77;
            i = i5 % 128;
            int i6 = i5 % 2;
            map.put("phone", str);
            int i7 = i + 1;
            w = i7 % 128;
            int i8 = i7 % 2;
        }
    }

    private static boolean getMonetizationNetwork(File file) {
        int i2 = 2 % 2;
        int i3 = i + 93;
        w = i3 % 128;
        int i4 = i3 % 2;
        if (file == null || (!file.exists())) {
            return true;
        }
        int i5 = w + 39;
        i = i5 % 128;
        int i6 = i5 % 2;
        return false;
    }

    private static /* synthetic */ Object getRevenue(Object[] objArr) {
        AFg1qSDK aFg1qSDK = (AFg1qSDK) objArr[0];
        Map map = (Map) objArr[1];
        int i2 = 2 % 2;
        int i3 = i + 77;
        w = i3 % 128;
        Object obj = null;
        if (i3 % 2 != 0) {
            Intrinsics.checkNotNullParameter(map, "");
            aFg1qSDK.getMonetizationNetwork().getString(AppsFlyerProperties.ONELINK_ID);
            aFg1qSDK.getMonetizationNetwork().getString(AppsFlyerProperties.ONELINK_VERSION);
            obj.hashCode();
            throw null;
        }
        Intrinsics.checkNotNullParameter(map, "");
        String string = aFg1qSDK.getMonetizationNetwork().getString(AppsFlyerProperties.ONELINK_ID);
        String string2 = aFg1qSDK.getMonetizationNetwork().getString(AppsFlyerProperties.ONELINK_VERSION);
        if (string != null) {
            map.put("onelink_id", string);
        }
        if (string2 != null) {
            map.put("onelink_ver", string2);
            int i4 = i + 121;
            w = i4 % 128;
            int i5 = i4 % 2;
        }
        return null;
    }

    private String getRevenue() throws NoSuchAlgorithmException, PackageManager.NameNotFoundException, CertificateException {
        return (String) getMediationNetwork(new Object[]{this}, -1875348758, 1875348758, System.identityHashCode(this));
    }

    private final String getRevenue(String str) {
        String str2;
        int i2 = 2 % 2;
        if (!getMonetizationNetwork().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID, false) || ((str2 = str) != null && str2.length() != 0)) {
            if (str == null) {
                return null;
            }
            int i3 = i + 85;
            w = i3 % 128;
            int i4 = i3 % 2;
            return str;
        }
        int i5 = w + 39;
        i = i5 % 128;
        if (i5 % 2 == 0) {
            copy();
            throw null;
        }
        if (!copy()) {
            return null;
        }
        String str3 = (String) getMediationNetwork(new Object[]{this}, 969328908, -969328900, System.identityHashCode(this));
        int i6 = i + 55;
        w = i6 % 128;
        int i7 = i6 % 2;
        return str3;
    }

    private void hashCode(Map<String, Object> map) {
        int i2 = 2 % 2;
        int i3 = w + 101;
        i = i3 % 128;
        if (i3 % 2 != 0) {
            Intrinsics.checkNotNullParameter(map, "");
            map.put("is_pc", Boolean.valueOf(this.getMediationNetwork.getApplicationContext().getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")));
        } else {
            Intrinsics.checkNotNullParameter(map, "");
            map.put("is_pc", Boolean.valueOf(this.getMediationNetwork.getApplicationContext().getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")));
            throw null;
        }
    }

    private void i(Map<String, Object> map) {
        AFb1mSDK aFb1mSDKL_;
        int i2 = 2 % 2;
        int i3 = i + 57;
        w = i3 % 128;
        if (i3 % 2 != 0) {
            Intrinsics.checkNotNullParameter(map, "");
            aFb1mSDKL_ = AFb1kSDK.l_(this.getMediationNetwork.getContentResolver());
            int i4 = 54 / 0;
            if (aFb1mSDKL_ == null) {
                return;
            }
        } else {
            Intrinsics.checkNotNullParameter(map, "");
            aFb1mSDKL_ = AFb1kSDK.l_(this.getMediationNetwork.getContentResolver());
            if (aFb1mSDKL_ == null) {
                return;
            }
        }
        int i5 = w + 97;
        i = i5 % 128;
        int i6 = i5 % 2;
        map.put("amazon_aid", aFb1mSDKL_.getCurrencyIso4217Code);
        map.put("amazon_aid_limit", String.valueOf(aFb1mSDKL_.getRevenue));
    }

    private void registerClient(Map<String, Object> map) {
        int i2 = 2 % 2;
        int i3 = w + 51;
        i = i3 % 128;
        int i4 = i3 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        map.put("af_preinstalled", String.valueOf(this.areAllFieldsValid.getMediationNetwork(this.getMediationNetwork)));
        int i5 = w + 91;
        i = i5 % 128;
        if (i5 % 2 == 0) {
            throw null;
        }
    }

    private final void toString(Map<String, Object> map) {
        int i2 = 2 % 2;
        int i3 = i + 117;
        w = i3 % 128;
        if (i3 % 2 != 0) {
            AFg1kSDK.AFAdRevenueData(this.getMediationNetwork);
            throw null;
        }
        if (AFg1kSDK.AFAdRevenueData(this.getMediationNetwork)) {
            map.put("inst_app", Boolean.TRUE);
            int i4 = w + 29;
            i = i4 % 128;
            int i5 = i4 % 2;
        }
    }

    private static void unregisterClient(Map<String, Object> map) {
        getMediationNetwork(new Object[]{map}, -43428876, 43428885, (int) System.currentTimeMillis());
    }

    private void w(Map<String, Object> map) {
        int i2 = 2 % 2;
        int i3 = i + 31;
        w = i3 % 128;
        Object obj = null;
        if (i3 % 2 != 0) {
            Intrinsics.checkNotNullParameter(map, "");
            this.copy.getMediationNetwork();
            throw null;
        }
        Intrinsics.checkNotNullParameter(map, "");
        String mediationNetwork = this.copy.getMediationNetwork();
        String str = mediationNetwork;
        if (str == null || str.length() == 0) {
            return;
        }
        int i4 = w + 83;
        i = i4 % 128;
        if (i4 % 2 != 0) {
            map.put("appsflyerKey", mediationNetwork);
        } else {
            map.put("appsflyerKey", mediationNetwork);
            obj.hashCode();
            throw null;
        }
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final Long AFAdRevenueData() {
        return (Long) getMediationNetwork(new Object[]{this}, -1521351773, 1521351785, System.identityHashCode(this));
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void AFAdRevenueData(AFh1jSDK aFh1jSDK) {
        boolean zAreEqual;
        AFd1aSDK aFd1aSDK;
        int i2 = 2 % 2;
        Intrinsics.checkNotNullParameter(aFh1jSDK, "");
        Object obj = null;
        if (this.areAllFieldsValid.component1()) {
            AFh1pSDK aFh1pSDK = this.areAllFieldsValid.AFAdRevenueData.component2;
            if (aFh1pSDK == null) {
                int i3 = w + 101;
                i = i3 % 128;
                int i4 = i3 % 2;
                return;
            }
            String str = aFh1pSDK.getMonetizationNetwork;
            if (str != null && str.length() != 0) {
                aFh1jSDK.getMonetizationNetwork("gaidError", aFh1pSDK.getMonetizationNetwork);
            }
            if (aFh1pSDK.getRevenue != null) {
                int i5 = w + 121;
                i = i5 % 128;
                int i6 = i5 % 2;
                if (aFh1pSDK.getCurrencyIso4217Code != null) {
                    aFh1jSDK.getMonetizationNetwork("advertiserId", aFh1pSDK.getRevenue);
                    aFh1jSDK.getMonetizationNetwork("advertiserIdEnabled", String.valueOf(aFh1pSDK.getCurrencyIso4217Code));
                    aFh1jSDK.getMonetizationNetwork("isGaidWithGps", String.valueOf(aFh1pSDK.getMediationNetwork));
                }
            }
        } else {
            int i7 = i + 37;
            w = i7 % 128;
            if (i7 % 2 != 0) {
                Map<String, Object> monetizationNetwork = AFa1uSDK.getMonetizationNetwork(aFh1jSDK.getCurrencyIso4217Code);
                Intrinsics.checkNotNullExpressionValue(monetizationNetwork, "");
                monetizationNetwork.put("ad_ids_disabled", Boolean.TRUE);
                obj.hashCode();
                throw null;
            }
            Map<String, Object> monetizationNetwork2 = AFa1uSDK.getMonetizationNetwork(aFh1jSDK.getCurrencyIso4217Code);
            Intrinsics.checkNotNullExpressionValue(monetizationNetwork2, "");
            monetizationNetwork2.put("ad_ids_disabled", Boolean.TRUE);
        }
        AFh1pSDK aFh1pSDK2 = this.areAllFieldsValid.AFAdRevenueData.component2;
        if (aFh1pSDK2 != null) {
            int i8 = w + 45;
            i = i8 % 128;
            int i9 = i8 % 2;
            zAreEqual = Intrinsics.areEqual(aFh1pSDK2.component3, Boolean.TRUE);
        } else {
            zAreEqual = false;
        }
        aFh1jSDK.getMonetizationNetwork("GAID_retry", String.valueOf(zAreEqual));
        if (!CollectionsKt.listOf((Object[]) new AFe1mSDK[]{AFe1mSDK.CONVERSION, AFe1mSDK.LAUNCH}).contains(aFh1jSDK.getCurrencyIso4217Code()) || (aFd1aSDK = this.toString.component4) == null) {
            return;
        }
        int i10 = w + 7;
        i = i10 % 128;
        if (i10 % 2 == 0) {
            Map<String, Object> monetizationNetwork3 = AFa1uSDK.getMonetizationNetwork(aFh1jSDK.getCurrencyIso4217Code);
            Intrinsics.checkNotNullExpressionValue(monetizationNetwork3, "");
            monetizationNetwork3.put("fetchAdIdLatency", Long.valueOf(aFd1aSDK.getRevenue));
            obj.hashCode();
            throw null;
        }
        Map<String, Object> monetizationNetwork4 = AFa1uSDK.getMonetizationNetwork(aFh1jSDK.getCurrencyIso4217Code);
        Intrinsics.checkNotNullExpressionValue(monetizationNetwork4, "");
        monetizationNetwork4.put("fetchAdIdLatency", Long.valueOf(aFd1aSDK.getRevenue));
        int i11 = i + 33;
        w = i11 % 128;
        if (i11 % 2 != 0) {
            int i12 = 92 / 0;
        }
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final long getCurrencyIso4217Code() {
        int i2 = 2 % 2;
        int i3 = i + 7;
        w = i3 % 128;
        int i4 = i3 % 2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i5 = w + 105;
        i = i5 % 128;
        int i6 = i5 % 2;
        return jCurrentTimeMillis;
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void getCurrencyIso4217Code(AFh1jSDK aFh1jSDK) throws UnsupportedEncodingException {
        int i2 = 2 % 2;
        int i3 = w + 1;
        i = i3 % 128;
        int i4 = i3 % 2;
        Intrinsics.checkNotNullParameter(aFh1jSDK, "");
        Map<String, Object> map = aFh1jSDK.getCurrencyIso4217Code;
        Intrinsics.checkNotNullExpressionValue(map, "");
        getCurrencyIso4217Code(map, aFh1jSDK.getMediationNetwork());
        areAllFieldsValid(map);
        getMediationNetwork(new Object[]{map}, -43428876, 43428885, (int) System.currentTimeMillis());
        getRevenue(map);
        getMediationNetwork(new Object[]{this, map, this.toString.AFAdRevenueData}, -361587280, 361587287, System.identityHashCode(this));
        i(map);
        map.put("cell", MapsKt.mapOf(TuplesKt.to("mcc", Integer.valueOf(this.getMediationNetwork.getResources().getConfiguration().mcc)), TuplesKt.to("mnc", Integer.valueOf(this.getMediationNetwork.getResources().getConfiguration().mnc))));
        map.put("sig", (String) getMediationNetwork(new Object[]{this}, -1875348758, 1875348758, System.identityHashCode(this)));
        map.put("last_boot_time", Long.valueOf(areAllFieldsValid()));
        map.put("disk", (String) getMediationNetwork(new Object[0], -879088668, 879088672, (int) System.currentTimeMillis()));
        int i5 = w + 85;
        i = i5 % 128;
        int i6 = i5 % 2;
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void getCurrencyIso4217Code(Map<String, Object> map) {
        String[] strArr;
        int i2 = 2 % 2;
        int i3 = i + 15;
        w = i3 % 128;
        int i4 = i3 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        String string = getMonetizationNetwork().getString(AppsFlyerProperties.APP_ID);
        if (string != null) {
            int i5 = w + 53;
            i = i5 % 128;
            int i6 = i5 % 2;
            map.put(AppsFlyerProperties.APP_ID, string);
        }
        String string2 = getMonetizationNetwork().getString(AppsFlyerProperties.CURRENCY_CODE);
        if (string2 != null) {
            if (string2.length() != 3) {
                String string3 = new StringBuilder("WARNING: currency code should be 3 characters!!! '").append(string2).append("' is not a legal value.").toString();
                Intrinsics.checkNotNullExpressionValue(string3, "");
                AFLogger.afWarnLog(string3);
                int i7 = i + 87;
                w = i7 % 128;
                int i8 = i7 % 2;
            }
            map.put("currency", string2);
        }
        String string4 = getMonetizationNetwork().getString(AppsFlyerProperties.IS_UPDATE);
        if (string4 != null) {
            map.put("isUpdate", string4);
        }
        String string5 = getMonetizationNetwork().getString(AppsFlyerProperties.ADDITIONAL_CUSTOM_DATA);
        Object obj = null;
        if (string5 != null) {
            int i9 = w + 123;
            i = i9 % 128;
            if (i9 % 2 == 0) {
                map.put("customData", string5);
                throw null;
            }
            map.put("customData", string5);
        }
        String string6 = getMonetizationNetwork().getString(AppsFlyerProperties.APP_USER_ID);
        if (string6 != null) {
            map.put("appUserId", string6);
        }
        String string7 = getMonetizationNetwork().getString(AppsFlyerProperties.USER_EMAILS);
        if (string7 != null) {
            int i10 = w + 39;
            i = i10 % 128;
            int i11 = i10 % 2;
            map.put("user_emails", string7);
        }
        AFb1uSDK aFb1uSDK = this.toString.getRevenue;
        if (aFb1uSDK == null || (strArr = aFb1uSDK.getMediationNetwork) == null) {
            return;
        }
        int i12 = i + 19;
        w = i12 % 128;
        if (i12 % 2 == 0) {
            map.put("sharing_filter", strArr);
        } else {
            map.put("sharing_filter", strArr);
            obj.hashCode();
            throw null;
        }
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void getCurrencyIso4217Code(Map<String, Object> map, int i2, int i3) {
        int i4 = 2 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        map.put("counter", String.valueOf(i2));
        map.put("iaecounter", String.valueOf(i3));
        boolean z = true;
        if (!component4()) {
            int i5 = w + 115;
            i = i5 % 128;
            int i6 = i5 % 2;
        } else {
            int i7 = i + 61;
            w = i7 % 128;
            int i8 = i7 % 2;
            z = false;
        }
        map.put("isFirstCall", String.valueOf(z));
        int i9 = w + 37;
        i = i9 % 128;
        int i10 = i9 % 2;
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void getMediationNetwork(AFh1jSDK aFh1jSDK) {
        int i2 = 2 % 2;
        int i3 = i + 55;
        w = i3 % 128;
        int i4 = i3 % 2;
        Intrinsics.checkNotNullParameter(aFh1jSDK, "");
        Map<String, Object> map = aFh1jSDK.getCurrencyIso4217Code;
        Intrinsics.checkNotNullExpressionValue(map, "");
        AFAdRevenueData(map);
        Map<String, Object> map2 = aFh1jSDK.getCurrencyIso4217Code;
        Intrinsics.checkNotNullExpressionValue(map2, "");
        getCurrencyIso4217Code(map2, aFh1jSDK.component1);
        Map<String, Object> map3 = aFh1jSDK.getCurrencyIso4217Code;
        Intrinsics.checkNotNullExpressionValue(map3, "");
        AFAdRevenueData(map3, aFh1jSDK.component1);
        Map<String, Object> map4 = aFh1jSDK.getCurrencyIso4217Code;
        Intrinsics.checkNotNullExpressionValue(map4, "");
        registerClient(map4);
        Map<String, Object> map5 = aFh1jSDK.getCurrencyIso4217Code;
        Intrinsics.checkNotNullExpressionValue(map5, "");
        afDebugLog(map5);
        Map<String, Object> map6 = aFh1jSDK.getCurrencyIso4217Code;
        Intrinsics.checkNotNullExpressionValue(map6, "");
        AFe1mSDK currencyIso4217Code = aFh1jSDK.getCurrencyIso4217Code();
        Intrinsics.checkNotNullExpressionValue(currencyIso4217Code, "");
        getMediationNetwork(new Object[]{this, map6, currencyIso4217Code}, -1926240735, 1926240745, System.identityHashCode(this));
        int i5 = i + 119;
        w = i5 % 128;
        if (i5 % 2 == 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void getMediationNetwork(Map<String, Object> map) {
        int i2 = 2 % 2;
        int i3 = w + 77;
        i = i3 % 128;
        int i4 = i3 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        String revenue = AFb1jSDK.getRevenue(this.areAllFieldsValid.getMonetizationNetwork);
        if (revenue != null) {
            map.put("uid", revenue);
            Boolean boolValueOf = Boolean.valueOf(this.areAllFieldsValid.getMonetizationNetwork.getMediationNetwork("CUSTOM_INSTALL_ID_APPLIED", false));
            Intrinsics.checkNotNullExpressionValue(boolValueOf, "");
            if (boolValueOf.booleanValue()) {
                map.put("custom_install_id", Boolean.TRUE);
                return;
            }
            return;
        }
        int i5 = w + 93;
        i = i5 % 128;
        if (i5 % 2 != 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void getMonetizationNetwork(AFh1jSDK aFh1jSDK) {
        int i2 = 2 % 2;
        int i3 = i + 21;
        w = i3 % 128;
        int i4 = i3 % 2;
        Intrinsics.checkNotNullParameter(aFh1jSDK, "");
        Map<String, Object> map = aFh1jSDK.getCurrencyIso4217Code;
        if (aFh1jSDK.getMediationNetwork()) {
            getCurrencyIso4217Code(aFh1jSDK, aFh1jSDK.areAllFieldsValid, this.toString.getMonetizationNetwork, this.toString.getCurrencyIso4217Code);
        } else if (!(aFh1jSDK instanceof AFh1fSDK)) {
            Intrinsics.checkNotNullExpressionValue(map, "");
            String str = aFh1jSDK.component4;
            Intrinsics.checkNotNullExpressionValue(str, "");
            getMediationNetwork(new Object[]{this, map, str}, 1127076864, -1127076862, System.identityHashCode(this));
        }
        if (CollectionsKt.listOf((Object[]) new AFe1mSDK[]{AFe1mSDK.CONVERSION, AFe1mSDK.LAUNCH, AFe1mSDK.INAPP}).contains(aFh1jSDK.getCurrencyIso4217Code())) {
            Intrinsics.checkNotNullExpressionValue(map, "");
            hashCode(map);
        }
        if (aFh1jSDK.getMonetizationNetwork()) {
            int i5 = w + 29;
            i = i5 % 128;
            int i6 = i5 % 2;
            Intrinsics.checkNotNullExpressionValue(map, "");
            component1(map);
            int i7 = w + 81;
            i = i7 % 128;
            int i8 = i7 % 2;
        }
        Intrinsics.checkNotNullExpressionValue(map, "");
        w(map);
        AFKeystoreWrapper(map);
        getMediationNetwork(new Object[]{this, map}, -2015365334, 2015365335, System.identityHashCode(this));
        AFLogger(map);
        getMediationNetwork(map);
        AFAdRevenueData(map, aFh1jSDK.getMediationNetwork());
        e(map);
        d(map);
        AFAdRevenueData(map, aFh1jSDK);
        map.put("af_events_api", "1");
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void getMonetizationNetwork(Map<String, Object> map) {
        Object objM3022constructorimpl;
        int i2 = 2 % 2;
        int i3 = w + 27;
        i = i3 % 128;
        int i4 = i3 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        String str = this.toString.getMediationNetwork;
        Object obj = null;
        if (str != null) {
            int i5 = i + 25;
            w = i5 % 128;
            if (i5 % 2 != 0) {
                map.get("af_deeplink");
                obj.hashCode();
                throw null;
            }
            if (map.get("af_deeplink") != null) {
                AFLogger.afDebugLog("Skip 'af' payload as deeplink was found by path");
            } else {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    AFg1qSDK aFg1qSDK = this;
                    JSONObject jSONObject = new JSONObject(str);
                    jSONObject.put("isPush", "true");
                    map.put("af_deeplink", jSONObject.toString());
                    objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
                }
                Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
                if (thM3025exceptionOrNullimpl != null) {
                    int i6 = w + 123;
                    i = i6 % 128;
                    int i7 = i6 % 2;
                    AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.GENERAL, "Exception while trying to create JSONObject from pushPayload", thM3025exceptionOrNullimpl, false, false, false, false, 120, null);
                }
                Result.m3021boximpl(objM3022constructorimpl);
            }
        }
        this.toString.getMediationNetwork = null;
        int i8 = i + 53;
        w = i8 % 128;
        int i9 = i8 % 2;
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void getMonetizationNetwork(Map<String, Object> map, AFe1mSDK aFe1mSDK) {
        getMediationNetwork(new Object[]{this, map, aFe1mSDK}, -1926240735, 1926240745, System.identityHashCode(this));
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void getRevenue(AFh1jSDK aFh1jSDK) {
        int i2 = 2 % 2;
        int i3 = i + 89;
        w = i3 % 128;
        Object obj = null;
        if (i3 % 2 != 0) {
            Intrinsics.checkNotNullParameter(aFh1jSDK, "");
            Map<String, Object> map = aFh1jSDK.getCurrencyIso4217Code;
            Intrinsics.checkNotNullExpressionValue(map, "");
            map.put("open_referrer", aFh1jSDK.getMediationNetwork);
            String str = aFh1jSDK.component2;
            throw null;
        }
        Intrinsics.checkNotNullParameter(aFh1jSDK, "");
        Map<String, Object> map2 = aFh1jSDK.getCurrencyIso4217Code;
        Intrinsics.checkNotNullExpressionValue(map2, "");
        map2.put("open_referrer", aFh1jSDK.getMediationNetwork);
        String str2 = aFh1jSDK.component2;
        if (str2 == null || StringsKt.isBlank(str2)) {
            return;
        }
        int i4 = i + 41;
        w = i4 % 128;
        if (i4 % 2 == 0) {
            map2.put("af_web_referrer", aFh1jSDK.component2);
        } else {
            map2.put("af_web_referrer", aFh1jSDK.component2);
            obj.hashCode();
            throw null;
        }
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void getRevenue(Map<String, Object> map) {
        int i2 = 2 % 2;
        Intrinsics.checkNotNullParameter(map, "");
        AFi1pSDK aFi1pSDK = this.component4.getMediationNetwork;
        AFi1tSDK aFi1tSDKAFAdRevenueData = aFi1pSDK != null ? aFi1pSDK.AFAdRevenueData() : null;
        if (aFi1tSDKAFAdRevenueData != null) {
            map.put("network", aFi1tSDKAFAdRevenueData.getRevenue);
            map.put("ivc", Boolean.valueOf(aFi1tSDKAFAdRevenueData.getCurrencyIso4217Code()));
            if (getMonetizationNetwork().getBoolean(AppsFlyerProperties.DISABLE_NETWORK_DATA, false)) {
                int i3 = i + 95;
                w = i3 % 128;
                if (i3 % 2 != 0) {
                    int i4 = 4 % 4;
                }
            } else {
                int i5 = i + 89;
                w = i5 % 128;
                int i6 = i5 % 2;
                String str = aFi1tSDKAFAdRevenueData.getCurrencyIso4217Code;
                if (str != null) {
                    map.put("operator", str);
                }
                String str2 = aFi1tSDKAFAdRevenueData.getMediationNetwork;
                if (str2 != null) {
                    map.put(R6.R0, str2);
                    return;
                }
            }
            int i7 = i + 7;
            w = i7 % 128;
            if (i7 % 2 != 0) {
                throw null;
            }
        }
    }
}
