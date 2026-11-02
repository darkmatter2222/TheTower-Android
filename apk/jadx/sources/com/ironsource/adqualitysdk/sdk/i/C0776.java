package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0776 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0776 f2897;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0731 f2898;

    public C0776(C0731 c0731, C0776 c0776) {
        this.f2898 = c0731;
        this.f2897 = c0776;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C1014 m2270(String str) {
        C0776 c0776;
        C1014 c1014 = (C1014) this.f2898.f2704.get(str);
        return (c1014 != null || (c0776 = this.f2897) == null) ? c1014 : c0776.m2270(str);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final ArrayList m2271() {
        ArrayList arrayList = new ArrayList(this.f2898.f2707);
        C0776 c0776 = this.f2897;
        if (c0776 != null) {
            arrayList.addAll(c0776.m2271());
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C1055 m2272(String str) {
        C0776 c0776;
        C1055 c1055 = (C1055) this.f2898.f2705.get(str);
        return (c1055 != null || (c0776 = this.f2897) == null) ? c1055 : c0776.m2272(str);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ArrayList m2273() {
        ArrayList arrayList = new ArrayList(this.f2898.f2706);
        C0776 c0776 = this.f2897;
        if (c0776 != null) {
            arrayList.addAll(c0776.m2273());
        }
        return arrayList;
    }
}
