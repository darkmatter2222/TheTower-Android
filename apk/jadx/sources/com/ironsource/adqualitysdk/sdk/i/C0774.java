package com.ironsource.adqualitysdk.sdk.i;

import androidx.work.PeriodicWorkRequest;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵧ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0774 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f2894;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f2895;

    public C0774(String str, String str2) {
        if (str == null || str.trim().isEmpty()) {
            throw new IllegalArgumentException(StringFog.decrypt("ltCTd9eBHBys+7Z3zJEdG+X6tyOBhgtPp/i5Oco=\n", "xZTYV6Hkbm8=\n"));
        }
        if (str2 == null || str2.trim().isEmpty()) {
            throw new IllegalArgumentException(StringFog.decrypt("rg3EJGG6QIKODtwkRYsTns8T23AInAXKjRHVakM=\n", "7320BCj+YOo=\n"));
        }
        this.f2895 = str;
        this.f2894 = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0774)) {
            return false;
        }
        C0774 c0774 = (C0774) obj;
        c0774.getClass();
        return this.f2895.equals(c0774.f2895) && this.f2894.equals(c0774.f2894);
    }

    public final int hashCode() {
        return Long.valueOf(PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS).hashCode() + ((((((this.f2894.hashCode() + (this.f2895.hashCode() * 31)) * 31) + 2) * 31) + 2) * 31);
    }

    public final String toString() {
        return AbstractC0270.m2002("cD6W2uZU10U5bY/a83DtQzlptsij\n", "XB77u54Avig=\n", new StringBuilder().append(StringFog.decrypt("T1UcGNAGW/llVQ0uzQ1x8XtLDAnJNXLqb1kQA59E\n", "HDB/baJjF5g=\n")).append(this.f2895).append('\'').append(StringFog.decrypt("U+dUXJHEfFAetF0Rxg==\n", "f8c1LOGNGBg=\n")).append(this.f2894).append('\'').append(StringFog.decrypt("6ynGRz5KgbO1ZIs=\n", "xwm2K18+59w=\n")).append(2).append(StringFog.decrypt("yA88SvBokRmXXDZK80yaDIES\n", "5C9fJZ0Y43w=\n")).append(2), "300000}");
    }
}
