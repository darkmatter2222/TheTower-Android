package com.unity3d.player;

/* JADX INFO: renamed from: com.unity3d.player.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC4117h0 implements Runnable {
    public final /* synthetic */ String a;

    public RunnableC4117h0(String str) {
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        UnityPlayer.nativeSetLaunchURL(this.a);
    }
}
