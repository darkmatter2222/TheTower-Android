package com.applovin.impl;

import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
class q6 extends n5 {
    private final z7 g;
    private final AppLovinAdLoadListener h;

    q6(z7 z7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.l lVar) {
        super("TaskRenderVastAd", lVar);
        this.h = appLovinAdLoadListener;
        this.g = z7Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Rendering VAST ad...");
        }
        int size = this.g.a().size();
        HashSet hashSet = new HashSet(size);
        HashSet hashSet2 = new HashSet(size);
        String strA = "";
        e8 e8VarA = null;
        i8 i8VarA = null;
        y7 y7VarA = null;
        x7 x7VarA = null;
        String strA2 = "";
        for (u8 u8Var : this.g.a()) {
            u8 u8VarB = u8Var.b(h8.b(u8Var) ? "Wrapper" : "InLine");
            if (u8VarB != null) {
                u8 u8VarB2 = u8VarB.b("AdSystem");
                if (u8VarB2 != null) {
                    e8VarA = e8.a(u8VarB2, e8VarA, this.a);
                }
                strA = h8.a(u8VarB, "AdTitle", strA);
                strA2 = h8.a(u8VarB, "Description", strA2);
                h8.a(u8VarB.a("Impression"), hashSet, this.g, this.a);
                u8 u8VarC = u8VarB.c("ViewableImpression");
                if (u8VarC != null) {
                    h8.a(u8VarC.a("Viewable"), hashSet, this.g, this.a);
                }
                u8 u8VarB3 = u8VarB.b("AdVerifications");
                if (u8VarB3 != null) {
                    x7VarA = x7.a(u8VarB3, x7VarA, this.g, this.a);
                }
                h8.a(u8VarB.a("Error"), hashSet2, this.g, this.a);
                u8 u8VarC2 = u8VarB.c("Creatives");
                if (u8VarC2 != null) {
                    for (u8 u8Var2 : u8VarC2.b()) {
                        u8 u8VarC3 = u8Var2.c("Linear");
                        if (u8VarC3 != null) {
                            i8VarA = i8.a(u8VarC3, i8VarA, this.g, this.a);
                        } else {
                            u8 u8VarB4 = u8Var2.b("CompanionAds");
                            if (u8VarB4 != null) {
                                u8 u8VarB5 = u8VarB4.b("Companion");
                                if (u8VarB5 != null) {
                                    y7VarA = y7.a(u8VarB5, y7VarA, this.g, this.a);
                                }
                            } else if (com.applovin.impl.sdk.p.a()) {
                                this.c.b(this.b, "Received and will skip rendering for an unidentified creative: " + u8Var2);
                            }
                        }
                    }
                }
            } else if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Did not find wrapper or inline response for node: " + u8Var);
            }
        }
        v7 v7VarA = new v7.b().a(this.a).a(this.g.b()).b(this.g.e()).a(this.g.c()).b(strA).a(strA2).a(e8VarA).a(i8VarA).a(y7VarA).a(x7VarA).b(hashSet).a(x7VarA).a(hashSet2).a();
        a8 a8VarC = h8.c(v7VarA);
        if (a8VarC != null) {
            h8.a(this.g, this.h, a8VarC, -6, this.a);
            return;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Finished rendering VAST ad: " + v7VarA);
        }
        v7VarA.getAdEventTracker().e();
        this.a.s0().a((n5) new s5(v7VarA, this.a, this.h), i6.b.CACHING);
    }
}
