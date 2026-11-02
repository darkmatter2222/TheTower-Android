package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ku, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class CallableC2741ku implements Callable<Boolean> {
    public final BlockingQueue<Boolean> A00 = new LinkedBlockingQueue();
    public final /* synthetic */ C2746kz A01;

    public CallableC2741ku(C2746kz c2746kz, C2742kv c2742kv) {
        this.A01 = c2746kz;
        new Handler(Looper.getMainLooper()).post(new C1621Hl(this, c2746kz, c2742kv));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Boolean call() throws Exception {
        return this.A00.take();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03(C2742kv c2742kv) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        C2222cP c2222cPA06 = C2222cP.A06(this.A01.A04.A02());
        Uri uriA00 = AbstractC3011pP.A00(c2742kv.A08);
        long jA0Q = c2742kv.A00;
        if (jA0Q == -1) {
            jA0Q = C2863mv.A0Q(this.A01.A04);
        }
        c2222cPA06.A0I(uriA00, new C1620Hk(this, c2742kv, jA0Q, jCurrentTimeMillis), jA0Q);
    }
}
