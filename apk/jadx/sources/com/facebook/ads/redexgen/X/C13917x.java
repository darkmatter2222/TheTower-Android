package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.Comparator;
import java.util.TreeSet;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7x, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public final class C13917x implements InterfaceC1745Ml {
    public static byte[] A03;

    @MetaExoPlayerCustomization
    public long A00;

    @MetaExoPlayerCustomization
    public final long A01;

    @MetaExoPlayerCustomization
    public final TreeSet<C2341eL> A02 = new TreeSet<>(new Comparator() { // from class: com.facebook.ads.redexgen.X.eZ
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return C13917x.A00((C2341eL) obj, (C2341eL) obj2);
        }
    });

    static {
        A02();
    }

    public C13917x(long j) {
        this.A01 = j;
    }

    @MetaExoPlayerCustomization
    public static int A00(C2341eL c2341eL, C2341eL c2341eL2) {
        if (c2341eL.A00 - c2341eL2.A00 == 0) {
            return c2341eL.compareTo(c2341eL2);
        }
        return c2341eL.A00 < c2341eL2.A00 ? -1 : 1;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 123);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{-9, 8, -5, -11, 6, -43, -13, -11, -6, -9};
    }

    private void A03(InterfaceC2331eB interfaceC2331eB, long j) {
        AbstractC1753Mt.A02(A01(0, 10, 23));
        while (this.A00 + j > this.A01 && !this.A02.isEmpty()) {
            interfaceC2331eB.AJm(this.A02.first());
        }
        AbstractC1753Mt.A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2330eA
    public final void AH9(InterfaceC2331eB interfaceC2331eB, C2341eL c2341eL) {
        this.A02.add(c2341eL);
        this.A00 += c2341eL.A01;
        A03(interfaceC2331eB, 0L);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2330eA
    public final void AHA(InterfaceC2331eB interfaceC2331eB, C2341eL c2341eL) {
        this.A02.remove(c2341eL);
        this.A00 -= c2341eL.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2330eA
    public final void AHB(InterfaceC2331eB interfaceC2331eB, C2341eL c2341eL, C2341eL c2341eL2) {
        AHA(interfaceC2331eB, c2341eL);
        AH9(interfaceC2331eB, c2341eL2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1745Ml
    public final void AHC(InterfaceC2331eB interfaceC2331eB, String str, long j, long j2) {
        if (j2 != -1) {
            A03(interfaceC2331eB, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1745Ml
    public final boolean AK1() {
        return true;
    }
}
