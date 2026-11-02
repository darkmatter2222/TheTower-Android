package com.applovin.impl;

import android.app.Activity;
import androidx.webkit.UserAgentMetadata;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.ironsource.C3510b4;
import com.ironsource.R6;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class h6 extends n5 {
    private final com.applovin.impl.sdk.l g;

    public h6(com.applovin.impl.sdk.l lVar) {
        super("TaskInitializeSdk", lVar, true);
        this.g = lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, t2 t2Var, Exception exc) {
        if (exc != null) {
            this.g.E().a("license_validation", exc);
        }
        this.g.s0().a(new y6(this.g, t2Var, exc));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.g.U().a(this.g.e().b());
    }

    private void f() {
        if (this.g.U().c()) {
            return;
        }
        Activity activityW0 = this.g.w0();
        if (activityW0 != null) {
            this.g.U().a(activityW0);
        } else {
            this.g.E().a(h2.Q0, this.b + ":maybeInitializeAdapters()");
            this.g.s0().a(new x6(this.g, true, "initializeAdapters", new Runnable() { // from class: com.applovin.impl.h6$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.e();
                }
            }), i6.b.CORE, TimeUnit.SECONDS.toMillis(1L));
        }
    }

    private void g() {
        String str;
        boolean zC = this.g.q0().c();
        Map mapP = this.g.B().p();
        Map mapN = this.g.B().N();
        String strA = zC ? this.g.B().f().a() : "<Enable verbose logging to see the GAID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>";
        String str2 = zC ? mapP.get("idfv") + " (use this for test devices)" : "<Enable verbose logging to see the App Set ID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>";
        z2 z2Var = new z2();
        z2Var.a().a("=====AppLovin SDK=====");
        z2Var.a("===SDK Versions===").a("Version", AppLovinSdk.VERSION).a("Plugin Version", this.g.a(c5.W3)).a("Ad Review Version", j.b()).a("OM SDK Version", this.g.g0().c());
        z2Var.a("===Device Info===").a("OS", u7.d()).a(IronSourceConstants.TYPE_GAID, strA).a("App Set ID", str2).a("Model", mapP.get(R6.B)).a("Locale", mapP.get("locale")).a("Emulator", mapP.get("sim")).a(UserAgentMetadata.FORM_FACTOR_TABLET, mapP.get("is_tablet"));
        z2Var.a("===App Info===").a("Application ID", mapN.get(C3510b4.i.V)).a("Target SDK", mapN.get("target_sdk"));
        z2Var.a("===SDK Settings===").a("SDK Key", this.g.k0()).a("Mediation Provider", this.g.X()).a("TG", t7.a(this.g)).a("MD", this.g.a(c5.t)).a("Test Mode On", Boolean.valueOf(this.g.u0().c())).a("Verbose Logging On", Boolean.valueOf(zC));
        z2Var.a("===Privacy States===\nPlease review AppLovin MAX documentation to be compliant with regional privacy policies.").a(q0.a(a()));
        z2Var.a("===MAX Terms and Privcay Policy Flow===");
        v0 v0VarY = this.g.y();
        boolean zJ = v0VarY.j();
        z2Var.a("Enabled", Boolean.valueOf(zJ));
        if (zJ) {
            AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography = this.g.w().getConsentFlowUserGeography();
            AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeographyD = v0VarY.d();
            AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography2 = AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR;
            String str3 = "Other";
            if (consentFlowUserGeography == consentFlowUserGeography2) {
                str = "GDPR";
            } else {
                str = consentFlowUserGeography == AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER ? "Other" : "Unknown";
            }
            z2Var.a("Consent Flow Geography", str);
            if (u7.c(this.g)) {
                if (consentFlowUserGeographyD == consentFlowUserGeography2) {
                    str3 = "GDPR";
                } else if (consentFlowUserGeography != AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER) {
                    str3 = "None";
                }
                z2Var.a("Debug User Geography", str3);
            }
        }
        z2Var.a("Privacy Policy URI", v0VarY.f()).a("Terms of Service URI", v0VarY.h());
        z2Var.a("===CMP (CONSENT MANAGEMENT PLATFORM)===").a(this.g.t0().i());
        z2Var.a();
        com.applovin.impl.sdk.p.g("AppLovinSdk", z2Var.toString());
    }

    private void h() {
        Long l = (Long) this.g.a(c5.y);
        if (l.longValue() < 0) {
            return;
        }
        Boolean bool = (Boolean) f5.a(e5.i, Boolean.FALSE, com.applovin.impl.sdk.l.p());
        Boolean bool2 = (Boolean) this.g.a(c5.z);
        if (!bool.booleanValue() || bool2.booleanValue()) {
            this.g.P().a(l.longValue()).a(this.g.s0().a("lv_task"), new x4.b() { // from class: com.applovin.impl.h6$$ExternalSyntheticLambda1
                @Override // com.applovin.impl.x4.b
                public final void a(boolean z, Object obj, Object obj2) {
                    this.f$0.a(z, (t2) obj, (Exception) obj2);
                }
            });
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        String str = "succeeded";
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Initializing AppLovin SDK v" + AppLovinSdk.VERSION + "...");
        }
        try {
            this.g.I().b(a());
            this.g.I().e(a());
            this.g.s0().a((n5) new o5(this.g), i6.b.OTHER);
            this.g.B().d0();
            this.g.n0().c();
            this.g.z().l();
            if (u7.c(this.g)) {
                this.g.a();
            }
            this.g.a1();
            g();
            f();
            this.g.a(true);
            h();
            this.g.h0().b();
            this.g.l().maybeFireAppKilledWhilePlayingAdPostback();
            if (((Boolean) this.g.a(c5.M2)).booleanValue()) {
                this.g.Z().maybeFireAppKilledWhilePlayingMediatedAdPostback();
            }
            this.g.G().maybeTrackAppOpenEvent();
            this.g.A().a();
            if (((Boolean) this.g.a(c5.Z2)).booleanValue()) {
                this.g.A0().b();
            }
            if (((Boolean) this.g.a(c5.e1)).booleanValue()) {
                this.g.i().b();
            } else {
                this.g.i().g();
            }
            if (this.g.W().g() || (((Boolean) this.g.a(v3.K7)).booleanValue() && u7.c(this.g) && this.g.J0())) {
                this.g.W().e();
            }
            this.g.g0().i();
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "AppLovin SDK " + AppLovinSdk.VERSION + " initialization " + (this.g.E0() ? "succeeded" : "failed") + " in " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
            }
        } catch (Throwable th) {
            try {
                com.applovin.impl.sdk.p.c("AppLovinSdk", "Failed to initialize SDK!", th);
                this.g.a(false);
                a(th);
                if (((Boolean) this.g.a(c5.i)).booleanValue()) {
                    this.g.h0().a();
                }
                if (((Boolean) this.g.a(c5.h)).booleanValue()) {
                    this.g.W0();
                }
            } finally {
                this.g.g0().i();
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.a(this.b, "AppLovin SDK " + AppLovinSdk.VERSION + " initialization " + (this.g.E0() ? "succeeded" : "failed") + " in " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
                }
            }
        }
    }
}
