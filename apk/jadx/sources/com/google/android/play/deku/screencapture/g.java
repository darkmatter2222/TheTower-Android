package com.google.android.play.deku.screencapture;

import android.view.SurfaceControl;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    private final NativeBridge a = new NativeBridge();

    public final SurfaceControl a(SurfaceControl surfaceControl) {
        return this.a.a(surfaceControl);
    }

    public final SurfaceControl b(View view) {
        return this.a.b(view);
    }

    public final void c() {
        this.a.c();
    }

    public final void d(SurfaceControl surfaceControl) {
        this.a.d(surfaceControl);
    }
}
