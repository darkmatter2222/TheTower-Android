package com.unity3d.player;

/* JADX INFO: renamed from: com.unity3d.player.y0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4151y0 extends UnityPlayer.b {
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ UnityPlayerForActivityOrService d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4151y0(UnityPlayerForActivityOrService unityPlayerForActivityOrService, int i, int i2) {
        super();
        this.d = unityPlayerForActivityOrService;
        this.b = i;
        this.c = i2;
    }

    @Override // com.unity3d.player.UnityPlayer.b
    public final void a() {
        this.d.nativeSetInputSelection(this.b, this.c);
    }
}
