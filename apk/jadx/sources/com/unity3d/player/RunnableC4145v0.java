package com.unity3d.player;

/* JADX INFO: renamed from: com.unity3d.player.v0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC4145v0 implements Runnable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ UnityPlayerForActivityOrService b;

    public RunnableC4145v0(UnityPlayerForActivityOrService unityPlayerForActivityOrService, boolean z) {
        this.b = unityPlayerForActivityOrService;
        this.a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.unity3d.player.a.r rVar = this.b.mSoftInput;
        if (rVar != null) {
            rVar.setHideInputField(this.a);
        }
    }
}
