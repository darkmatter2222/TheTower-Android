package com.ironsource;

import p005kotlin.Result;
import p005kotlin.ResultKt;

/* JADX INFO: loaded from: classes4.dex */
public final class P4 implements InterfaceC3822s7 {
    private final Boolean a;

    public P4(Boolean bool) {
        this.a = bool;
    }

    @Override // com.ironsource.InterfaceC3822s7
    public Object a() {
        Boolean bool = this.a;
        if (bool == null) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(new Exception("enabled flag is not provided or invalid")));
        }
        Result.Companion companion2 = Result.INSTANCE;
        return Result.m3022constructorimpl(bool);
    }
}
