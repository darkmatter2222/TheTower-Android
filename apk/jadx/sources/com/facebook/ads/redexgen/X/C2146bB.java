package com.facebook.ads.redexgen.X;

import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2146bB {
    public static byte[] A05;
    public static String[] A06 = {"mmPErTj", "K9ExEazTZ3WFv6SCxncreKjwLXjXCyhb", "Q3fPujAXV", "AGUF", "Y2zUmeLwNLvMuBvxTcvoXmc", "rVtHJBkiJVUXSrbBDtFS9pwh6Ga5B6g8", "l1pzjmR", "KMLDpJ7cXvrz4OGxqZ4RWojRY2dvT9L"};
    public final int A00;
    public final ZN A01;
    public final String A02;
    public final boolean A03;
    public final byte[] A04;

    static {
        A02();
    }

    public C2146bB(boolean z, String str, int i, byte[] bArr, int i2, int i3, byte[] bArr2) {
        AbstractC1722Ln.A07((bArr2 == null) ^ (i == 0));
        this.A03 = z;
        this.A02 = str;
        this.A00 = i;
        this.A04 = bArr2;
        this.A01 = new ZN(A00(str), bArr, i2, i3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x000c  */
    public static int A00(String str) {
        byte b;
        if (str == null) {
            return 1;
        }
        switch (str.hashCode()) {
            case 3046605:
                if (!str.equals(A01(86, 4, 12))) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 3046671:
                if (!str.equals(A01(90, 4, 111))) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 3049879:
                if (!str.equals(A01(94, 4, 33))) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case 3049895:
                if (!str.equals(A01(98, 4, 55))) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
            case 1:
                return 1;
            case 2:
            case 3:
                return 2;
            default:
                MV.A07(A01(32, 18, 126), A01(50, 36, InterfaceC3669k1.d.b.k) + str + A01(0, 32, InterfaceC3669k1.d.b.j));
                return 1;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A06[1].charAt(8) == 'R') {
                throw new RuntimeException();
            }
            A06[5] = "x7aa6QcfJq1EkYVNe9ozivRcPlo0CTfd";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 104);
            i4++;
        }
    }

    public static void A02() {
        A05 = new byte[]{63, 54, 56, 89, 107, 107, 109, 117, 113, 118, 127, 56, 89, 93, 75, 53, 91, 76, 74, 56, 123, 106, 97, 104, 108, 119, 56, 117, 119, 124, 125, 54, 66, 100, 119, 117, 125, 83, 120, 117, 100, 111, 102, 98, 127, 121, 120, 84, 121, 110, 76, 119, 106, 108, 105, 105, 118, 107, 109, 124, 125, 57, 105, 107, 118, 109, 124, 122, 109, 112, 118, 119, 57, 106, 122, 113, 124, 116, 124, 57, 109, 96, 105, 124, 57, 62, 7, 6, 7, 85, 100, 101, 100, 116, 42, 44, 39, 42, 60, 58, 49, 44};
    }
}
