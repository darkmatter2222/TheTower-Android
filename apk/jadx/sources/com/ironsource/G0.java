package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class G0 implements Ob<F0, C3919xc> {
    @Override // com.ironsource.Ob
    public C3919xc a(F0 input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return new C3919xc(input.e(), input.c(), input.b(), input.a());
    }
}
