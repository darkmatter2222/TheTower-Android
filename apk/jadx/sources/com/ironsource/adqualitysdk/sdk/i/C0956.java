package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.telephony.TelephonyManager;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮂ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0956 implements InterfaceC0719 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Context f3397;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String[] f3396 = {StringFog.decrypt("hQqf\n", "8X/x4qMSSug=\n"), StringFog.decrypt("aksu\n", "GjteBPuG2s4=\n"), StringFog.decrypt("lUvUTU4=\n", "/DunKC1gs1E=\n")};

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String[] f3395 = {StringFog.decrypt("PoEeig==\n", "SvRwunT8XM0=\n"), StringFog.decrypt("LvDACg==\n", "XoCwOmlc/y4=\n")};

    public C0956(Context context) {
        this.f3397 = context;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0719
    public final String getName() {
        return StringFog.decrypt("3Y0JvqGN15DahhqsvI/Ov92c\n", "s+h9yc7/vNY=\n");
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0719
    /* JADX INFO: renamed from: ﾒ */
    public final C0941 mo2093() {
        boolean z;
        boolean z2;
        String networkOperatorName;
        String strDecrypt;
        List listEmptyList;
        String strDecrypt2;
        String simCountryIso;
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        ArrayList arrayList = new ArrayList();
        boolean z3 = true;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f3397.getSystemService(StringFog.decrypt("5jx+OH2l0rvzOmQv\n", "hVMQVhjGptI=\n"));
            z = (connectivityManager == null || (activeNetwork = connectivityManager.getActiveNetwork()) == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) ? false : !networkCapabilities.hasCapability(15);
        } catch (Throwable unused) {
        }
        if (z) {
            arrayList.add(30);
        }
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces != null) {
                loop1: while (networkInterfaces.hasMoreElements()) {
                    String lowerCase = networkInterfaces.nextElement().getName().toLowerCase();
                    String[] strArr = f3395;
                    int length = strArr.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            String[] strArr2 = f3396;
                            int length2 = strArr2.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 < length2) {
                                    if (!lowerCase.startsWith(strArr2[i2])) {
                                        i2++;
                                    }
                                }
                            }
                        } else if (!lowerCase.equals(strArr[i])) {
                            i++;
                        }
                        arrayList.add(31);
                        break loop1;
                    }
                }
            }
        } catch (Exception unused2) {
        }
        try {
            String property = System.getProperty(StringFog.decrypt("+jcDMvc0MozqOj8tqjA=\n", "kkN3QtlEQOM=\n"));
            z2 = (property == null || property.trim().isEmpty()) ? false : true;
        } catch (Exception unused3) {
        }
        if (z2) {
            arrayList.add(32);
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.f3397.getSystemService(StringFog.decrypt("WET3Dfg=\n", "KCyYY522/kI=\n"));
            if (telephonyManager == null || (networkOperatorName = telephonyManager.getNetworkOperatorName()) == null || networkOperatorName.trim().isEmpty()) {
                networkOperatorName = null;
            }
        } catch (Exception unused4) {
        }
        try {
            ConnectivityManager connectivityManager2 = (ConnectivityManager) this.f3397.getSystemService(StringFog.decrypt("ItU5WNDEAlc30yNP\n", "QbpXNrWndj4=\n"));
            if (connectivityManager2 == null) {
                strDecrypt = StringFog.decrypt("JExmuY4uZQ==\n", "USIN1+FZC4w=\n");
            } else {
                Network activeNetwork2 = connectivityManager2.getActiveNetwork();
                if (activeNetwork2 == null) {
                    strDecrypt = StringFog.decrypt("wSYJmA==\n", "r0ln/bCJ4uU=\n");
                } else {
                    NetworkCapabilities networkCapabilities2 = connectivityManager2.getNetworkCapabilities(activeNetwork2);
                    if (networkCapabilities2 == null) {
                        strDecrypt = StringFog.decrypt("gLBlV59amQ==\n", "9d4OOfAt928=\n");
                    } else if (networkCapabilities2.hasTransport(1)) {
                        strDecrypt = StringFog.decrypt("kjBu8Q==\n", "5VkImFvJH6s=\n");
                    } else if (networkCapabilities2.hasTransport(0)) {
                        strDecrypt = StringFog.decrypt("TznZOchLnV0=\n", "LFy1Vb0n/C8=\n");
                    } else if (networkCapabilities2.hasTransport(3)) {
                        strDecrypt = StringFog.decrypt("O+C6PdaSpzQ=\n", "XpTSWKT8wkA=\n");
                    } else if (networkCapabilities2.hasTransport(2)) {
                        strDecrypt = StringFog.decrypt("C44YzWQchEQB\n", "aeJtqBBz6zA=\n");
                    } else {
                        strDecrypt = networkCapabilities2.hasTransport(4) ? StringFog.decrypt("PnwY\n", "SAx2AxWHWvc=\n") : StringFog.decrypt("KmviMfQ=\n", "RR+KVIZBt0s=\n");
                    }
                }
            }
        } catch (Throwable unused5) {
            strDecrypt = StringFog.decrypt("R0F/p4TjVA==\n", "Mi8UyeuUOg4=\n");
        }
        try {
            TelephonyManager telephonyManager2 = (TelephonyManager) this.f3397.getSystemService(StringFog.decrypt("hvZM11s=\n", "9p4juT73n20=\n"));
            if (telephonyManager2 != null && (simCountryIso = telephonyManager2.getSimCountryIso()) != null) {
                simCountryIso.trim().isEmpty();
            }
        } catch (Exception unused6) {
        }
        try {
            Enumeration<NetworkInterface> networkInterfaces2 = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces2 == null) {
                listEmptyList = Collections.emptyList();
            } else {
                ArrayList arrayList2 = new ArrayList();
                while (networkInterfaces2.hasMoreElements()) {
                    arrayList2.add(networkInterfaces2.nextElement().getName());
                }
                listEmptyList = arrayList2;
            }
        } catch (Exception unused7) {
            listEmptyList = Collections.emptyList();
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(StringFog.decrypt("+y4IOxA=\n", "kl1eS36LlTc=\n"), z);
            jSONObject.put(StringFog.decrypt("klKddlLFOGSFR4w=\n", "/DfpAT23UzA=\n"), strDecrypt);
            jSONObject.put(StringFog.decrypt("6nQg8BDnN9LsaRbrGOo89Oc=\n", "gwdwgn+fTpE=\n"), z2);
            String strDecrypt3 = StringFog.decrypt("XUu60jz7cm5QWA==\n", "NSrJkV2JAAc=\n");
            if (networkOperatorName == null) {
                z3 = false;
            }
            jSONObject.put(strDecrypt3, z3);
            jSONObject.put(StringFog.decrypt("7nCueiDzdPTiXbVqPOE=\n", "hx7aH1KVFZc=\n"), listEmptyList.size());
            strDecrypt2 = jSONObject.toString();
        } catch (Exception unused8) {
            strDecrypt2 = StringFog.decrypt("XfI=\n", "Jo/0Aqi3Z9A=\n");
        }
        return new C0941(arrayList.isEmpty(), arrayList, strDecrypt2, null);
    }
}
