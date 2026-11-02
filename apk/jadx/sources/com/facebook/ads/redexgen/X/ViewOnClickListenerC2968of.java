package com.facebook.ads.redexgen.X;

import android.view.View;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.of, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC2968of implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C13305o A00;

    static {
        A01();
    }

    public ViewOnClickListenerC2968of(C13305o c13305o) {
        this.A00 = c13305o;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 67);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{Ascii.SYN, 19, Ascii.SI, Ascii.DC2, 19, 32};
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A02(A00(0, 6, kotlin.fh.h1));
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
