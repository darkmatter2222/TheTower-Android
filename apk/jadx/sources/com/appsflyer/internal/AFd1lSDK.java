package com.appsflyer.internal;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.google.android.gms.common.ConnectionResult;
import com.ironsource.C3635i2;
import com.ironsource.R6;
import com.tapjoy.TapjoyConstants;
import com.unity3d.services.UnityAdsConstants;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import kotlin.fh;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.StringCompanionObject;
import p005kotlin.text.Regex;

/* JADX INFO: loaded from: classes2.dex */
public final class AFd1lSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static String AFAdRevenueData = null;
    private static boolean areAllFieldsValid = false;
    private static char[] component1 = null;
    private static int component3 = 0;
    private static int copy = 1;
    public static String getRevenue;
    private static int hashCode;
    private static boolean toString;
    private final AFj1eSDK component2;
    private final AFe1ySDK component4;
    private final AppsFlyerProperties getCurrencyIso4217Code;
    private final AFc1pSDK getMediationNetwork;
    private final AFd1kSDK getMonetizationNetwork;

    static {
        getMediationNetwork();
        getRevenue = "https://%sgcdsdk.%s/install_data/v5.0/";
        AFAdRevenueData = "https://%sonelink.%s/shortlink-sdk/v2";
        int i = hashCode + 95;
        copy = i % 128;
        int i2 = i % 2;
    }

    public AFd1lSDK(AFd1kSDK aFd1kSDK, AFc1pSDK aFc1pSDK, AppsFlyerProperties appsFlyerProperties, AFe1ySDK aFe1ySDK, AFj1eSDK aFj1eSDK) {
        this.getMonetizationNetwork = aFd1kSDK;
        this.getMediationNetwork = aFc1pSDK;
        this.getCurrencyIso4217Code = appsFlyerProperties;
        this.component4 = aFe1ySDK;
        this.component2 = aFj1eSDK;
    }

    private Map<String, Object> AFAdRevenueData() throws UnsupportedEncodingException {
        int i = 2 % 2;
        HashMap map = new HashMap();
        map.put("build_number", "6.17.3");
        map.put("counter", Integer.valueOf(this.getMediationNetwork.getMonetizationNetwork.getMediationNetwork("appsFlyerCount", 0)));
        map.put(R6.B, Build.MODEL);
        Object[] objArr = new Object[1];
        a(null, "\u008e\u0087\u0088\u008b\u008d", null, 126 - ((byte) KeyEvent.getModifierMetaStateMask()), objArr);
        map.put(((String) objArr[0]).intern(), Build.BRAND);
        map.put("sdk", Integer.toString(Build.VERSION.SDK_INT));
        map.put("app_version_name", this.getMediationNetwork.n_().versionName);
        map.put(TapjoyConstants.TJC_APP_ID, this.getMediationNetwork.getRevenue.getRevenue.getPackageName());
        map.put("platformextension", new AFa1ySDK().getMediationNetwork());
        int i2 = hashCode + 13;
        copy = i2 % 128;
        int i3 = i2 % 2;
        return map;
    }

    private static void a(String str, String str2, int[] iArr, int i, Object[] objArr) throws UnsupportedEncodingException {
        int i2;
        int i3 = 2 % 2;
        Object bytes = str2;
        if (str2 != null) {
            int i4 = $11 + 93;
            $10 = i4 % 128;
            int i5 = i4 % 2;
            bytes = str2.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        Object charArray = str;
        if (str != null) {
            int i6 = $10 + 3;
            $11 = i6 % 128;
            int i7 = i6 % 2;
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        AFk1iSDK aFk1iSDK = new AFk1iSDK();
        char[] cArr2 = component1;
        if (cArr2 != null) {
            int length = cArr2.length;
            char[] cArr3 = new char[length];
            for (int i8 = 0; i8 < length; i8++) {
                cArr3[i8] = (char) (((long) cArr2[i8]) ^ 1825820251896122634L);
            }
            cArr2 = cArr3;
        }
        int i9 = (int) (1825820251896122634L ^ ((long) component3));
        if (toString) {
            aFk1iSDK.getCurrencyIso4217Code = bArr.length;
            char[] cArr4 = new char[aFk1iSDK.getCurrencyIso4217Code];
            aFk1iSDK.getMediationNetwork = 0;
            while (aFk1iSDK.getMediationNetwork < aFk1iSDK.getCurrencyIso4217Code) {
                cArr4[aFk1iSDK.getMediationNetwork] = (char) (cArr2[bArr[(aFk1iSDK.getCurrencyIso4217Code - 1) - aFk1iSDK.getMediationNetwork] + i] - i9);
                aFk1iSDK.getMediationNetwork++;
            }
            String str3 = new String(cArr4);
            int i10 = $10 + 13;
            $11 = i10 % 128;
            int i11 = i10 % 2;
            objArr[0] = str3;
            return;
        }
        if (areAllFieldsValid) {
            int i12 = $10 + 37;
            $11 = i12 % 128;
            int i13 = i12 % 2;
            aFk1iSDK.getCurrencyIso4217Code = cArr.length;
            char[] cArr5 = new char[aFk1iSDK.getCurrencyIso4217Code];
            aFk1iSDK.getMediationNetwork = 0;
            while (aFk1iSDK.getMediationNetwork < aFk1iSDK.getCurrencyIso4217Code) {
                cArr5[aFk1iSDK.getMediationNetwork] = (char) (cArr2[cArr[(aFk1iSDK.getCurrencyIso4217Code - 1) - aFk1iSDK.getMediationNetwork] - i] - i9);
                aFk1iSDK.getMediationNetwork++;
            }
            objArr[0] = new String(cArr5);
            return;
        }
        aFk1iSDK.getCurrencyIso4217Code = iArr.length;
        char[] cArr6 = new char[aFk1iSDK.getCurrencyIso4217Code];
        aFk1iSDK.getMediationNetwork = 0;
        while (aFk1iSDK.getMediationNetwork < aFk1iSDK.getCurrencyIso4217Code) {
            int i14 = $11 + 67;
            $10 = i14 % 128;
            if (i14 % 2 != 0) {
                cArr6[aFk1iSDK.getMediationNetwork] = (char) (cArr2[iArr[aFk1iSDK.getCurrencyIso4217Code * aFk1iSDK.getMediationNetwork] + i] >>> i9);
                i2 = aFk1iSDK.getMediationNetwork;
            } else {
                cArr6[aFk1iSDK.getMediationNetwork] = (char) (cArr2[iArr[(aFk1iSDK.getCurrencyIso4217Code - 1) - aFk1iSDK.getMediationNetwork] - i] - i9);
                i2 = aFk1iSDK.getMediationNetwork + 1;
            }
            aFk1iSDK.getMediationNetwork = i2;
        }
        objArr[0] = new String(cArr6);
    }

    private <T> AFd1jSDK<T> getCurrencyIso4217Code(AFd1dSDK aFd1dSDK, AFe1vSDK<T> aFe1vSDK) {
        return (AFd1jSDK) getRevenue(new Object[]{this, aFd1dSDK, aFe1vSDK}, 865808376, -865808374, System.identityHashCode(this));
    }

    private static /* synthetic */ Object getCurrencyIso4217Code(Object[] objArr) {
        AFd1lSDK aFd1lSDK = (AFd1lSDK) objArr[0];
        AFd1dSDK aFd1dSDK = (AFd1dSDK) objArr[1];
        AFe1vSDK aFe1vSDK = (AFe1vSDK) objArr[2];
        int i = 2 % 2;
        int i2 = hashCode + 83;
        copy = i2 % 128;
        int i3 = i2 % 2;
        AFd1jSDK mediationNetwork = aFd1lSDK.getMediationNetwork(aFd1dSDK, aFe1vSDK, aFd1lSDK.getMonetizationNetwork());
        int i4 = hashCode + 123;
        copy = i4 % 128;
        if (i4 % 2 != 0) {
            return mediationNetwork;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private <T> AFd1jSDK<T> getMediationNetwork(AFd1dSDK aFd1dSDK, AFe1vSDK<T> aFe1vSDK, boolean z) {
        int i = 2 % 2;
        aFd1dSDK.getMediationNetwork = z;
        AFd1kSDK aFd1kSDK = this.getMonetizationNetwork;
        AFd1jSDK<T> aFd1jSDK = new AFd1jSDK<>(aFd1dSDK, aFd1kSDK.getMediationNetwork, aFd1kSDK.getRevenue, aFe1vSDK);
        int i2 = hashCode + 57;
        copy = i2 % 128;
        if (i2 % 2 != 0) {
            return aFd1jSDK;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private static String getMediationNetwork(String str, String str2, String... strArr) {
        int i = 2 % 2;
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        arrayList.add(1, "v2");
        String revenue = AFj1bSDK.getRevenue(TextUtils.join("\u2063", (String[]) arrayList.toArray(new String[0])), new StringBuilder().append(str).append(str2).append("v2").toString());
        int i2 = copy + 89;
        hashCode = i2 % 128;
        if (i2 % 2 != 0) {
            int i3 = 72 / 0;
        }
        return revenue;
    }

    static void getMediationNetwork() {
        component1 = new char[]{36301, 36326, 36281, 36307, 36325, 36327, 36350, 36333, 36336, 36337, 36338, 36321, 36322, 36320};
        component3 = 1912311180;
        areAllFieldsValid = true;
        toString = true;
    }

    private boolean getMonetizationNetwork() {
        int i = 2 % 2;
        int i2 = copy + 99;
        hashCode = i2 % 128;
        int i3 = i2 % 2;
        if (this.getCurrencyIso4217Code.getBoolean(AppsFlyerProperties.HTTP_CACHE, true)) {
            return false;
        }
        int i4 = copy + 29;
        hashCode = i4 % 128;
        int i5 = i4 % 2;
        return true;
    }

    private static /* synthetic */ Object getRevenue(Object[] objArr) {
        AFd1lSDK aFd1lSDK = (AFd1lSDK) objArr[0];
        int i = 2 % 2;
        AFd1jSDK aFd1jSDK = (AFd1jSDK) getRevenue(new Object[]{aFd1lSDK, AFd1hSDK.AFAdRevenueData(aFd1lSDK.getMediationNetwork.getRevenue.getRevenue.getPackageName(), AFb1jSDK.getRevenue(aFd1lSDK.getMediationNetwork.getMonetizationNetwork), (String) objArr[1], (String) objArr[2]), new AFd1iSDK()}, 865808376, -865808374, System.identityHashCode(aFd1lSDK));
        int i2 = hashCode + 85;
        copy = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 21 / 0;
        }
        return aFd1jSDK;
    }

    public static /* synthetic */ Object getRevenue(Object[] objArr, int i, int i2, int i3) throws UnsupportedEncodingException {
        int i4 = ~i;
        int i5 = ~i2;
        int i6 = (~(i4 | i5)) | (~(i5 | i3));
        int i7 = ~i3;
        int i8 = i7 | i;
        int i9 = (i * 1773) + (i2 * (-885)) + ((i6 | (~(i8 | i2))) * 886) + ((i | (~(i2 | i7))) * (-1772)) + ((~i8) * 886);
        if (i9 == 1) {
            return getRevenue(objArr);
        }
        if (i9 == 2) {
            return getCurrencyIso4217Code(objArr);
        }
        AFd1lSDK aFd1lSDK = (AFd1lSDK) objArr[0];
        String str = (String) objArr[1];
        String str2 = (String) objArr[2];
        UUID uuid = (UUID) objArr[3];
        String str3 = (String) objArr[4];
        int i10 = 2 % 2;
        String string = uuid.toString();
        String string2 = new StringBuilder().append(String.format(AFAdRevenueData, AppsFlyerLib.getInstance().getHostPrefix(), AFa1uSDK.getMonetizationNetwork().getHostName())).append(DomExceptionUtils.SEPARATOR).append(str).append("?id=").append(str2).toString();
        Map<String, Object> mapAFAdRevenueData = aFd1lSDK.AFAdRevenueData();
        String strValueOf = String.valueOf(mapAFAdRevenueData.get("build_number"));
        HashMap map = new HashMap();
        map.put("Af-UUID", uuid.toString());
        map.put("Af-Meta-Sdk-Ver", strValueOf);
        map.put("Af-Meta-Counter", String.valueOf(mapAFAdRevenueData.get("counter")));
        map.put("Af-Meta-Model", String.valueOf(mapAFAdRevenueData.get(R6.B)));
        map.put("Af-Meta-Platform", String.valueOf(mapAFAdRevenueData.get("platformextension")));
        map.put("Af-Meta-System-Version", String.valueOf(mapAFAdRevenueData.get("sdk")));
        Object[] objArr2 = new Object[1];
        a(null, "\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081", null, 126 - MotionEvent.axisFromString(""), objArr2);
        map.put(((String) objArr2[0]).intern(), getMediationNetwork(str3, string, "GET", string, str, str2, strValueOf));
        AFd1jSDK aFd1jSDK = (AFd1jSDK) getRevenue(new Object[]{aFd1lSDK, new AFd1dSDK(string2, null, "GET", map, false), new AFd1bSDK()}, 865808376, -865808374, System.identityHashCode(aFd1lSDK));
        int i11 = copy + 57;
        hashCode = i11 % 128;
        int i12 = i11 % 2;
        return aFd1jSDK;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x011d  */
    public final AFd1jSDK<String> AFAdRevenueData(AFh1jSDK aFh1jSDK, String str, AFc1gSDK aFc1gSDK) {
        String currencyIso4217Code;
        String currencyIso4217Code2;
        int i = 2 % 2;
        Object obj = null;
        try {
            Object[] objArr = {aFh1jSDK, str, aFc1gSDK};
            Object method = AFa1jSDK.unregisterClient.get(-371358408);
            if (method == null) {
                method = ((Class) AFa1jSDK.AFAdRevenueData(View.resolveSizeAndState(0, 0, 0) + 196, (char) (TextUtils.lastIndexOf("", '0', 0, 0) + 29637), 37 - (ViewConfiguration.getLongPressTimeout() >> 16))).getMethod("getMediationNetwork", AFh1jSDK.class, String.class, AFc1gSDK.class);
                AFa1jSDK.unregisterClient.put(-371358408, method);
            }
            byte[] bArr = (byte[]) ((Method) method).invoke(null, objArr);
            AFj1eSDK aFj1eSDK = this.component2;
            Intrinsics.checkNotNullParameter(aFh1jSDK, "");
            boolean mediationNetwork = aFh1jSDK.getMediationNetwork();
            boolean z = aFh1jSDK instanceof AFh1nSDK;
            boolean z2 = aFh1jSDK instanceof AFh1lSDK;
            boolean z3 = aFh1jSDK instanceof AFh1kSDK;
            boolean z4 = aFh1jSDK instanceof AFh1bSDK;
            boolean z5 = aFh1jSDK instanceof AFh1dSDK;
            boolean z6 = aFh1jSDK instanceof AFg1uSDK;
            if (!(aFh1jSDK instanceof AFh1iSDK)) {
                if (!z3) {
                    int i2 = hashCode;
                    int i3 = i2 + 89;
                    int i4 = i3 % 128;
                    copy = i4;
                    int i5 = i3 % 2;
                    if (z2) {
                        String currencyIso4217Code3 = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.AFAdRevenueData);
                        int i6 = hashCode + 89;
                        copy = i6 % 128;
                        int i7 = i6 % 2;
                        currencyIso4217Code = currencyIso4217Code3;
                    } else if (z) {
                        currencyIso4217Code = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.getCurrencyIso4217Code);
                    } else if (z4) {
                        int i8 = i4 + 77;
                        hashCode = i8 % 128;
                        if (i8 % 2 != 0) {
                            aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.component4);
                            throw null;
                        }
                        currencyIso4217Code = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.component4);
                    } else if (z5) {
                        int i9 = i2 + 111;
                        copy = i9 % 128;
                        if (i9 % 2 == 0) {
                            aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%ssdk-services.%s/validate-android-signature");
                            obj.hashCode();
                            throw null;
                        }
                        currencyIso4217Code2 = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%ssdk-services.%s/validate-android-signature");
                    } else if (!(!z6)) {
                        currencyIso4217Code = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.component1);
                    } else if (!mediationNetwork) {
                        currencyIso4217Code = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.areAllFieldsValid);
                    } else {
                        int i10 = i2 + 35;
                        copy = i10 % 128;
                        currencyIso4217Code = (i10 % 2 != 0 ? aFh1jSDK.component1 >= 2 : aFh1jSDK.component1 >= 5) ? aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.component2) : aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.getMediationNetwork);
                    }
                } else {
                    String currencyIso4217Code4 = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.AFAdRevenueData);
                    int i11 = hashCode + 89;
                    copy = i11 % 128;
                    int i12 = i11 % 2;
                    currencyIso4217Code = currencyIso4217Code4;
                }
                return (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(currencyIso4217Code2, bArr, "POST", Collections.emptyMap(), aFh1jSDK.getRevenue()), new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
            }
            currencyIso4217Code = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%spia.%s/api/v1.0/pia-android-event?app_id=");
            currencyIso4217Code2 = aFj1eSDK.getMonetizationNetwork(AFj1eSDK.getMediationNetwork(aFj1eSDK.getRevenue(currencyIso4217Code), z), z6);
            return (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(currencyIso4217Code2, bArr, "POST", Collections.emptyMap(), aFh1jSDK.getRevenue()), new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
        } catch (Throwable th) {
            try {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            } catch (Throwable th2) {
                AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "AFFinalizer: reflection init failed.", th2, false, false);
                return null;
            }
        }
    }

    public final AFd1jSDK<String> AFAdRevenueData(String str) {
        int i = 2 % 2;
        AFd1dSDK aFd1dSDK = new AFd1dSDK(str, null, "GET", Collections.emptyMap(), false);
        aFd1dSDK.component3 = UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS;
        aFd1dSDK.getCurrencyIso4217Code = false;
        AFd1jSDK<String> aFd1jSDK = (AFd1jSDK) getRevenue(new Object[]{this, aFd1dSDK, new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
        int i2 = hashCode + 125;
        copy = i2 % 128;
        int i3 = i2 % 2;
        return aFd1jSDK;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x007a A[PHI: r1 r11
  0x007a: PHI (r1v5 java.lang.String) = (r1v4 java.lang.String), (r1v11 java.lang.String) binds: [B:14:0x0078, B:11:0x0070] A[DONT_GENERATE, DONT_INLINE]
  0x007a: PHI (r11v17 com.appsflyer.internal.AFj1eSDK) = (r11v16 com.appsflyer.internal.AFj1eSDK), (r11v23 com.appsflyer.internal.AFj1eSDK) binds: [B:14:0x0078, B:11:0x0070] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:18:0x0081  */
    /* JADX WARN: Code duplicated, block: B:26:0x00b3  */
    public final AFd1jSDK<String> AFAdRevenueData(Map<String, Object> map, String str, String str2) {
        AFj1eSDK aFj1eSDK;
        String str3;
        String currencyIso4217Code;
        int i = 2 % 2;
        try {
            boolean z = true;
            Object[] objArr = {map, str};
            Object method = AFa1jSDK.unregisterClient.get(203186425);
            if (method == null) {
                method = ((Class) AFa1jSDK.AFAdRevenueData(Drawable.resolveOpacity(0, 0) + 196, (char) (29635 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))), (KeyEvent.getMaxKeyCode() >> 16) + 37)).getMethod("getRevenue", Map.class, String.class);
                AFa1jSDK.unregisterClient.put(203186425, method);
            }
            byte[] bArr = (byte[]) ((Method) method).invoke(null, objArr);
            int i2 = hashCode + 41;
            copy = i2 % 128;
            if (i2 % 2 == 0) {
                aFj1eSDK = this.component2;
                str3 = str2;
                int i3 = 27 / 0;
                if (str3 != null) {
                    if (str3.length() != 0) {
                        z = false;
                    }
                }
            } else {
                aFj1eSDK = this.component2;
                str3 = str2;
                if (str3 != null) {
                    if (str3.length() != 0) {
                        z = false;
                    }
                }
            }
            if (z) {
                currencyIso4217Code = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%sars.%s/api/v2/android/validate_subscription?app_id=");
            } else {
                String str4 = str2;
                if (new Regex("4.?(\\d+)?.?(\\d+)").matches(str4) || new Regex("3.?(\\d+)?.?(\\d+)").matches(str4)) {
                    currencyIso4217Code = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%sars.%s/api/v2/android/validate_subscription?app_id=");
                } else {
                    currencyIso4217Code = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%sars.%s/api/v2/android/validate_subscription_v2?app_id=");
                    int i4 = hashCode + 37;
                    copy = i4 % 128;
                    int i5 = i4 % 2;
                }
            }
            return (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(aFj1eSDK.getMonetizationNetwork(aFj1eSDK.getRevenue(currencyIso4217Code), false), bArr, "POST", Collections.emptyMap(), true), new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
        } catch (Throwable th) {
            try {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            } catch (Throwable th2) {
                AFLogger.INSTANCE.e(AFg1cSDK.PURCHASE_VALIDATION, "AFFinalizer: reflection init failed.", th2, false, false);
                return null;
            }
        }
    }

    public final AFd1jSDK<String> getCurrencyIso4217Code(Map<String, Object> map, String str) {
        int i = 2 % 2;
        int i2 = copy + 47;
        hashCode = i2 % 128;
        try {
            if (i2 % 2 != 0) {
                try {
                    Object[] objArr = {map, str};
                    Object method = AFa1jSDK.unregisterClient.get(203186425);
                    if (method == null) {
                        method = ((Class) AFa1jSDK.AFAdRevenueData(196 - ((Process.getThreadPriority(0) + 20) >> 6), (char) (TextUtils.indexOf("", "", 0) + 29636), (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 36)).getMethod("getRevenue", Map.class, String.class);
                        AFa1jSDK.unregisterClient.put(203186425, method);
                    }
                    throw null;
                } catch (Throwable th) {
                    Throwable cause = th.getCause();
                    if (cause != null) {
                        throw cause;
                    }
                    throw th;
                }
            }
            try {
                Object[] objArr2 = {map, str};
                Object method2 = AFa1jSDK.unregisterClient.get(203186425);
                if (method2 == null) {
                    method2 = ((Class) AFa1jSDK.AFAdRevenueData(Color.rgb(0, 0, 0) + 16777412, (char) (29636 - TextUtils.getOffsetAfter("", 0)), 38 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)))).getMethod("getRevenue", Map.class, String.class);
                    AFa1jSDK.unregisterClient.put(203186425, method2);
                }
                byte[] bArr = (byte[]) ((Method) method2).invoke(null, objArr2);
                AFj1eSDK aFj1eSDK = this.component2;
                AFd1jSDK<String> aFd1jSDK = (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(aFj1eSDK.getRevenue(aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%svalidate-and-log.%s/api/v4.0/android/subscription/validateAndLog?app_id=")), bArr, "POST", Collections.emptyMap(), true), new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
                int i3 = hashCode + 25;
                copy = i3 % 128;
                if (i3 % 2 == 0) {
                    int i4 = 17 / 0;
                }
                return aFd1jSDK;
            } catch (Throwable th2) {
                Throwable cause2 = th2.getCause();
                if (cause2 != null) {
                    throw cause2;
                }
                throw th2;
            }
        } catch (Throwable th3) {
            AFLogger.INSTANCE.e(AFg1cSDK.PURCHASE_VALIDATION, "AFFinalizer: reflection init failed.", th3, false, false);
            return null;
        }
        AFLogger.INSTANCE.e(AFg1cSDK.PURCHASE_VALIDATION, "AFFinalizer: reflection init failed.", th3, false, false);
        return null;
    }

    public final AFd1jSDK<Map<String, Object>> getMediationNetwork(String str, String str2) {
        return (AFd1jSDK) getRevenue(new Object[]{this, str, str2}, 2067226218, -2067226217, System.identityHashCode(this));
    }

    public final AFd1jSDK<Map<String, String>> getMediationNetwork(String str, String str2, UUID uuid, String str3) {
        return (AFd1jSDK) getRevenue(new Object[]{this, str, str2, uuid, str3}, 1826287225, -1826287225, System.identityHashCode(this));
    }

    public final AFd1jSDK<String> getMediationNetwork(String str, Map<String, String> map, String str2, UUID uuid, String str3) throws UnsupportedEncodingException {
        int i = 2 % 2;
        String string = uuid.toString();
        HashMap map2 = new HashMap();
        map2.put("ttl", C3635i2.f);
        map2.put("uuid", string);
        map2.put("data", map);
        map2.put("meta", AFAdRevenueData());
        Object obj = null;
        if (str2 != null) {
            int i2 = copy + 29;
            hashCode = i2 % 128;
            if (i2 % 2 != 0) {
                map2.put("brand_domain", str2);
                obj.hashCode();
                throw null;
            }
            map2.put("brand_domain", str2);
        }
        String string2 = AFg1hSDK.getCurrencyIso4217Code(map2).toString();
        HashMap map3 = new HashMap();
        Object[] objArr = new Object[1];
        a(null, "\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081", null, 128 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), objArr);
        map3.put(((String) objArr[0]).intern(), getMediationNetwork(str3, string, "POST", string2));
        AFd1jSDK<String> mediationNetwork = getMediationNetwork(new AFd1dSDK(new StringBuilder().append(String.format(AFAdRevenueData, AppsFlyerLib.getInstance().getHostPrefix(), AFa1uSDK.getMonetizationNetwork().getHostName())).append(DomExceptionUtils.SEPARATOR).append(str).toString(), string2.getBytes(Charset.defaultCharset()), "POST", map3, false), (AFe1vSDK) new AFd1cSDK(), true);
        int i3 = copy + 95;
        hashCode = i3 % 128;
        int i4 = i3 % 2;
        return mediationNetwork;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00cb, code lost:
    
        if (r14 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.appsflyer.internal.AFd1oSDK getMediationNetwork(java.util.Map<java.lang.String, java.lang.Object> r14, java.lang.String r15) {
        /*
            Method dump skipped, instruction units count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1lSDK.getMediationNetwork(java.util.Map, java.lang.String):com.appsflyer.internal.AFd1oSDK");
    }

    public final AFd1jSDK<AFa1mSDK> getMonetizationNetwork(AFa1pSDK aFa1pSDK) {
        int i = 2 % 2;
        AFd1jSDK<AFa1mSDK> aFd1jSDK = (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(aFa1pSDK.component3, AFg1hSDK.getCurrencyIso4217Code(aFa1pSDK.getCurrencyIso4217Code).toString().getBytes(Charset.defaultCharset()), "POST", Collections.emptyMap(), aFa1pSDK.getRevenue()), new AFa1qSDK()}, 865808376, -865808374, System.identityHashCode(this));
        int i2 = copy + 61;
        hashCode = i2 % 128;
        int i3 = i2 % 2;
        return aFd1jSDK;
    }

    public final AFd1jSDK<AFi1wSDK> getMonetizationNetwork(boolean z, boolean z2, String str, int i) {
        String str2;
        String str3;
        int i2 = 2 % 2;
        int i3 = hashCode + fh.h1;
        copy = i3 % 128;
        if (i3 % 2 == 0) {
            Intrinsics.checkNotNullParameter(str, "");
            throw null;
        }
        AFe1ySDK aFe1ySDK = this.component4;
        Intrinsics.checkNotNullParameter(str, "");
        String str4 = z ? AFe1ySDK.getMonetizationNetwork : AFe1ySDK.getRevenue;
        if (z2) {
            int i4 = hashCode + 93;
            copy = i4 % 128;
            int i5 = i4 % 2;
            str2 = "stg";
        } else {
            str2 = "";
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        if (AFe1ySDK.getRevenue()) {
            int i6 = hashCode + 53;
            copy = i6 % 128;
            int i7 = i6 % 2;
            str3 = (String) aFe1ySDK.getCurrencyIso4217Code.getValue();
        } else {
            str3 = "";
        }
        String str5 = String.format(str4, Arrays.copyOf(new Object[]{str3, str2, aFe1ySDK.getCurrencyIso4217Code(), str}, 4));
        Intrinsics.checkNotNullExpressionValue(str5, "");
        AFd1dSDK aFd1dSDK = new AFd1dSDK(str5, "GET");
        aFd1dSDK.component3 = ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;
        return (AFd1jSDK) getRevenue(new Object[]{this, aFd1dSDK, new AFd1eSDK()}, 865808376, -865808374, System.identityHashCode(this));
    }

    public final AFd1jSDK<String> getRevenue(AFh1gSDK aFh1gSDK) {
        int i = 2 % 2;
        AFd1jSDK<String> aFd1jSDK = (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(aFh1gSDK.component3, aFh1gSDK.AFAdRevenueData(), "POST", Collections.emptyMap(), true), new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
        int i2 = copy + 117;
        hashCode = i2 % 128;
        if (i2 % 2 != 0) {
            int i3 = 59 / 0;
        }
        return aFd1jSDK;
    }

    public final AFd1jSDK<String> getRevenue(Map<String, Object> map, String str) {
        int i = 2 % 2;
        try {
            Object[] objArr = {map, str};
            Object method = AFa1jSDK.unregisterClient.get(203186425);
            if (method == null) {
                method = ((Class) AFa1jSDK.AFAdRevenueData((Process.myTid() >> 22) + 196, (char) (TextUtils.lastIndexOf("", '0', 0) + 29637), View.resolveSizeAndState(0, 0, 0) + 37)).getMethod("getRevenue", Map.class, String.class);
                AFa1jSDK.unregisterClient.put(203186425, method);
            }
            byte[] bArr = (byte[]) ((Method) method).invoke(null, objArr);
            int i2 = copy + 35;
            hashCode = i2 % 128;
            int i3 = i2 % 2;
            AFj1eSDK aFj1eSDK = this.component2;
            AFd1jSDK<String> aFd1jSDK = (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(aFj1eSDK.getRevenue(aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%svalidate-and-log.%s/api/v4.0/android/one_time_purchase/validateAndLog?app_id=")), bArr, "POST", Collections.emptyMap(), true), new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
            int i4 = hashCode + 69;
            copy = i4 % 128;
            int i5 = i4 % 2;
            return aFd1jSDK;
        } catch (Throwable th) {
            try {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            } catch (Throwable th2) {
                AFLogger.INSTANCE.e(AFg1cSDK.PURCHASE_VALIDATION, "AFFinalizer: reflection init failed.", th2, false, false);
                return null;
            }
        }
    }

    public final AFd1jSDK<String> getRevenue(Map<String, Object> map, String str, String str2) {
        String currencyIso4217Code;
        int i = 2 % 2;
        try {
            Object[] objArr = {map, str};
            Object method = AFa1jSDK.unregisterClient.get(203186425);
            if (method == null) {
                method = ((Class) AFa1jSDK.AFAdRevenueData((Process.myPid() >> 22) + 196, (char) (KeyEvent.getDeadChar(0, 0) + 29636), 37 - Color.red(0))).getMethod("getRevenue", Map.class, String.class);
                AFa1jSDK.unregisterClient.put(203186425, method);
            }
            byte[] bArr = (byte[]) ((Method) method).invoke(null, objArr);
            int i2 = hashCode + 75;
            copy = i2 % 128;
            int i3 = i2 % 2;
            AFj1eSDK aFj1eSDK = this.component2;
            String str3 = str2;
            if (!(str3 == null || str3.length() == 0 || new Regex("4.?(\\d+)?.?(\\d+)").matches(str3) || new Regex("3.?(\\d+)?.?(\\d+)").matches(str3))) {
                currencyIso4217Code = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%sviap.%s/api/v1/android/validate_purchase_v2?app_id=");
                int i4 = copy + 37;
                hashCode = i4 % 128;
                int i5 = i4 % 2;
            } else {
                int i6 = copy + 49;
                hashCode = i6 % 128;
                int i7 = i6 % 2;
                currencyIso4217Code = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%sviap.%s/api/v1/android/validate_purchase?app_id=");
            }
            return (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(aFj1eSDK.getMonetizationNetwork(aFj1eSDK.getRevenue(currencyIso4217Code), false), bArr, "POST", Collections.emptyMap(), true), new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
        } catch (Throwable th) {
            try {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            } catch (Throwable th2) {
                AFLogger.INSTANCE.e(AFg1cSDK.ENGAGEMENT, "AFFinalizer: reflection init failed.", th2, false, false);
                return null;
            }
        }
    }
}
