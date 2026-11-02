package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Map;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class GV implements View.OnClickListener, View.OnLongClickListener, View.OnTouchListener, InterfaceC2751l6 {
    public static byte[] A02;
    public final C1618Hi A00;
    public final /* synthetic */ GT A01;

    static {
        A02();
    }

    public GV(GT gt, C1618Hi c1618Hi) {
        this.A01 = gt;
        this.A00 = c1618Hi;
    }

    public /* synthetic */ GV(GT gt, C1618Hi c1618Hi, C1588Ge c1588Ge) {
        this(gt, c1618Hi);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 59);
        }
        return new String(bArrCopyOfRange);
    }

    private Map<String, String> A01() {
        Map<String, String> mapA07 = new C3278ti().A05(this.A01.A0V).A04(this.A01.A0k).A07();
        if (this.A01.A0L != null) {
            mapA07.put(A00(201, 3, 11), String.valueOf(this.A01.A0L.A05()));
        }
        if (this.A01.A0b) {
            mapA07.put(A00(198, 3, 116), String.valueOf(this.A01.A0b));
        }
        return mapA07;
    }

    public static void A02() {
        A02 = new byte[]{43, Ascii.SO, 74, 9, Ascii.VT, 4, 4, 5, Ascii.RS, 74, 8, Ascii.SI, 74, 9, 6, 3, 9, 1, Ascii.SI, Ascii.SO, 74, 8, Ascii.SI, Ascii.FF, 5, Ascii.CAN, Ascii.SI, 74, 3, Ascii.RS, 74, 3, Ascii.EM, 74, Ascii.FS, 3, Ascii.SI, Ascii.GS, Ascii.SI, Ascii.SO, 68, 66, 109, 104, 98, 106, 114, 33, 105, 96, 113, 113, 100, 111, 100, 101, 33, 117, 110, 110, 33, 103, 96, 114, 117, 47, Ascii.DC4, Ascii.DLE, 19, 39, 54, 59, 55, 60, 49, 55, Ascii.FS, 55, 38, 37, Base64.padSymbol, 32, 57, 56, Ascii.EM, 86, 2, Ascii.EM, 3, Ascii.NAK, Ascii.RS, 86, Ascii.DC2, Ascii.ETB, 2, Ascii.ETB, 86, 4, 19, Ascii.NAK, Ascii.EM, 4, Ascii.DC2, 19, Ascii.DC2, 90, 86, 6, Ascii.SUB, 19, Ascii.ETB, 5, 19, 86, 19, Ascii.CAN, 5, 3, 4, 19, 86, 2, Ascii.EM, 3, Ascii.NAK, Ascii.RS, 86, 19, 0, 19, Ascii.CAN, 2, 5, 86, 4, 19, Ascii.ETB, Ascii.NAK, Ascii.RS, 86, 2, Ascii.RS, 19, 86, Ascii.ETB, Ascii.DC2, 86, 32, Ascii.US, 19, 1, 86, Ascii.DC4, Ascii.SI, 86, 4, 19, 2, 3, 4, Ascii.CAN, Ascii.US, Ascii.CAN, 17, 86, Ascii.DLE, Ascii.ETB, Ascii.SUB, 5, 19, 86, Ascii.US, Ascii.DLE, 86, Ascii.SI, Ascii.EM, 3, 86, Ascii.US, Ascii.CAN, 2, 19, 4, Ascii.NAK, 19, 6, 2, 86, 2, Ascii.RS, 19, 86, 19, 0, 19, Ascii.CAN, 2, 88, 33, 39, 60, 94, 68, 89};
    }

    private void A03(Map<String, String> map) {
        if (this.A01.A0f != null) {
            this.A01.A0f.A0M(map);
        }
    }

    public final void A04() {
        if (this.A01.A09 != null) {
            ((IB) this.A01.A09.getNativeAdLayoutApi()).A04(new C3178s6(this.A01.A0h));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2751l6
    public final C1618Hi A7M() {
        return this.A00;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            boolean zA08 = this.A01.A0k.A08();
            String strA00 = A00(66, 17, 105);
            if (!zA08) {
                Log.e(strA00, A00(83, 115, 77));
            }
            int iA0I = C2863mv.A0I(this.A01.A0h);
            if (iA0I >= 0 && this.A01.A0k.A03() < iA0I) {
                if (this.A01.A0k.A07()) {
                    Log.e(strA00, A00(41, 25, 58));
                    return;
                } else {
                    Log.e(strA00, A00(0, 41, 81));
                    return;
                }
            }
            if (!this.A01.A0k.A09(this.A01.A0h)) {
                A03(A01());
            } else if (this.A01.A0f != null) {
                this.A01.A0f.A0N(A01());
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        if (this.A01.A04 == null || this.A01.A0P == null) {
            return false;
        }
        this.A01.A0P.setBounds(0, 0, this.A01.A04.getWidth(), this.A01.A04.getHeight());
        this.A01.A0P.A0D(!this.A01.A0P.A0E());
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.A01.A0k.A06(this.A01.A0h, motionEvent, this.A01.A04, view);
        return this.A01.A02 != null && this.A01.A02.onTouch(view, motionEvent);
    }
}
