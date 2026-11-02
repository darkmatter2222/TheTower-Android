package com.facebook.ads.redexgen.X;

import android.view.View;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class H2 extends C2j implements View.OnAttachStateChangeListener {
    public static byte[] A02;
    public final View A00;
    public final C1617Hh A01;

    static {
        A02();
    }

    public H2(View view, C1617Hh c1617Hh) {
        this.A00 = view;
        this.A01 = c1617Hh;
        this.A00.addOnAttachStateChangeListener(this);
        if (A07()) {
            try {
                A03();
            } catch (Throwable th) {
                this.A01.A08().ABz(A01(137, 14, 82), 3600, new C2787lg(A01(0, 45, 47) + th.getMessage()));
            }
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ InterfaceC3669k1.d.b.k);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{8, 55, 59, 41, 46, 49, 55, 48, 42, 126, 8, 55, 59, 41, 126, 50, 55, 56, 59, Base64.padSymbol, 39, Base64.padSymbol, 50, 59, 126, Base64.padSymbol, 44, 63, 45, 54, 55, 48, 57, 126, 45, 42, 63, 44, 42, Ascii.CR, Base64.padSymbol, 63, 48, 126, 126, 113, 78, 66, 80, 87, 72, 78, 73, 83, 7, 113, 78, 66, 80, 7, 75, 78, 65, 66, 68, 94, 68, 75, 66, 7, 68, 85, 70, 84, 79, 78, 73, SignedBytes.MAX_POWER_OF_TWO, 7, 84, 83, 70, 85, 83, 116, 68, 70, 73, 105, 72, 80, 7, 7, 113, 78, 66, 80, 87, 72, 78, 73, 83, 7, 113, 78, 66, 80, 7, 75, 78, 65, 66, 68, 94, 68, 75, 66, 7, 68, 85, 70, 84, 79, 78, 73, SignedBytes.MAX_POWER_OF_TWO, 7, 84, 83, 72, 87, 116, 68, 70, 73, 7, 7, 80, 70, SignedBytes.MAX_POWER_OF_TWO, 76, 77, 71, 124, SignedBytes.MAX_POWER_OF_TWO, 75, 66, 77, 77, 70, 79};
    }

    public final void A06() {
        try {
            A03();
        } catch (Throwable th) {
            this.A01.A08().ABz(A01(137, 14, 82), 3600, new C2787lg(A01(45, 48, 86) + th.getMessage()));
        }
    }

    public final boolean A07() {
        return AbstractC2540hb.A0H(this.A00);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        try {
            A03();
        } catch (Throwable th) {
            this.A01.A08().ABz(A01(137, 14, 82), 3600, new C2787lg(A01(0, 45, 47) + th.getMessage()));
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        try {
            A04();
        } catch (Throwable th) {
            this.A01.A08().ABz(A01(137, 14, 82), 3600, new C2787lg(A01(93, 44, 86) + th.getMessage()));
        }
    }
}
