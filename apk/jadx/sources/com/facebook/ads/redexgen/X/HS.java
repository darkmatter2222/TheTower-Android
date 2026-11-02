package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class HS implements InterfaceC2969og {
    @Override // com.facebook.ads.redexgen.X.InterfaceC2969og
    public final void AJr(Throwable th, Object obj) {
        if (obj instanceof InterfaceC2751l6) {
            C1618Hi c1618HiA7M = ((InterfaceC2751l6) obj).A7M();
            if (c1618HiA7M != null) {
                c1618HiA7M.A0Q(th);
                return;
            }
            return;
        }
        if (obj instanceof View) {
            Context context = ((View) obj).getContext();
            if (context instanceof C1618Hi) {
                ((C1618Hi) context).A0Q(th);
            }
        }
    }
}
