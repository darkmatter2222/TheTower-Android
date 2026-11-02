package com.unity3d.player;

import android.content.DialogInterface;

/* JADX INFO: renamed from: com.unity3d.player.d0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class DialogInterfaceOnClickListenerC4109d0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ UnityPlayer a;

    public DialogInterfaceOnClickListenerC4109d0(UnityPlayer unityPlayer) {
        this.a = unityPlayer;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.a.finish();
    }
}
