package com.unity3d.player;

/* JADX INFO: renamed from: com.unity3d.player.o0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4131o0 implements IPermissionRequestCallbacks {
    public final long a;
    public final /* synthetic */ UnityPlayer b;

    public C4131o0(long j, UnityPlayer unityPlayer) {
        this.b = unityPlayer;
        this.a = j;
    }

    @Override // com.unity3d.player.IPermissionRequestCallbacks
    public final void onPermissionResult(String[] strArr, int[] iArr) {
        int length = iArr.length;
        boolean z = false;
        if (length != 0) {
            if (length != 1) {
                com.unity3d.player.a.t.Log(6, "Only a single permission request is supported");
                return;
            } else if (iArr[0] == 1) {
                z = true;
            }
        }
        if (this.a == 0) {
            return;
        }
        this.b.invokeOnMainThread((UnityPlayer.b) new C4129n0(this, z));
    }
}
