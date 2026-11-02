package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.flac.PictureFrame;
import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Z5 {
    public static byte[] A0C;
    public static String[] A0D = {"l3F1jvmu1E6Abjs95vKWdPOgrIVyCHZF", "Aw0MydQON9WCkwJIXXnZk9FehzIatNTv", "XgcSYQFAy", "XL", "RY9tE", "li6blo2Iheg0MJgrpi05cufhQ6lbjqj0", "YVDaNSs8qtMqpo5g8uTPZ6UBLpvwqNrn", "cRv9K0xuAPjHO7NpNcUHWucgK9HWaRfF"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final long A09;
    public final Z4 A0A;
    public final Metadata A0B;

    static {
        A04();
    }

    public Z5(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, Z4 z4, Metadata metadata) {
        this.A05 = i;
        this.A03 = i2;
        this.A06 = i3;
        this.A04 = i4;
        this.A07 = i5;
        this.A08 = A01(i5);
        this.A02 = i6;
        this.A00 = i7;
        this.A01 = A00(i7);
        this.A09 = j;
        this.A0A = z4;
        this.A0B = metadata;
    }

    public Z5(byte[] bArr, int i) {
        C1743Mj c1743Mj = new C1743Mj(bArr);
        c1743Mj.A08(i * 8);
        this.A05 = c1743Mj.A04(16);
        this.A03 = c1743Mj.A04(16);
        this.A06 = c1743Mj.A04(24);
        this.A04 = c1743Mj.A04(24);
        this.A07 = c1743Mj.A04(20);
        this.A08 = A01(this.A07);
        this.A02 = c1743Mj.A04(3) + 1;
        this.A00 = c1743Mj.A04(5) + 1;
        this.A01 = A00(this.A00);
        this.A09 = c1743Mj.A05(36);
        this.A0A = null;
        this.A0B = null;
    }

    public static int A00(int i) {
        switch (i) {
            case 8:
                return 1;
            case 12:
                return 2;
            case 16:
                return 4;
            case 20:
                return 5;
            case 24:
                String[] strArr = A0D;
                if (strArr[4].length() == strArr[3].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0D;
                strArr2[5] = "lcMhzVzuxDvQuAiHCiZQrWi81xojeGQ4";
                strArr2[0] = "lfzEs8BRcEtB5Ahq6hd9sjoS4iEOv5vj";
                return 6;
            default:
                return -1;
        }
    }

    public static int A01(int i) {
        switch (i) {
            case ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED /* 8000 */:
                return 4;
            case 16000:
                String[] strArr = A0D;
                if (strArr[1].charAt(20) == strArr[6].charAt(20)) {
                    return 5;
                }
                String[] strArr2 = A0D;
                strArr2[5] = "lSHFm8H8FIgV2vFKz0xxy9hp8Q14wqzN";
                strArr2[0] = "lWa5SzZxSs0AFKJ9FtOk0x1pkkEzbvHr";
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                String[] strArr3 = A0D;
                if (strArr3[1].charAt(20) == strArr3[6].charAt(20)) {
                    throw new RuntimeException();
                }
                A0D[7] = "cDo9x4cjHBr8vkdx8pgHLaUNfvWvN6AY";
                return -1;
        }
    }

    private final Metadata A02(Metadata metadata) {
        return this.A0B == null ? metadata : this.A0B.A04(metadata);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = bArrCopyOfRange[i4];
            String[] strArr = A0D;
            if (strArr[1].charAt(20) == strArr[6].charAt(20)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0D;
            strArr2[1] = "uONHpfKwzoEVKSqDMMiXU8s3KSQETgs7";
            strArr2[6] = "gMGp9aisw42FPtkv1Vd8htjOfa6YfSyk";
            bArrCopyOfRange[i4] = (byte) ((b ^ i3) ^ 85);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0C = new byte[]{107, 127, 110, 99, 101, 37, 108, 102, 107, 105};
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0033  */
    public final long A05() {
        long j;
        if (this.A04 > 0) {
            return ((((long) this.A04) + ((long) this.A06)) / 2) + 1;
        }
        if (this.A05 == this.A03) {
            int i = this.A05;
            String[] strArr = A0D;
            if (strArr[5].charAt(0) != strArr[0].charAt(0)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0D;
            strArr2[5] = "lOKJ5eUqfL8WF3zIaknb90FklYPJY6L4";
            strArr2[0] = "lq5Jr09jayShp2rldgx5drpyiT5BTS93";
            if (i > 0) {
                j = this.A05;
            } else {
                j = 4096;
            }
        } else {
            j = 4096;
        }
        return (((((long) this.A02) * j) * ((long) this.A00)) / 8) + 64;
    }

    public final long A06() {
        if (this.A09 == 0) {
            return -9223372036854775807L;
        }
        return (this.A09 * 1000000) / ((long) this.A07);
    }

    public final long A07(long j) {
        return N1.A0T((((long) this.A07) * j) / 1000000, 0L, this.A09 - 1);
    }

    public final VC A08(byte[] bArr, Metadata metadata) {
        bArr[4] = -128;
        return new C1689Ke().A11(A03(0, 10, 95)).A0h(this.A04 > 0 ? this.A04 : -1).A0b(this.A02).A0m(this.A07).A12(Collections.singletonList(bArr)).A0v(A02(metadata)).A14();
    }

    public final Z5 A09(Z4 z4) {
        return new Z5(this.A05, this.A03, this.A06, this.A04, this.A07, this.A02, this.A00, this.A09, z4, this.A0B);
    }

    public final Z5 A0A(List<PictureFrame> list) {
        return new Z5(this.A05, this.A03, this.A06, this.A04, this.A07, this.A02, this.A00, this.A09, this.A0A, A02(new Metadata(list)));
    }

    public final Z5 A0B(List<String> list) {
        return new Z5(this.A05, this.A03, this.A06, this.A04, this.A07, this.A02, this.A00, this.A09, this.A0A, A02(ZW.A02(list)));
    }
}
