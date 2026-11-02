package com.ironsource;

import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class E3 implements InterfaceC3804r7 {
    private final Boolean a;
    private final Integer b;
    private final M3 c;

    public E3(Boolean bool, Integer num, M3 m3) {
        this.a = bool;
        this.b = num;
        this.c = m3;
    }

    public /* synthetic */ E3(Boolean bool, Integer num, M3 m3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(bool, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : m3);
    }

    private final Object a(M3 m3) {
        return new F3(this.a, this.b, m3).a();
    }

    @Override // com.ironsource.InterfaceC3804r7
    public Object a() {
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(new P4(this.a).a());
        if (thM3025exceptionOrNullimpl != null) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(thM3025exceptionOrNullimpl));
        }
        Result.Companion companion2 = Result.INSTANCE;
        Boolean bool = this.a;
        return Result.m3022constructorimpl(bool != null ? new O4(bool.booleanValue()) : null);
    }

    @Override // com.ironsource.InterfaceC3804r7
    public Object b() {
        M3 m3 = M3.Second;
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(a(m3));
        if (thM3025exceptionOrNullimpl != null) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(thM3025exceptionOrNullimpl));
        }
        C3556dd c3556dd = (!Intrinsics.areEqual(this.a, Boolean.TRUE) || this.b == null) ? null : new C3556dd(m3.a(this.b), null, 2, null);
        Result.Companion companion2 = Result.INSTANCE;
        return Result.m3022constructorimpl(c3556dd);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0033  */
    @Override // com.ironsource.InterfaceC3804r7
    public Object c() {
        C3850tf c3850tf;
        Integer num;
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(a(this.c));
        if (thM3025exceptionOrNullimpl != null) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(thM3025exceptionOrNullimpl));
        }
        if (!Intrinsics.areEqual(this.a, Boolean.TRUE) || (num = this.b) == null) {
            c3850tf = null;
        } else {
            int iIntValue = num.intValue();
            M3 m3 = this.c;
            if (m3 != null) {
                c3850tf = new C3850tf(iIntValue, m3);
            } else {
                c3850tf = null;
            }
        }
        Result.Companion companion2 = Result.INSTANCE;
        return Result.m3022constructorimpl(c3850tf);
    }

    public final Boolean d() {
        return this.a;
    }

    public final Integer e() {
        return this.b;
    }

    public final M3 f() {
        return this.c;
    }
}
