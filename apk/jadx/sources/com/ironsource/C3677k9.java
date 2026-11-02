package com.ironsource;

import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.k9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3677k9 {
    private final InterfaceC3839t4 a;
    private final Rb.a b;
    private Long c;
    private Long d;
    private Rb e;
    private C3659j9 f;

    /* JADX WARN: Multi-variable type inference failed */
    public C3677k9() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public C3677k9(InterfaceC3839t4 currentTimeProvider, Rb.a memoryInfoProvider) {
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        Intrinsics.checkNotNullParameter(memoryInfoProvider, "memoryInfoProvider");
        this.a = currentTimeProvider;
        this.b = memoryInfoProvider;
    }

    public /* synthetic */ C3677k9(InterfaceC3839t4 interfaceC3839t4, Rb.a aVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new InterfaceC3839t4.a() : interfaceC3839t4, (i & 2) != 0 ? new Rb.a.C0100a() : aVar);
    }

    public final C3659j9 a() {
        return this.f;
    }

    public final void a(String serverResponse) {
        Intrinsics.checkNotNullParameter(serverResponse, "serverResponse");
        this.c = Long.valueOf(serverResponse.length());
        this.e = this.b.get();
        this.d = Long.valueOf(this.a.a());
    }

    public final C3659j9 b() {
        Long l = this.d;
        if (l != null) {
            long jLongValue = l.longValue();
            Long l2 = this.c;
            if (l2 != null) {
                long jLongValue2 = l2.longValue();
                Rb rb = this.e;
                if (rb == null) {
                    return null;
                }
                long jA = this.a.a();
                Rb rb2 = this.b.get();
                C3659j9 c3659j9 = new C3659j9(jA - jLongValue, new C3659j9.a(Math.max(0L, rb2.d() - rb.d()), Math.max(0L, rb2.e() - rb.e()), Math.max(0L, rb2.f() - rb.f())), jLongValue2 / ((long) 1024));
                this.f = c3659j9;
                return c3659j9;
            }
        }
        return null;
    }
}
