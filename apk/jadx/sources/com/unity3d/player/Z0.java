package com.unity3d.player;

/* JADX INFO: loaded from: classes5.dex */
public final class Z0 implements Runnable {
    public final /* synthetic */ c1 a;

    public Z0(c1 c1Var) {
        this.a = c1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.a.onPause();
    }
}
