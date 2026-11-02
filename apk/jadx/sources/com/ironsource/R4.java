package com.ironsource;

import java.util.concurrent.ConcurrentHashMap;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class R4 implements InterfaceC3842t7, InterfaceC3842t7.a {
    private final ConcurrentHashMap<String, O4> a = new ConcurrentHashMap<>();

    @Override // com.ironsource.InterfaceC3842t7
    public L3 a(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        O4 o4 = this.a.get(identifier);
        return (o4 == null || o4.a()) ? new L3(false, null, 2, null) : new L3(true, N3.Delivery);
    }

    @Override // com.ironsource.InterfaceC3842t7.a
    public Object a(String identifier, N3 cappingType, InterfaceC3804r7 cappingConfig) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(cappingType, "cappingType");
        Intrinsics.checkNotNullParameter(cappingConfig, "cappingConfig");
        Object objA = cappingConfig.a();
        if (Result.m3029isSuccessimpl(objA)) {
            O4 o4 = (O4) objA;
            if (o4 != null) {
                this.a.put(identifier, o4);
            }
            Result.Companion companion = Result.INSTANCE;
            return Result.m3022constructorimpl(Unit.INSTANCE);
        }
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objA);
        if (thM3025exceptionOrNullimpl != null) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(thM3025exceptionOrNullimpl));
        }
        Result.Companion companion3 = Result.INSTANCE;
        return Result.m3022constructorimpl(Unit.INSTANCE);
    }

    @Override // com.ironsource.InterfaceC3842t7.a
    public void b(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
    }
}
