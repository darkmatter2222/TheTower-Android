package com.unity3d.player;

/* JADX INFO: loaded from: classes5.dex */
public final class I0 implements Runnable {
    public final /* synthetic */ UnityPlayerForActivityOrService a;

    public I0(UnityPlayerForActivityOrService unityPlayerForActivityOrService) {
        this.a = unityPlayerForActivityOrService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        UnityPlayerForActivityOrService unityPlayerForActivityOrService = this.a;
        if (unityPlayerForActivityOrService.mMainDisplayOverride) {
            unityPlayerForActivityOrService.getFrameLayout().removeView(this.a.getView());
        } else if (unityPlayerForActivityOrService.getView().getParent() == null) {
            this.a.getFrameLayout().addView(this.a.getView());
        } else {
            com.unity3d.player.a.t.Log(5, "Couldn't add view, because it's already assigned to another parent");
        }
    }
}
