package com.unity3d.player;

/* JADX INFO: loaded from: classes5.dex */
public final class b1 implements Runnable {
    public final /* synthetic */ c1 a;

    public b1(c1 c1Var) {
        this.a = c1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c1 c1Var = this.a;
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
        this.a.a.onResume();
    }
}
