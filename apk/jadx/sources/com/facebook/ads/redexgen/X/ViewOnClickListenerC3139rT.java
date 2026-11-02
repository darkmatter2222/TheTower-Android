package com.facebook.ads.redexgen.X;

import android.view.View;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rT, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3139rT implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"dEVAdbQ3JOI9a4c3eafK4uZgCR8", "ymvDf94i2A8vhGA1mUADTbxtPZwSGYI", "TtxEF7730Ef1t", "seYdh1g", "6C30avWoWpOreww", "osFOvjPHrfZLP1x47AbYHhCov2gJpzDB", "N", "suZqvQAlLuViropv8"};
    public final /* synthetic */ C3141rV A00;

    static {
        A01();
    }

    public ViewOnClickListenerC3139rT(C3141rV c3141rV) {
        this.A00 = c3141rV;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] ^ i3;
            if (A02[5].charAt(27) != 'J') {
                throw new RuntimeException();
            }
            A02[5] = "0jQT3XclxTbtftDDbHPIfulB6AqJIZPn";
            bArrCopyOfRange[i4] = (byte) (i5 ^ 91);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{66, 70, 74, 76, 78};
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A07.getCTAButton().A0E(A00(0, 5, InterfaceC3669k1.d.b.j));
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
