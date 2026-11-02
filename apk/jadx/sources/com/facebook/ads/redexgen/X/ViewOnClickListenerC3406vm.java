package com.facebook.ads.redexgen.X;

import android.view.View;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3406vm implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ EE A00;

    static {
        A01();
    }

    public ViewOnClickListenerC3406vm(EE ee) {
        this.A00 = ee;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{34, Ascii.NAK, Ascii.DLE, 17, Ascii.ESC};
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0x(A00(0, 5, 71));
            if (this.A00.A0o.A0D() != null) {
                this.A00.A0o.A0D().ADH();
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
