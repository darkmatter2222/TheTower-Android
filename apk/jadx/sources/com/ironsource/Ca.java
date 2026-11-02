package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Ca {
    private final C3758p0 a;
    private String b;
    private boolean c;

    public Ca(C3758p0 adTools) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        this.a = adTools;
        this.b = "";
    }

    public final C3758p0 a() {
        return this.a;
    }

    public final void a(C3597g0 adProperties) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        this.a.f().a(new C0(this.a, adProperties, null, 4, null));
    }

    public final void a(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        this.a.a(runnable);
    }

    public final void a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.b = str;
    }

    protected final void a(boolean z) {
        this.c = z;
    }

    public final String b() {
        return this.b;
    }

    public final void b(Runnable callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.a.b(callback);
    }

    protected final boolean c() {
        return this.c;
    }

    public abstract boolean d();
}
