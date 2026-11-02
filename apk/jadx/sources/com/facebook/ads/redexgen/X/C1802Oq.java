package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Oq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1802Oq implements InterfaceC2043Yv {
    public static byte[] A03;
    public static String[] A04 = {"x", "MiUD8Isflwo", "KZKaSVAY", "mp8bdMD1yg5xa0iWi32P6T4pt0URnEjo", "zIPFGAzXK1NPSfEVzLcBth4U9l189OV3", "ollVFlEdibIM6SsOFXYDJd5zCVU5wYsQ", "LVFdRt7YRf1", "WfjrlLhSwLMWW1ghpgSewv2b9IikS1nc"};
    public static final InterfaceC2047Yz A05;
    public InterfaceC2044Yw A00;
    public AbstractC2158bN A01;
    public boolean A02;

    static {
        A02();
        A05 = new InterfaceC2047Yz() { // from class: com.facebook.ads.redexgen.X.Or
            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final InterfaceC2043Yv[] A5w() {
                return C1802Oq.A04();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final /* synthetic */ InterfaceC2043Yv[] A5x(Uri uri, Map map) {
                return AbstractC2046Yy.A01(this, uri, map);
            }
        };
    }

    public static C1744Mk A00(C1744Mk c1744Mk) {
        c1744Mk.A0f(0);
        return c1744Mk;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ kotlin.fh.h1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        String[] strArr = A04;
        if (strArr[1].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        A04[0] = "J";
        A03 = new byte[]{122, 93, 85, 80, 89, 88, Ascii.FS, 72, 83, Ascii.FS, 88, 89, 72, 89, 78, 81, 85, 82, 89, Ascii.FS, 94, 85, 72, 79, 72, 78, 89, 93, 81, Ascii.FS, 72, 69, 76, 89};
    }

    @EnsuresNonNullIf
    private boolean A03(Q9 q9) throws IOException {
        C2154bJ c2154bJ = new C2154bJ();
        if (!c2154bJ.A05(q9, true) || (c2154bJ.A04 & 2) != 2) {
            return false;
        }
        int iMin = Math.min(c2154bJ.A00, 8);
        C1744Mk c1744Mk = new C1744Mk(iMin);
        q9.AI6(c1744Mk.A0l(), 0, iMin);
        if (C1806Ou.A01(A00(c1744Mk))) {
            this.A01 = new C1806Ou();
        } else if (C1797Ol.A06(A00(c1744Mk))) {
            this.A01 = new C1797Ol();
        } else {
            if (!C1799On.A02(A00(c1744Mk))) {
                return false;
            }
            this.A01 = new C1799On();
        }
        return true;
    }

    public static /* synthetic */ InterfaceC2043Yv[] A04() {
        return new InterfaceC2043Yv[]{new C1802Oq()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AAq(InterfaceC2044Yw interfaceC2044Yw) {
        this.A00 = interfaceC2044Yw;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        AbstractC1722Ln.A02(this.A00);
        if (this.A01 == null) {
            if (!A03(q9)) {
                throw L9.A01(A01(0, 34, 87), null);
            }
            q9.AK3();
        }
        boolean z = this.A02;
        String[] strArr = A04;
        if (strArr[7].charAt(17) == strArr[5].charAt(17)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[1] = "R5brB6y4piA";
        strArr2[6] = "kwYf40qjcdA";
        if (!z) {
            ZP zpALm = this.A00.ALm(0, 1);
            this.A00.A6x();
            this.A01.A0H(this.A00, zpALm);
            this.A02 = true;
        }
        return this.A01.A0B(q9, zh);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AKO(long j, long j2) {
        if (this.A01 != null) {
            this.A01.A0G(j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final boolean ALN(Q9 q9) throws IOException {
        try {
            return A03(q9);
        } catch (L9 unused) {
            return false;
        }
    }
}
