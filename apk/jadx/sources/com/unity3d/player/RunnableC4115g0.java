package com.unity3d.player;

/* JADX INFO: renamed from: com.unity3d.player.g0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC4115g0 implements Runnable {
    public final /* synthetic */ PermissionRequest a;
    public final /* synthetic */ String[] b;
    public final /* synthetic */ int[] c;

    public RunnableC4115g0(PermissionRequest permissionRequest, String[] strArr, int[] iArr) {
        this.a = permissionRequest;
        this.b = strArr;
        this.c = iArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.permissionResponse(this.b, this.c);
    }
}
