package com.unity3d.player.a;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes5.dex */
public final class H implements DialogInterface.OnDismissListener {
    public final /* synthetic */ com.unity3d.player.D a;

    public H(com.unity3d.player.D d) {
        this.a = d;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.a.invokeOnClose();
    }
}
