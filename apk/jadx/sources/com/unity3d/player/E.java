package com.unity3d.player;

import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes5.dex */
public final class E implements Runnable {
    public final /* synthetic */ Semaphore a;
    public final /* synthetic */ UnityAccessibilityDelegate b;

    public E(UnityAccessibilityDelegate unityAccessibilityDelegate, Semaphore semaphore) {
        this.b = unityAccessibilityDelegate;
        this.a = semaphore;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            UnityAccessibilityDelegate unityAccessibilityDelegate = this.b;
            if (unityAccessibilityDelegate.c != null) {
                unityAccessibilityDelegate.d = new P(unityAccessibilityDelegate);
            }
            UnityAccessibilityDelegate unityAccessibilityDelegate2 = this.b;
            if (unityAccessibilityDelegate2.e != null) {
                unityAccessibilityDelegate2.f = new S(this.b);
            }
        } finally {
            this.a.release();
        }
    }
}
