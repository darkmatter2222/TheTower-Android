package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺀ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0996 extends AbstractC0171 implements InterfaceC0497 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0982 f3523 = new C0982();

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String f3522 = StringFog.decrypt("hASlcJjBo5yLNLhSmOG5p4IOrlCY\n", "5WDBIv211u4=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f3521 = StringFog.decrypt("PVgDyQj1FwM8eBraCOkDCTpIENU/5CEJ\n", "Tj1iu2udUWw=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f3520 = StringFog.decrypt("rDLydOAvmF2wPeg=\n", "31mbBK1K7DU=\n");

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f3519 = StringFog.decrypt("rNqMIbdnFM6x64EDt0cO+rbRnA==\n", "37/4c9ITYbw=\n");

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f3518 = StringFog.decrypt("2Tkd2Ne1mbbPKAz6xZOBq88v\n", "qlxpiLbH+Ns=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f3517 = StringFog.decrypt("WbdURXDIbrJYnUZbZNdtuk+mRXl2\n", "KtIgCwWlDNc=\n");

    /* JADX WARN: Code duplicated, block: B:39:0x009f  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0497
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1855(C0116 c0116, String str, ArrayList arrayList, C0943 c0943, C0983 c0983) {
        byte b;
        try {
            switch (str.hashCode()) {
                case -2020212392:
                    if (!str.equals(f3522)) {
                        b = -1;
                    } else {
                        b = 8;
                    }
                    break;
                case -600792781:
                    if (!str.equals(f3520)) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                case 94094958:
                    if (!str.equals(StringFog.decrypt("J5PAGaw=\n", "ReapdcgNNtQ=\n"))) {
                        b = -1;
                    } else {
                        b = 10;
                    }
                    break;
                case 108404047:
                    if (!str.equals(StringFog.decrypt("+30yPiY=\n", "iRhBW1Kovuo=\n"))) {
                        b = -1;
                    } else {
                        b = 9;
                    }
                    break;
                case 132643084:
                    if (!str.equals(f3517)) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                case 200590504:
                    if (!str.equals(f3521)) {
                        b = -1;
                    } else {
                        b = 4;
                    }
                    break;
                case 387034026:
                    if (!str.equals(StringFog.decrypt("x7g+p7JTt47nqC+wo1iSgceu\n", "tN1f1dE7/uA=\n"))) {
                        b = -1;
                    } else {
                        b = 7;
                    }
                    break;
                case 391966482:
                    if (!str.equals(StringFog.decrypt("uHkD7E+m7seweBXSdK3Oz7pxEsVF\n", "2R1noSDCh6E=\n"))) {
                        b = -1;
                    } else {
                        b = 5;
                    }
                    break;
                case 393987200:
                    if (!str.equals(f3519)) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case 1423210564:
                    if (!str.equals(StringFog.decrypt("lQeULHOEFamdBoISSI85t5cPhQV5\n", "9GPwYRzgfM8=\n"))) {
                        b = -1;
                    } else {
                        b = 6;
                    }
                    break;
                case 1773646829:
                    if (!str.equals(f3518)) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    this.f3523.f3488 = (Class) AbstractC0993.m2388(arrayList, 0, Class.class);
                    return this;
                case 1:
                    this.f3523.f3485 = (List) AbstractC0993.m2388(arrayList, 0, List.class);
                    return this;
                case 2:
                    this.f3523.f3484 = ((Integer) AbstractC0993.m2388(arrayList, 0, Integer.class)).intValue();
                    return this;
                case 3:
                    this.f3523.f3489 = ((Integer) AbstractC0993.m2388(arrayList, 0, Integer.class)).intValue();
                    return this;
                case 4:
                    this.f3523.f3487 = ((Boolean) AbstractC0993.m2388(arrayList, 0, Boolean.class)).booleanValue();
                    return this;
                case 5:
                    int iIntValue = ((Integer) AbstractC0993.m2388(arrayList, 0, Integer.class)).intValue();
                    C0982 c0982 = this.f3523;
                    c0982.f863 = iIntValue | c0982.f863;
                    return this;
                case 6:
                    int iIntValue2 = ((Integer) AbstractC0993.m2388(arrayList, 0, Integer.class)).intValue();
                    C0982 c0984 = this.f3523;
                    c0984.f862 = iIntValue2 | c0984.f862;
                    return this;
                case 7:
                    boolean zBooleanValue = ((Boolean) AbstractC0993.m2388(arrayList, 0, Boolean.class)).booleanValue();
                    int iIntValue3 = arrayList.size() > 1 ? ((Integer) AbstractC0993.m2388(arrayList, 1, Integer.class)).intValue() : -1;
                    C0982 c0985 = this.f3523;
                    c0985.f865 = zBooleanValue;
                    c0985.f864 = iIntValue3;
                    return this;
                case 8:
                    this.f3523.f3486.add((Class) AbstractC0993.m2388(arrayList, 0, Class.class));
                    return this;
                case 9:
                    this.f3523.m2379();
                    return this;
                case 10:
                    return this.f3523;
                default:
                    new C3491q(c0116, c0983, StringFog.decrypt("vE8z4JAAGjiXQynhiw0xMw==\n", "8SpHiP9kXl0=\n"), str).m2264(c0116.m1903());
                    return null;
            }
        } catch (Exception e) {
            AbstractC0991.m2386(c0116.m1903(), AbstractC0897.m2299("/w==\n", "2Jcld3uLDJE=\n", AbstractC0662.m2192("xo6hKOys5nbqkLZn+/T0ffaIuin5rNx795S8I9rp93ftlacu8eKxcOKIujH7rPx795S8I76r\n", "g/zTR56MkR4=\n", new StringBuilder(), str)), e, null);
        }
    }
}
