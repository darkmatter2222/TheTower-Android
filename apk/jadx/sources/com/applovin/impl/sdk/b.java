package com.applovin.impl.sdk;

import com.applovin.impl.c5;
import com.applovin.impl.m7;
import com.applovin.impl.u1;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private final l a;
    private final WeakReference b;
    private final WeakReference c;
    private m7 d;

    private b(u1 u1Var, a.InterfaceC0025a interfaceC0025a, l lVar) {
        this.b = new WeakReference(u1Var);
        this.c = new WeakReference(interfaceC0025a);
        this.a = lVar;
    }

    public static b a(u1 u1Var, a.InterfaceC0025a interfaceC0025a, l lVar) {
        b bVar = new b(u1Var, interfaceC0025a, lVar);
        bVar.a(u1Var.getTimeToLiveMillis());
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        d();
        this.a.f().a(this);
    }

    public void a() {
        m7 m7Var = this.d;
        if (m7Var != null) {
            m7Var.a();
            this.d = null;
        }
    }

    public void a(long j) {
        a();
        if (((Boolean) this.a.a(c5.i1)).booleanValue() || !this.a.o0().isApplicationPaused()) {
            this.d = m7.a(j, this.a, new Runnable() { // from class: com.applovin.impl.sdk.b$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c();
                }
            });
        }
    }

    public u1 b() {
        return (u1) this.b.get();
    }

    public void d() {
        a();
        u1 u1VarB = b();
        if (u1VarB == null) {
            return;
        }
        u1VarB.setExpired();
        a.InterfaceC0025a interfaceC0025a = (a.InterfaceC0025a) this.c.get();
        if (interfaceC0025a == null) {
            return;
        }
        interfaceC0025a.onAdExpired(u1VarB);
    }
}
