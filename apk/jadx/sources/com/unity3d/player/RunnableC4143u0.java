package com.unity3d.player;

/* JADX INFO: renamed from: com.unity3d.player.u0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC4143u0 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ UnityPlayerForActivityOrService b;

    public RunnableC4143u0(UnityPlayerForActivityOrService unityPlayerForActivityOrService, int i) {
        this.b = unityPlayerForActivityOrService;
        this.a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.unity3d.player.a.r rVar = this.b.mSoftInput;
        if (rVar != null) {
            rVar.setCharacterLimit(this.a);
        }
    }
}
