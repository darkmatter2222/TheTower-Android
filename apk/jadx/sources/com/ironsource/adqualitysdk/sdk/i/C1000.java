package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺑ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1000 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String[] f3530 = {StringFog.decrypt("UpA0YSyQRdgFgSR8d4Zd\n", "feNNElj1KPc=\n"), StringFog.decrypt("O0n52SZGA4F2U+6FIVY=\n", "FDqAqlIjbq4=\n"), StringFog.decrypt("lNl7dUs5ccQ=\n", "u6oZHCUWArE=\n"), StringFog.decrypt("uLgAdjq20LXkvg==\n", "l8t5BU7TvZo=\n"), StringFog.decrypt("H3+AGsOn3hBSZZdGmafLSx8iihw=\n", "MAz5abfCsz8=\n"), StringFog.decrypt("f9Vtv1bhln8l1WbjVeHWPjXDcOFQ65Qkf9Vh\n", "UKYUzCKE+1A=\n"), StringFog.decrypt("ggNHBsfpOK3MAE5a4Pkl598FTRDBojTyxg==\n", "rXA+dbOMVYI=\n"), StringFog.decrypt("6r8aaOZ/JCumuhcz/zIhKuqoDg==\n", "xdt7HIdQSEQ=\n"), StringFog.decrypt("9tCe6fubRh661ZOy+N1EXqrB\n", "2bT/nZq0KnE=\n"), StringFog.decrypt("HlKzHVPweqFSV75GQao=\n", "MTbSaTLfFs4=\n")};

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String[] f3529 = {StringFog.decrypt("QXq4rkYPVStXc7r1BgFIJ1B6vOQGE1M=\n", "IhXVgChgJkM=\n"), StringFog.decrypt("sTd7WhKj1aKnPnkBUq3IrqA3fxBSv9PktzR/ABk=\n", "0lgWdHzMpso=\n"), StringFog.decrypt("EtcJvU1AMtoRy1W7C1IuxBLQVKs=\n", "d6In3iUhW7Q=\n"), StringFog.decrypt("aIMUVl8nRQpjhRIcQTxEGCWfDAhROkUKbp4=\n", "C+x5eDRIMHk=\n"), StringFog.decrypt("SagFhWtkfUhOtwnZa3U6SV+3Ddlqf3FI\n", "Ksdoqx8MFDo=\n"), StringFog.decrypt("7NJOQg/bEWTgykYfWM0I\n", "j70jbHa+fQg=\n"), StringFog.decrypt("Ejy7SdtkaAoeO7gQ2iV1ARY6pQw=\n", "cVPWZ68LGGA=\n"), StringFog.decrypt("1sq9kdTTKgrO3/aTychhCw==\n", "u6+T4by7BHk=\n"), StringFog.decrypt("NTGINIGFtrg5K5Z/mMK7sDs=\n", "Vl7lGurs2N8=\n")};

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String[] f3528 = {StringFog.decrypt("BMbmIeF1gw==\n", "Y6OIRJMc4FM=\n"), StringFog.decrypt("PgeCrPjIjg==\n", "S2npwpe/4Ls=\n"), StringFog.decrypt("9y7HVKnKvDD0Kg==\n", "kEGoM8Wv40M=\n"), StringFog.decrypt("7H+k7/vqBMk=\n", "qRLRg5qea7s=\n"), StringFog.decrypt("7jmo0Q++oR38E4eDAqKsUdt3qswS970FmQ==\n", "r1fMo2DXxT0=\n"), StringFog.decrypt("P2Chb73zXLQiYQ==\n", "TATKMNqDNNs=\n"), StringFog.decrypt("Iw6qZ9/zPQ==\n", "VWzFH+fFTfg=\n"), StringFog.decrypt("ngnM8CnRkGA=\n", "+WaglE+44wg=\n"), StringFog.decrypt("ErMOYP8W\n", "YNJgA5djL0E=\n")};

    /* JADX WARN: Code duplicated, block: B:63:0x014b  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C1033 m2392(Context context) {
        Iterator it;
        boolean z;
        ArrayList arrayList = new ArrayList();
        boolean z2 = false;
        for (String str : f3530) {
            try {
                if (new File(str).exists()) {
                    arrayList.add(1);
                    break;
                }
            } catch (SecurityException unused) {
            }
        }
        PackageManager packageManager = context.getPackageManager();
        for (String str2 : f3529) {
            try {
                packageManager.getPackageInfo(str2, 0);
                arrayList.add(2);
                break;
            } catch (Exception unused2) {
            }
        }
        String str3 = Build.TAGS;
        if (str3 != null && str3.contains(StringFog.decrypt("FRXsrv0wxWAS\n", "YXCf2tBboBk=\n"))) {
            arrayList.add(3);
        }
        try {
            Process processExec = Runtime.getRuntime().exec(StringFog.decrypt("Z5k0DDE=\n", "CvZBYkWTuVI=\n"));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        bufferedReader.close();
                        processExec.waitFor();
                        break;
                    }
                    if (line.contains(StringFog.decrypt("SHylum+vgQ==\n", "Zw/cyRvK7Pg=\n")) && line.contains(StringFog.decrypt("19NJ\n", "96E+yT2VrRw=\n"))) {
                        bufferedReader.close();
                        arrayList.add(4);
                        break;
                    }
                } catch (Throwable th) {
                    bufferedReader.close();
                    throw th;
                }
            }
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                int iIntValue = ((Integer) it.next()).intValue();
                if (iIntValue == 1 || iIntValue == 2 || iIntValue == 3 || iIntValue == 4) {
                    z = true;
                    break;
                }
            }
        } catch (Throwable unused3) {
        }
        String[] strArr = {Build.FINGERPRINT, Build.MODEL, Build.MANUFACTURER, Build.BRAND, Build.DEVICE, Build.PRODUCT};
        loop3: for (int i = 0; i < 6; i++) {
            String str4 = strArr[i];
            for (String str5 : f3528) {
                if (str4 == null ? false : str4.toLowerCase().contains(str5.toLowerCase())) {
                    arrayList.add(5);
                    break loop3;
                }
            }
        }
        String str6 = Build.HARDWARE;
        if (str6 == null ? false : str6.toLowerCase().contains(StringFog.decrypt("Jr35KQCJaAM=\n", "QdKVTWbgG2s=\n").toLowerCase())) {
            arrayList.add(6);
        } else if (str6 == null ? false : str6.toLowerCase().contains(StringFog.decrypt("ou0MHkmV\n", "0IxifSHgGgM=\n").toLowerCase())) {
            arrayList.add(6);
        } else if (str6 == null ? false : str6.toLowerCase().contains(StringFog.decrypt("UWEOvE43\n", "JwNhxHYBJpk=\n").toLowerCase())) {
            arrayList.add(6);
        }
        it = arrayList.iterator();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            int iIntValue2 = ((Integer) it2.next()).intValue();
            if (iIntValue2 == 5 || iIntValue2 == 6) {
                z2 = true;
                break;
            }
        }
        return new C1033(z, z2, arrayList);
    }
}
