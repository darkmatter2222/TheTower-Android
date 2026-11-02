package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ue, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3336ue implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C1539Eg A00;

    static {
        A01();
    }

    public ViewOnClickListenerC3336ue(C1539Eg c1539Eg) {
        this.A00 = c1539Eg;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 28);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-33, -29, -41, -35, -37};
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.getCtaButton().A0E(A00(0, 5, 90));
            if (((AbstractC3345un) this.A00).A08.A0D() != null) {
                ((AbstractC3345un) this.A00).A08.A0D().ADH();
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
