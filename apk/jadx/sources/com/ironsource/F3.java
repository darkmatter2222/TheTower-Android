package com.ironsource;

import p005kotlin.Result;
import p005kotlin.ResultKt;

/* JADX INFO: loaded from: classes4.dex */
public final class F3 implements InterfaceC3822s7 {
    private final Boolean a;
    private final Integer b;
    private final M3 c;

    public F3(Boolean bool, Integer num, M3 m3) {
        this.a = bool;
        this.b = num;
        this.c = m3;
    }

    @Override // com.ironsource.InterfaceC3822s7
    public Object a() {
        Boolean bool = this.a;
        if (bool == null) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(new Exception("enabled flag is not provided or invalid")));
        }
        if (!bool.booleanValue()) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m3022constructorimpl(Boolean.FALSE);
        }
        Integer num = this.b;
        if (num == null || num.intValue() <= 0) {
            Result.Companion companion3 = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(new Exception("limit flag is not provided or invalid")));
        }
        if (this.c == null) {
            Result.Companion companion4 = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(new Exception("unit flag is not provided or invalid")));
        }
        Result.Companion companion5 = Result.INSTANCE;
        return Result.m3022constructorimpl(Boolean.TRUE);
    }
}
