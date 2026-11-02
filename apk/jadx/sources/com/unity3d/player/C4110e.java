package com.unity3d.player;

import com.google.android.gms.tasks.OnSuccessListener;

/* JADX INFO: renamed from: com.unity3d.player.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4110e implements OnSuccessListener {
    public final IAssetPackManagerMobileDataConfirmationCallback a;
    public final UnityPlayer b;

    public C4110e(UnityPlayer unityPlayer, IAssetPackManagerMobileDataConfirmationCallback iAssetPackManagerMobileDataConfirmationCallback) {
        this.b = unityPlayer;
        this.a = iAssetPackManagerMobileDataConfirmationCallback;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        Integer num = (Integer) obj;
        IAssetPackManagerMobileDataConfirmationCallback iAssetPackManagerMobileDataConfirmationCallback = this.a;
        if (iAssetPackManagerMobileDataConfirmationCallback != null) {
            this.b.invokeOnMainThread(new RunnableC4108d(iAssetPackManagerMobileDataConfirmationCallback, num.intValue() == -1));
        }
    }
}
