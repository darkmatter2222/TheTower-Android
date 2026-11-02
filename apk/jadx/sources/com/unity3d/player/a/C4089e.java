package com.unity3d.player.a;

import android.window.OnBackInvokedCallback;

/* JADX INFO: renamed from: com.unity3d.player.a.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4089e implements OnBackInvokedCallback {
    public final /* synthetic */ w a;

    public C4089e(w wVar) {
        this.a = wVar;
    }

    @Override // android.window.OnBackInvokedCallback
    public final void onBackInvoked() {
        Runnable runnable = this.a.a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
