package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0941 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String f3351;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String f3352;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final List f3353;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean f3354;

    public C0941(boolean z, List list, String str, String str2) {
        this.f3354 = z;
        this.f3353 = Collections.unmodifiableList(new ArrayList(list));
        this.f3352 = str;
        this.f3351 = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0941.class == obj.getClass()) {
            C0941 c0941 = (C0941) obj;
            if (this.f3354 != c0941.f3354 || !this.f3353.equals(c0941.f3353)) {
                return false;
            }
            String str = this.f3352;
            if (str == null ? c0941.f3352 != null : !str.equals(c0941.f3352)) {
                return false;
            }
            String str2 = this.f3351;
            String str3 = c0941.f3351;
            if (str2 != null) {
                return str2.equals(str3);
            }
            if (str3 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f3353.hashCode() + ((this.f3354 ? 1 : 0) * 31)) * 31;
        String str = this.f3352;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f3351;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return StringFog.decrypt("zE2FUyjLL4jOWplQLdsxielciUAy3Hc=\n", "nD/qJUGvSvo=\n") + this.f3354 + StringFog.decrypt("Da1wcJqUTo9SsA==\n", "IY0DGf36L+M=\n") + this.f3353 + StringFog.decrypt("LI+2227iZwMn\n", "AK/CtAWHCT4=\n") + this.f3352 + '\'' + StringFog.decrypt("EwUsq7pKGuMY\n", "PyVJ2cglaN4=\n") + this.f3351 + "'}";
    }
}
