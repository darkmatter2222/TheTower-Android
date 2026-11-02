package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3281tl {
    public static void A00(View view, boolean z, View.OnClickListener onClickListener) {
        if (!z) {
            view.setOnClickListener(onClickListener);
        } else if (z) {
            ViewOnClickListenerC3280tk viewOnClickListenerC3280tk = new ViewOnClickListenerC3280tk(onClickListener);
            view.setOnClickListener(viewOnClickListenerC3280tk);
            view.setOnTouchListener(new ViewOnTouchListenerC3279tj(viewOnClickListenerC3280tk));
        }
    }
}
