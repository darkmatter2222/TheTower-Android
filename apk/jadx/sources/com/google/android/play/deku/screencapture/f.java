package com.google.android.play.deku.screencapture;

import android.content.Context;
import android.hardware.display.VirtualDisplay;
import android.os.Bundle;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.View;
import com.google.android.play.deku.config.DekuFeatureFlags;
import com.google.android.play.deku.j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    private final g a;
    private final j b;
    private final Map c;
    private final Object d;
    private View e;
    private SurfaceControl f;
    private View.OnAttachStateChangeListener g;

    public f(Context context) {
        g gVar = new g();
        j jVar = new j(context);
        this.c = new ConcurrentHashMap();
        this.d = new Object();
        this.e = null;
        this.f = null;
        this.g = null;
        this.a = gVar;
        this.b = jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(View view) {
        String str;
        Map map = this.c;
        if (map.isEmpty()) {
            return;
        }
        if (!m() || view.isAttachedToWindow()) {
            g gVar = this.a;
            SurfaceControl surfaceControlB = gVar.b(view);
            if (surfaceControlB != null) {
                this.f = surfaceControlB;
                for (d dVar : map.values()) {
                    dVar.c.release();
                    SurfaceControl surfaceControlA = gVar.a(surfaceControlB);
                    dVar.c = surfaceControlA;
                    dVar.d.dismiss();
                    try {
                        j jVar = this.b;
                        VirtualDisplay virtualDisplay = dVar.b;
                        e eVar = dVar.a;
                        dVar.d = jVar.b(virtualDisplay, surfaceControlA, new b(l(eVar.a, view.getWidth()), l(eVar.b, view.getHeight())));
                    } catch (RuntimeException e) {
                        surfaceControlA.release();
                        throw new IllegalStateException("Failed to create/show SurfaceControlPresentation", e);
                    }
                }
                return;
            }
            str = "Failed to get SurfaceControl for new root view.";
        } else {
            str = "newRootView is not attached to window, skipping update";
        }
        Log.w("ScreenCaptureManager", str);
    }

    private static final float l(int i, int i2) {
        if (i2 <= 0) {
            Log.w("ScreenCaptureManager", "Cannot calculate scale factor: parent root view dimension is zero or negative.");
            throw new IllegalArgumentException("Cannot calculate scale factor: parent root view dimension is zero or negative.");
        }
        if (i > i2) {
            Log.w("ScreenCaptureManager", "Upscaling is not supported. Setting scale factor to 1.0f.");
            return 1.0f;
        }
        return i / i2;
    }

    private static final boolean m() {
        return DekuFeatureFlags.isFeatureEnabled("enableScreenCaptureDetachedViewFix", false);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0054 A[Catch: all -> 0x00d7, TryCatch #0 {, blocks: (B:4:0x0011, B:6:0x0015, B:7:0x0023, B:8:0x0026, B:10:0x0028, B:12:0x0031, B:14:0x0037, B:17:0x0042, B:18:0x0048, B:20:0x0054, B:21:0x0062, B:22:0x0066, B:25:0x007b, B:27:0x00c8), top: B:31:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0066 A[Catch: all -> 0x00d7, TryCatch #0 {, blocks: (B:4:0x0011, B:6:0x0015, B:7:0x0023, B:8:0x0026, B:10:0x0028, B:12:0x0031, B:14:0x0037, B:17:0x0042, B:18:0x0048, B:20:0x0054, B:21:0x0062, B:22:0x0066, B:25:0x007b, B:27:0x00c8), top: B:31:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0076  */
    /* JADX WARN: Code duplicated, block: B:25:0x007b A[Catch: all -> 0x00d7, TryCatch #0 {, blocks: (B:4:0x0011, B:6:0x0015, B:7:0x0023, B:8:0x0026, B:10:0x0028, B:12:0x0031, B:14:0x0037, B:17:0x0042, B:18:0x0048, B:20:0x0054, B:21:0x0062, B:22:0x0066, B:25:0x007b, B:27:0x00c8), top: B:31:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00c8 A[Catch: all -> 0x00d7, TryCatch #0 {, blocks: (B:4:0x0011, B:6:0x0015, B:7:0x0023, B:8:0x0026, B:10:0x0028, B:12:0x0031, B:14:0x0037, B:17:0x0042, B:18:0x0048, B:20:0x0054, B:21:0x0062, B:22:0x0066, B:25:0x007b, B:27:0x00c8), top: B:31:0x0011 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:20:0x0054, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:25:0x007b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:27:0x00c8, please report this as an issue */
    public final void g(Bundle bundle) {
        Map map;
        Long lValueOf;
        SurfaceControl surfaceControlA;
        Surface surface;
        String str;
        String str2;
        String str3;
        String str4;
        Object obj = this.d;
        long j = bundle.getLong("deku_capture_session_id");
        synchronized (obj) {
            View view = this.e;
            if (view == null) {
                str3 = "ScreenCaptureManager";
                str4 = "rootView is null, cannot get SurfaceControl for session: " + j;
            } else {
                g gVar = this.a;
                gVar.c();
                if (this.f != null) {
                    map = this.c;
                    lValueOf = Long.valueOf(j);
                    if (map.containsKey(lValueOf)) {
                        str = "ScreenCaptureManager";
                        str2 = "Capture resources already exist for session: " + j;
                    } else {
                        surfaceControlA = gVar.a(this.f);
                        surface = (Surface) bundle.getParcelable("deku_capture_surface");
                        if (surface == null) {
                            str3 = "ScreenCaptureManager";
                            str4 = "Surface is null, cannot create VirtualDisplay";
                        } else {
                            int i = bundle.getInt("deku_capture_surface_width");
                            int i2 = bundle.getInt("deku_capture_surface_height");
                            j jVar = this.b;
                            VirtualDisplay virtualDisplayA = jVar.a("ScreenCapture_" + j, surface, i, i2);
                            map.put(lValueOf, new d(new e(i, i2), virtualDisplayA, surfaceControlA, jVar.b(virtualDisplayA, surfaceControlA, new b(l(i, view.getWidth()), l(i2, view.getHeight())))));
                            if (Log.isLoggable("ScreenCaptureManager", 3)) {
                                str = "ScreenCaptureManager";
                                str2 = "Capture resources created for session: " + j;
                            }
                        }
                    }
                    Log.d(str, str2);
                } else if (!m() || view.isAttachedToWindow()) {
                    this.f = gVar.b(view);
                    map = this.c;
                    lValueOf = Long.valueOf(j);
                    if (map.containsKey(lValueOf)) {
                        str = "ScreenCaptureManager";
                        str2 = "Capture resources already exist for session: " + j;
                    } else {
                        surfaceControlA = gVar.a(this.f);
                        surface = (Surface) bundle.getParcelable("deku_capture_surface");
                        if (surface == null) {
                            str3 = "ScreenCaptureManager";
                            str4 = "Surface is null, cannot create VirtualDisplay";
                        } else {
                            int i3 = bundle.getInt("deku_capture_surface_width");
                            int i4 = bundle.getInt("deku_capture_surface_height");
                            j jVar2 = this.b;
                            VirtualDisplay virtualDisplayA2 = jVar2.a("ScreenCapture_" + j, surface, i3, i4);
                            map.put(lValueOf, new d(new e(i3, i4), virtualDisplayA2, surfaceControlA, jVar2.b(virtualDisplayA2, surfaceControlA, new b(l(i3, view.getWidth()), l(i4, view.getHeight())))));
                            if (Log.isLoggable("ScreenCaptureManager", 3)) {
                                str = "ScreenCaptureManager";
                                str2 = "Capture resources created for session: " + j;
                            }
                        }
                    }
                    Log.d(str, str2);
                } else {
                    str3 = "ScreenCaptureManager";
                    str4 = "rootView is not attached to window, cannot get SurfaceControl";
                }
            }
            Log.w(str3, str4);
        }
    }

    public final void h(Bundle bundle) {
        SurfaceControl surfaceControl;
        Object obj = this.d;
        long j = bundle.getLong("deku_capture_session_id");
        synchronized (obj) {
            Map map = this.c;
            Long lValueOf = Long.valueOf(j);
            d dVar = (d) map.get(lValueOf);
            if (dVar != null) {
                dVar.c.release();
                dVar.b.release();
                dVar.d.dismiss();
                map.remove(lValueOf);
                Log.d("ScreenCaptureManager", "Capture resources removed for session: " + j);
            }
            if (map.isEmpty() && (surfaceControl = this.f) != null) {
                this.a.d(surfaceControl);
                this.f = null;
            }
        }
    }

    public final void i(View view) {
        SurfaceControl surfaceControl;
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        synchronized (this.d) {
            if (m()) {
                if (this.g == null) {
                    this.g = new c(this);
                }
                View.OnAttachStateChangeListener onAttachStateChangeListener2 = this.g;
                View view2 = this.e;
                if (view2 != null && onAttachStateChangeListener2 != null) {
                    view2.removeOnAttachStateChangeListener(onAttachStateChangeListener2);
                }
            }
            this.e = view;
            if (view != null) {
                if (m() && (onAttachStateChangeListener = this.g) != null) {
                    view.addOnAttachStateChangeListener(onAttachStateChangeListener);
                }
                k(view);
            } else if (m() && (surfaceControl = this.f) != null) {
                this.a.d(surfaceControl);
                this.f = null;
            }
        }
    }
}
