package com.unity3d.player;

/* JADX INFO: renamed from: com.unity3d.player.t0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC4141t0 implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ UnityPlayerForActivityOrService b;

    public RunnableC4141t0(UnityPlayerForActivityOrService unityPlayerForActivityOrService, String str) {
        this.b = unityPlayerForActivityOrService;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        com.unity3d.player.a.r rVar = this.b.mSoftInput;
        if (rVar == null || (str = this.a) == null) {
            return;
        }
        rVar.setText(str);
    }
}
