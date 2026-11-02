package com.applovin.impl;

import android.app.Activity;
import android.text.TextUtils;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class p5 extends n5 {
    private final List g;
    private final Activity h;

    public p5(List list, Activity activity, com.applovin.impl.sdk.l lVar) {
        super("TaskAutoInitAdapters", lVar, true);
        this.g = list;
        this.h = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(o3 o3Var) {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Auto-initing adapter: " + o3Var);
        }
        this.a.U().a(o3Var, this.h);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.g.size() > 0) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Auto-initing " + this.g.size() + " adapters" + (this.a.u0().c() ? " in test mode" : "") + "...");
            }
            if (TextUtils.isEmpty(this.a.X())) {
                this.a.R0();
            } else if (!this.a.J0()) {
                com.applovin.impl.sdk.p.h("AppLovinSdk", "Auto-initing adapters for non-MAX mediation provider: " + this.a.X());
            }
            if (this.h == null) {
                com.applovin.impl.sdk.p.h("AppLovinSdk", "\n**********\nAttempting to init 3rd-party SDKs without an Activity instance.\n**********\n");
            }
            for (final o3 o3Var : this.g) {
                if (o3Var.s()) {
                    this.a.s0().a(new Runnable() { // from class: com.applovin.impl.p5$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.a(o3Var);
                        }
                    }, i6.b.MEDIATION);
                } else {
                    this.a.Q();
                    if (com.applovin.impl.sdk.p.a()) {
                        this.a.Q().a(this.b, "Skipping eager auto-init for adapter " + o3Var);
                    }
                }
            }
        }
    }
}
