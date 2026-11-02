package com.unity3d.player;

import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes5.dex */
public final class Y0 implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ int d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ long f;
    public final /* synthetic */ long g;
    public final /* synthetic */ c1 h;

    public Y0(c1 c1Var, String str, int i, int i2, int i3, boolean z, long j, long j2) {
        this.h = c1Var;
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = z;
        this.f = j;
        this.g = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c1 c1Var = this.h;
        if (c1Var.f != null) {
            com.unity3d.player.a.t.Log(5, "Video already playing");
            c1 c1Var2 = this.h;
            c1Var2.g = 2;
            c1Var2.d.release();
            return;
        }
        c1 c1Var3 = this.h;
        c1Var.f = new VideoPlayer(c1Var3.b, c1Var3.a, this.a, this.b, this.c, this.d, this.e, this.f, this.g, new X0(this));
        c1 c1Var4 = this.h;
        if (c1Var4.f != null) {
            FrameLayout frameLayout = c1Var4.a.getFrameLayout();
            frameLayout.bringToFront();
            frameLayout.addView(this.h.f);
        }
    }
}
