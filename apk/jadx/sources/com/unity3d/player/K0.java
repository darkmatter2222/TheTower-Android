package com.unity3d.player;

import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes5.dex */
public final class K0 implements Runnable {
    public final /* synthetic */ UnityPlayerForActivityOrService a;

    public K0(UnityPlayerForActivityOrService unityPlayerForActivityOrService) {
        this.a = unityPlayerForActivityOrService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        U view = this.a.getView();
        if (view != null) {
            com.unity3d.player.a.C c = view.c;
            FrameLayout frameLayout = view.b.getFrameLayout();
            com.unity3d.player.a.B b = c.b;
            if (b != null && b.getParent() != null) {
                frameLayout.removeView(c.b);
            }
            view.c.b = null;
        }
    }
}
