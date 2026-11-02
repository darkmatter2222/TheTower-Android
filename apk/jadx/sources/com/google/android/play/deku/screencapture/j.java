package com.google.android.play.deku.screencapture;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceControl;
import com.google.android.play.deku.u;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    private final Context a;

    public j(Context context) {
        this.a = context;
    }

    public final VirtualDisplay a(String str, Surface surface, int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            Log.w("SurfaceProjector", "Cannot create virtual display: surface dimensions are zero or negative.");
            throw new IllegalStateException("Failed to create VirtualDisplay: surface dimensions are zero or negative.");
        }
        Context context = this.a;
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager == null) {
            throw new IllegalStateException("DisplayManager service not available");
        }
        try {
            return displayManager.createVirtualDisplay(str, i, i2, context.getResources().getDisplayMetrics().densityDpi, surface, 8);
        } catch (SecurityException e) {
            throw new IllegalStateException("Failed to create virtual display due to security exception", e);
        }
    }

    public final i b(VirtualDisplay virtualDisplay, SurfaceControl surfaceControl, b bVar) {
        u.b(virtualDisplay, "virtualDisplay cannot be null");
        u.b(surfaceControl, "mirrorSurfaceControl cannot be null");
        try {
            i iVar = new i(this.a, virtualDisplay.getDisplay(), surfaceControl, bVar);
            iVar.show();
            return iVar;
        } catch (RuntimeException e) {
            Log.e("SurfaceProjector", String.format("Failed to show SurfaceControlPresentation for captureId: %s with error: %s", virtualDisplay.getDisplay().getName(), e.getMessage()));
            virtualDisplay.release();
            throw new IllegalStateException("Failed to show SurfaceControlPresentation", e);
        }
    }
}
