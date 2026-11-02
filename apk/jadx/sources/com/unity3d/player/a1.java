package com.unity3d.player;

/* JADX INFO: loaded from: classes5.dex */
public final class a1 implements Runnable {
    public final /* synthetic */ c1 a;

    public a1(c1 c1Var) {
        this.a = c1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c1 c1Var = this.a;
        VideoPlayer videoPlayer = c1Var.f;
        if (videoPlayer != null) {
            c1Var.a.addViewToPlayer(videoPlayer, true);
            c1 c1Var2 = this.a;
            c1Var2.i = true;
            c1Var2.f.requestFocus();
        }
    }
}
