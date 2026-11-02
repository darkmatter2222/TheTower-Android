package com.unity3d.player;

import java.util.concurrent.Semaphore;

/* JADX INFO: renamed from: com.unity3d.player.s0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC4139s0 implements Runnable {
    public boolean a = false;
    public boolean b = false;
    public final /* synthetic */ Semaphore c;
    public final /* synthetic */ UnityPlayerForActivityOrService d;
    public final /* synthetic */ UnityPlayerForActivityOrService e;

    public RunnableC4139s0(UnityPlayerForActivityOrService unityPlayerForActivityOrService, Semaphore semaphore, UnityPlayerForActivityOrService unityPlayerForActivityOrService2) {
        this.e = unityPlayerForActivityOrService;
        this.c = semaphore;
        this.d = unityPlayerForActivityOrService2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.e.mSoftInput != null) {
            this.d.setOnHandleFocusListener(new C4135q0(this));
            this.e.mSoftInput.a(new C4137r0(this));
            this.e.dismissSoftInput();
        }
    }
}
