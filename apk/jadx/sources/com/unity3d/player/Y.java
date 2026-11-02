package com.unity3d.player;

/* JADX INFO: loaded from: classes5.dex */
public final class Y implements Runnable {
    public final /* synthetic */ UnityPlayer a;

    public Y(UnityPlayer unityPlayer) {
        this.a = unityPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.setupUnityToBePaused();
        this.a.windowFocusChanged(false);
        this.a.m_UnityPlayerLifecycleEvents.onUnityPlayerUnloaded();
    }
}
