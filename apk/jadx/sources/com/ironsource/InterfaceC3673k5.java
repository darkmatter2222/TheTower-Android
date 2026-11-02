package com.ironsource;

import com.ironsource.sdk.utils.IronSourceStorageUtils;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: com.ironsource.k5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public interface InterfaceC3673k5<T> extends Vc {
    void b(D8 d8);

    String c();

    InterfaceC3530c6 d();

    Function1<Result<? extends T>, Unit> i();

    default boolean j() {
        return k().exists();
    }

    D8 k();

    C7 l();

    default void m() {
        l().a(this);
        if (k().exists()) {
            IronSourceStorageUtils.deleteFile(k());
        }
        try {
            l().a(k(), d().value(), 5, 5);
        } catch (Exception e) {
            C3801r4.d().a(e);
            Function1<Result<? extends T>, Unit> function1I = i();
            Result.Companion companion = Result.INSTANCE;
            function1I.invoke(Result.m3021boximpl(Result.m3022constructorimpl(ResultKt.createFailure(e))));
        }
    }
}
