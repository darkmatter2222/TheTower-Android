package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC2782lb implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ AbstractC13235h A00;

    static {
        A01();
    }

    public ViewOnClickListenerC2782lb(AbstractC13235h abstractC13235h) {
        this.A00 = abstractC13235h;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 22);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{65, 67, 80, 77, 87, 81, 71, 78, 125, 65, 67, 80, 70};
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.getCtaButton().A0E(A00(0, 13, 52));
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
