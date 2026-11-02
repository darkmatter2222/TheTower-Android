package com.ironsource;

import java.util.LinkedHashMap;
import java.util.Map;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ed, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3574ed implements InterfaceC3842t7, InterfaceC3842t7.a {
    private final InterfaceC3839t4 a;
    private final N7 b;
    private final Map<String, C3556dd> c;

    public C3574ed(InterfaceC3839t4 currentTimeProvider, N7 repository) {
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.a = currentTimeProvider;
        this.b = repository;
        this.c = new LinkedHashMap();
    }

    private final boolean a(C3556dd c3556dd, String str) {
        Long lA = this.b.a(str);
        return lA != null && this.a.a() - lA.longValue() < c3556dd.a();
    }

    @Override // com.ironsource.InterfaceC3842t7
    public L3 a(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        C3556dd c3556dd = this.c.get(identifier);
        if (c3556dd != null && a(c3556dd, identifier)) {
            return new L3(true, N3.Pacing);
        }
        return new L3(false, null, 2, null);
    }

    @Override // com.ironsource.InterfaceC3842t7.a
    public Object a(String identifier, N3 cappingType, InterfaceC3804r7 cappingConfig) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(cappingType, "cappingType");
        Intrinsics.checkNotNullParameter(cappingConfig, "cappingConfig");
        Object objB = cappingConfig.b();
        if (Result.m3029isSuccessimpl(objB)) {
            C3556dd c3556dd = (C3556dd) objB;
            if (c3556dd != null) {
                this.c.put(identifier, c3556dd);
            }
            Result.Companion companion = Result.INSTANCE;
            return Result.m3022constructorimpl(Unit.INSTANCE);
        }
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objB);
        if (thM3025exceptionOrNullimpl != null) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(thM3025exceptionOrNullimpl));
        }
        Result.Companion companion3 = Result.INSTANCE;
        return Result.m3022constructorimpl(Unit.INSTANCE);
    }

    public final Map<String, C3556dd> a() {
        return this.c;
    }

    @Override // com.ironsource.InterfaceC3842t7.a
    public void b(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        if (this.c.get(identifier) == null) {
            return;
        }
        this.b.a(this.a.a(), identifier);
    }
}
