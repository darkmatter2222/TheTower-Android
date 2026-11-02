package com.unity3d.player;

/* JADX INFO: renamed from: com.unity3d.player.a0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC4103a0 implements Runnable {
    public final /* synthetic */ UnityPlayer a;

    public RunnableC4103a0(UnityPlayer unityPlayer) {
        this.a = unityPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        UnityPlayer unityPlayer = this.a;
        d1.a(unityPlayer.mActivity, unityPlayer.getFrameLayout());
        this.a.dispatchFrameLayoutPadding();
    }
}
