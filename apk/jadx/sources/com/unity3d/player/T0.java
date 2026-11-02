package com.unity3d.player;

/* JADX INFO: loaded from: classes5.dex */
public final class T0 implements Runnable {
    public final /* synthetic */ VideoPlayer a;

    public T0(VideoPlayer videoPlayer) {
        this.a = videoPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.destroyPlayer();
        this.a.changeState(3);
    }
}
