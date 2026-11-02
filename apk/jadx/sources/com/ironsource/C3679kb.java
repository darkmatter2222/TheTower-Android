package com.ironsource;

import com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.kb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3679kb {
    private final C3715mb a;

    /* JADX INFO: renamed from: com.ironsource.kb$a */
    public static final class a {
        private C3679kb a = new C3679kb(null);

        public final a a(InterfaceC3751ob listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.a.a(listener);
            return this;
        }

        public final a a(String adUnitId) {
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
            this.a.a(adUnitId);
            return this;
        }

        public final C3679kb a() {
            return this.a;
        }

        public final a b(String placementName) {
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            this.a.b(placementName);
            return this;
        }
    }

    private C3679kb() {
        this.a = new C3715mb(C3950z7.a.a(), this);
    }

    public /* synthetic */ C3679kb(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        this.a.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str) {
        this.a.b(str);
    }

    public final void a() {
        this.a.f();
    }

    public final void a(InterfaceC3751ob interfaceC3751ob) {
        this.a.a(interfaceC3751ob);
    }

    public final String b() {
        return this.a.h();
    }

    public final String c() {
        return this.a.i();
    }

    public final String d() {
        return this.a.j();
    }

    public final InterfaceC3697lb.a e() {
        return this.a.k();
    }

    public final AdapterNativeAdViewBinder f() {
        return this.a.l();
    }

    public final String g() {
        return this.a.m();
    }

    public final void h() {
        this.a.n();
    }
}
