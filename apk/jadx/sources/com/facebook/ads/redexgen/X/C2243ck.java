package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ck, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2243ck {
    public static byte[] A05;
    public static String[] A06 = {"", "Ztslnazxor8je3yQ", "LrjEQgLfXaVfUrfJ3FsNA", "g0PlC4cClPaJK", "gqtai4aqees8ko4uRasZLq", "cwDsCyJmQ2vNzOgiixEsI2pICzxZGVFY", "eA3BPdFTk5Npb5ccD3G94", ""};
    public static final byte[] A07;
    public int A00;
    public int A01;
    public byte[] A02;
    public int A03;
    public boolean A04;

    static {
        A01();
        A07 = new byte[]{0, 0, 1};
    }

    public C2243ck(int i) {
        this.A02 = new byte[i];
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 121);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{47, Ascii.EM, Ascii.GS, Ascii.SUB, 57, 76, 72, 75, 76, 89, -47, -22, -31, -12, -20, -31, -33, -16, -31, -32, -100, -17, -16, -35, -18, -16, -100, -33, -21, -32, -31, -100, -14, -35, -24, -15, -31};
    }

    public final void A02() {
        this.A04 = false;
        this.A00 = 0;
        this.A03 = 0;
    }

    public final void A03(byte[] bArr, int i, int i2) {
        if (this.A04) {
            int i3 = i2 - i;
            if (this.A02.length < this.A00 + i3) {
                this.A02 = Arrays.copyOf(this.A02, (this.A00 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.A02, this.A00, i3);
            int i4 = this.A00;
            if (A06[4].length() == 11) {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[2] = "w1mJkV58ydwmQGDuAB0J9";
            strArr[3] = "C0zHqlOqkd4hB";
            this.A00 = i4 + i3;
        }
    }

    public final boolean A04(int i, int i2) {
        int i3 = this.A03;
        String strA00 = A00(10, 27, 3);
        String strA01 = A00(0, 10, 110);
        switch (i3) {
            case 0:
                if (i == 176) {
                    this.A03 = 1;
                    this.A04 = true;
                }
                break;
            case 1:
                if (i == 181) {
                    this.A03 = 2;
                } else {
                    MV.A07(strA01, strA00);
                    A02();
                }
                break;
            case 2:
                if (i <= 31) {
                    this.A03 = 3;
                } else {
                    MV.A07(strA01, strA00);
                    A02();
                }
                break;
            case 3:
                if ((i & 240) == 32) {
                    this.A01 = this.A00;
                    this.A03 = 4;
                } else {
                    MV.A07(strA01, strA00);
                    A02();
                }
                break;
            case 4:
                if (i == 179 || i == 181) {
                    this.A00 -= i2;
                    this.A04 = false;
                    return true;
                }
                break;
            default:
                throw new IllegalStateException();
        }
        A03(A07, 0, A07.length);
        return false;
    }
}
