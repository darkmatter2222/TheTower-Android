package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.kq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2737kq {
    public static byte[] A03;
    public static String[] A04 = {"fwnF9NqGlDDvd3tmLjHzlBLQ0vKEWHbi", "JyVh64c57ZQhNNoyVwIaBwBMCWCp47TX", "NiVjB9zhlvCIBmozr5iuMf4XPmRpTykj", "aMEAUKQnrJbxe7", "r8tEg4U8ig5A4Tipsx9WF382DZkzVk0N", "", "NXFd2c7X4J9ga52f6GNSRbndM6EeYerJ", "Iv2mUp4tdjLGTNz"};
    public static final AtomicBoolean A05;
    public C1617Hh A00;
    public String A01;
    public final C3060qC A02 = new C3060qC(300000000000L, new C1625Hp(this));

    static {
        A04();
        A05 = new AtomicBoolean(false);
    }

    public static InterfaceC2822mG A00(C1617Hh c1617Hh) {
        if (C2863mv.A1A(c1617Hh)) {
            return C2823mH.A01(A01(0, 6, 104), A01(18, 12, 67), A01(6, 12, 63));
        }
        HF hfA00 = C2823mH.A00();
        String[] strArr = A04;
        if (strArr[2].charAt(0) != strArr[6].charAt(0)) {
            throw new RuntimeException();
        }
        A04[0] = "UkANKLN4N59lG96lj5R5seL3Uvk1PYyc";
        return hfA00;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 91);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        C1617Hh c1617Hh;
        synchronized (this) {
            c1617Hh = this.A00;
        }
        if (c1617Hh == null) {
            return;
        }
        String strA05 = C2825mJ.A00().A01(c1617Hh, true).A05(A00(c1617Hh));
        synchronized (this) {
            this.A01 = strA05;
        }
    }

    public static void A03() {
        A05.set(true);
    }

    public static void A04() {
        A03 = new byte[]{114, 125, 114, 127, 124, 116, 42, 33, 48, 51, 43, 54, 47, 59, 48, Base64.padSymbol, 52, 33, 75, 93, 75, 75, 81, 87, 86, 71, 76, 81, 85, 93};
    }

    public final synchronized String A06(C1617Hh c1617Hh) {
        this.A00 = c1617Hh;
        this.A00.A08().ADG();
        this.A00.A04().AEE(c1617Hh);
        if (this.A00.A07().ALE() || ((A05.get() && C2863mv.A21(this.A00)) || this.A01 == null)) {
            A02();
            this.A02.A04().A03();
            A05.set(false);
        }
        this.A02.A06();
        return this.A01;
    }

    public final void A07() {
        this.A02.A05();
    }
}
