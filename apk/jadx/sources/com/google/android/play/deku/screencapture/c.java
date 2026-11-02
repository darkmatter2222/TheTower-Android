package com.google.android.play.deku.screencapture;

import android.view.View;
import com.google.android.play.deku.j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class c implements View.OnAttachStateChangeListener {
    final /* synthetic */ f a;

    c(f fVar) {
        Objects.requireNonNull(fVar);
        this.a = fVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        f fVar = this.a;
        synchronized (fVar.d) {
            if (view.equals(fVar.e) && !fVar.c.isEmpty()) {
                fVar.k(view);
            }
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        f fVar = this.a;
        synchronized (fVar.d) {
            if (fVar.f != null) {
                fVar.a.d(fVar.f);
                fVar.f = null;
            }
        }
    }
}
