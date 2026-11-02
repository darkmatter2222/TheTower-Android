package com.facebook.ads.redexgen.X;

import android.view.View;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3149rd implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"Th8eXEW1PrBlLKXoRy9UyAyDQ9tQjuPK", "4henDDTTPEOKZzq7PNQ1SIy1a", "Zpi4StS1XTi7bhpwa1mxHm", "qGMTOH6iswR5Sy8PveMjBlpiPNI", "tTG2l67cl9i5RpmNxGnyU7CtKTA4p2Vc", "jtcLvs0NSnmTYxd6Zu1", "ATuPFGXiazn8hgK5aIrWnquRldL", "rrmTDpJAuV0duFcPkgO2cU5F1RWAsXrV"};
    public final /* synthetic */ FM A00;

    static {
        A01();
    }

    public ViewOnClickListenerC3149rd(FM fm) {
        this.A00 = fm;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 93);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{10, Ascii.FF, Ascii.SUB, Ascii.CR, Ascii.FS, 19, Ascii.SYN, Ascii.FS, Ascii.DC4};
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0i(false, A00(0, 9, 34));
        } catch (Throwable th) {
            if (A02[2].length() == 14) {
                throw new RuntimeException();
            }
            A02[2] = "e6HsNr1LKoaRSOfvtR5T4talkdc";
            AbstractC2971oi.A00(th, this);
        }
    }
}
