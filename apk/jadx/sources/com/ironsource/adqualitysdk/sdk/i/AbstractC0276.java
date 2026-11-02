package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ϯ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0276 extends AbstractC0993 implements InterfaceC0497 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public String f1383;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public String f1384;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f1385;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public Map f1386;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f1382 = StringFog.decrypt("7Y9sCtuKa/r6gU4p3JVuxvA=\n", "nuoYTK7mB6k=\n");

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f1381 = StringFog.decrypt("rw7Qu89qJBStK/O80G8YHpUY4g==\n", "xn2WzqMGd3A=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f1380 = StringFog.decrypt("34o3CwwTg9Y=\n", "uO9DSGBy8KU=\n");

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f1379 = StringFog.decrypt("JYc6\n", "TOlOkXGD55s=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f1378 = StringFog.decrypt("N6BRgA==\n", "W88/544dYE8=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final String f1377 = StringFog.decrypt("IYflf5Kj\n", "ReiQHf7GzJM=\n");

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f1376 = StringFog.decrypt("4dTAnwU=\n", "h7iv/nEINpM=\n");

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f1375 = StringFog.decrypt("vRO+Uw==\n", "33zRPwwuKqU=\n");

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static final String f1374 = StringFog.decrypt("l6kUVw==\n", "9MF1JduyEBY=\n");

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static final String f1373 = StringFog.decrypt("CUihuw==\n", "azHV3pfWxXc=\n");

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f1372 = StringFog.decrypt("HoqZsw==\n", "aOXw12Bdzys=\n");

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f1371 = StringFog.decrypt("u8u5U+I=\n", "yKPWIZZ/004=\n");

    public AbstractC0276(String str) {
        this.f1385 = str;
    }

    /* JADX INFO: renamed from: ﻏ */
    public boolean mo1921() {
        return this instanceof C0167;
    }

    /* JADX INFO: renamed from: ﻐ */
    public boolean mo1918() {
        return this instanceof C0201;
    }

    /* JADX INFO: renamed from: ﻛ */
    public abstract String mo1847();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized String m2028() {
        if (TextUtils.isEmpty(this.f1383) || this.f1383.equals(StringFog.decrypt("QhcnOmoXiQ==\n", "B1lmeCZSzRo=\n"))) {
            this.f1383 = mo1847();
        }
        return this.f1383;
    }

    /* JADX INFO: renamed from: ﾇ */
    public abstract HashMap mo1848();

    /* JADX INFO: renamed from: ﾒ */
    public abstract Class mo1849(String str);

    /* JADX WARN: Code duplicated, block: B:42:0x00a7  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v15, types: [java.lang.Class] */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Class m2029(String str, boolean z) {
        byte b;
        try {
            if (str.contains(StringFog.decrypt("uQ==\n", "l6y0QOcAFD4=\n"))) {
                String str2 = AbstractC1059.f3785;
                try {
                    str = Class.forName(str);
                    return str;
                } catch (Throwable th) {
                    if (z) {
                        AbstractC0991.m2386(AbstractC1059.f3785, StringFog.decrypt("Q8PeKLUF\n", "AK+/W8YlyU4=\n") + str + StringFog.decrypt("T0YkJ8Peo4MBTA==\n", "byhLU+O4zPY=\n"), th, null);
                    }
                    return null;
                }
            }
            switch (str.hashCode()) {
                case -1325958191:
                    if (!str.equals(f1377)) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                case 104431:
                    if (!str.equals(f1379)) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case 3029738:
                    if (!str.equals(f1375)) {
                        b = -1;
                    } else {
                        b = 4;
                    }
                    break;
                case 3039496:
                    if (!str.equals(f1373)) {
                        b = -1;
                    } else {
                        b = 6;
                    }
                    break;
                case 3052374:
                    if (!str.equals(f1374)) {
                        b = -1;
                    } else {
                        b = 5;
                    }
                    break;
                case 3327612:
                    if (!str.equals(f1378)) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                case 3625364:
                    if (!str.equals(f1372)) {
                        b = -1;
                    } else {
                        b = 7;
                    }
                    break;
                case 97526364:
                    if (!str.equals(f1376)) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                case 109413500:
                    if (!str.equals(f1371)) {
                        b = -1;
                    } else {
                        b = 8;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    return Integer.TYPE;
                case 1:
                    return Long.TYPE;
                case 2:
                    return Double.TYPE;
                case 3:
                    return Float.TYPE;
                case 4:
                    return Boolean.TYPE;
                case 5:
                    return Character.TYPE;
                case 6:
                    return Byte.TYPE;
                case 7:
                    return Void.TYPE;
                case 8:
                    return Short.TYPE;
                default:
                    return mo1849(str);
            }
        } catch (Throwable th2) {
            if (z) {
                AbstractC0991.m2386(this.f1385, AbstractC0897.m2299("TXvXa6tx+RADcQ==\n", "bRW4H4sXlmU=\n", AbstractC0662.m2192("mITtlhs8\n", "2+iM5Wgc3m8=\n", new StringBuilder(), str)), th2, null);
            }
            return null;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0497
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1855(C0116 c0116, String str, ArrayList arrayList, C0943 c0943, C0983 c0983) {
        InterfaceC0277 interfaceC0277 = (InterfaceC0277) this.f1386.get(str);
        try {
            if (interfaceC0277 != null) {
                return interfaceC0277.mo1846(arrayList, c0943);
            }
            new C3491q(c0116, c0983, this.f1385, str).m2264(this.f1385);
            return null;
        } catch (Exception e) {
            AbstractC0991.m2386(this.f1385, AbstractC0897.m2299("kw==\n", "tHL2np3gyyI=\n", AbstractC0662.m2192("CAs=\n", "KCzFLNB/r7M=\n", new StringBuilder().append(StringFog.decrypt("cJXD6VmIXitci9SmTtBMIECT2OhMiA==\n", "NeexhiuoKUM=\n")).append(this.f1385), str)), e, null);
        }
    }

    /* JADX INFO: renamed from: ﾒ */
    public String mo1850() {
        String str = this.f1384;
        return str != null ? str : m2028();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2030(InterfaceC0513 interfaceC0513, C0943 c0943, String str, Object... objArr) {
        try {
            ArrayList arrayList = new ArrayList(Arrays.asList(objArr));
            arrayList.add(0, interfaceC0513);
            C0116.m1900(c0943.f3360, str, true, false, arrayList);
            C0116 c0116 = c0943.f3360;
            C1001 c1001 = new C1001(c0943, str, false, arrayList);
            c0116.getClass();
            try {
                AbstractC0340.m2057(c1001);
            } catch (Throwable unused) {
            }
            C0116 c0117 = c0943.f3360;
            C1001 c1002 = new C1001(c0943, str, true, arrayList);
            c0117.getClass();
            try {
                AbstractC0340.m2055(new C0700(c1002));
            } catch (Throwable unused2) {
            }
        } catch (Throwable th) {
            AbstractC0991.m2386(this.f1385, StringFog.decrypt("xJ47JZCgBsuh\n", "gexJSuKAb6U=\n") + this, th, null);
        }
    }
}
