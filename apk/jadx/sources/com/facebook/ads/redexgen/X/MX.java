package com.facebook.ads.redexgen.X;

import android.media.MediaFormat;
import com.facebook.ads.androidx.media3.common.ColorInfo;
import com.google.common.primitives.SignedBytes;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class MX {
    public static byte[] A00;
    public static String[] A01 = {com.ironsource.Nc.e, "i65AyHoXhr03CZTkwFIsJPOqjFKh7SdZ", "gAbJvAXG7VAvpxzxcYKdDebdKuiKWAVi", "iTegN4CLcHpcAElPiGNAFOSrQgadfB", "gojcFh5YQgZVdw3RfQsPk76OA0q5Wgol", "5975FOL9BJuGMsJl92VFO3rFk8IB4T1W", "B01kqTAHFG", "d3UmOFRYw"};

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A01;
            if (strArr[7].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[5] = "gX60bN5F4sCW8TusqdUF4ztUEmSZSFK6";
            strArr2[2] = "vmo615Sie4vfxGGKNuV6tWqzBviQlWUT";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 47);
            i4++;
        }
    }

    public static void A01() {
        A00 = new byte[]{70, 74, 73, 74, 87, 8, 87, 68, 75, 66, SignedBytes.MAX_POWER_OF_TWO, 102, 106, 105, 106, 119, 40, 118, 113, 100, 107, 97, 100, 119, 97, 78, 66, 65, 66, 95, 0, 89, 95, 76, 67, 94, 75, 72, 95, 49, 33, 54, 127, 126, 114, 100, 59, 101, 98, 119, 98, 127, 117, 59, 127, 120, 112, 121};
    }

    public static void A02(MediaFormat mediaFormat, ColorInfo colorInfo) {
        if (colorInfo != null) {
            String strA00 = A00(25, 14, 2);
            int i = colorInfo.A03;
            String[] strArr = A01;
            if (strArr[7].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            A01[1] = "xeL0lPESkp4f5J5FbIAShl1PzrWbveLZ";
            A04(mediaFormat, strA00, i);
            A04(mediaFormat, A00(11, 14, 42), colorInfo.A02);
            A04(mediaFormat, A00(0, 11, 10), colorInfo.A01);
            A05(mediaFormat, A00(43, 15, 57), colorInfo.A04);
        }
    }

    public static void A03(MediaFormat mediaFormat, String str, float f) {
        if (f != -1.0f) {
            mediaFormat.setFloat(str, f);
        }
    }

    public static void A04(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    public static void A05(MediaFormat mediaFormat, String str, byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void A06(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer(A00(39, 4, 125) + i, ByteBuffer.wrap(list.get(i)));
        }
    }
}
