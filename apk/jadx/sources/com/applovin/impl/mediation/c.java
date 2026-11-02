package com.applovin.impl.mediation;

import com.applovin.impl.g3;
import com.applovin.impl.i0;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.p;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    private final l a;
    private final p b;
    private final a c;
    private i0 d;

    public interface a {
        void a(g3 g3Var);
    }

    c(l lVar, a aVar) {
        this.a = lVar;
        this.b = lVar.Q();
        this.c = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(g3 g3Var) {
        if (p.a()) {
            this.b.a("AdHiddenCallbackTimeoutManager", "Timing out...");
        }
        this.c.a(g3Var);
    }

    public void a() {
        if (p.a()) {
            this.b.a("AdHiddenCallbackTimeoutManager", "Cancelling timeout");
        }
        i0 i0Var = this.d;
        if (i0Var != null) {
            i0Var.a();
            this.d = null;
        }
    }

    public void a(final g3 g3Var, long j) {
        if (p.a()) {
            this.b.a("AdHiddenCallbackTimeoutManager", "Scheduling in " + j + "ms...");
        }
        this.d = i0.a(j, this.a, new Runnable() { // from class: com.applovin.impl.mediation.c$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(g3Var);
            }
        });
    }
}
