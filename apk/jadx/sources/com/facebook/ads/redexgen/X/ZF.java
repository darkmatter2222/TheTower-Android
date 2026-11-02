package com.facebook.ads.redexgen.X;

import com.unity3d.services.UnityAdsConstants;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class ZF {
    public static String[] A00 = {"ON2lBVWcopFIWEcOBfBC2A6hv0OlZhxY", "HSg4qUVYk3", "BHn8bAeRQi86", "UZhFPzyR8JT8QtiHzFezyAzPaZKjH6V0", "zIM0", "vxkoFT8mRMlMU", "e0LTrN", "adxKEA"};

    public static int A00(ByteBuffer byteBuffer) {
        return (int) ((48000 * A03(byteBuffer.get(0), byteBuffer.limit() > 1 ? byteBuffer.get(1) : (byte) 0)) / 1000000);
    }

    public static int A01(byte[] bArr) {
        return bArr[9] & 255;
    }

    public static int A02(byte[] bArr) {
        return ((bArr[11] & 255) << 8) | (bArr[10] & 255);
    }

    public static long A03(byte b, byte b2) {
        int i;
        int i2;
        int i3 = b & 255;
        switch (i3 & 3) {
            case 0:
                i = 1;
                break;
            case 1:
            case 2:
                i = 2;
                break;
            default:
                i = b2 & 63;
                break;
        }
        int i4 = i3 >> 3;
        int i5 = i4 & 3;
        if (i4 >= 16) {
            i2 = UnityAdsConstants.RequestPolicy.RETRY_MAX_INTERVAL << i5;
        } else if (i4 >= 12) {
            i2 = UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS << (i5 & 1);
        } else {
            i2 = i5 == 3 ? 60000 : UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS << i5;
        }
        long j = i;
        long j2 = i2;
        String[] strArr = A00;
        if (strArr[1].length() == strArr[3].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A00;
        strArr2[7] = "vooNty";
        strArr2[6] = "vt5dMN";
        return j * j2;
    }

    public static long A04(long j) {
        return (1000000000 * j) / 48000;
    }

    public static long A05(byte[] bArr) {
        return A03(bArr[0], bArr.length > 1 ? bArr[1] : (byte) 0);
    }

    public static List<byte[]> A06(byte[] bArr) {
        long jA04 = A04(A02(bArr));
        long jA05 = A04(3840L);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(A07(jA04));
        arrayList.add(A07(jA05));
        return arrayList;
    }

    public static byte[] A07(long j) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j).array();
    }
}
