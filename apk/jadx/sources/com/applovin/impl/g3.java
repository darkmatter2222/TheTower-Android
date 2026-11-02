package com.applovin.impl;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class g3 extends c3 implements u1 {
    private final Bundle A;
    private final AtomicReference B;
    private final AtomicBoolean C;
    private final AtomicBoolean D;
    private final AtomicBoolean E;
    private boolean F;
    private String G;
    private boolean H;

    public g3(e3 e3Var, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.l lVar) {
        super(e3Var, jSONObject, jSONObject2, null, lVar);
        this.A = new Bundle();
        this.D = new AtomicBoolean();
        this.E = new AtomicBoolean();
        this.B = new AtomicReference();
        this.C = new AtomicBoolean();
    }

    private g3(g3 g3Var, com.applovin.impl.mediation.h hVar) {
        super(g3Var.Q(), g3Var.a(), g3Var.g(), hVar, g3Var.a);
        this.A = new Bundle();
        this.D = new AtomicBoolean();
        this.E = new AtomicBoolean();
        this.B = g3Var.B;
        this.C = g3Var.C;
        this.H = g3Var.H;
    }

    private long n0() {
        long jA = a("ad_expiration_ms", -1L);
        return jA < 0 ? b("ad_expiration_ms", ((Long) this.a.a(v3.h8)).longValue()) : jA;
    }

    public boolean A0() {
        return this.C.get();
    }

    public boolean B0() {
        if (a("schedule_ad_hidden_on_ad_dismiss", Boolean.FALSE).booleanValue()) {
            return true;
        }
        return b("schedule_ad_hidden_on_ad_dismiss", (Boolean) this.a.a(v3.n8)).booleanValue();
    }

    public boolean C0() {
        if (a("schedule_ad_hidden_on_single_task_app_relaunch", Boolean.FALSE).booleanValue()) {
            return true;
        }
        return b("schedule_ad_hidden_on_single_task_app_relaunch", (Boolean) this.a.a(v3.o8)).booleanValue();
    }

    public boolean D0() {
        return a("suaaode", (Boolean) this.a.a(v3.T8)).booleanValue();
    }

    public boolean E0() {
        return a("susaode", (Boolean) this.a.a(v3.a8)).booleanValue();
    }

    @Override // com.applovin.impl.c3
    public c3 a(com.applovin.impl.mediation.h hVar) {
        return new g3(this, hVar);
    }

    @Override // com.applovin.impl.c3
    public void a(Bundle bundle) {
        Bundle bundle2;
        super.a(bundle);
        if (bundle == null || (bundle2 = bundle.getBundle("applovin_ad_view_info")) == null) {
            return;
        }
        this.A.putBundle("applovin_ad_view_info", bundle2);
    }

    public void a(t4 t4Var) {
        this.B.set(t4Var);
    }

    public void a(boolean z) {
        this.H = z;
    }

    @Override // com.applovin.impl.u1
    public long getTimeToLiveMillis() {
        return n0() - (SystemClock.elapsedRealtime() - L());
    }

    public void j(String str) {
        this.G = str;
    }

    public void m0() {
        this.C.set(true);
    }

    public long o0() {
        return a("ahdm", ((Long) this.a.a(v3.b8)).longValue());
    }

    public long p0() {
        long jA = a("ad_hidden_on_ad_dismiss_callback_delay_ms", -1L);
        return jA >= 0 ? jA : b("ad_hidden_on_ad_dismiss_callback_delay_ms", ((Long) this.a.a(v3.p8)).longValue());
    }

    public long q0() {
        long jA = a("ad_hidden_timeout_ms", -1L);
        return jA >= 0 ? jA : b("ad_hidden_timeout_ms", ((Long) this.a.a(v3.m8)).longValue());
    }

    public t4 r0() {
        return (t4) this.B.getAndSet(null);
    }

    public long s0() {
        if (L() > 0) {
            return SystemClock.elapsedRealtime() - L();
        }
        return -1L;
    }

    @Override // com.applovin.impl.u1
    public void setExpired() {
        this.F = true;
    }

    public Bundle t0() {
        return this.A;
    }

    public long u0() {
        long jA = a("fullscreen_display_delay_ms", -1L);
        return jA >= 0 ? jA : ((Long) this.a.a(v3.Z7)).longValue();
    }

    public String v0() {
        return b("mcode", "");
    }

    public AtomicBoolean w0() {
        return this.D;
    }

    public String x0() {
        return this.G;
    }

    public AtomicBoolean y0() {
        return this.E;
    }

    public boolean z0() {
        return this.H;
    }
}
