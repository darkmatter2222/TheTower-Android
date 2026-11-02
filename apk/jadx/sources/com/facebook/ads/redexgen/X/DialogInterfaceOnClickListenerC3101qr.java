package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DialogInterfaceOnClickListenerC3101qr implements DialogInterface.OnClickListener {
    public final /* synthetic */ C1583Fz A00;

    public DialogInterfaceOnClickListenerC3101qr(C1583Fz c1583Fz) {
        this.A00 = c1583Fz;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
