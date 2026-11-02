package com.unity3d.player;

/* JADX INFO: renamed from: com.unity3d.player.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC4152z implements Runnable {
    public final /* synthetic */ B a;

    public RunnableC4152z(B b) {
        this.a = b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.c.requestFocus();
        this.a.c();
    }
}
