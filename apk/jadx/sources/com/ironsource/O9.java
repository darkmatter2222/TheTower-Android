package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class O9 implements InterfaceC3880v9 {
    private final C3525c1 a;
    private final L9 b;

    public O9(C3525c1 adapterConfig, L9 adFormatConfigurations) {
        Intrinsics.checkNotNullParameter(adapterConfig, "adapterConfig");
        Intrinsics.checkNotNullParameter(adFormatConfigurations, "adFormatConfigurations");
        this.a = adapterConfig;
        this.b = adFormatConfigurations;
    }

    @Override // com.ironsource.InterfaceC3543d1
    public boolean a() {
        return true;
    }

    @Override // com.ironsource.InterfaceC3852u
    public long b() {
        return this.b.e();
    }

    @Override // com.ironsource.InterfaceC3543d1
    public String c() {
        String strF = this.a.f();
        Intrinsics.checkNotNullExpressionValue(strF, "getProviderName(...)");
        return strF;
    }

    @Override // com.ironsource.InterfaceC3543d1
    public boolean d() {
        return !this.a.j();
    }

    @Override // com.ironsource.InterfaceC3543d1
    public String e() {
        String strA = this.a.a();
        Intrinsics.checkNotNullExpressionValue(strA, "getAdSourceNameForEvents(...)");
        return strA;
    }

    @Override // com.ironsource.InterfaceC3543d1
    public EnumC3916x9 f() {
        return EnumC3916x9.b.a(this.a.d());
    }
}
