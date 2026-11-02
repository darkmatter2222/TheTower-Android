package com.tapjoy.internal;

import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class bw<Result> implements Runnable {
    private final bu<Result> a;

    @Nullable
    private final bz<Result> b;

    protected bw(bu<Result> buVar, @Nullable bz<Result> bzVar) {
        this.a = buVar;
        this.b = bzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Result resultF = this.a.f();
            bz<Result> bzVar = this.b;
            if (bzVar == null || (bzVar instanceof ca)) {
                return;
            }
            bzVar.a(this.a, resultF);
        } catch (Throwable unused) {
            bz<Result> bzVar2 = this.b;
            if (bzVar2 == null || (bzVar2 instanceof ca)) {
                return;
            }
            bzVar2.a(this.a);
        }
    }
}
