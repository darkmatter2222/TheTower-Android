package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest;
import com.google.common.base.Ascii;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.concurrent.Executors;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cP, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2222cP {
    public static ND A06;
    public static C1921Tr A07;
    public static InterfaceC2331eB A08;
    public static C2222cP A09;
    public static File A0A;
    public static byte[] A0B;
    public boolean A00;
    public final C1617Hh A04;
    public final Handler A01 = new Handler(Looper.getMainLooper());
    public final SparseArray<C2230cX> A02 = new SparseArray<>();
    public final Runnable A05 = new RunnableC2235cc(this);
    public final InterfaceC1920Tq A03 = new C1432Ad(this);

    static {
        A0D();
    }

    public C2222cP(C1617Hh c1617Hh, C1921Tr c1921Tr) {
        this.A04 = c1617Hh;
        if (c1921Tr != null) {
            A07 = c1921Tr;
            c1921Tr.A0F(this.A03);
        }
        A03().A0E();
    }

    public static synchronized ND A01(Context context) {
        if (A06 == null) {
            A06 = new TR(context);
        }
        return A06;
    }

    private C9H A02() {
        return new C9H().A01(A08(135, 3, 76)).A00(null);
    }

    private synchronized C1921Tr A03() {
        A0E();
        return A07;
    }

    public static synchronized InterfaceC2331eB A04(Context context) {
        if (A08 == null) {
            A08 = new MT(new File(A07(context), A08(121, 14, 77)), new C13917x(C2863mv.A0R(context)));
        }
        return A08;
    }

    public static C1746Mm A05(TD td, InterfaceC2331eB interfaceC2331eB) {
        return new C1746Mm().A06(interfaceC2331eB).A05(td).A04(new T8()).A03(2);
    }

    public static synchronized C2222cP A06(C1617Hh c1617Hh) {
        if (A09 == null) {
            A09 = new C2222cP(c1617Hh, null);
        }
        return A09;
    }

    public static synchronized File A07(Context context) {
        if (A0A == null) {
            A0A = context.getCacheDir();
            if (A0A == null) {
                A0A = context.getFilesDir();
            }
        }
        return A0A;
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 103);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A09(C1617Hh c1617Hh, Uri uri) {
        try {
            if (C2863mv.A1w(c1617Hh)) {
                return new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), null, uri.getFragment()).toString();
            }
            return null;
        } catch (URISyntaxException e) {
            c1617Hh.A08().ABz(A08(138, 5, 11), AbstractC2786lf.A0u, new C2787lg(e));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A() {
        for (TW tw : A03().A0D()) {
            int iHashCode = tw.A07.A02.hashCode();
            C2230cX c2230cX = this.A02.get(iHashCode);
            boolean z = tw.A02 == 2 && tw.A01() > 0;
            String str = A08(69, 15, 89) + iHashCode + A08(20, 25, 52) + tw.A00() + A08(0, 20, 18) + tw.A01() + A08(45, 9, 61) + tw.A02;
            if (c2230cX != null) {
                int i = tw.A02;
                if (i == 3 || z || tw.A00() >= 100.0f || tw.A01() > c2230cX.A00) {
                    String str2 = A08(84, 19, 16) + i + A08(54, 8, 111) + tw.A01();
                    c2230cX.A01.AEl(c2230cX.A02);
                    this.A02.remove(iHashCode);
                } else if (i == 4 || i == 1) {
                    String str3 = A08(103, 14, 89) + i;
                    c2230cX.A01.AEt(new Throwable(String.valueOf(tw.A01)));
                    this.A02.remove(iHashCode);
                }
            }
            String str4 = A08(117, 4, 14) + iHashCode + A08(62, 7, 25) + tw.A01();
        }
    }

    private void A0B() {
        if (this.A00) {
            return;
        }
        this.A00 = true;
        this.A01.post(this.A05);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C() {
        this.A01.removeCallbacks(this.A05);
        this.A00 = false;
    }

    public static void A0D() {
        A0B = new byte[]{-103, -90, -103, -37, -14, -19, -34, -20, -40, -35, -24, -16, -25, -27, -24, -38, -35, -34, -35, -77, -69, -56, -69, Ascii.VT, 0, Ascii.CR, -2, 0, 9, Ascii.SI, -4, 2, 0, -69, -1, 10, Ascii.DC2, 9, 7, 10, -4, -1, 0, -1, -43, -60, -47, -60, Ascii.ETB, Ascii.CAN, 5, Ascii.CAN, 9, -34, -10, Ascii.CAN, 79, 74, 59, 73, Ascii.DLE, -10, -96, -30, -7, -12, -27, -13, -96, -19, -19, -19, -19, -32, 50, 37, 49, 53, 37, 51, 52, 9, 36, -6, -69, -26, -18, -27, -29, -26, -40, -37, -36, -37, -91, -105, -54, -21, -40, -21, -36, -79, -105, 5, 50, 50, 47, 50, -18, -32, 19, 52, 33, 52, 37, -6, -32, -55, -42, -24, -32, Ascii.NAK, Ascii.CAN, 34, 43, -31, Ascii.CAN, 35, 43, 34, 32, 35, Ascii.NAK, Ascii.CAN, 39, Ascii.DC4, Ascii.ETB, 38, -43, -45, -43, -38, -41};
    }

    private synchronized void A0E() {
        if (A07 == null) {
            A07 = new C1921Tr(this.A04, A01(this.A04), A04(this.A04), A0H(this.A04), Executors.newFixedThreadPool(6));
            A07.A0F(this.A03);
        }
    }

    public final NN A0H(Context context) {
        return A05(new TD(context, (InterfaceC1768Ni) null, A02()), A04(context));
    }

    public final void A0I(Uri uri, InterfaceC2223cQ interfaceC2223cQ, long j) {
        String strA09 = A09(this.A04, uri);
        if (strA09 == null) {
            strA09 = uri.toString();
        }
        boolean zA0J = A0J(strA09);
        DownloadRequest downloadRequestA05 = new C1924Tu(uri.toString(), uri).A00(strA09).A05();
        A03().A0G(downloadRequestA05);
        this.A02.put(downloadRequestA05.A02.hashCode(), new C2230cX(interfaceC2223cQ, j, zA0J, null));
        A0B();
    }

    public final boolean A0J(String str) {
        return A04(this.A04).A7m(str, 0L, 1L) > 0;
    }
}
