package com.google.android.play.deku.screencapture;

import android.app.Presentation;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.AttachedSurfaceControl;
import android.view.Display;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import com.google.android.play.deku.u;

/* JADX INFO: loaded from: classes.dex */
public final class i extends Presentation {
    private final SurfaceControl a;
    private final b b;
    private ViewTreeObserver.OnDrawListener c;
    private View d;

    public i(Context context, Display display, SurfaceControl surfaceControl, b bVar) {
        super(context, display);
        this.a = surfaceControl;
        this.b = bVar;
    }

    public static /* synthetic */ void a(i iVar) {
        AttachedSurfaceControl rootSurfaceControl = iVar.d.getRootSurfaceControl();
        if (rootSurfaceControl == null) {
            Log.e("SurfaceControlPreso", "AttachedSurfaceControl is null because the view is not attached to a window.");
            return;
        }
        try {
            SurfaceControl surfaceControl = iVar.a;
            SurfaceControl.Transaction transactionBuildReparentTransaction = rootSurfaceControl.buildReparentTransaction(surfaceControl);
            try {
                if (transactionBuildReparentTransaction == null) {
                    Log.e("SurfaceControlPreso", "Failed to build reparent transaction");
                    return;
                }
                b bVar = iVar.b;
                transactionBuildReparentTransaction.setScale(surfaceControl, bVar.a, bVar.b);
                transactionBuildReparentTransaction.apply();
                transactionBuildReparentTransaction.close();
            } catch (Throwable th) {
                if (transactionBuildReparentTransaction != null) {
                    try {
                        transactionBuildReparentTransaction.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (RuntimeException e) {
            Log.e("SurfaceControlPreso", "Failed to reparent surface control", e);
        }
    }

    @Override // android.app.Dialog
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setLayoutParams(layoutParams);
        View view = new View(getContext());
        view.setId(View.generateViewId());
        view.setLayoutParams(layoutParams);
        relativeLayout.addView(view);
        this.d = relativeLayout;
        setContentView(relativeLayout);
    }

    @Override // android.app.Presentation, android.app.Dialog
    protected final void onStart() {
        super.onStart();
        if (this.d != null) {
            this.c = new ViewTreeObserver.OnDrawListener() { // from class: com.google.android.play.deku.screencapture.h
                @Override // android.view.ViewTreeObserver.OnDrawListener
                public final void onDraw() {
                    i.a(this.a);
                }
            };
            ViewTreeObserver viewTreeObserver = this.d.getViewTreeObserver();
            ViewTreeObserver.OnDrawListener onDrawListener = this.c;
            u.a(onDrawListener);
            viewTreeObserver.addOnDrawListener(onDrawListener);
        }
    }

    @Override // android.app.Presentation, android.app.Dialog
    protected final void onStop() {
        super.onStop();
        View view = this.d;
        if (view != null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            ViewTreeObserver.OnDrawListener onDrawListener = this.c;
            u.a(onDrawListener);
            viewTreeObserver.removeOnDrawListener(onDrawListener);
            this.c = null;
        }
    }
}
