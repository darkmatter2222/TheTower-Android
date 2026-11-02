package com.applovin.impl.mediation;

import com.applovin.impl.g3;
import com.applovin.impl.sdk.l;
import com.applovin.impl.x2;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes2.dex */
public class b implements a.InterfaceC0018a, c.a {
    private final a a;
    private final c b;

    public b(l lVar) {
        this.a = new a(lVar);
        this.b = new c(lVar, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(g3 g3Var) {
        h hVarB;
        if (g3Var == null || (hVarB = g3Var.B()) == null || !g3Var.x().compareAndSet(false, true)) {
            return;
        }
        g3Var.w().set(true);
        x2.e(hVarB.c(), g3Var);
    }

    public void a() {
        this.b.a();
        this.a.a();
    }

    @Override // com.applovin.impl.mediation.c.a
    public void a(g3 g3Var) {
        c(g3Var);
    }

    @Override // com.applovin.impl.mediation.a.InterfaceC0018a
    public void b(final g3 g3Var) {
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.b$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.c(g3Var);
            }
        }, g3Var.p0());
    }

    public void e(g3 g3Var) {
        long jQ0 = g3Var.q0();
        if (jQ0 >= 0) {
            this.b.a(g3Var, jQ0);
        }
        if (g3Var.B0() || g3Var.C0()) {
            this.a.a(g3Var, this);
        }
    }
}
