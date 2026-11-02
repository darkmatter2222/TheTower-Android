package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.yg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public interface InterfaceC3941yg {
    void a() throws C3885ve;

    default void a(boolean z, Function0<? extends IronSourceError> lazyError) {
        Intrinsics.checkNotNullParameter(lazyError, "lazyError");
        if (!z) {
            throw new C3885ve(lazyError.invoke());
        }
    }
}
