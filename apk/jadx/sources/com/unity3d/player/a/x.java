package com.unity3d.player.a;

/* JADX INFO: loaded from: classes5.dex */
public class x {
    public final Runnable b;
    public w a = null;
    public boolean c = true;

    public x(Runnable runnable) {
        this.b = runnable;
    }

    public void registerOnBackPressedCallback() {
        if (this.a != null) {
            return;
        }
        this.a = new w(this.b);
    }

    public void unregisterOnBackPressedCallback() {
        this.a = null;
    }
}
