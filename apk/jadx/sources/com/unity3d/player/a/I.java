package com.unity3d.player.a;

import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes5.dex */
public final class I implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ com.unity3d.player.D a;

    public I(com.unity3d.player.D d) {
        this.a = d;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        this.a.reportSoftInputArea();
    }
}
