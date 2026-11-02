package com.unity3d.player;

import android.view.accessibility.CaptioningManager;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class S extends CaptioningManager.CaptioningChangeListener {
    public final /* synthetic */ UnityAccessibilityDelegate a;

    public S(UnityAccessibilityDelegate unityAccessibilityDelegate) {
        this.a = unityAccessibilityDelegate;
        unityAccessibilityDelegate.e.addCaptioningChangeListener(this);
        onEnabledChanged(unityAccessibilityDelegate.e.isEnabled());
    }

    public void cleanup() {
        this.a.e.removeCaptioningChangeListener(this);
    }

    @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
    public final void onEnabledChanged(boolean z) {
        UnityPlayer unityPlayer = this.a.a;
        Objects.requireNonNull(unityPlayer);
        this.a.a.invokeOnMainThread((Runnable) new Q(unityPlayer, z));
    }
}
