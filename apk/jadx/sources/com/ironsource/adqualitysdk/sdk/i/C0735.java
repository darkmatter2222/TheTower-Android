package com.ironsource.adqualitysdk.sdk.i;

import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴿ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0735 {

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public C1014 f2719;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public int f2728;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public List f2729;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public Class f2730;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public Class f2731;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public Class f2732;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public int f2727 = -1;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public int f2726 = -1;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public int f2725 = -1;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public int f2724 = -1;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public int f2723 = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public int f2722 = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public int f2721 = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public boolean f2720 = true;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0735.class == obj.getClass()) {
            C0735 c0735 = (C0735) obj;
            if (this.f2728 != c0735.f2728 || this.f2727 != c0735.f2727 || this.f2726 != c0735.f2726 || this.f2725 != c0735.f2725 || this.f2724 != c0735.f2724 || this.f2723 != c0735.f2723 || this.f2722 != c0735.f2722 || this.f2721 != c0735.f2721 || this.f2720 != c0735.f2720) {
                return false;
            }
            Class cls = this.f2732;
            if (cls == null ? c0735.f2732 != null : !cls.equals(c0735.f2732)) {
                return false;
            }
            Class cls2 = this.f2731;
            if (cls2 == null ? c0735.f2731 != null : !cls2.equals(c0735.f2731)) {
                return false;
            }
            Class cls3 = this.f2730;
            if (cls3 == null ? c0735.f2730 != null : !cls3.equals(c0735.f2730)) {
                return false;
            }
            List list = this.f2729;
            if (list == null ? c0735.f2729 != null : !list.equals(c0735.f2729)) {
                return false;
            }
            C1014 c1014 = this.f2719;
            C1014 c1015 = c0735.f2719;
            if (c1014 != null) {
                return c1014.equals(c1015);
            }
            if (c1015 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Class cls = this.f2732;
        int iHashCode = (cls != null ? cls.hashCode() : 0) * 31;
        Class cls2 = this.f2731;
        int iHashCode2 = (iHashCode + (cls2 != null ? cls2.hashCode() : 0)) * 31;
        Class cls3 = this.f2730;
        int iHashCode3 = (iHashCode2 + (cls3 != null ? cls3.hashCode() : 0)) * 31;
        List list = this.f2729;
        int iHashCode4 = (((((((((((((((((((iHashCode3 + (list != null ? list.hashCode() : 0)) * 31) + this.f2728) * 31) + this.f2727) * 31) + this.f2726) * 31) + this.f2725) * 31) + this.f2724) * 31) + this.f2723) * 31) + this.f2722) * 31) + this.f2721) * 31) + (this.f2720 ? 1 : 0)) * 31;
        C1014 c1014 = this.f2719;
        return iHashCode4 + (c1014 != null ? c1014.hashCode() : 0);
    }
}
