package com.unity3d.player;

import com.unity3d.player.a.AbstractC4087c;

/* JADX INFO: renamed from: com.unity3d.player.b0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC4105b0 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ UnityPlayer b;

    public RunnableC4105b0(UnityPlayer unityPlayer, int i) {
        this.b = unityPlayer;
        this.a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            UnityPlayer unityPlayer = this.b;
            AbstractC4087c.a(unityPlayer.mActivity, unityPlayer.getFrameLayout(), this.a);
        } catch (Exception e) {
            com.unity3d.player.a.t.Log(6, "Exception when opening Activity Indicator " + e);
        }
    }
}
