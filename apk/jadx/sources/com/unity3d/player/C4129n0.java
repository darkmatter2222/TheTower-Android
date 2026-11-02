package com.unity3d.player;

/* JADX INFO: renamed from: com.unity3d.player.n0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4129n0 extends UnityPlayer.b {
    public final /* synthetic */ boolean b;
    public final /* synthetic */ C4131o0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4129n0(C4131o0 c4131o0, boolean z) {
        super();
        this.c = c4131o0;
        this.b = z;
    }

    @Override // com.unity3d.player.UnityPlayer.b
    public final void a() {
        UnityPlayer.permissionResponseToNative(this.c.a, this.b);
    }
}
