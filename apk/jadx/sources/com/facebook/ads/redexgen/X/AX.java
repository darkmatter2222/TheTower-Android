package com.facebook.ads.redexgen.X;

import android.os.AsyncTask;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AX extends AsyncTask<AbstractC2140b5, Void, InterfaceC2193bw> implements InterfaceC2160bP {
    public static byte[] A04;
    public InterfaceC2187bq A00;
    public AT A01;
    public Exception A02;
    public Executor A03;

    static {
        A02();
    }

    public AX(AT at, InterfaceC2187bq interfaceC2187bq, Executor executor) {
        this.A01 = at;
        this.A00 = interfaceC2187bq;
        this.A03 = executor;
    }

    private final InterfaceC2193bw A00(AbstractC2140b5... abstractC2140b5Arr) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return null;
        }
        try {
            if (abstractC2140b5Arr != null) {
                try {
                    if (abstractC2140b5Arr.length > 0) {
                        InterfaceC2193bw interfaceC2193bwA0J = this.A01.A0J(abstractC2140b5Arr[0]);
                        if (this.A01.A0K().A04() && interfaceC2193bwA0J != null) {
                            String.format(Locale.US, A01(108, 21, 6), Integer.valueOf(interfaceC2193bwA0J.A9p()), interfaceC2193bwA0J.getUrl(), interfaceC2193bwA0J.A7d());
                        }
                        if (interfaceC2193bwA0J != null) {
                            return interfaceC2193bwA0J;
                        }
                        throw new IllegalStateException(A01(87, 21, 119));
                    }
                } catch (Exception e) {
                    this.A02 = e;
                    if (this.A01.A0K().A04()) {
                        String.format(Locale.US, A01(64, 23, 98), e.getMessage());
                    }
                    cancel(true);
                    return null;
                }
            }
            throw new IllegalArgumentException(A01(0, 64, 69));
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
            return null;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{-18, Ascii.EM, -14, Ascii.RS, Ascii.RS, Ascii.SUB, -4, Ascii.SI, Ascii.ESC, Ascii.US, Ascii.SI, Ascii.GS, Ascii.RS, -2, Ascii.VT, Ascii.GS, Ascii.NAK, -54, Ascii.RS, Ascii.VT, Ascii.NAK, Ascii.SI, Ascii.GS, -54, Ascii.SI, 34, Ascii.VT, Ascii.CR, Ascii.RS, Ascii.SYN, 35, -54, Ascii.EM, Ascii.CAN, Ascii.SI, -54, Ascii.VT, Ascii.FS, 17, Ascii.US, Ascii.ETB, Ascii.SI, Ascii.CAN, Ascii.RS, -54, Ascii.EM, Ascii.DLE, -54, Ascii.RS, 35, Ascii.SUB, Ascii.SI, -54, -14, Ascii.RS, Ascii.RS, Ascii.SUB, -4, Ascii.SI, Ascii.ESC, Ascii.US, Ascii.SI, Ascii.GS, Ascii.RS, Ascii.SI, Ascii.ESC, Ascii.ESC, Ascii.ETB, -25, 57, 44, 56, 60, 44, 58, 59, -25, 45, 40, 48, 51, 44, 43, 1, -25, -20, 58, 36, 80, 80, 76, -4, 78, 65, 79, 76, 75, 74, 79, 65, -4, 69, 79, -4, 74, 81, 72, 72, -67, -48, -34, -37, -38, -39, -34, -48, -91, -117, -112, -49, -117, -109, -112, -34, -108, -91, 117, -112, -34};
    }

    private final void A03(InterfaceC2193bw interfaceC2193bw) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.AES(interfaceC2193bw);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }

    public final void A04(AbstractC2140b5 abstractC2140b5) {
        super.executeOnExecutor(this.A03, abstractC2140b5);
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ InterfaceC2193bw doInBackground(AbstractC2140b5[] abstractC2140b5Arr) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return null;
        }
        try {
            return A00(abstractC2140b5Arr);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final void onCancelled() {
        this.A00.AEs(this.A02);
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(InterfaceC2193bw interfaceC2193bw) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            A03(interfaceC2193bw);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
