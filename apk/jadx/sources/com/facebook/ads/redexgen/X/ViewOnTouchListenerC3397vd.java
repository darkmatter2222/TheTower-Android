package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnTouchListenerC3397vd implements View.OnTouchListener {
    public static byte[] A01;
    public final /* synthetic */ EE A00;

    static {
        A01();
    }

    public ViewOnTouchListenerC3397vd(EE ee) {
        this.A00 = ee;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 29);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{83, 85, 67, 84, 121, 69, 74, 79, 69, 77, 121, 79, 71, 68, Ascii.SUB, Ascii.FS, 10, Ascii.GS, 48, 4, 10, Ascii.SYN, Ascii.US, Ascii.SO, Ascii.VT, 48, Ascii.FF, 3, 6, Ascii.FF, 4, 48, 6, Ascii.SO, Ascii.CR};
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 0:
                if (!this.A00.A0P && this.A00.A0i != null && this.A00.A0i.isAcceptingText()) {
                    this.A00.A0P = true;
                    this.A00.A0w(A00(14, 21, 114));
                    break;
                }
                break;
            case 1:
                EE.A04(this.A00);
                if (!this.A00.A0O && this.A00.A03 >= 5) {
                    this.A00.A0O = true;
                    this.A00.A0w(A00(0, 14, 59));
                    break;
                }
                break;
        }
        return false;
    }
}
