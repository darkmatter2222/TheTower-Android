package com.unity3d.player;

/* JADX INFO: loaded from: classes5.dex */
public final class W0 implements Runnable {
    public final /* synthetic */ X0 a;

    public W0(X0 x0) {
        this.a = x0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c1 c1Var = this.a.a.h;
        VideoPlayer videoPlayer = c1Var.f;
        if (videoPlayer != null) {
            c1Var.a.removeViewFromPlayer(videoPlayer);
            c1Var.i = false;
            c1Var.f.destroyPlayer();
            c1Var.f = null;
            C4119i0 c4119i0 = c1Var.c;
            if (c4119i0 != null) {
                c4119i0.a();
            }
        }
        this.a.a.h.a.onResume();
    }
}
