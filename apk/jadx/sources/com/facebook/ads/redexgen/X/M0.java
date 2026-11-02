package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class M0 implements InterfaceC3421w1 {
    public final /* synthetic */ C13857r A00;

    public M0(C13857r c13857r) {
        this.A00 = c13857r;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3421w1
    public final void ABV() {
        if (this.A00.A03 == null || this.A00.A03.A35() == null) {
            return;
        }
        String strA00 = this.A00.A03.A35().A00();
        if (TextUtils.isEmpty(strA00)) {
            return;
        }
        C3007pK.A0P(new C3007pK(), this.A00.A04, AbstractC3011pP.A00(strA00), this.A00.A7z());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3421w1
    public final void AEo(C6T c6t) {
        new Handler(Looper.getMainLooper()).postDelayed(new M4(this, c6t), 1L);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3421w1
    public final void AF5() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3421w1
    public final void AHL(View view, MotionEvent motionEvent) {
    }
}
