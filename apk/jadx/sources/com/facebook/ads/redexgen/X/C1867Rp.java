package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.exoplayer.drm.DrmSessionEventListener;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1867Rp {
    public final int A00;
    public final C1862Rk A01;
    public final CopyOnWriteArrayList<DrmSessionEventListener.EventDispatcher.ListenerAndHandler> A02;

    public C1867Rp() {
        this(new CopyOnWriteArrayList(), 0, null);
    }

    public C1867Rp(CopyOnWriteArrayList<DrmSessionEventListener.EventDispatcher.ListenerAndHandler> copyOnWriteArrayList, int i, C1862Rk c1862Rk) {
        this.A02 = copyOnWriteArrayList;
        this.A00 = i;
        this.A01 = c1862Rk;
    }

    public final C1867Rp A00(int i, C1862Rk c1862Rk) {
        return new C1867Rp(this.A02, i, c1862Rk);
    }
}
