package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.e6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3567e6 implements InterfaceC3790qa {
    private final Xe a;
    private long b;

    public C3567e6(InterfaceC3747o7 applicationLifecycleService, Xe task) {
        Intrinsics.checkNotNullParameter(applicationLifecycleService, "applicationLifecycleService");
        Intrinsics.checkNotNullParameter(task, "task");
        this.a = task;
        applicationLifecycleService.a(this);
        f();
    }

    private final long e() {
        return System.currentTimeMillis() - this.b;
    }

    private final void f() {
        this.b = System.currentTimeMillis();
    }

    @Override // com.ironsource.InterfaceC3790qa
    public void a() {
        this.a.a(Long.valueOf(e()));
        this.a.run();
    }

    @Override // com.ironsource.InterfaceC3790qa
    public void b() {
        f();
    }

    @Override // com.ironsource.InterfaceC3790qa
    public void c() {
    }

    @Override // com.ironsource.InterfaceC3790qa
    public void d() {
    }
}
