package com.unity3d.player;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class J extends UnityPlayer.b {
    public final /* synthetic */ int b;
    public final /* synthetic */ N c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J(N n, UnityPlayer unityPlayer, int i) {
        super();
        this.c = n;
        this.b = i;
        Objects.requireNonNull(unityPlayer);
    }

    @Override // com.unity3d.player.UnityPlayer.b
    public final void a() {
        if (UnityAccessibilityDelegate.onNodeInvoked(this.b)) {
            this.c.a.sendEventForVirtualViewId(this.b, 1);
        }
    }
}
