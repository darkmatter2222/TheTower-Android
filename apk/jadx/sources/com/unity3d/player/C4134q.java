package com.unity3d.player;

import android.app.Activity;
import android.app.Dialog;
import android.window.OnBackInvokedDispatcher;
import com.unity3d.player.a.AbstractC4090f;
import com.unity3d.player.a.C4089e;

/* JADX INFO: renamed from: com.unity3d.player.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4134q extends com.unity3d.player.a.x {
    public C4089e d;
    public final OnBackInvokedDispatcher e;
    public final int f;

    public C4134q(OnBackInvokedDispatcher onBackInvokedDispatcher, int i, Runnable runnable) {
        super(runnable);
        this.d = null;
        this.f = i;
        this.e = onBackInvokedDispatcher;
    }

    public static com.unity3d.player.a.x a(Object obj, int i, Runnable runnable) {
        com.unity3d.player.a.x c4134q = (PlatformSupport.TIRAMISU_SUPPORT && ((obj instanceof Activity) || (obj instanceof Dialog))) ? new C4134q(AbstractC4090f.a(obj), i, runnable) : new com.unity3d.player.a.x(runnable);
        c4134q.registerOnBackPressedCallback();
        return c4134q;
    }

    @Override // com.unity3d.player.a.x
    public void registerOnBackPressedCallback() {
        if (this.a != null) {
            return;
        }
        super.registerOnBackPressedCallback();
        if (PlatformSupport.TIRAMISU_SUPPORT) {
            C4089e c4089e = new C4089e(this.a);
            this.d = c4089e;
            AbstractC4090f.a(this.e, this.f, c4089e);
        }
    }

    @Override // com.unity3d.player.a.x
    public void unregisterOnBackPressedCallback() {
        if (this.a != null) {
            if (PlatformSupport.TIRAMISU_SUPPORT) {
                AbstractC4090f.a(this.e, this.d);
                this.d = null;
            }
            super.unregisterOnBackPressedCallback();
        }
    }
}
