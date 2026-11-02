package com.unity3d.player;

/* JADX INFO: loaded from: classes5.dex */
public final class Z implements Runnable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ UnityPlayer b;

    public Z(UnityPlayer unityPlayer, boolean z) {
        this.b = unityPlayer;
        this.a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        UnityPlayer unityPlayer = this.b;
        d1.a(unityPlayer.mActivity, unityPlayer.getFrameLayout(), this.a, DisplayCutoutSupport.getDisplayCutoutSupport(this.b.mActivity));
        this.b.dispatchFrameLayoutPadding();
    }
}
