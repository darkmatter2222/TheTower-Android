package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0592 extends AbstractC0171 implements InterfaceC0497 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0591 f2368 = new C0591();

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String f2367 = StringFog.decrypt("7FPc89mG4JHift/Jz4Tg\n", "jTe4p6D2hcU=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f2366 = StringFog.decrypt("IscDTfV+wI4j5xpe9WLSmCHH\n", "UaJiP5YWhuE=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f2365 = StringFog.decrypt("DQkh0yXmK64aEQ==\n", "fmJIo2OPTsI=\n");

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f2364 = StringFog.decrypt("HR4/SwTNATwBPSJxGQ==\n", "bntLH329ZGg=\n");

    /* JADX WARN: Code duplicated, block: B:33:0x0087  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0497
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1855(C0116 c0116, String str, ArrayList arrayList, C0943 c0943, C0983 c0983) {
        byte b;
        try {
            switch (str.hashCode()) {
                case -1347544616:
                    if (!str.equals(f2366)) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                case -923635536:
                    if (!str.equals(f2364)) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case -216533736:
                    if (!str.equals(f2365)) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                case 94094958:
                    if (!str.equals(StringFog.decrypt("SPgDcFQ=\n", "Ko1qHDD4r7U=\n"))) {
                        b = -1;
                    } else {
                        b = 8;
                    }
                    break;
                case 108404047:
                    if (!str.equals(StringFog.decrypt("l4BigBU=\n", "5eUR5WHALLk=\n"))) {
                        b = -1;
                    } else {
                        b = 7;
                    }
                    break;
                case 387034026:
                    if (!str.equals(StringFog.decrypt("ebnLScKQG/9Zqdpe05s+8Hmv\n", "CtyqO6H4UpE=\n"))) {
                        b = -1;
                    } else {
                        b = 5;
                    }
                    break;
                case 391966482:
                    if (!str.equals(StringFog.decrypt("m6jKo+z0Nt+Tqdyd1/8W15mg24rm\n", "+syu7oOQX7k=\n"))) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                case 1067445448:
                    if (!str.equals(f2367)) {
                        b = -1;
                    } else {
                        b = 6;
                    }
                    break;
                case 1423210564:
                    if (!str.equals(StringFog.decrypt("9MiBIA9Z5KX8yZceNFLIu/bAkAkF\n", "lazlbWA9jcM=\n"))) {
                        b = -1;
                    } else {
                        b = 4;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    this.f2368.f2363 = (Class) AbstractC0993.m2388(arrayList, 0, Class.class);
                    return this;
                case 1:
                    this.f2368.f2362 = ((Integer) AbstractC0993.m2388(arrayList, 0, Integer.class)).intValue();
                    return this;
                case 2:
                    this.f2368.f2361 = ((Boolean) AbstractC0993.m2388(arrayList, 0, Boolean.class)).booleanValue();
                    return this;
                case 3:
                    int iIntValue = ((Integer) AbstractC0993.m2388(arrayList, 0, Integer.class)).intValue();
                    C0591 c0591 = this.f2368;
                    c0591.f863 = iIntValue | c0591.f863;
                    return this;
                case 4:
                    int iIntValue2 = ((Integer) AbstractC0993.m2388(arrayList, 0, Integer.class)).intValue();
                    C0591 c0592 = this.f2368;
                    c0592.f862 = iIntValue2 | c0592.f862;
                    return this;
                case 5:
                    boolean zBooleanValue = ((Boolean) AbstractC0993.m2388(arrayList, 0, Boolean.class)).booleanValue();
                    int iIntValue3 = arrayList.size() > 1 ? ((Integer) AbstractC0993.m2388(arrayList, 1, Integer.class)).intValue() : -1;
                    C0591 c0593 = this.f2368;
                    c0593.f865 = zBooleanValue;
                    c0593.f864 = iIntValue3;
                    return this;
                case 6:
                    this.f2368.f2360.add((Class) AbstractC0993.m2388(arrayList, 0, Class.class));
                    return this;
                case 7:
                    this.f2368.m2139();
                    return this;
                case 8:
                    return this.f2368;
                default:
                    new C3491q(c0116, c0983, StringFog.decrypt("dDN4O9xufLlbNHQj0UV3\n", "MlodV7gqGd8=\n"), str).m2264(c0116.m1903());
                    return null;
            }
        } catch (Exception e) {
            AbstractC0991.m2386(c0116.m1903(), AbstractC0897.m2299("ww==\n", "5OolEii+tWg=\n", AbstractC0662.m2192("gYBMO47T8q6tnlt0mYvgpbGGVzqb08OvoZ5aEJmV7Kithlc7ktPrp7CbSDHcnuCyrJ1adNs=\n", "xPI+VPzzhcY=\n", new StringBuilder(), str)), e, null);
        }
    }
}
