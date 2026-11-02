package com.unity3d.player;

import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes5.dex */
public final class S0 implements Runnable {
    public final /* synthetic */ UnityPlayerForGameActivity a;

    public S0(UnityPlayerForGameActivity unityPlayerForGameActivity) {
        this.a = unityPlayerForGameActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        UnityPlayerForGameActivity unityPlayerForGameActivity = this.a;
        com.unity3d.player.a.C c = unityPlayerForGameActivity.m_PersistentUnitySurface;
        FrameLayout frameLayout = unityPlayerForGameActivity.getFrameLayout();
        com.unity3d.player.a.B b = c.b;
        if (b != null && b.getParent() != null) {
            frameLayout.removeView(c.b);
        }
        this.a.m_PersistentUnitySurface.b = null;
    }
}
