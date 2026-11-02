package com.unity3d.player;

import android.view.SurfaceHolder;
import android.widget.FrameLayout;
import com.unity3d.player.a.C4091g;

/* JADX INFO: loaded from: classes5.dex */
public final class T implements SurfaceHolder.Callback {
    public final /* synthetic */ U a;

    public T(U u) {
        this.a = u;
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.a.b.updateGLDisplay(0, surfaceHolder.getSurface());
        this.a.b.sendSurfaceChangedEvent();
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.a.b.updateGLDisplay(0, surfaceHolder.getSurface());
        U u = this.a;
        com.unity3d.player.a.C c = u.c;
        FrameLayout frameLayout = u.b.getFrameLayout();
        com.unity3d.player.a.B b = c.b;
        if (b == null || b.getParent() != null) {
            return;
        }
        frameLayout.addView(c.b);
        frameLayout.bringChildToFront(c.b);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        U u = this.a;
        com.unity3d.player.a.C c = u.c;
        C4091g c4091g = u.a;
        if (c.a != null) {
            if (c.b == null) {
                c.b = new com.unity3d.player.a.B(c, c.a);
            }
            c.b.a(c4091g);
        }
        this.a.b.updateGLDisplay(0, null);
    }
}
