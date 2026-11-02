package com.unity3d.player;

import android.view.WindowManager;

/* JADX INFO: renamed from: com.unity3d.player.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC4125l0 implements Runnable {
    public final /* synthetic */ float a;
    public final /* synthetic */ UnityPlayer b;

    public RunnableC4125l0(UnityPlayer unityPlayer, float f) {
        this.b = unityPlayer;
        this.a = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WindowManager.LayoutParams attributes = this.b.m_Window.getAttributes();
        attributes.screenBrightness = this.a;
        this.b.m_Window.setAttributes(attributes);
    }
}
