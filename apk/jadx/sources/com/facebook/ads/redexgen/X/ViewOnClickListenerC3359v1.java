package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.v1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3359v1 implements View.OnClickListener {
    public static byte[] A02;
    public final /* synthetic */ ViewOnClickListenerC1544El A00;
    public final /* synthetic */ C3361v3 A01;

    static {
        A01();
    }

    public ViewOnClickListenerC3359v1(C3361v3 c3361v3, ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        this.A01 = c3361v3;
        this.A00 = viewOnClickListenerC1544El;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 14);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-59, -50, -60, -61, -63, -46, -60, -45};
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            if (this.A00 != null) {
                this.A00.A0E(A00(0, 8, 82));
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
