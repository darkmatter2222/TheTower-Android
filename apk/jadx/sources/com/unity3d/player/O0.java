package com.unity3d.player;

import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes5.dex */
public final class O0 implements SurfaceHolder.Callback {
    public final /* synthetic */ UnityPlayerForGameActivity a;

    public O0(UnityPlayerForGameActivity unityPlayerForGameActivity) {
        this.a = unityPlayerForGameActivity;
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        UnityPlayerForGameActivity unityPlayerForGameActivity = this.a;
        com.unity3d.player.a.C c = unityPlayerForGameActivity.m_PersistentUnitySurface;
        FrameLayout frameLayout = unityPlayerForGameActivity.getFrameLayout();
        com.unity3d.player.a.B b = c.b;
        if (b == null || b.getParent() != null) {
            return;
        }
        frameLayout.addView(c.b);
        frameLayout.bringChildToFront(c.b);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        UnityPlayerForGameActivity unityPlayerForGameActivity = this.a;
        com.unity3d.player.a.C c = unityPlayerForGameActivity.m_PersistentUnitySurface;
        SurfaceView surfaceView = unityPlayerForGameActivity.m_SurfaceView;
        if (c.a != null) {
            if (c.b == null) {
                c.b = new com.unity3d.player.a.B(c, c.a);
            }
            c.b.a(surfaceView);
        }
    }
}
