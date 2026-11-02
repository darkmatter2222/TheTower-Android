package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.lf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3701lf implements Ob<AbstractC3594ff, C3870v> {
    @Override // com.ironsource.Ob
    public C3870v a(AbstractC3594ff input) {
        String strH;
        String strI;
        String strG;
        W7 w7E;
        String strC;
        Intrinsics.checkNotNullParameter(input, "input");
        EnumC3719mf enumC3719mfB = input.b();
        O oA = input.a();
        if (oA == null || (strH = oA.h()) == null) {
            strH = "0";
        }
        O oA2 = input.a();
        if (oA2 == null || (strI = oA2.i()) == null) {
            strI = "0";
        }
        O oA3 = input.a();
        if (oA3 == null || (strG = oA3.g()) == null) {
            strG = "0";
        }
        O oA4 = input.a();
        if (oA4 == null || (w7E = oA4.e()) == null) {
            w7E = W7.UnknownProvider;
        }
        O oA5 = input.a();
        return new C3870v(enumC3719mfB, strH, strI, strG, w7E, (oA5 == null || (strC = oA5.c()) == null) ? "0" : strC);
    }
}
