package com.unity3d.player;

/* JADX INFO: renamed from: com.unity3d.player.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC4148x implements Runnable {
    public final /* synthetic */ DialogC4150y a;

    public RunnableC4148x(DialogC4150y dialogC4150y) {
        this.a = dialogC4150y;
    }

    @Override // java.lang.Runnable
    public final void run() {
        D d = this.a.d;
        d.a(d.b(), true);
    }
}
