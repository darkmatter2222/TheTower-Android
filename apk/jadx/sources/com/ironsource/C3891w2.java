package com.ironsource;

import org.json.JSONObject;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.w2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3891w2 implements InterfaceC3909x2 {
    private final String a;
    private final Jd b;

    public C3891w2(String encryptedAuctionResponse, Jd providerName) {
        Intrinsics.checkNotNullParameter(encryptedAuctionResponse, "encryptedAuctionResponse");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        this.a = encryptedAuctionResponse;
        this.b = providerName;
    }

    @Override // com.ironsource.InterfaceC3909x2
    public Object a() {
        Object objM3022constructorimpl;
        String strC = C3763p5.b().c();
        Intrinsics.checkNotNullExpressionValue(strC, "getMediationKey(...)");
        C3917xa c3917xa = new C3917xa(new J4(this.a, strC));
        try {
            Result.Companion companion = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(c3917xa.a());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
        if (thM3025exceptionOrNullimpl == null) {
            return C3855u2.h.a((JSONObject) objM3022constructorimpl, this.b.value());
        }
        C3801r4.d().a(thM3025exceptionOrNullimpl);
        if (thM3025exceptionOrNullimpl instanceof IllegalArgumentException) {
            Result.Companion companion3 = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(new C3587f8(C3948z5.a.d())));
        }
        Result.Companion companion4 = Result.INSTANCE;
        return Result.m3022constructorimpl(ResultKt.createFailure(new C3587f8(C3948z5.a.h())));
    }
}
