package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;
import com.google.firebase.database.core.ValidationPath;
import com.ironsource.InterfaceC3669k1;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2041Yt {
    public static byte[] A00;
    public static String[] A01 = {"XD1VVcqNSBFJbwW6eHZsmBMHnupZn01K", "N1oSAR1IK", "3lVSFIQXYXjEQOPdqX0UeKbtKj53aBPQ", "aHeQsfUZHyw0JkmIGhjZxkVg5EpF", "gRNVicHale59LaAXZrmmSJnj5ElYjvrb", "a7fW6ld7vJRE7ntXdjWzxUPW8W6dKgcq", "BA3H9nXCXT8w4D4Bib1SSz39xArljIew", "zOC5JwQQuoKAyO9HRsx"};
    public static final int[] A02;
    public static final int[] A03;
    public static final int[] A04;

    static {
        A06();
        A02 = new int[]{1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
        A03 = new int[]{-1, ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};
        A04 = new int[]{64, InterfaceC3669k1.d.b.j, 128, 192, 224, 256, 384, 448, 512, 640, ValidationPath.MAX_PATH_LENGTH_BYTES, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};
    }

    public static int A00(ByteBuffer byteBuffer) {
        int i;
        int iPosition = byteBuffer.position();
        switch (byteBuffer.get(iPosition)) {
            case -2:
                i = ((byteBuffer.get(iPosition + 5) & 1) << 6) | ((byteBuffer.get(iPosition + 4) & 252) >> 2);
                break;
            case -1:
                i = ((byteBuffer.get(iPosition + 4) & 7) << 4) | ((byteBuffer.get(iPosition + 7) & 60) >> 2);
                break;
            case 31:
                i = ((byteBuffer.get(iPosition + 5) & 7) << 4) | ((byteBuffer.get(iPosition + 6) & 60) >> 2);
                break;
            default:
                i = ((byteBuffer.get(iPosition + 4) & 1) << 6) | ((byteBuffer.get(iPosition + 5) & 252) >> 2);
                break;
        }
        int i2 = i + 1;
        String[] strArr = A01;
        if (strArr[0].charAt(13) == strArr[6].charAt(13)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[0] = "0PGqiVran1cRjQqCheO3Ah5n2J7tLg40";
        strArr2[6] = "TkdEi1fiF4is4vTW1kKg89pxvAF4cNNG";
        return i2 * 32;
    }

    public static int A01(byte[] bArr) {
        int i;
        boolean z = false;
        switch (bArr[0]) {
            case -2:
                i = (((bArr[4] & 3) << 12) | ((bArr[7] & 255) << 4) | ((bArr[6] & 240) >> 4)) + 1;
                break;
            case -1:
                i = (((bArr[7] & 3) << 12) | ((bArr[6] & 255) << 4) | ((bArr[9] & 60) >> 2)) + 1;
                z = true;
                break;
            case 31:
                i = (((bArr[6] & 3) << 12) | ((bArr[7] & 255) << 4) | ((bArr[8] & 60) >> 2)) + 1;
                z = true;
                break;
            default:
                i = (((bArr[5] & 3) << 12) | ((bArr[6] & 255) << 4) | ((bArr[7] & 240) >> 4)) + 1;
                break;
        }
        return z ? (i * 16) / 14 : i;
    }

    public static int A02(byte[] bArr) {
        int i;
        switch (bArr[0]) {
            case -2:
                i = ((bArr[5] & 1) << 6) | ((bArr[4] & 252) >> 2);
                break;
            case -1:
                i = ((bArr[4] & 7) << 4) | ((bArr[7] & 60) >> 2);
                break;
            case 31:
                i = ((bArr[5] & 7) << 4) | ((bArr[6] & 60) >> 2);
                break;
            default:
                i = ((bArr[4] & 1) << 6) | ((bArr[5] & 252) >> 2);
                break;
        }
        return (i + 1) * 32;
    }

    public static VC A03(byte[] bArr, String str, String str2, DrmInitData drmInitData) {
        C1743Mj c1743MjA04 = A04(bArr);
        c1743MjA04.A09(60);
        int i = A02[c1743MjA04.A04(6)];
        int i2 = A03[c1743MjA04.A04(4)];
        int iA04 = c1743MjA04.A04(5);
        int i3 = iA04 >= A04.length ? -1 : (A04[iA04] * 1000) / 2;
        c1743MjA04.A09(10);
        return new C1689Ke().A0y(str).A11(A05(0, 13, 63)).A0a(i3).A0b(i + (c1743MjA04.A04(2) > 0 ? 1 : 0)).A0m(i2).A0u(drmInitData).A10(str2).A14();
    }

    public static C1743Mj A04(byte[] bArr) {
        if (bArr[0] == 127) {
            return new C1743Mj(bArr);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        if (A08(bArrCopyOf)) {
            for (int i = 0; i < bArrCopyOf.length - 1; i += 2) {
                byte b = bArrCopyOf[i];
                bArrCopyOf[i] = bArrCopyOf[i + 1];
                bArrCopyOf[i + 1] = b;
            }
        }
        C1743Mj c1743Mj = new C1743Mj(bArrCopyOf);
        if (bArrCopyOf[0] == 31) {
            C1743Mj c1743Mj2 = new C1743Mj(bArrCopyOf);
            while (c1743Mj2.A01() >= 16) {
                c1743Mj2.A09(2);
                c1743Mj.A0B(c1743Mj2.A04(14), 14);
            }
        }
        c1743Mj.A0D(bArrCopyOf);
        return c1743Mj;
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] - i3) - 26;
            if (A01[4].charAt(15) != 'X') {
                throw new RuntimeException();
            }
            A01[4] = "AJoXbhRQuybif1WXqT0ioUQAqPv2Quyv";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A00 = new byte[]{-70, -50, -67, -62, -56, -120, -49, -57, -67, -121, -67, -51, -52};
    }

    public static boolean A07(int i) {
        return i == 2147385345 || i == -25230976 || i == 536864768 || i == -14745368;
    }

    public static boolean A08(byte[] bArr) {
        return bArr[0] == -2 || bArr[0] == -1;
    }
}
