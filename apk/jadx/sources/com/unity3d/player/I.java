package com.unity3d.player;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class I extends UnityPlayer.b {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I(UnityPlayer unityPlayer, int i) {
        super();
        this.b = i;
        Objects.requireNonNull(unityPlayer);
    }

    @Override // com.unity3d.player.UnityPlayer.b
    public final void a() {
        UnityAccessibilityDelegate.onNodeFocusChanged(this.b, false);
    }
}
