package com.facebook.ads.redexgen.X;

import android.view.View;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ut, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3351ut implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C13486g A00;

    static {
        A01();
    }

    public ViewOnClickListenerC3351ut(C13486g c13486g) {
        this.A00 = c13486g;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 111);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{Ascii.ESC, Ascii.US, 19, Ascii.EM, Ascii.ETB};
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.getCtaButton().A0E(A00(0, 5, 67));
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
