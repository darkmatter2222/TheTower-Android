package com.appsflyer.internal;

import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class AFc1hSDK<T> {
    public final Function0<T> getRevenue;

    /* JADX WARN: Multi-variable type inference failed */
    public AFc1hSDK(Function0<? extends T> function0) {
        Intrinsics.checkNotNullParameter(function0, "");
        this.getRevenue = function0;
    }
}
