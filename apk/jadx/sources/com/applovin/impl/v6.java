package com.applovin.impl;

import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;

/* JADX INFO: loaded from: classes2.dex */
class v6 extends n5 {
    private final z7 g;
    private final AppLovinAdLoadListener h;

    class a extends r6 {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.l lVar) {
            super(aVar, lVar);
        }

        @Override // com.applovin.impl.r6, com.applovin.impl.r0.e
        public void a(String str, int i, String str2, u8 u8Var) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Unable to resolve VAST wrapper. Server returned " + i);
            }
            v6.this.a(i);
        }

        @Override // com.applovin.impl.r6, com.applovin.impl.r0.e
        public void a(String str, u8 u8Var, int i) {
            this.a.s0().a(n6.a(u8Var, v6.this.g, v6.this.h, v6.this.a));
        }
    }

    v6(z7 z7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.l lVar) {
        super("TaskResolveVastWrapper", lVar);
        this.h = appLovinAdLoadListener;
        this.g = z7Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.b(this.b, "Failed to resolve VAST wrapper due to error code " + i);
        }
        if (i != -1009) {
            h8.a(this.g, this.h, i == -1001 ? a8.TIMED_OUT : a8.GENERAL_WRAPPER_ERROR, i, this.a);
            return;
        }
        AppLovinAdLoadListener appLovinAdLoadListener = this.h;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.failedToReceiveAd(i);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        String strA = h8.a(this.g);
        if (!StringUtils.isValidString(strA)) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Resolving VAST failed. Could not find resolution URL");
            }
            a(-1);
            return;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Resolving VAST ad with depth " + this.g.d() + " at " + strA);
        }
        try {
            this.a.s0().a(new a(com.applovin.impl.sdk.network.a.a(this.a).b(strA).c("GET").a(u8.f).a(((Integer) this.a.a(c5.h5)).intValue()).c(((Integer) this.a.a(c5.i5)).intValue()).a(false).a(), this.a));
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Unable to resolve VAST wrapper", th);
            }
            a(-1);
        }
    }
}
