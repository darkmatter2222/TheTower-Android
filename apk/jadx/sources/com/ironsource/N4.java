package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class N4 extends Sg {
    private final InterfaceC3537cd d;
    private final Mg e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N4(T0 adTools, InterfaceC3537cd outcomeReporter, Mg waterfallInstances) {
        super(adTools, outcomeReporter);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(outcomeReporter, "outcomeReporter");
        Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
        this.d = outcomeReporter;
        this.e = waterfallInstances;
    }

    @Override // com.ironsource.Sg
    public void a() {
    }

    @Override // com.ironsource.Sg
    public void a(A instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    @Override // com.ironsource.Sg
    public void b(A instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.d.a(this.e.b(), instance);
    }

    @Override // com.ironsource.Sg
    public void c(A instanceToShow) {
        Intrinsics.checkNotNullParameter(instanceToShow, "instanceToShow");
    }
}
