package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Pair;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class NV implements InterfaceC2043Yv {
    public static byte[] A07;
    public static String[] A08 = {"JQ3z9aQ", "qNv424by6dTLmwjeKoXZ2PfXMcWOkeQ0", "NzdJdpzz4348", "cKcaR7A3vnFSHNNoL3NCLZkx", "iXghBSyBpA", "bFFC5H9SWtnHvszDN8wnjLrTTIcf6HOL", "0hXrTFCLiOcvrLsJs", "etQvOlVA13DnllIi"};
    public static final InterfaceC2047Yz A09;
    public InterfaceC2044Yw A04;
    public ZP A05;
    public InterfaceC2266d7 A06;
    public int A01 = 0;
    public long A03 = -1;
    public int A00 = -1;
    public long A02 = -1;

    static {
        A03();
        A09 = new InterfaceC2047Yz() { // from class: com.facebook.ads.redexgen.X.Nc
            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final InterfaceC2043Yv[] A5w() {
                return NV.A08();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final /* synthetic */ InterfaceC2043Yv[] A5x(Uri uri, Map map) {
                return AbstractC2046Yy.A01(this, uri, map);
            }
        };
    }

    private int A00(Q9 q9) throws IOException {
        AbstractC1722Ln.A08(this.A02 != -1);
        return ((InterfaceC2266d7) AbstractC1722Ln.A01(this.A06)).AKB(q9, this.A02 - q9.A9Q()) ? -1 : 0;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 66);
        }
        return new String(bArrCopyOfRange);
    }

    @EnsuresNonNull
    private void A02() {
        AbstractC1722Ln.A02(this.A05);
    }

    public static void A03() {
        A07 = new byte[]{47, 35, Ascii.SO, 43, 62, 43, 106, 47, 50, 41, 47, 47, 46, 57, 106, 35, 36, 58, 63, 62, 106, 38, 47, 36, 45, 62, 34, 112, 106, 62, 5, Ascii.CAN, Ascii.RS, Ascii.ESC, Ascii.ESC, 4, Ascii.EM, Ascii.US, Ascii.SO, Ascii.SI, 75, 60, 42, Base64.padSymbol, 75, Ascii.CR, 4, Ascii.EM, 6, 10, Ascii.US, 75, Ascii.US, Ascii.DC2, Ascii.ESC, Ascii.SO, 81, 75, 1, 58, 39, 33, 36, 36, 59, 38, 32, 49, 48, 116, 59, 38, 116, 33, 58, 38, 49, 55, 59, 51, 58, Base64.padSymbol, 46, 49, 48, 116, 35, 53, 34, 116, 50, Base64.padSymbol, 56, 49, 116, 32, 45, 36, 49, 122, 41, Ascii.US, 8, 59, 6, 10, Ascii.FF, Ascii.US, Ascii.GS, 10, 17, Ascii.FF, Base64.padSymbol, 41, 56, 53, 51, 115, 59, 107, 109, 109, 113, Base64.padSymbol, 48, Base64.padSymbol, 43, Base64.padSymbol, 41, 56, 53, 51, 115, 59, 107, 109, 109, 113, 49, 48, Base64.padSymbol, 43, 115, 103, 118, 123, 125, Base64.padSymbol, 96, 115, 101};
    }

    private void A04(Q9 q9) throws IOException {
        AbstractC1722Ln.A08(q9.A9Q() == 0);
        if (this.A00 != -1) {
            q9.ALL(this.A00);
            this.A01 = 4;
        } else {
            if (!AbstractC2270dB.A06(q9)) {
                throw L9.A01(A01(58, 42, 22), null);
            }
            q9.ALL((int) (q9.A9L() - q9.A9Q()));
            this.A01 = 1;
        }
    }

    @RequiresNonNull
    private void A05(Q9 q9) throws IOException {
        C2268d9 c2268d9A02 = AbstractC2270dB.A02(q9);
        if (c2268d9A02.A03 == 17) {
            this.A06 = new C1761Nb(this.A04, this.A05, c2268d9A02);
        } else if (c2268d9A02.A03 == 6) {
            this.A06 = new NW(this.A04, this.A05, c2268d9A02, A01(InterfaceC3669k1.d.b.j, 15, 30), -1);
        } else if (c2268d9A02.A03 == 7) {
            this.A06 = new NW(this.A04, this.A05, c2268d9A02, A01(127, 15, 30), -1);
        } else {
            int iA00 = ZX.A00(c2268d9A02.A03, c2268d9A02.A01);
            if (iA00 == 0) {
                throw L9.A00(A01(29, 29, 41) + c2268d9A02.A03);
            }
            this.A06 = new NW(this.A04, this.A05, c2268d9A02, A01(142, 9, 80), iA00);
        }
        this.A01 = 3;
    }

    private void A06(Q9 q9) throws IOException {
        this.A03 = AbstractC2270dB.A00(q9);
        this.A01 = 2;
    }

    private void A07(Q9 q9) throws IOException {
        Pair<Long, Long> pairA01 = AbstractC2270dB.A01(q9);
        this.A00 = ((Long) pairA01.first).intValue();
        long jLongValue = ((Long) pairA01.second).longValue();
        if (this.A03 != -1 && jLongValue == 4294967295L) {
            jLongValue = this.A03;
        }
        this.A02 = ((long) this.A00) + jLongValue;
        long jA90 = q9.A90();
        if (jA90 != -1 && this.A02 > jA90) {
            MV.A07(A01(100, 12, 60), A01(2, 27, 8) + this.A02 + A01(0, 2, 65) + jA90);
            this.A02 = jA90;
        }
        ((InterfaceC2266d7) AbstractC1722Ln.A01(this.A06)).AAm(this.A00, this.A02);
        this.A01 = 4;
    }

    public static /* synthetic */ InterfaceC2043Yv[] A08() {
        return new InterfaceC2043Yv[]{new NV()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AAq(InterfaceC2044Yw interfaceC2044Yw) {
        this.A04 = interfaceC2044Yw;
        this.A05 = interfaceC2044Yw.ALm(0, 1);
        interfaceC2044Yw.A6x();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        A02();
        switch (this.A01) {
            case 0:
                A04(q9);
                if (A08[1].charAt(3) == 'e') {
                    throw new RuntimeException();
                }
                A08[6] = "g6QnN9f8MLmgomtMsxw8JwmjGHpvx";
                return 0;
            case 1:
                A06(q9);
                return 0;
            case 2:
                A05(q9);
                return 0;
            case 3:
                A07(q9);
                return 0;
            case 4:
                return A00(q9);
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AKO(long j, long j2) {
        this.A01 = j == 0 ? 0 : 4;
        InterfaceC2266d7 interfaceC2266d7 = this.A06;
        if (A08[1].charAt(3) == 'e') {
            throw new RuntimeException();
        }
        A08[5] = "S4hlkcTsIiesysFxXbkxANrU4k838HT3";
        if (interfaceC2266d7 != null) {
            this.A06.AK2(j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final boolean ALN(Q9 q9) throws IOException {
        return AbstractC2270dB.A06(q9);
    }
}
