package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class IV implements InterfaceC3119r9 {
    public final WeakReference<C2658jY> A00;

    public IV(C2658jY c2658jY) {
        this.A00 = new WeakReference<>(c2658jY);
    }

    private void A00(C2658jY c2658jY) {
        C2568i4 c2568i4A07 = c2658jY.A07();
        if (c2568i4A07 == null || c2658jY.A04() == null) {
            return;
        }
        c2658jY.A04().bringChildToFront(c2568i4A07);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3119r9
    public void A4U(View view, int i, RelativeLayout.LayoutParams layoutParams) {
        C2658jY c2658jY = this.A00.get();
        if (c2658jY == null || c2658jY.A04() == null) {
            return;
        }
        c2658jY.A04().addView(view, i, layoutParams);
        A00(c2658jY);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3119r9
    public void A4V(View view, RelativeLayout.LayoutParams layoutParams) {
        C2658jY c2658jY = this.A00.get();
        if (c2658jY == null || c2658jY.A04() == null) {
            return;
        }
        c2658jY.A04().addView(view, layoutParams);
        A00(c2658jY);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3119r9
    public void A5C(String str) {
        if (this.A00.get() != null) {
            this.A00.get().A0C(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3119r9
    public void A5D(String str, C2830mO c2830mO) {
        if (this.A00.get() != null) {
            this.A00.get().A0E(str, c2830mO);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3119r9
    public void ABW(String str, C2416fZ c2416fZ) {
        if (this.A00.get() != null) {
            this.A00.get().A0D(str, c2416fZ);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3119r9
    public void AEH(int i) {
        C2658jY c2658jY = this.A00.get();
        if (c2658jY != null) {
            c2658jY.finish(i);
        }
    }
}
