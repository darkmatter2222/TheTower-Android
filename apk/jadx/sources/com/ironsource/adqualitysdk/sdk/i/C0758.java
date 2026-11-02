package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵖ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0758 extends AbstractC0993 implements InterfaceC0792, InterfaceC0497 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final InterfaceC0792 f2798;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final Object f2799;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final Map f2800;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Collection f2801;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Field f2802;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f2797 = StringFog.decrypt("Vz0a6YfOsYB9MxTFicqb\n", "GF9wjOS69+k=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f2796 = StringFog.decrypt("DyeoGdEGbis=\n", "aELcT7BqG04=\n");

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f2795 = StringFog.decrypt("qtDQe2IQHh4=\n", "2bWkLQN8a3s=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f2794 = StringFog.decrypt("9ojh79FYOQ==\n", "n/unhrQ0XS0=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final String f2793 = StringFog.decrypt("UBy/vSnCCcs=\n", "N3nL+0CnZa8=\n");

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f2792 = StringFog.decrypt("2owzCFT7EVTHlh8J\n", "s/9wZziXdDc=\n");

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f2791 = StringFog.decrypt("974ii4hWY//zrz+niQ==\n", "kNtWyOc6D5o=\n");

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static final String f2790 = StringFog.decrypt("JqYeffc=\n", "T9VTHId9VPs=\n");

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static final String f2789 = StringFog.decrypt("2M/DdnSN\n", "v6q3OxX9cjA=\n");

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f2788 = StringFog.decrypt("agZds0Q+S855\n", "DWMp4yVMLqA=\n");

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f2787 = StringFog.decrypt("tfSAb/Ww7k+88pE=\n", "0pH0JpvDmi4=\n");

    public C0758(Field field, Object obj, InterfaceC0792 interfaceC0792) {
        this.f2802 = field;
        this.f2799 = obj;
        this.f2798 = interfaceC0792;
    }

    public C0758(Collection collection, Object obj, InterfaceC0792 interfaceC0792) {
        this.f2801 = collection;
        this.f2799 = obj;
        this.f2798 = interfaceC0792;
    }

    public C0758(Map map, Object obj, InterfaceC0792 interfaceC0792) {
        this.f2800 = map;
        this.f2799 = obj;
        this.f2798 = interfaceC0792;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object m2263() {
        Field field = this.f2802;
        if (field != null) {
            try {
                return field.get(this.f2799);
            } catch (Exception unused) {
                return null;
            }
        }
        if (this.f2801 == null && this.f2800 == null) {
            return null;
        }
        return this.f2799;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0072  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0497
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1855(C0116 c0116, String str, ArrayList arrayList, C0943 c0943, C0983 c0983) {
        byte b;
        try {
            boolean z = true;
            switch (str.hashCode()) {
                case -2039060844:
                    if (!str.equals(f2791)) {
                        b = -1;
                    } else {
                        b = 5;
                    }
                    break;
                case -1661939189:
                    if (!str.equals(f2787)) {
                        b = -1;
                    } else {
                        b = 9;
                    }
                    break;
                case -1249356250:
                    if (!str.equals(f2789)) {
                        b = -1;
                    } else {
                        b = 7;
                    }
                    break;
                case 100472786:
                    if (!str.equals(f2790)) {
                        b = -1;
                    } else {
                        b = 6;
                    }
                    break;
                case 429960040:
                    if (!str.equals(f2792)) {
                        b = -1;
                    } else {
                        b = 4;
                    }
                    break;
                case 700591008:
                    if (!str.equals(f2788)) {
                        b = -1;
                    } else {
                        b = 8;
                    }
                    break;
                case 1406685743:
                    if (!str.equals(f2795)) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                case 1953253188:
                    if (!str.equals(f2793)) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                case 1967798203:
                    if (!str.equals(f2796)) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case 2058833392:
                    if (!str.equals(f2794)) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    return m2263();
                case 1:
                    Object objM2388 = AbstractC0993.m2388(arrayList, 0, Object.class);
                    Field field = this.f2802;
                    if (field != null) {
                        try {
                            field.set(this.f2799, objM2388);
                            break;
                        } catch (Exception unused) {
                        }
                    }
                    return null;
                case 2:
                    if (this.f2802 == null) {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                case 3:
                    return this.f2802;
                case 4:
                    if (this.f2801 == null) {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                case 5:
                    return this.f2801;
                case 6:
                    if (this.f2800 == null) {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                case 7:
                    return this.f2800;
                case 8:
                    return this.f2798;
                case 9:
                    return this.f2799;
                default:
                    new C3491q(c0116, c0983, f2797, str).m2264(c0116.m1903());
                    return null;
            }
        } catch (Exception e) {
            AbstractC0991.m2386(c0116.m1903(), AbstractC0897.m2299("IQ==\n", "Br+AQ3/STws=\n", AbstractC0662.m2192("sNxECSMf8WWcwlNGNEfjboDaXwg2H8lvn8tVEhdW42GR51sWPR/obIHHQANxUuN5ncFSRnY=\n", "9a42ZlE/hg0=\n", new StringBuilder(), str)), e, null);
        }
    }
}
