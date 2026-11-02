package com.applovin.impl;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class o2 {
    private static boolean a;

    public static void a() {
        a = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.sdk.l lVar) {
        if (a) {
            return;
        }
        lVar.E().a(h2.h1, "no_ads_loaded");
    }

    public static void b(final com.applovin.impl.sdk.l lVar) {
        Long l = (Long) lVar.a(v3.E8);
        if (l.longValue() <= 0) {
            return;
        }
        lVar.s0().a(new x6(lVar, true, "submitIntegrationErrorReport", new Runnable() { // from class: com.applovin.impl.o2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                o2.a(lVar);
            }
        }), i6.b.OTHER, TimeUnit.SECONDS.toMillis(l.longValue()));
    }
}
