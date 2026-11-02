package com.google.android.play.deku.screencapture;

import android.view.SurfaceControl;
import android.view.View;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
class NativeBridge {
    private final AtomicBoolean a = new AtomicBoolean(false);

    private static native SurfaceControl nativeGetMirrorSurfaceControl(SurfaceControl surfaceControl);

    private static native SurfaceControl nativeGetSurfaceControl(View view);

    private static native void nativeInitialize();

    private static native void nativeReleaseSurfaceControl(SurfaceControl surfaceControl);

    public final SurfaceControl a(SurfaceControl surfaceControl) {
        if (this.a.get()) {
            return nativeGetMirrorSurfaceControl(surfaceControl);
        }
        throw new IllegalStateException("Native library is not initialized");
    }

    public final SurfaceControl b(View view) {
        if (this.a.get()) {
            return nativeGetSurfaceControl(view);
        }
        throw new IllegalStateException("Native library is not initialized");
    }

    public final void c() {
        AtomicBoolean atomicBoolean = this.a;
        if (atomicBoolean.get()) {
            return;
        }
        a.a();
        nativeInitialize();
        atomicBoolean.set(true);
    }

    public final void d(SurfaceControl surfaceControl) {
        if (!this.a.get()) {
            throw new IllegalStateException("Native library is not initialized");
        }
        nativeReleaseSurfaceControl(surfaceControl);
    }
}
