package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2880nC {
    public double A00;
    public EnumC2886nI A01;
    public EnumC2887nJ A02;
    public String A03;
    public String A04;
    public Map<String, String> A05;
    public boolean A06;

    public final C2880nC A00(double d) {
        this.A00 = d;
        return this;
    }

    public final C2880nC A01(EnumC2886nI enumC2886nI) {
        this.A01 = enumC2886nI;
        return this;
    }

    public final C2880nC A02(EnumC2887nJ enumC2887nJ) {
        this.A02 = enumC2887nJ;
        return this;
    }

    public final C2880nC A03(String str) {
        this.A03 = str;
        return this;
    }

    public final C2880nC A04(String str) {
        this.A04 = str;
        return this;
    }

    public final C2880nC A05(Map<String, String> map) {
        this.A05 = map;
        return this;
    }

    public final C2880nC A06(boolean z) {
        this.A06 = z;
        return this;
    }

    public final C2881nD A07(C2755lA c2755lA) {
        return new C2881nD(c2755lA, this.A04, this.A00, this.A03, this.A05, this.A01, this.A02, this.A06);
    }
}
