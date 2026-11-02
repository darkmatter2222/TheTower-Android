package com.unity3d.player;

/* JADX INFO: loaded from: classes5.dex */
public final class V0 implements Runnable {
    public final VideoPlayer a;
    public boolean b = false;

    public V0(VideoPlayer videoPlayer) {
        this.a = videoPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Thread.sleep(5000L);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
        if (this.b) {
            return;
        }
        if (VideoPlayer.LOG) {
            VideoPlayer.Log("Stopping the video player due to timeout.");
        }
        this.a.cancelOnPrepare();
    }
}
