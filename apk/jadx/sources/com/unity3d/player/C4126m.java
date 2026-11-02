package com.unity3d.player;

import android.graphics.SurfaceTexture;

/* JADX INFO: renamed from: com.unity3d.player.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4126m implements SurfaceTexture.OnFrameAvailableListener {
    public final /* synthetic */ C4130o a;

    public C4126m(C4130o c4130o) {
        this.a = c4130o;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        ((Camera2Wrapper) this.a.a).a(surfaceTexture);
    }
}
