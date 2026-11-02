package com.unity3d.player;

/* JADX INFO: renamed from: com.unity3d.player.f0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC4113f0 implements Runnable {
    public final /* synthetic */ UnityPlayer a;

    public RunnableC4113f0(UnityPlayer unityPlayer) {
        this.a = unityPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.getFrameLayout().removeView(this.a.m_SplashScreen);
        this.a.m_SplashScreen = null;
    }
}
