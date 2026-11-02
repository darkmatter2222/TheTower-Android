package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public interface L0 {
    default void a() {
    }

    void a(C3853u0 c3853u0);

    void b(IronSourceError ironSourceError);

    default void b(C3853u0 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
    }
}
