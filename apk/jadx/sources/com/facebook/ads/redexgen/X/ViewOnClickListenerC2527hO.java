package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC2527hO implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C2521hI A00;

    static {
        A01();
    }

    public ViewOnClickListenerC2527hO(C2521hI c2521hI) {
        this.A00 = c2521hI;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 122);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{62, 53, 63, 56, 58, 41, 63, 40};
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0l != null) {
                this.A00.A0l.A0E(A00(0, 8, 33));
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
