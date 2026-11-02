package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.androidx.media3.common.ColorInfo;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.gms.nearby.connection.Connections;
import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import com.ironsource.mediationsdk.demandOnly.j;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.chromium.net.telemetry.CronetStatsLog;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2109aa {
    public static byte[] A0p;
    public static String[] A0q = {"6Stc8iZPoFcOxky4AKyIOhqEtLhd2Ru3", "E2hq", "54BgyBUXc9BLpe67xq6fYk1XYUe", "dbjASj3WlxThJbxu", "7pgfs5pfKZhF9UIqj", "czwWgTX9C6g1dqDSsOc", "mW9T", "zTmILFnpMPSdbXoG"};
    public int A0I;
    public int A0N;
    public int A0Q;
    public int A0R;
    public int A0V;
    public DrmInitData A0Z;
    public ZN A0a;
    public ZP A0b;
    public ZQ A0c;
    public String A0d;
    public String A0e;
    public boolean A0g;
    public boolean A0i;
    public byte[] A0j;
    public byte[] A0k;
    public byte[] A0m;
    public int A0n;
    public int A0W = -1;
    public int A0M = -1;
    public int A0L = -1;
    public int A0J = -1;
    public int A0K = 0;
    public int A0S = -1;
    public float A0A = 0.0f;
    public float A08 = 0.0f;
    public float A09 = 0.0f;
    public byte[] A0l = null;
    public int A0U = -1;
    public boolean A0h = false;
    public int A0G = -1;
    public int A0H = -1;
    public int A0F = -1;
    public int A0O = 1000;
    public int A0P = 200;
    public float A06 = -1.0f;
    public float A07 = -1.0f;
    public float A04 = -1.0f;
    public float A05 = -1.0f;
    public float A02 = -1.0f;
    public float A03 = -1.0f;
    public float A0B = -1.0f;
    public float A0C = -1.0f;
    public float A00 = -1.0f;
    public float A01 = -1.0f;
    public int A0E = 1;
    public int A0D = -1;
    public int A0T = ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED;
    public long A0X = 0;
    public long A0Y = 0;
    public boolean A0f = true;
    public String A0o = A03(1067, 3, 80);

    static {
        A07();
    }

    public static Pair<String, List<byte[]>> A02(C1744Mk c1744Mk) throws L9 {
        try {
            c1744Mk.A0g(16);
            long jA0O = c1744Mk.A0O();
            if (jA0O == 1482049860) {
                return new Pair<>(A03(1117, 10, 127), null);
            }
            if (jA0O == 859189832) {
                return new Pair<>(A03(1088, 10, 104), null);
            }
            if (jA0O != 826496599) {
                MV.A07(A03(312, 17, 15), A03(492, 51, 90));
                return new Pair<>(A03(1189, 15, 20), null);
            }
            byte[] bArrA0l = c1744Mk.A0l();
            for (int iA09 = c1744Mk.A09() + 20; iA09 < bArrA0l.length - 4; iA09++) {
                if (bArrA0l[iA09] == 0 && bArrA0l[iA09 + 1] == 0 && bArrA0l[iA09 + 2] == 1 && bArrA0l[iA09 + 3] == 15) {
                    return new Pair<>(A03(1179, 10, 68), Collections.singletonList(Arrays.copyOfRange(bArrA0l, iA09, bArrA0l.length)));
                }
            }
            throw L9.A01(A03(267, 45, 67), null);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw L9.A01(A03(166, 33, 88), null);
        }
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0p, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 71);
        }
        return new String(bArrCopyOfRange);
    }

    public static List<byte[]> A05(byte[] bArr) throws L9 {
        String strA03 = A03(233, 34, 8);
        try {
            if (bArr[0] != 2) {
                throw L9.A01(strA03, null);
            }
            int i = 1;
            int i2 = 0;
            while ((bArr[i] & 255) == 255) {
                i2 += 255;
                i++;
            }
            int i3 = i + 1;
            int i4 = i2 + (bArr[i] & 255);
            int i5 = 0;
            while ((bArr[i3] & 255) == 255) {
                i5 += 255;
                i3++;
            }
            int i6 = i3 + 1;
            int i7 = i5 + (bArr[i3] & 255);
            if (bArr[i6] != 1) {
                throw L9.A01(strA03, null);
            }
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, i6, bArr2, 0, i4);
            int i8 = i6 + i4;
            if (bArr[i8] != 3) {
                throw L9.A01(strA03, null);
            }
            int i9 = i8 + i7;
            if (bArr[i9] != 5) {
                throw L9.A01(strA03, null);
            }
            byte[] bArr3 = new byte[bArr.length - i9];
            System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw L9.A01(strA03, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @EnsuresNonNull
    public void A06() {
        AbstractC1722Ln.A01(this.A0b);
    }

    public static void A07() {
        A0p = new byte[]{86, 88, 43, Ascii.GS, Ascii.FF, Ascii.FF, 17, Ascii.SYN, Ascii.US, 88, Ascii.NAK, 17, Ascii.NAK, Ascii.GS, 44, 1, 8, Ascii.GS, 88, Ascii.FF, Ascii.ETB, 88, 126, 96, 126, 126, 124, Ascii.CAN, 6, Ascii.CAN, Ascii.SUB, 106, 52, 42, 49, 33, 38, 49, 47, 52, 36, 35, 95, 53, 40, 32, 34, 53, 35, 35, 75, 85, 78, 94, 89, 37, 70, 69, 89, 89, 70, 79, 89, 89, 102, 120, 98, 102, 100, Ascii.DC4, Ascii.RS, 0, Ascii.EM, 19, Ascii.RS, Ascii.FS, 57, 39, 53, 40, Base64.padSymbol, 63, 87, 52, 74, 114, 108, 126, 99, 118, 116, Ascii.FS, 127, 0, 38, 56, 42, 52, 72, 38, 36, 42, 75, 85, 69, 90, 95, 89, 106, 116, 123, 104, 102, 4, 109, 103, 100, 106, 127, 4, 98, 110, 110, 110, 76, 82, 93, 78, SignedBytes.MAX_POWER_OF_TWO, 34, 68, 67, 89, 34, 79, 68, 74, Ascii.DLE, Ascii.SO, 1, Ascii.DC2, Ascii.FS, 126, Ascii.CAN, Ascii.US, 5, 126, Ascii.GS, Ascii.CAN, 5, Ascii.SYN, 8, 3, 5, 2, Ascii.DC2, Ascii.US, 19, 17, Ascii.SI, 6, Ascii.US, 2, Ascii.DC2, Ascii.EM, 3, 90, 109, 109, 112, 109, 63, 111, 126, 109, 108, 118, 113, 120, 63, 89, 112, 106, 109, 92, 92, 63, 111, 109, 118, 105, 126, 107, 122, 63, 123, 126, 107, 126, 126, 73, 73, 84, 73, Ascii.ESC, 75, 90, 73, 72, 82, 85, 92, Ascii.ESC, 118, 104, Ascii.DC4, 122, 120, 118, Ascii.ESC, 88, 84, 95, 94, 88, Ascii.ESC, 75, 73, 82, 77, 90, 79, 94, 10, Base64.padSymbol, Base64.padSymbol, 32, Base64.padSymbol, 111, 63, 46, Base64.padSymbol, 60, 38, 33, 40, 111, 57, 32, Base64.padSymbol, 45, 38, 60, 111, 44, 32, 43, 42, 44, 111, 63, Base64.padSymbol, 38, 57, 46, 59, 42, 66, 101, 109, 104, 97, 96, 36, 112, 107, 36, 98, 109, 106, 96, 36, 66, 107, 113, 118, 71, 71, 36, 82, 71, 53, 36, 109, 106, 109, 112, 109, 101, 104, 109, 126, 101, 112, 109, 107, 106, 36, 96, 101, 112, 101, 5, 41, 60, 58, 39, 59, 35, 41, Ascii.CR, 48, 60, 58, 41, 43, 60, 39, 58, 96, 68, 94, 94, 68, 67, 74, Ascii.CR, 110, 66, 73, 72, 78, 125, 95, 68, 91, 76, 89, 72, Ascii.CR, 75, 66, 95, Ascii.CR, 78, 66, 73, 72, 78, Ascii.CR, 94, 127, 126, Base64.padSymbol, SignedBytes.MAX_POWER_OF_TWO, 83, 93, 48, 93, 67, 63, 81, 83, 93, 48, 121, 99, 48, 101, 126, 99, 101, 96, 96, 127, 98, 100, 117, 116, 62, 48, 67, 117, 100, 100, 121, 126, 119, 48, 125, 121, 125, 117, 68, 105, 96, 117, 48, 100, 127, 48, 66, 78, 85, 71, 83, 66, 68, 83, 123, 119, 96, 108, 101, 126, 7, 120, 111, 123, Ascii.RS, Ascii.DC2, Ascii.EM, 8, Ascii.NAK, Ascii.EM, 98, Ascii.FF, Ascii.RS, Ascii.RS, 125, 113, 122, 107, 118, 122, 1, 123, 122, 104, Ascii.SYN, SignedBytes.MAX_POWER_OF_TWO, 76, 71, 86, 75, 71, 60, 68, 86, 81, 69, 71, 71, Base64.padSymbol, 49, 56, 33, 44, Base64.padSymbol, 59, 44, 88, 99, 104, 117, 125, 104, 110, 121, 104, 105, 45, SignedBytes.MAX_POWER_OF_TWO, 68, SignedBytes.MAX_POWER_OF_TWO, 72, 45, 121, 116, 125, 104, 35, 72, 115, 118, 115, 114, 106, 115, Base64.padSymbol, 91, 114, 104, 111, 94, 94, 51, Base64.padSymbol, 78, 120, 105, 105, 116, 115, 122, Base64.padSymbol, 112, 116, 112, 120, 73, 100, 109, 120, Base64.padSymbol, 105, 114, Base64.padSymbol, 107, 116, 121, 120, 114, 50, 101, 48, 104, 115, 118, 115, 114, 106, 115, 50, 9, Ascii.NAK, 2, 4, 8, 0, 9, Ascii.SO, Ascii.GS, 2, 3, 71, 4, 8, 3, 2, 4, 71, Ascii.SO, 3, 2, 9, 19, Ascii.SO, 1, Ascii.SO, 2, Ascii.NAK, 73, 0, 59, 38, 32, 37, 37, 58, 39, 33, 48, 49, 117, 5, Ascii.SYN, Ascii.CAN, 117, 55, 60, 33, 117, 49, 48, 37, 33, Base64.padSymbol, 111, 117, 45, Ascii.SYN, Ascii.VT, Ascii.CR, 8, 8, Ascii.ETB, 10, Ascii.FF, Ascii.GS, Ascii.FS, 88, Ascii.SUB, 17, Ascii.US, 88, Ascii.GS, Ascii.SYN, Ascii.FS, 17, Ascii.EM, Ascii.SYN, 88, 40, 59, 53, 88, Ascii.SUB, 17, Ascii.FF, 88, Ascii.FS, Ascii.GS, 8, Ascii.FF, Ascii.DLE, 66, 88, 55, Ascii.FF, 17, Ascii.ETB, Ascii.DC2, Ascii.DC2, Ascii.CR, Ascii.DLE, Ascii.SYN, 7, 6, 66, 4, Ascii.SO, Ascii.CR, 3, Ascii.SYN, Ascii.VT, Ascii.FF, 5, 66, Ascii.DC2, Ascii.CR, Ascii.VT, Ascii.FF, Ascii.SYN, 66, 50, 33, 47, 66, 0, Ascii.VT, Ascii.SYN, 66, 6, 7, Ascii.DC2, Ascii.SYN, 10, 88, 66, 126, 69, 88, 94, 91, 91, 68, 89, 95, 78, 79, Ascii.VT, 71, 66, 95, 95, 71, 78, Ascii.VT, 78, 69, 79, 66, 74, 69, Ascii.VT, 123, 104, 102, Ascii.VT, 73, 66, 95, Ascii.VT, 79, 78, 91, 95, 67, 17, Ascii.VT, 79, 70, 88, 79, 40, SignedBytes.MAX_POWER_OF_TWO, 73, 91, 70, 83, 81, 36, 93, 84, 70, 91, 78, 76, 63, 36, 66, 88, 68, 36, 74, 91, 79, 70, 84, 73, 92, 94, 45, 54, 80, 74, 86, 54, 88, 74, 73, 7, Ascii.SO, Ascii.FS, 1, Ascii.DC4, Ascii.SYN, 101, 126, Ascii.CAN, 2, Ascii.RS, 126, Ascii.DLE, 7, Ascii.DC2, 43, 34, 48, 45, 56, 58, 73, 82, 52, 46, 50, 82, 46, 45, 79, 70, 84, 73, 92, 94, 81, 54, 80, 74, 86, 54, 81, 92, 79, 90, Ascii.ETB, Ascii.RS, Ascii.FF, Ascii.DC2, 110, Ascii.ETB, 7, Ascii.SYN, 110, 7, Ascii.SO, Ascii.DC4, 19, 2, 2, 83, 90, 81, 77, SignedBytes.MAX_POWER_OF_TWO, 74, 87, 68, 115, 122, 115, 117, Ascii.GS, 107, 98, 107, 109, 4, Ascii.SUB, Ascii.VT, Ascii.VT, Ascii.ETB, Ascii.DC2, Ascii.CAN, Ascii.SUB, Ascii.SI, Ascii.DC2, Ascii.DC4, Ascii.NAK, 84, Ascii.US, Ascii.CR, Ascii.EM, 8, Ascii.SO, Ascii.EM, 8, 126, 111, 111, 115, 118, 124, 126, 107, 118, 112, 113, 48, 111, 120, 108, Ascii.SO, Ascii.US, Ascii.US, 3, 6, Ascii.FF, Ascii.SO, Ascii.ESC, 6, 0, 1, SignedBytes.MAX_POWER_OF_TWO, Ascii.EM, 0, Ascii.CR, Ascii.FS, Ascii.SUB, Ascii.CR, 107, 122, 122, 102, 99, 105, 107, 126, 99, 101, 100, 37, 114, 39, 121, 127, 104, 120, 99, 122, 93, 73, 88, 85, 83, 19, 93, 95, Ascii.SI, 83, 71, 86, 91, 93, Ascii.GS, 87, 83, 81, 1, 89, 77, 92, 81, 87, Ascii.ETB, 94, 84, 89, 91, Ascii.ESC, Ascii.SI, Ascii.RS, 19, Ascii.NAK, 85, Ascii.ETB, 10, 78, Ascii.ESC, 87, Ascii.SYN, Ascii.ESC, Ascii.SO, Ascii.ETB, 66, 86, 71, 74, 76, Ascii.FF, 78, 83, 70, 68, 1, Ascii.NAK, 4, 9, Ascii.SI, 79, Ascii.CR, Ascii.DLE, 5, 7, 77, 44, 82, Ascii.CR, Ascii.EM, 8, 5, 3, 67, 3, Ascii.FS, Ascii.EM, Ascii.US, 6, Ascii.DC2, 3, Ascii.SO, 8, 72, Ascii.NAK, 6, Ascii.DLE, SignedBytes.MAX_POWER_OF_TWO, 84, 
        69, 72, 78, Ascii.SO, 85, 83, 84, 68, Ascii.FF, 73, 69, 77, 89, 72, 69, 67, 3, 90, 66, 72, 2, 72, 88, 95, 8, Ascii.FS, Ascii.CR, 0, 6, 70, Ascii.US, 7, Ascii.CR, 71, Ascii.CR, Ascii.GS, Ascii.SUB, 71, 1, Ascii.CR, 19, 7, Ascii.SYN, Ascii.ESC, Ascii.GS, 93, 4, Ascii.GS, 0, Ascii.DLE, Ascii.ESC, 1, Ascii.FS, 8, Ascii.EM, Ascii.DC4, Ascii.DC2, 82, 5, 80, 8, 19, Ascii.SYN, 19, Ascii.DC2, 10, 19, 114, 121, 112, 126, 111, 114, 126, 37, 124, 126, 126, 119, 102, 123, 119, 44, 123, 46, 112, 112, 98, 89, 70, 75, 74, SignedBytes.MAX_POWER_OF_TWO, 0, Ascii.FS, 72, 95, 95, 19, Ascii.FF, 1, 0, 10, 74, 4, 19, 85, 84, 127, 96, 109, 108, 102, 38, 104, 127, 106, 78, 81, 92, 93, 87, Ascii.ETB, 92, 81, 78, SignedBytes.MAX_POWER_OF_TWO, 72, 87, 90, 91, 81, 17, 90, 81, 82, 92, 71, 19, 72, 87, 77, 87, 81, 80, 115, 108, 97, 96, 106, 42, 109, 96, 115, 102, 105, 118, 123, 122, 112, 48, 114, 111, 43, 105, 50, 122, 108, Ascii.CR, Ascii.DC2, Ascii.US, Ascii.RS, Ascii.DC4, 84, Ascii.SYN, Ascii.VT, Ascii.RS, Ascii.FS, 73, 117, 106, 103, 102, 108, 44, 116, 117, 96, 50, 37, 58, 55, 54, 60, 124, 43, 126, 38, Base64.padSymbol, 56, Base64.padSymbol, 60, 36, Base64.padSymbol, 43, 52, 57, 56, 50, 114, 37, 112, 43, 51, 57, 115, 50, 51, 111, 115, 43, 45, 101, 60, 35, 46, 47, 37, 101, 50, 103, 60, 36, 46, 100, 37, 36, 120, 100, 60, 58, 115};
    }

    public static boolean A09(C1744Mk c1744Mk) throws L9 {
        try {
            int iA0G = c1744Mk.A0G();
            if (iA0G == 1) {
                return true;
            }
            if (iA0G != 65534) {
                return false;
            }
            c1744Mk.A0f(24);
            return c1744Mk.A0P() == MatroskaExtractor.A0x.getMostSignificantBits() && c1744Mk.A0P() == MatroskaExtractor.A0x.getLeastSignificantBits();
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw L9.A01(A03(199, 34, 124), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MetaExoPlayerCustomization
    public boolean A0B(boolean z) {
        return this.A0N > 0;
    }

    private byte[] A0C() {
        if (this.A06 == -1.0f || this.A07 == -1.0f || this.A04 == -1.0f || this.A05 == -1.0f) {
            return null;
        }
        float f = this.A02;
        String[] strArr = A0q;
        if (strArr[5].length() == strArr[2].length()) {
            throw new RuntimeException();
        }
        A0q[4] = "67Ke";
        if (f == -1.0f || this.A03 == -1.0f || this.A0B == -1.0f || this.A0C == -1.0f || this.A00 == -1.0f || this.A01 == -1.0f) {
            return null;
        }
        byte[] bArr = new byte[25];
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.put((byte) 0);
        byteBufferOrder.putShort((short) ((this.A06 * 50000.0f) + 0.5f));
        byteBufferOrder.putShort((short) ((this.A07 * 50000.0f) + 0.5f));
        byteBufferOrder.putShort((short) ((this.A04 * 50000.0f) + 0.5f));
        byteBufferOrder.putShort((short) ((this.A05 * 50000.0f) + 0.5f));
        byteBufferOrder.putShort((short) ((this.A02 * 50000.0f) + 0.5f));
        byteBufferOrder.putShort((short) ((this.A03 * 50000.0f) + 0.5f));
        byteBufferOrder.putShort((short) ((this.A0B * 50000.0f) + 0.5f));
        byteBufferOrder.putShort((short) ((this.A0C * 50000.0f) + 0.5f));
        byteBufferOrder.putShort((short) (this.A00 + 0.5f));
        byteBufferOrder.putShort((short) (this.A01 + 0.5f));
        byteBufferOrder.putShort((short) this.A0O);
        byteBufferOrder.putShort((short) this.A0P);
        return bArr;
    }

    @EnsuresNonNull
    private byte[] A0D(String str) throws L9 {
        if (this.A0j == null) {
            throw L9.A01(A03(329, 31, kotlin.fh.g1) + str, null);
        }
        byte[] bArr = this.A0j;
        String[] strArr = A0q;
        if (strArr[5].length() == strArr[2].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0q;
        strArr2[5] = "0tKXjk682b57A6MpA0L";
        strArr2[2] = "HE9uwlA4vP88rLl3nLt1cg1AHfL";
        return bArr;
    }

    @RequiresNonNull
    public final void A0E() {
        if (this.A0c != null) {
            this.A0c.A05(this.A0b, this.A0a);
        }
    }

    public final void A0F() {
        if (this.A0c != null) {
            this.A0c.A02();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:114:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:115:0x031e  */
    /* JADX WARN: Code duplicated, block: B:116:0x032a  */
    /* JADX WARN: Code duplicated, block: B:117:0x0344  */
    /* JADX WARN: Code duplicated, block: B:118:0x0350  */
    /* JADX WARN: Code duplicated, block: B:119:0x0370  */
    /* JADX WARN: Code duplicated, block: B:121:0x0384  */
    /* JADX WARN: Code duplicated, block: B:122:0x0395  */
    /* JADX WARN: Code duplicated, block: B:123:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:125:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:126:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:127:0x03f1  */
    /* JADX WARN: Code duplicated, block: B:129:0x0401  */
    /* JADX WARN: Code duplicated, block: B:130:0x0404  */
    /* JADX WARN: Code duplicated, block: B:132:0x0415  */
    /* JADX WARN: Code duplicated, block: B:134:0x041b  */
    /* JADX WARN: Code duplicated, block: B:136:0x042b  */
    /* JADX WARN: Code duplicated, block: B:137:0x042f  */
    /* JADX WARN: Code duplicated, block: B:138:0x0464  */
    /* JADX WARN: Code duplicated, block: B:140:0x0476  */
    /* JADX WARN: Code duplicated, block: B:141:0x04ab  */
    /* JADX WARN: Code duplicated, block: B:143:0x04c6  */
    /* JADX WARN: Code duplicated, block: B:145:0x04ce  */
    /* JADX WARN: Code duplicated, block: B:146:0x0503  */
    /* JADX WARN: Code duplicated, block: B:147:0x052d  */
    /* JADX WARN: Code duplicated, block: B:148:0x0543  */
    /* JADX WARN: Code duplicated, block: B:149:0x054f  */
    /* JADX WARN: Code duplicated, block: B:151:0x0563  */
    /* JADX WARN: Code duplicated, block: B:152:0x0579  */
    /* JADX WARN: Code duplicated, block: B:153:0x0583  */
    /* JADX WARN: Code duplicated, block: B:154:0x0596  */
    /* JADX WARN: Code duplicated, block: B:155:0x05a2  */
    /* JADX WARN: Code duplicated, block: B:157:0x05ba  */
    /* JADX WARN: Code duplicated, block: B:158:0x05c7  */
    /* JADX WARN: Code duplicated, block: B:159:0x05d9  */
    /* JADX WARN: Code duplicated, block: B:160:0x05e7  */
    /* JADX WARN: Code duplicated, block: B:161:0x05f5  */
    /* JADX WARN: Code duplicated, block: B:162:0x061b  */
    /* JADX WARN: Code duplicated, block: B:163:0x0665  */
    /* JADX WARN: Code duplicated, block: B:164:0x067d  */
    /* JADX WARN: Code duplicated, block: B:165:0x0689  */
    /* JADX WARN: Code duplicated, block: B:166:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:167:0x06c4  */
    /* JADX WARN: Code duplicated, block: B:168:0x06e6  */
    /* JADX WARN: Code duplicated, block: B:170:0x06f4  */
    /* JADX WARN: Code duplicated, block: B:171:0x06f6  */
    /* JADX WARN: Code duplicated, block: B:172:0x06fd  */
    /* JADX WARN: Code duplicated, block: B:173:0x0708  */
    /* JADX WARN: Code duplicated, block: B:174:0x0713  */
    /* JADX WARN: Code duplicated, block: B:175:0x071e  */
    /* JADX WARN: Code duplicated, block: B:178:0x072c  */
    /* JADX WARN: Code duplicated, block: B:185:0x0759  */
    /* JADX WARN: Code duplicated, block: B:187:0x0772  */
    /* JADX WARN: Code duplicated, block: B:190:0x077f  */
    /* JADX WARN: Code duplicated, block: B:196:0x07a5  */
    /* JADX WARN: Code duplicated, block: B:197:0x07bb  */
    /* JADX WARN: Code duplicated, block: B:199:0x07c1  */
    /* JADX WARN: Code duplicated, block: B:201:0x07c6  */
    /* JADX WARN: Code duplicated, block: B:203:0x07cb  */
    /* JADX WARN: Code duplicated, block: B:206:0x07d3  */
    /* JADX WARN: Code duplicated, block: B:210:0x07de  */
    /* JADX WARN: Code duplicated, block: B:215:0x07f4  */
    /* JADX WARN: Code duplicated, block: B:218:0x0818  */
    /* JADX WARN: Code duplicated, block: B:220:0x0821  */
    /* JADX WARN: Code duplicated, block: B:222:0x082d  */
    /* JADX WARN: Code duplicated, block: B:225:0x0841  */
    /* JADX WARN: Code duplicated, block: B:227:0x0856  */
    /* JADX WARN: Code duplicated, block: B:229:0x085c  */
    /* JADX WARN: Code duplicated, block: B:232:0x0876  */
    /* JADX WARN: Code duplicated, block: B:235:0x0889 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:237:0x088c  */
    /* JADX WARN: Code duplicated, block: B:238:0x0890  */
    /* JADX WARN: Code duplicated, block: B:239:0x0894  */
    /* JADX WARN: Code duplicated, block: B:241:0x089d  */
    /* JADX WARN: Code duplicated, block: B:243:0x08a5  */
    /* JADX WARN: Code duplicated, block: B:245:0x08cb  */
    /* JADX WARN: Code duplicated, block: B:247:0x08d5  */
    /* JADX WARN: Code duplicated, block: B:248:0x08d8  */
    /* JADX WARN: Code duplicated, block: B:250:0x08e2  */
    /* JADX WARN: Code duplicated, block: B:252:0x08ec  */
    /* JADX WARN: Code duplicated, block: B:256:0x08fc  */
    /* JADX WARN: Code duplicated, block: B:258:0x090c  */
    /* JADX WARN: Code duplicated, block: B:269:0x095f  */
    /* JADX WARN: Code duplicated, block: B:270:0x0962  */
    /* JADX WARN: Code duplicated, block: B:4:0x001a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0031  */
    @EnsuresNonNull
    @MetaExoPlayerCustomization
    @RequiresNonNull
    public final void A0G(InterfaceC2044Yw interfaceC2044Yw, int i) throws L9 {
        byte b;
        String strA03;
        String strA04;
        String strA05;
        String[] strArr;
        String[] strArr2;
        int i2;
        String[] strArr3;
        C1689Ke c1689Ke;
        int i3;
        float f;
        int iIntValue;
        String str;
        String[] strArr4;
        float f2;
        String[] strArr5;
        int iCompare;
        String[] strArr6;
        int i4;
        int i5;
        String str2;
        String[] strArr7;
        C1689Ke c1689KeA0b;
        String[] strArr8;
        C2040Ys c2040YsA00;
        int i6 = -1;
        int iA03 = -1;
        List<byte[]> listSingletonList = null;
        String str3 = null;
        String str4 = this.A0d;
        switch (str4.hashCode()) {
            case -2095576542:
                String[] strArr9 = A0q;
                if (strArr9[3].length() != strArr9[7].length()) {
                    throw new RuntimeException();
                }
                String[] strArr10 = A0q;
                strArr10[5] = "097o2f7JiQrHpKtAtnv";
                strArr10[2] = "cscoIBanIGAYXvJUVqd7HTe9h1H";
                if (str4.equals(A03(733, 14, 76))) {
                    b = 6;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA00 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA00.A05;
                        this.A0Q = c2030YhA00.A02;
                        str3 = c2030YhA00.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A00 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A00.A08;
                        this.A0Q = z7A00.A05;
                        str3 = z7A00.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA02 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA02.first;
                        listSingletonList = (List) pairA02.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA03 = YZ.A03(this.A0j);
                        this.A0T = yyA03.A01;
                        this.A0E = yyA03.A00;
                        str3 = yyA03.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr11 = A0q;
                            strArr11[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr11[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr12 = A0q;
                            strArr12[1] = "hW4H";
                            strArr12[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr13 = A0q;
                            strArr13[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr13[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr14 = A0q;
                            strArr14[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr14[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr, 0, 4);
                        listSingletonList = XR.A03(bArr);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null && (c2040YsA00 = C2040Ys.A00(new C1744Mk(this.A0k))) != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i7 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr15 = A0q;
                        strArr15[1] = "vl3p";
                        strArr15[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                } else if (L8.A0F(strA05)) {
                    i3 = 2;
                    if (this.A0K == 0) {
                        if (this.A0L == -1) {
                            i4 = this.A0W;
                        } else {
                            i4 = this.A0L;
                        }
                        this.A0L = i4;
                        if (this.A0J == -1) {
                            i5 = this.A0M;
                        } else {
                            i5 = this.A0J;
                        }
                        this.A0J = i5;
                    }
                    f = -1.0f;
                    if (this.A0L != -1 && this.A0J != -1) {
                        f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                    }
                    ColorInfo colorInfo = this.A0h ? new ColorInfo(this.A0G, this.A0F, this.A0H, A0C()) : null;
                    iIntValue = -1;
                    str = this.A0e;
                    strArr4 = A0q;
                    if (strArr4[5].length() != strArr4[2].length()) {
                        A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                        if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                    } else if (str != null) {
                        if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                            iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                        }
                    }
                    if (this.A0S == 0) {
                        f2 = this.A0A;
                        strArr5 = A0q;
                        if (strArr5[1].length() != strArr5[6].length()) {
                            String[] strArr16 = A0q;
                            strArr16[5] = "br7RWQjvSw1sD4yuyx2";
                            strArr16[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                            if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        } else if (Float.compare(f2, 0.0f) == 0) {
                            iCompare = Float.compare(this.A08, 0.0f);
                            strArr6 = A0q;
                            if (strArr6[1].length() == strArr6[6].length()) {
                                A0q[4] = "";
                                if (iCompare == 0) {
                                    if (Float.compare(this.A09, 0.0f) == 0) {
                                        iIntValue = 0;
                                    } else if (Float.compare(this.A08, 90.0f) == 0) {
                                        iIntValue = 90;
                                    } else if (Float.compare(this.A08, -180.0f) != 0 || Float.compare(this.A08, 180.0f) == 0) {
                                        iIntValue = 180;
                                    } else if (Float.compare(this.A08, -90.0f) == 0) {
                                        iIntValue = 270;
                                    }
                                }
                            }
                            throw new RuntimeException();
                        }
                    }
                    c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                } else {
                    if (A03(892, 20, 77).equals(strA05) && !A03(1078, 10, 68).equals(strA05) && !A03(j.a.j, 8, 77).equals(strA05) && !A03(874, 18, 40).equals(strA05) && !A03(859, 15, 88).equals(strA05) && !A03(840, 19, 60).equals(strA05)) {
                        throw L9.A01(A03(471, 21, 74), null);
                    }
                    i3 = 3;
                }
                if (this.A0e != null && !MatroskaExtractor.A0w.containsKey(this.A0e)) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr17 = A0q;
                        strArr17[1] = "kgha";
                        strArr17[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA14 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i7).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA14);
                return;
            case -2095575984:
                if (str4.equals(A03(777, 14, 58))) {
                    b = 4;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA01 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA01.A05;
                        this.A0Q = c2030YhA01.A02;
                        str3 = c2030YhA01.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A01 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A01.A08;
                        this.A0Q = z7A01.A05;
                        str3 = z7A01.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA03 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA03.first;
                        listSingletonList = (List) pairA03.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA04 = YZ.A03(this.A0j);
                        this.A0T = yyA04.A01;
                        this.A0E = yyA04.A00;
                        str3 = yyA04.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr18 = A0q;
                            strArr18[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr18[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr19 = A0q;
                            strArr19[1] = "hW4H";
                            strArr19[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr110 = A0q;
                            strArr110[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr110[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr111 = A0q;
                            strArr111[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr111[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr2 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr2, 0, 4);
                        listSingletonList = XR.A03(bArr2);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i8 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr112 = A0q;
                                strArr112[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr112[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr113 = A0q;
                        strArr113[1] = "vl3p";
                        strArr113[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr114 = A0q;
                        strArr114[1] = "kgha";
                        strArr114[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA15 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i8).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA15);
                return;
            case -1985379776:
                if (str4.equals(A03(94, 8, 32))) {
                    b = Ascii.ETB;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA02 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA02.A05;
                        this.A0Q = c2030YhA02.A02;
                        str3 = c2030YhA02.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A02 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A02.A08;
                        this.A0Q = z7A02.A05;
                        str3 = z7A02.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA04 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA04.first;
                        listSingletonList = (List) pairA04.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA05 = YZ.A03(this.A0j);
                        this.A0T = yyA05.A01;
                        this.A0E = yyA05.A00;
                        str3 = yyA05.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr115 = A0q;
                            strArr115[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr115[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr116 = A0q;
                            strArr116[1] = "hW4H";
                            strArr116[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr117 = A0q;
                            strArr117[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr117[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr118 = A0q;
                            strArr118[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr118[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr3 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr3, 0, 4);
                        listSingletonList = XR.A03(bArr3);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i9 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr119 = A0q;
                                strArr119[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr119[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr1110 = A0q;
                        strArr1110[1] = "vl3p";
                        strArr1110[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr1111 = A0q;
                        strArr1111[1] = "kgha";
                        strArr1111[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA16 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i9).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA16);
                return;
            case -1784763192:
                if (str4.equals(A03(150, 8, 16))) {
                    b = Ascii.DC2;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA03 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA03.A05;
                        this.A0Q = c2030YhA03.A02;
                        str3 = c2030YhA03.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A03 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A03.A08;
                        this.A0Q = z7A03.A05;
                        str3 = z7A03.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA05 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA05.first;
                        listSingletonList = (List) pairA05.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA06 = YZ.A03(this.A0j);
                        this.A0T = yyA06.A01;
                        this.A0E = yyA06.A00;
                        str3 = yyA06.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr1112 = A0q;
                            strArr1112[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr1112[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr1113 = A0q;
                            strArr1113[1] = "hW4H";
                            strArr1113[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr1114 = A0q;
                            strArr1114[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr1114[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr1115 = A0q;
                            strArr1115[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr1115[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr4 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr4, 0, 4);
                        listSingletonList = XR.A03(bArr4);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i10 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr1116 = A0q;
                                strArr1116[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr1116[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr1117 = A0q;
                        strArr1117[1] = "vl3p";
                        strArr1117[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr1118 = A0q;
                        strArr1118[1] = "kgha";
                        strArr1118[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA17 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i10).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA17);
                return;
            case -1730367663:
                if (str4.equals(A03(158, 8, 23))) {
                    b = Ascii.VT;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA04 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA04.A05;
                        this.A0Q = c2030YhA04.A02;
                        str3 = c2030YhA04.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A04 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A04.A08;
                        this.A0Q = z7A04.A05;
                        str3 = z7A04.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA06 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA06.first;
                        listSingletonList = (List) pairA06.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA07 = YZ.A03(this.A0j);
                        this.A0T = yyA07.A01;
                        this.A0E = yyA07.A00;
                        str3 = yyA07.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr1119 = A0q;
                            strArr1119[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr1119[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr11110 = A0q;
                            strArr11110[1] = "hW4H";
                            strArr11110[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr11111 = A0q;
                            strArr11111[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr11111[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr11112 = A0q;
                            strArr11112[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr11112[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr5 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr5, 0, 4);
                        listSingletonList = XR.A03(bArr5);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i11 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr11113 = A0q;
                                strArr11113[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr11113[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr11114 = A0q;
                        strArr11114[1] = "vl3p";
                        strArr11114[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr11115 = A0q;
                        strArr11115[1] = "kgha";
                        strArr11115[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA18 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i11).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA18);
                return;
            case -1482641358:
                if (str4.equals(A03(76, 9, 63))) {
                    b = Ascii.SO;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA05 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA05.A05;
                        this.A0Q = c2030YhA05.A02;
                        str3 = c2030YhA05.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A05 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A05.A08;
                        this.A0Q = z7A05.A05;
                        str3 = z7A05.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA07 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA07.first;
                        listSingletonList = (List) pairA07.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA08 = YZ.A03(this.A0j);
                        this.A0T = yyA08.A01;
                        this.A0E = yyA08.A00;
                        str3 = yyA08.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr11116 = A0q;
                            strArr11116[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr11116[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr11117 = A0q;
                            strArr11117[1] = "hW4H";
                            strArr11117[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr11118 = A0q;
                            strArr11118[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr11118[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr11119 = A0q;
                            strArr11119[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr11119[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr6 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr6, 0, 4);
                        listSingletonList = XR.A03(bArr6);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i12 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr111110 = A0q;
                                strArr111110[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr111110[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr111111 = A0q;
                        strArr111111[1] = "vl3p";
                        strArr111111[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr111112 = A0q;
                        strArr111112[1] = "kgha";
                        strArr111112[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA19 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i12).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA19);
                return;
            case -1482641357:
                if (str4.equals(A03(85, 9, 116))) {
                    b = Ascii.SI;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA06 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA06.A05;
                        this.A0Q = c2030YhA06.A02;
                        str3 = c2030YhA06.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A06 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A06.A08;
                        this.A0Q = z7A06.A05;
                        str3 = z7A06.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA08 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA08.first;
                        listSingletonList = (List) pairA08.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA09 = YZ.A03(this.A0j);
                        this.A0T = yyA09.A01;
                        this.A0E = yyA09.A00;
                        str3 = yyA09.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr111113 = A0q;
                            strArr111113[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr111113[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr111114 = A0q;
                            strArr111114[1] = "hW4H";
                            strArr111114[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr111115 = A0q;
                            strArr111115[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr111115[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr111116 = A0q;
                            strArr111116[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr111116[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr7 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr7, 0, 4);
                        listSingletonList = XR.A03(bArr7);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i13 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr111117 = A0q;
                                strArr111117[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr111117[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr111118 = A0q;
                        strArr111118[1] = "vl3p";
                        strArr111118[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr111119 = A0q;
                        strArr111119[1] = "kgha";
                        strArr111119[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA110 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i13).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA110);
                return;
            case -1373388978:
                if (str4.equals(A03(807, 15, 6))) {
                    b = 9;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA07 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA07.A05;
                        this.A0Q = c2030YhA07.A02;
                        str3 = c2030YhA07.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A07 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A07.A08;
                        this.A0Q = z7A07.A05;
                        str3 = z7A07.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA09 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA09.first;
                        listSingletonList = (List) pairA09.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA010 = YZ.A03(this.A0j);
                        this.A0T = yyA010.A01;
                        this.A0E = yyA010.A00;
                        str3 = yyA010.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr1111110 = A0q;
                            strArr1111110[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr1111110[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr1111111 = A0q;
                            strArr1111111[1] = "hW4H";
                            strArr1111111[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr1111112 = A0q;
                            strArr1111112[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr1111112[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr1111113 = A0q;
                            strArr1111113[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr1111113[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr8 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr8, 0, 4);
                        listSingletonList = XR.A03(bArr8);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i14 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr1111114 = A0q;
                                strArr1111114[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr1111114[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr1111115 = A0q;
                        strArr1111115[1] = "vl3p";
                        strArr1111115[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr1111116 = A0q;
                        strArr1111116[1] = "kgha";
                        strArr1111116[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA111 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i14).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA111);
                return;
            case -933872740:
                if (str4.equals(A03(InterfaceC3669k1.a.b.k, 8, 86))) {
                    b = 32;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA08 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA08.A05;
                        this.A0Q = c2030YhA08.A02;
                        str3 = c2030YhA08.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A08 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A08.A08;
                        this.A0Q = z7A08.A05;
                        str3 = z7A08.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA010 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA010.first;
                        listSingletonList = (List) pairA010.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA011 = YZ.A03(this.A0j);
                        this.A0T = yyA011.A01;
                        this.A0E = yyA011.A00;
                        str3 = yyA011.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr1111117 = A0q;
                            strArr1111117[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr1111117[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr1111118 = A0q;
                            strArr1111118[1] = "hW4H";
                            strArr1111118[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr1111119 = A0q;
                            strArr1111119[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr1111119[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr11111110 = A0q;
                            strArr11111110[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr11111110[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr9 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr9, 0, 4);
                        listSingletonList = XR.A03(bArr9);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i15 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr11111111 = A0q;
                                strArr11111111[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr11111111[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr11111112 = A0q;
                        strArr11111112[1] = "vl3p";
                        strArr11111112[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr11111113 = A0q;
                        strArr11111113[1] = "kgha";
                        strArr11111113[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA112 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i15).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA112);
                return;
            case -538363189:
                if (str4.equals(A03(747, 15, 94))) {
                    b = 5;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA09 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA09.A05;
                        this.A0Q = c2030YhA09.A02;
                        str3 = c2030YhA09.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A09 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A09.A08;
                        this.A0Q = z7A09.A05;
                        str3 = z7A09.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA011 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA011.first;
                        listSingletonList = (List) pairA011.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA012 = YZ.A03(this.A0j);
                        this.A0T = yyA012.A01;
                        this.A0E = yyA012.A00;
                        str3 = yyA012.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr11111114 = A0q;
                            strArr11111114[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr11111114[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr11111115 = A0q;
                            strArr11111115[1] = "hW4H";
                            strArr11111115[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr11111116 = A0q;
                            strArr11111116[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr11111116[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr11111117 = A0q;
                            strArr11111117[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr11111117[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr10 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr10, 0, 4);
                        listSingletonList = XR.A03(bArr10);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i16 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr11111118 = A0q;
                                strArr11111118[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr11111118[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr11111119 = A0q;
                        strArr11111119[1] = "vl3p";
                        strArr11111119[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr111111110 = A0q;
                        strArr111111110[1] = "kgha";
                        strArr111111110[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA113 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i16).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA113);
                return;
            case -538363109:
                if (str4.equals(A03(CronetStatsLog.CRONET_ENGINE_BUILDER_INITIALIZED, 15, 22))) {
                    b = 7;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA010 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA010.A05;
                        this.A0Q = c2030YhA010.A02;
                        str3 = c2030YhA010.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A010 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A010.A08;
                        this.A0Q = z7A010.A05;
                        str3 = z7A010.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA012 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA012.first;
                        listSingletonList = (List) pairA012.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA013 = YZ.A03(this.A0j);
                        this.A0T = yyA013.A01;
                        this.A0E = yyA013.A00;
                        str3 = yyA013.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr111111111 = A0q;
                            strArr111111111[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr111111111[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr111111112 = A0q;
                            strArr111111112[1] = "hW4H";
                            strArr111111112[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr111111113 = A0q;
                            strArr111111113[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr111111113[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr111111114 = A0q;
                            strArr111111114[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr111111114[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr11 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr11, 0, 4);
                        listSingletonList = XR.A03(bArr11);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i17 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr111111115 = A0q;
                                strArr111111115[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr111111115[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr111111116 = A0q;
                        strArr111111116[1] = "vl3p";
                        strArr111111116[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr111111117 = A0q;
                        strArr111111117[1] = "kgha";
                        strArr111111117[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA114 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i17).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA114);
                return;
            case -425012669:
                if (str4.equals(A03(463, 8, 41))) {
                    b = Ascii.RS;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA011 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA011.A05;
                        this.A0Q = c2030YhA011.A02;
                        str3 = c2030YhA011.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A011 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A011.A08;
                        this.A0Q = z7A011.A05;
                        str3 = z7A011.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA013 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA013.first;
                        listSingletonList = (List) pairA013.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA014 = YZ.A03(this.A0j);
                        this.A0T = yyA014.A01;
                        this.A0E = yyA014.A00;
                        str3 = yyA014.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr111111118 = A0q;
                            strArr111111118[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr111111118[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr111111119 = A0q;
                            strArr111111119[1] = "hW4H";
                            strArr111111119[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr1111111110 = A0q;
                            strArr1111111110[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr1111111110[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr1111111111 = A0q;
                            strArr1111111111[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr1111111111[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr12 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr12, 0, 4);
                        listSingletonList = XR.A03(bArr12);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i18 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr1111111112 = A0q;
                                strArr1111111112[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr1111111112[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr1111111113 = A0q;
                        strArr1111111113[1] = "vl3p";
                        strArr1111111113[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr1111111114 = A0q;
                        strArr1111111114[1] = "kgha";
                        strArr1111111114[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA115 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i18).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA115);
                return;
            case -356037306:
                if (str4.equals(A03(50, 14, 77))) {
                    b = Ascii.NAK;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA012 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA012.A05;
                        this.A0Q = c2030YhA012.A02;
                        str3 = c2030YhA012.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A012 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A012.A08;
                        this.A0Q = z7A012.A05;
                        str3 = z7A012.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA014 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA014.first;
                        listSingletonList = (List) pairA014.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA015 = YZ.A03(this.A0j);
                        this.A0T = yyA015.A01;
                        this.A0E = yyA015.A00;
                        str3 = yyA015.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr1111111115 = A0q;
                            strArr1111111115[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr1111111115[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr1111111116 = A0q;
                            strArr1111111116[1] = "hW4H";
                            strArr1111111116[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr1111111117 = A0q;
                            strArr1111111117[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr1111111117[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr1111111118 = A0q;
                            strArr1111111118[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr1111111118[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr13 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr13, 0, 4);
                        listSingletonList = XR.A03(bArr13);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i19 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr1111111119 = A0q;
                                strArr1111111119[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr1111111119[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr11111111110 = A0q;
                        strArr11111111110[1] = "vl3p";
                        strArr11111111110[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr11111111111 = A0q;
                        strArr11111111111[1] = "kgha";
                        strArr11111111111[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA116 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i19).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA116);
                return;
            case 62923557:
                if (str4.equals(A03(22, 5, 120))) {
                    b = Ascii.CR;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA013 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA013.A05;
                        this.A0Q = c2030YhA013.A02;
                        str3 = c2030YhA013.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A013 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A013.A08;
                        this.A0Q = z7A013.A05;
                        str3 = z7A013.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA015 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA015.first;
                        listSingletonList = (List) pairA015.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA016 = YZ.A03(this.A0j);
                        this.A0T = yyA016.A01;
                        this.A0E = yyA016.A00;
                        str3 = yyA016.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr11111111112 = A0q;
                            strArr11111111112[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr11111111112[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr11111111113 = A0q;
                            strArr11111111113[1] = "hW4H";
                            strArr11111111113[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr11111111114 = A0q;
                            strArr11111111114[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr11111111114[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr11111111115 = A0q;
                            strArr11111111115[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr11111111115[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr14 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr14, 0, 4);
                        listSingletonList = XR.A03(bArr14);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i110 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr11111111116 = A0q;
                                strArr11111111116[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr11111111116[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr11111111117 = A0q;
                        strArr11111111117[1] = "vl3p";
                        strArr11111111117[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr11111111118 = A0q;
                        strArr11111111118[1] = "kgha";
                        strArr11111111118[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA117 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i110).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA117);
                return;
            case 62923603:
                if (str4.equals(A03(27, 5, 30))) {
                    b = Ascii.DLE;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA014 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA014.A05;
                        this.A0Q = c2030YhA014.A02;
                        str3 = c2030YhA014.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A014 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A014.A08;
                        this.A0Q = z7A014.A05;
                        str3 = z7A014.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA016 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA016.first;
                        listSingletonList = (List) pairA016.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA017 = YZ.A03(this.A0j);
                        this.A0T = yyA017.A01;
                        this.A0E = yyA017.A00;
                        str3 = yyA017.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr11111111119 = A0q;
                            strArr11111111119[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr11111111119[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr111111111110 = A0q;
                            strArr111111111110[1] = "hW4H";
                            strArr111111111110[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr111111111111 = A0q;
                            strArr111111111111[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr111111111111[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr111111111112 = A0q;
                            strArr111111111112[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr111111111112[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr15 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr15, 0, 4);
                        listSingletonList = XR.A03(bArr15);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i111 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr111111111113 = A0q;
                                strArr111111111113[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr111111111113[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr111111111114 = A0q;
                        strArr111111111114[1] = "vl3p";
                        strArr111111111114[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr111111111115 = A0q;
                        strArr111111111115[1] = "kgha";
                        strArr111111111115[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA118 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i111).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA118);
                return;
            case 62927045:
                if (str4.equals(A03(32, 5, 50))) {
                    b = 19;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA015 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA015.A05;
                        this.A0Q = c2030YhA015.A02;
                        str3 = c2030YhA015.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A015 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A015.A08;
                        this.A0Q = z7A015.A05;
                        str3 = z7A015.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA017 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA017.first;
                        listSingletonList = (List) pairA017.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA018 = YZ.A03(this.A0j);
                        this.A0T = yyA018.A01;
                        this.A0E = yyA018.A00;
                        str3 = yyA018.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr111111111116 = A0q;
                            strArr111111111116[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr111111111116[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr111111111117 = A0q;
                            strArr111111111117[1] = "hW4H";
                            strArr111111111117[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr111111111118 = A0q;
                            strArr111111111118[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr111111111118[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr111111111119 = A0q;
                            strArr111111111119[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr111111111119[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr16 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr16, 0, 4);
                        listSingletonList = XR.A03(bArr16);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i112 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr1111111111110 = A0q;
                                strArr1111111111110[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr1111111111110[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr1111111111111 = A0q;
                        strArr1111111111111[1] = "vl3p";
                        strArr1111111111111[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr1111111111112 = A0q;
                        strArr1111111111112[1] = "kgha";
                        strArr1111111111112[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA119 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i112).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA119);
                return;
            case 82318131:
                if (str4.equals(A03(721, 5, 94))) {
                    b = 2;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA016 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA016.A05;
                        this.A0Q = c2030YhA016.A02;
                        str3 = c2030YhA016.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A016 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A016.A08;
                        this.A0Q = z7A016.A05;
                        str3 = z7A016.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA018 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA018.first;
                        listSingletonList = (List) pairA018.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA019 = YZ.A03(this.A0j);
                        this.A0T = yyA019.A01;
                        this.A0E = yyA019.A00;
                        str3 = yyA019.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr1111111111113 = A0q;
                            strArr1111111111113[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr1111111111113[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr1111111111114 = A0q;
                            strArr1111111111114[1] = "hW4H";
                            strArr1111111111114[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr1111111111115 = A0q;
                            strArr1111111111115[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr1111111111115[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr1111111111116 = A0q;
                            strArr1111111111116[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr1111111111116[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr17 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr17, 0, 4);
                        listSingletonList = XR.A03(bArr17);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i113 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr1111111111117 = A0q;
                                strArr1111111111117[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr1111111111117[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr1111111111118 = A0q;
                        strArr1111111111118[1] = "vl3p";
                        strArr1111111111118[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr1111111111119 = A0q;
                        strArr1111111111119[1] = "kgha";
                        strArr1111111111119[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA1110 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i113).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA1110);
                return;
            case 82338133:
                if (str4.equals(A03(830, 5, 98))) {
                    b = 0;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA017 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA017.A05;
                        this.A0Q = c2030YhA017.A02;
                        str3 = c2030YhA017.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A017 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A017.A08;
                        this.A0Q = z7A017.A05;
                        str3 = z7A017.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA019 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA019.first;
                        listSingletonList = (List) pairA019.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA0110 = YZ.A03(this.A0j);
                        this.A0T = yyA0110.A01;
                        this.A0E = yyA0110.A00;
                        str3 = yyA0110.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr11111111111110 = A0q;
                            strArr11111111111110[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr11111111111110[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr11111111111111 = A0q;
                            strArr11111111111111[1] = "hW4H";
                            strArr11111111111111[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr11111111111112 = A0q;
                            strArr11111111111112[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr11111111111112[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr11111111111113 = A0q;
                            strArr11111111111113[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr11111111111113[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr18 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr18, 0, 4);
                        listSingletonList = XR.A03(bArr18);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i114 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr11111111111114 = A0q;
                                strArr11111111111114[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr11111111111114[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr11111111111115 = A0q;
                        strArr11111111111115[1] = "vl3p";
                        strArr11111111111115[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr11111111111116 = A0q;
                        strArr11111111111116[1] = "kgha";
                        strArr11111111111116[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA1111 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i114).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA1111);
                return;
            case 82338134:
                if (str4.equals(A03(835, 5, 122))) {
                    b = 1;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA018 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA018.A05;
                        this.A0Q = c2030YhA018.A02;
                        str3 = c2030YhA018.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A018 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A018.A08;
                        this.A0Q = z7A018.A05;
                        str3 = z7A018.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA0110 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA0110.first;
                        listSingletonList = (List) pairA0110.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA0111 = YZ.A03(this.A0j);
                        this.A0T = yyA0111.A01;
                        this.A0E = yyA0111.A00;
                        str3 = yyA0111.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr11111111111117 = A0q;
                            strArr11111111111117[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr11111111111117[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr11111111111118 = A0q;
                            strArr11111111111118[1] = "hW4H";
                            strArr11111111111118[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr11111111111119 = A0q;
                            strArr11111111111119[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr11111111111119[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr111111111111110 = A0q;
                            strArr111111111111110[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr111111111111110[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr19 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr19, 0, 4);
                        listSingletonList = XR.A03(bArr19);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i115 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr111111111111111 = A0q;
                                strArr111111111111111[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr111111111111111[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr111111111111112 = A0q;
                        strArr111111111111112[1] = "vl3p";
                        strArr111111111111112[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr111111111111113 = A0q;
                        strArr111111111111113[1] = "kgha";
                        strArr111111111111113[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA1112 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i115).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA1112);
                return;
            case 99146302:
                if (str4.equals(A03(419, 10, 111))) {
                    b = Ascii.US;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA019 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA019.A05;
                        this.A0Q = c2030YhA019.A02;
                        str3 = c2030YhA019.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A019 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A019.A08;
                        this.A0Q = z7A019.A05;
                        str3 = z7A019.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA0111 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA0111.first;
                        listSingletonList = (List) pairA0111.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA0112 = YZ.A03(this.A0j);
                        this.A0T = yyA0112.A01;
                        this.A0E = yyA0112.A00;
                        str3 = yyA0112.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr111111111111114 = A0q;
                            strArr111111111111114[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr111111111111114[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr111111111111115 = A0q;
                            strArr111111111111115[1] = "hW4H";
                            strArr111111111111115[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr111111111111116 = A0q;
                            strArr111111111111116[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr111111111111116[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr111111111111117 = A0q;
                            strArr111111111111117[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr111111111111117[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr110 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr110, 0, 4);
                        listSingletonList = XR.A03(bArr110);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i116 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr111111111111118 = A0q;
                                strArr111111111111118[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr111111111111118[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr111111111111119 = A0q;
                        strArr111111111111119[1] = "vl3p";
                        strArr111111111111119[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr1111111111111110 = A0q;
                        strArr1111111111111110[1] = "kgha";
                        strArr1111111111111110[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA1113 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i116).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA1113);
                return;
            case 444813526:
                if (str4.equals(A03(822, 8, 66))) {
                    b = 10;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA0110 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA0110.A05;
                        this.A0Q = c2030YhA0110.A02;
                        str3 = c2030YhA0110.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A0110 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A0110.A08;
                        this.A0Q = z7A0110.A05;
                        str3 = z7A0110.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA0112 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA0112.first;
                        listSingletonList = (List) pairA0112.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA0113 = YZ.A03(this.A0j);
                        this.A0T = yyA0113.A01;
                        this.A0E = yyA0113.A00;
                        str3 = yyA0113.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr1111111111111111 = A0q;
                            strArr1111111111111111[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr1111111111111111[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr1111111111111112 = A0q;
                            strArr1111111111111112[1] = "hW4H";
                            strArr1111111111111112[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr1111111111111113 = A0q;
                            strArr1111111111111113[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr1111111111111113[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr1111111111111114 = A0q;
                            strArr1111111111111114[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr1111111111111114[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr111 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr111, 0, 4);
                        listSingletonList = XR.A03(bArr111);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i117 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr1111111111111115 = A0q;
                                strArr1111111111111115[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr1111111111111115[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr1111111111111116 = A0q;
                        strArr1111111111111116[1] = "vl3p";
                        strArr1111111111111116[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr1111111111111117 = A0q;
                        strArr1111111111111117[1] = "kgha";
                        strArr1111111111111117[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA1114 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i117).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA1114);
                return;
            case 542569478:
                if (str4.equals(A03(37, 13, 55))) {
                    b = Ascii.DC4;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA0111 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA0111.A05;
                        this.A0Q = c2030YhA0111.A02;
                        str3 = c2030YhA0111.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A0111 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A0111.A08;
                        this.A0Q = z7A0111.A05;
                        str3 = z7A0111.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA0113 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA0113.first;
                        listSingletonList = (List) pairA0113.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA0114 = YZ.A03(this.A0j);
                        this.A0T = yyA0114.A01;
                        this.A0E = yyA0114.A00;
                        str3 = yyA0114.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr1111111111111118 = A0q;
                            strArr1111111111111118[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr1111111111111118[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr1111111111111119 = A0q;
                            strArr1111111111111119[1] = "hW4H";
                            strArr1111111111111119[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr11111111111111110 = A0q;
                            strArr11111111111111110[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr11111111111111110[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr11111111111111111 = A0q;
                            strArr11111111111111111[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr11111111111111111[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr112 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr112, 0, 4);
                        listSingletonList = XR.A03(bArr112);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i118 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr11111111111111112 = A0q;
                                strArr11111111111111112[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr11111111111111112[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr11111111111111113 = A0q;
                        strArr11111111111111113[1] = "vl3p";
                        strArr11111111111111113[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr11111111111111114 = A0q;
                        strArr11111111111111114[1] = "kgha";
                        strArr11111111111111114[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA1115 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i118).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA1115);
                return;
            case 635596514:
                if (str4.equals(A03(108, 16, 108))) {
                    b = Ascii.SUB;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA0112 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA0112.A05;
                        this.A0Q = c2030YhA0112.A02;
                        str3 = c2030YhA0112.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A0112 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A0112.A08;
                        this.A0Q = z7A0112.A05;
                        str3 = z7A0112.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA0114 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA0114.first;
                        listSingletonList = (List) pairA0114.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA0115 = YZ.A03(this.A0j);
                        this.A0T = yyA0115.A01;
                        this.A0E = yyA0115.A00;
                        str3 = yyA0115.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr11111111111111115 = A0q;
                            strArr11111111111111115[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr11111111111111115[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr11111111111111116 = A0q;
                            strArr11111111111111116[1] = "hW4H";
                            strArr11111111111111116[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr11111111111111117 = A0q;
                            strArr11111111111111117[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr11111111111111117[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr11111111111111118 = A0q;
                            strArr11111111111111118[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr11111111111111118[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr113 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr113, 0, 4);
                        listSingletonList = XR.A03(bArr113);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i119 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr11111111111111119 = A0q;
                                strArr11111111111111119[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr11111111111111119[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr111111111111111110 = A0q;
                        strArr111111111111111110[1] = "vl3p";
                        strArr111111111111111110[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr111111111111111111 = A0q;
                        strArr111111111111111111[1] = "kgha";
                        strArr111111111111111111[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA1116 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i119).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA1116);
                return;
            case 725948237:
                if (str4.equals(A03(124, 13, 74))) {
                    b = Ascii.EM;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA0113 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA0113.A05;
                        this.A0Q = c2030YhA0113.A02;
                        str3 = c2030YhA0113.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A0113 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A0113.A08;
                        this.A0Q = z7A0113.A05;
                        str3 = z7A0113.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA0115 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA0115.first;
                        listSingletonList = (List) pairA0115.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA0116 = YZ.A03(this.A0j);
                        this.A0T = yyA0116.A01;
                        this.A0E = yyA0116.A00;
                        str3 = yyA0116.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr111111111111111112 = A0q;
                            strArr111111111111111112[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr111111111111111112[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr111111111111111113 = A0q;
                            strArr111111111111111113[1] = "hW4H";
                            strArr111111111111111113[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr111111111111111114 = A0q;
                            strArr111111111111111114[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr111111111111111114[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr111111111111111115 = A0q;
                            strArr111111111111111115[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr111111111111111115[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr114 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr114, 0, 4);
                        listSingletonList = XR.A03(bArr114);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i1110 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr111111111111111116 = A0q;
                                strArr111111111111111116[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr111111111111111116[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr111111111111111117 = A0q;
                        strArr111111111111111117[1] = "vl3p";
                        strArr111111111111111117[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr111111111111111118 = A0q;
                        strArr111111111111111118[1] = "kgha";
                        strArr111111111111111118[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA1117 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i1110).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA1117);
                return;
            case 725957860:
                String[] strArr20 = A0q;
                if (strArr20[5].length() != strArr20[2].length()) {
                    String[] strArr21 = A0q;
                    strArr21[3] = "pVtGpTbAzfnElxJc";
                    strArr21[7] = "SejoyLYBcStMJmMw";
                    if (str4.equals(A03(137, 13, 22))) {
                        b = Ascii.CAN;
                    } else {
                        b = -1;
                    }
                    strA03 = A03(0, 22, 63);
                    strA04 = A03(312, 17, 15);
                    switch (b) {
                        case 0:
                            strA05 = A03(1204, 19, 26);
                            break;
                        case 1:
                            strA05 = A03(1223, 19, 13);
                            break;
                        case 2:
                            strA05 = A03(1098, 10, 34);
                            break;
                        case 3:
                            strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                            break;
                        case 4:
                        case 5:
                        case 6:
                            strA05 = A03(1155, 13, 88);
                            if (this.A0j == null) {
                                listSingletonList = Collections.singletonList(this.A0j);
                            } else {
                                listSingletonList = null;
                            }
                            break;
                        case 7:
                            strA05 = A03(1108, 9, 78);
                            C2030Yh c2030YhA0114 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                            listSingletonList = c2030YhA0114.A05;
                            this.A0Q = c2030YhA0114.A02;
                            str3 = c2030YhA0114.A04;
                            break;
                        case 8:
                            strA05 = A03(1145, 10, 66);
                            Z7 z7A0114 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                            listSingletonList = z7A0114.A08;
                            this.A0Q = z7A0114.A05;
                            str3 = z7A0114.A07;
                            break;
                        case 9:
                            Pair<String, List<byte[]>> pairA0116 = A02(new C1744Mk(A0D(this.A0d)));
                            strA05 = (String) pairA0116.first;
                            listSingletonList = (List) pairA0116.second;
                            break;
                        case 10:
                            strA05 = A03(1189, 15, 20);
                            break;
                        case 11:
                            strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                            i6 = 8192;
                            listSingletonList = A05(A0D(this.A0d));
                            break;
                        case 12:
                            strA05 = A03(979, 10, 43);
                            i6 = 5760;
                            listSingletonList = new ArrayList<>(3);
                            listSingletonList.add(A0D(this.A0d));
                            listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                            listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                            break;
                        case 13:
                            strA05 = A03(941, 15, 61);
                            listSingletonList = Collections.singletonList(A0D(this.A0d));
                            YY yyA0117 = YZ.A03(this.A0j);
                            this.A0T = yyA0117.A01;
                            this.A0E = yyA0117.A00;
                            str3 = yyA0117.A02;
                            break;
                        case 14:
                            strA05 = A03(966, 13, 39);
                            i6 = 4096;
                            break;
                        case 15:
                            strA05 = A03(956, 10, 100);
                            i6 = 4096;
                            break;
                        case 16:
                            strArr = A0q;
                            if (strArr[1].length() != strArr[6].length()) {
                                String[] strArr111111111111111119 = A0q;
                                strArr111111111111111119[5] = "6QUONKhA6O8Ed3xalfR";
                                strArr111111111111111119[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                                strA05 = A03(912, 9, 123);
                            } else {
                                A0q[4] = "EKok";
                                strA05 = A03(912, 9, 123);
                            }
                            break;
                        case 17:
                            strA05 = A03(921, 10, 117);
                            break;
                        case 18:
                            strA05 = A03(998, 13, 102);
                            this.A0c = new ZQ();
                            break;
                        case 19:
                        case 20:
                            strArr2 = A0q;
                            if (strArr2[5].length() != strArr2[2].length()) {
                                strA05 = A03(1011, 13, kotlin.fh.h1);
                            } else {
                                String[] strArr1111111111111111110 = A0q;
                                strArr1111111111111111110[1] = "hW4H";
                                strArr1111111111111111110[6] = "Xk0R";
                                strA05 = A03(1011, 13, kotlin.fh.h1);
                            }
                            break;
                        case 21:
                            strA05 = A03(1024, 16, 46);
                            break;
                        case 22:
                            strA05 = A03(931, 10, 127);
                            listSingletonList = Collections.singletonList(A0D(this.A0d));
                            break;
                        case 23:
                            strA05 = A03(989, 9, 32);
                            if (A09(new C1744Mk(A0D(this.A0d)))) {
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(360, 51, 87) + strA05);
                            } else {
                                iA03 = N1.A03(this.A0D);
                                if (iA03 == 0) {
                                    iA03 = -1;
                                    strA05 = A03(1052, 15, 58);
                                    MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                                }
                            }
                            break;
                        case 24:
                            strA05 = A03(989, 9, 32);
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                            }
                            break;
                        case 25:
                            strA05 = A03(989, 9, 32);
                            if (this.A0D == 8) {
                                i2 = this.A0D;
                                if (A0q[0].charAt(31) != '3') {
                                    throw new RuntimeException();
                                }
                                String[] strArr1111111111111111111 = A0q;
                                strArr1111111111111111111[5] = "VzBIh1RO7Cltss8V3pR";
                                strArr1111111111111111111[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                                if (i2 == 16) {
                                    iA03 = -1;
                                    strA05 = A03(1052, 15, 58);
                                    MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                                } else {
                                    iA03 = 268435456;
                                }
                            } else {
                                iA03 = 3;
                            }
                            break;
                        case 26:
                            strA05 = A03(989, 9, 32);
                            if (this.A0D == 32) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 4;
                            }
                            break;
                        case 27:
                            strArr3 = A0q;
                            if (strArr3[3].length() != strArr3[7].length()) {
                                String[] strArr1111111111111111112 = A0q;
                                strArr1111111111111111112[5] = "MMbSQGvDXRPiQfFBd1V";
                                strArr1111111111111111112[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                                strA05 = A03(892, 20, 77);
                            } else {
                                A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                                strA05 = A03(892, 17, 69);
                            }
                            break;
                        case 28:
                            strA05 = A03(1078, 10, 68);
                            listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                            break;
                        case 29:
                            strA05 = A03(j.a.j, 8, 77);
                            break;
                        case 30:
                            strA05 = A03(874, 18, 40);
                            listSingletonList = XR.A03(A0D(this.A0d));
                            break;
                        case 31:
                            strA05 = A03(859, 15, 88);
                            break;
                        case 32:
                            strA05 = A03(840, 19, 60);
                            byte[] bArr115 = new byte[4];
                            System.arraycopy(A0D(this.A0d), 0, bArr115, 0, 4);
                            listSingletonList = XR.A03(bArr115);
                            break;
                        default:
                            throw L9.A01(A03(543, 30, 32), null);
                    }
                    if (this.A0k != null) {
                        str3 = c2040YsA00.A02;
                        strA05 = A03(1127, 18, 121);
                    }
                    int i1111 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                    c1689Ke = new C1689Ke();
                    if (!L8.A0C(strA05)) {
                        if (L8.A0F(strA05)) {
                            i3 = 2;
                            if (this.A0K == 0) {
                                if (this.A0L == -1) {
                                    i4 = this.A0W;
                                } else {
                                    i4 = this.A0L;
                                }
                                this.A0L = i4;
                                if (this.A0J == -1) {
                                    i5 = this.A0M;
                                } else {
                                    i5 = this.A0J;
                                }
                                this.A0J = i5;
                            }
                            f = -1.0f;
                            if (this.A0L != -1) {
                                f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                            }
                            if (this.A0h) {
                            }
                            iIntValue = -1;
                            str = this.A0e;
                            strArr4 = A0q;
                            if (strArr4[5].length() != strArr4[2].length()) {
                                A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                                if (str != null) {
                                    if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                        iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                    }
                                }
                            } else if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                            if (this.A0S == 0) {
                                f2 = this.A0A;
                                strArr5 = A0q;
                                if (strArr5[1].length() != strArr5[6].length()) {
                                    String[] strArr1111111111111111113 = A0q;
                                    strArr1111111111111111113[5] = "br7RWQjvSw1sD4yuyx2";
                                    strArr1111111111111111113[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                    if (Float.compare(f2, 0.0f) == 0) {
                                        iCompare = Float.compare(this.A08, 0.0f);
                                        strArr6 = A0q;
                                        if (strArr6[1].length() == strArr6[6].length()) {
                                            A0q[4] = "";
                                            if (iCompare == 0) {
                                                if (Float.compare(this.A09, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                        }
                                    }
                                } else if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                }
                            }
                            c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                        } else {
                            if (A03(892, 20, 77).equals(strA05)) {
                            }
                            i3 = 3;
                        }
                        break;
                    } else {
                        i3 = 1;
                        c1689KeA0b = c1689Ke.A0b(this.A0E);
                        strArr8 = A0q;
                        if (strArr8[3].length() != strArr8[7].length()) {
                            c1689KeA0b.A0m(this.A0T).A0i(iA03);
                        } else {
                            String[] strArr1111111111111111114 = A0q;
                            strArr1111111111111111114[1] = "vl3p";
                            strArr1111111111111111114[6] = "0062";
                            c1689KeA0b.A0m(this.A0T).A0i(iA03);
                        }
                    }
                    if (this.A0e != null) {
                        str2 = this.A0e;
                        strArr7 = A0q;
                        if (strArr7[1].length() == strArr7[6].length()) {
                            String[] strArr1111111111111111115 = A0q;
                            strArr1111111111111111115[1] = "kgha";
                            strArr1111111111111111115[6] = "VVit";
                            c1689Ke.A0z(str2);
                        }
                    }
                    VC vcA1118 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i1111).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                    this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                    this.A0b.A7E(vcA1118);
                    return;
                }
                throw new RuntimeException();
            case 738597099:
                if (str4.equals(A03(CommonGatewayClient.CODE_TOO_MANY_REQUESTS, 10, 10))) {
                    b = Ascii.FS;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA0115 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA0115.A05;
                        this.A0Q = c2030YhA0115.A02;
                        str3 = c2030YhA0115.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A0115 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A0115.A08;
                        this.A0Q = z7A0115.A05;
                        str3 = z7A0115.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA0117 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA0117.first;
                        listSingletonList = (List) pairA0117.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA0118 = YZ.A03(this.A0j);
                        this.A0T = yyA0118.A01;
                        this.A0E = yyA0118.A00;
                        str3 = yyA0118.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr1111111111111111116 = A0q;
                            strArr1111111111111111116[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr1111111111111111116[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr1111111111111111117 = A0q;
                            strArr1111111111111111117[1] = "hW4H";
                            strArr1111111111111111117[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr1111111111111111118 = A0q;
                            strArr1111111111111111118[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr1111111111111111118[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr1111111111111111119 = A0q;
                            strArr1111111111111111119[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr1111111111111111119[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr116 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr116, 0, 4);
                        listSingletonList = XR.A03(bArr116);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i1112 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr11111111111111111110 = A0q;
                                strArr11111111111111111110[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr11111111111111111110[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr11111111111111111111 = A0q;
                        strArr11111111111111111111[1] = "vl3p";
                        strArr11111111111111111111[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr11111111111111111112 = A0q;
                        strArr11111111111111111112[1] = "kgha";
                        strArr11111111111111111112[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA1119 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i1112).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA1119);
                return;
            case 855502857:
                if (str4.equals(A03(791, 16, 94))) {
                    b = 8;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA0116 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA0116.A05;
                        this.A0Q = c2030YhA0116.A02;
                        str3 = c2030YhA0116.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A0116 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A0116.A08;
                        this.A0Q = z7A0116.A05;
                        str3 = z7A0116.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA0118 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA0118.first;
                        listSingletonList = (List) pairA0118.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA0119 = YZ.A03(this.A0j);
                        this.A0T = yyA0119.A01;
                        this.A0E = yyA0119.A00;
                        str3 = yyA0119.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr11111111111111111113 = A0q;
                            strArr11111111111111111113[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr11111111111111111113[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr11111111111111111114 = A0q;
                            strArr11111111111111111114[1] = "hW4H";
                            strArr11111111111111111114[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr11111111111111111115 = A0q;
                            strArr11111111111111111115[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr11111111111111111115[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr11111111111111111116 = A0q;
                            strArr11111111111111111116[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr11111111111111111116[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr117 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr117, 0, 4);
                        listSingletonList = XR.A03(bArr117);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i1113 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr11111111111111111117 = A0q;
                                strArr11111111111111111117[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr11111111111111111117[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr11111111111111111118 = A0q;
                        strArr11111111111111111118[1] = "vl3p";
                        strArr11111111111111111118[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr11111111111111111119 = A0q;
                        strArr11111111111111111119[1] = "kgha";
                        strArr11111111111111111119[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA11110 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i1113).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA11110);
                return;
            case 1045209816:
                if (str4.equals(A03(450, 13, 84))) {
                    b = Ascii.GS;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA0117 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA0117.A05;
                        this.A0Q = c2030YhA0117.A02;
                        str3 = c2030YhA0117.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A0117 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A0117.A08;
                        this.A0Q = z7A0117.A05;
                        str3 = z7A0117.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA0119 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA0119.first;
                        listSingletonList = (List) pairA0119.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA01110 = YZ.A03(this.A0j);
                        this.A0T = yyA01110.A01;
                        this.A0E = yyA01110.A00;
                        str3 = yyA01110.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr111111111111111111110 = A0q;
                            strArr111111111111111111110[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr111111111111111111110[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr111111111111111111111 = A0q;
                            strArr111111111111111111111[1] = "hW4H";
                            strArr111111111111111111111[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr111111111111111111112 = A0q;
                            strArr111111111111111111112[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr111111111111111111112[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr111111111111111111113 = A0q;
                            strArr111111111111111111113[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr111111111111111111113[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr118 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr118, 0, 4);
                        listSingletonList = XR.A03(bArr118);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i1114 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr111111111111111111114 = A0q;
                                strArr111111111111111111114[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr111111111111111111114[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr111111111111111111115 = A0q;
                        strArr111111111111111111115[1] = "vl3p";
                        strArr111111111111111111115[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr111111111111111111116 = A0q;
                        strArr111111111111111111116[1] = "kgha";
                        strArr111111111111111111116[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA11111 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i1114).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA11111);
                return;
            case 1422270023:
                if (str4.equals(A03(439, 11, 105))) {
                    b = Ascii.ESC;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA0118 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA0118.A05;
                        this.A0Q = c2030YhA0118.A02;
                        str3 = c2030YhA0118.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A0118 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A0118.A08;
                        this.A0Q = z7A0118.A05;
                        str3 = z7A0118.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA01110 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA01110.first;
                        listSingletonList = (List) pairA01110.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA01111 = YZ.A03(this.A0j);
                        this.A0T = yyA01111.A01;
                        this.A0E = yyA01111.A00;
                        str3 = yyA01111.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr111111111111111111117 = A0q;
                            strArr111111111111111111117[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr111111111111111111117[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr111111111111111111118 = A0q;
                            strArr111111111111111111118[1] = "hW4H";
                            strArr111111111111111111118[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr111111111111111111119 = A0q;
                            strArr111111111111111111119[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr111111111111111111119[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr1111111111111111111110 = A0q;
                            strArr1111111111111111111110[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr1111111111111111111110[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr119 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr119, 0, 4);
                        listSingletonList = XR.A03(bArr119);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i1115 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr1111111111111111111111 = A0q;
                                strArr1111111111111111111111[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr1111111111111111111111[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr1111111111111111111112 = A0q;
                        strArr1111111111111111111112[1] = "vl3p";
                        strArr1111111111111111111112[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr1111111111111111111113 = A0q;
                        strArr1111111111111111111113[1] = "kgha";
                        strArr1111111111111111111113[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA11112 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i1115).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA11112);
                return;
            case 1809237540:
                if (str4.equals(A03(726, 7, 81))) {
                    b = 3;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA0119 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA0119.A05;
                        this.A0Q = c2030YhA0119.A02;
                        str3 = c2030YhA0119.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A0119 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A0119.A08;
                        this.A0Q = z7A0119.A05;
                        str3 = z7A0119.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA01111 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA01111.first;
                        listSingletonList = (List) pairA01111.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA01112 = YZ.A03(this.A0j);
                        this.A0T = yyA01112.A01;
                        this.A0E = yyA01112.A00;
                        str3 = yyA01112.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr1111111111111111111114 = A0q;
                            strArr1111111111111111111114[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr1111111111111111111114[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr1111111111111111111115 = A0q;
                            strArr1111111111111111111115[1] = "hW4H";
                            strArr1111111111111111111115[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr1111111111111111111116 = A0q;
                            strArr1111111111111111111116[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr1111111111111111111116[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr1111111111111111111117 = A0q;
                            strArr1111111111111111111117[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr1111111111111111111117[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr1110 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr1110, 0, 4);
                        listSingletonList = XR.A03(bArr1110);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i1116 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr1111111111111111111118 = A0q;
                                strArr1111111111111111111118[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr1111111111111111111118[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr1111111111111111111119 = A0q;
                        strArr1111111111111111111119[1] = "vl3p";
                        strArr1111111111111111111119[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr11111111111111111111110 = A0q;
                        strArr11111111111111111111110[1] = "kgha";
                        strArr11111111111111111111110[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA11113 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i1116).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA11113);
                return;
            case 1950749482:
                if (str4.equals(A03(64, 6, 96))) {
                    b = 17;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA01110 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA01110.A05;
                        this.A0Q = c2030YhA01110.A02;
                        str3 = c2030YhA01110.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A01110 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A01110.A08;
                        this.A0Q = z7A01110.A05;
                        str3 = z7A01110.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA01112 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA01112.first;
                        listSingletonList = (List) pairA01112.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA01113 = YZ.A03(this.A0j);
                        this.A0T = yyA01113.A01;
                        this.A0E = yyA01113.A00;
                        str3 = yyA01113.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr11111111111111111111111 = A0q;
                            strArr11111111111111111111111[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr11111111111111111111111[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr11111111111111111111112 = A0q;
                            strArr11111111111111111111112[1] = "hW4H";
                            strArr11111111111111111111112[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr11111111111111111111113 = A0q;
                            strArr11111111111111111111113[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr11111111111111111111113[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr11111111111111111111114 = A0q;
                            strArr11111111111111111111114[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr11111111111111111111114[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr1111 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr1111, 0, 4);
                        listSingletonList = XR.A03(bArr1111);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i1117 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr11111111111111111111115 = A0q;
                                strArr11111111111111111111115[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr11111111111111111111115[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr11111111111111111111116 = A0q;
                        strArr11111111111111111111116[1] = "vl3p";
                        strArr11111111111111111111116[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr11111111111111111111117 = A0q;
                        strArr11111111111111111111117[1] = "kgha";
                        strArr11111111111111111111117[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA11114 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i1117).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA11114);
                return;
            case 1950789798:
                if (str4.equals(A03(70, 6, 24))) {
                    b = Ascii.SYN;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA01111 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA01111.A05;
                        this.A0Q = c2030YhA01111.A02;
                        str3 = c2030YhA01111.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A01111 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A01111.A08;
                        this.A0Q = z7A01111.A05;
                        str3 = z7A01111.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA01113 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA01113.first;
                        listSingletonList = (List) pairA01113.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA01114 = YZ.A03(this.A0j);
                        this.A0T = yyA01114.A01;
                        this.A0E = yyA01114.A00;
                        str3 = yyA01114.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr11111111111111111111118 = A0q;
                            strArr11111111111111111111118[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr11111111111111111111118[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr11111111111111111111119 = A0q;
                            strArr11111111111111111111119[1] = "hW4H";
                            strArr11111111111111111111119[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr111111111111111111111110 = A0q;
                            strArr111111111111111111111110[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr111111111111111111111110[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr111111111111111111111111 = A0q;
                            strArr111111111111111111111111[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr111111111111111111111111[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr1112 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr1112, 0, 4);
                        listSingletonList = XR.A03(bArr1112);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i1118 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr111111111111111111111112 = A0q;
                                strArr111111111111111111111112[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr111111111111111111111112[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr111111111111111111111113 = A0q;
                        strArr111111111111111111111113[1] = "vl3p";
                        strArr111111111111111111111113[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr111111111111111111111114 = A0q;
                        strArr111111111111111111111114[1] = "kgha";
                        strArr111111111111111111111114[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA11115 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i1118).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA11115);
                return;
            case 1951062397:
                if (str4.equals(A03(102, 6, 77))) {
                    b = Ascii.FF;
                } else {
                    b = -1;
                }
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA01112 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA01112.A05;
                        this.A0Q = c2030YhA01112.A02;
                        str3 = c2030YhA01112.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A01112 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A01112.A08;
                        this.A0Q = z7A01112.A05;
                        str3 = z7A01112.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA01114 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA01114.first;
                        listSingletonList = (List) pairA01114.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA01115 = YZ.A03(this.A0j);
                        this.A0T = yyA01115.A01;
                        this.A0E = yyA01115.A00;
                        str3 = yyA01115.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr111111111111111111111115 = A0q;
                            strArr111111111111111111111115[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr111111111111111111111115[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr111111111111111111111116 = A0q;
                            strArr111111111111111111111116[1] = "hW4H";
                            strArr111111111111111111111116[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr111111111111111111111117 = A0q;
                            strArr111111111111111111111117[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr111111111111111111111117[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr111111111111111111111118 = A0q;
                            strArr111111111111111111111118[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr111111111111111111111118[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr1113 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr1113, 0, 4);
                        listSingletonList = XR.A03(bArr1113);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i1119 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr111111111111111111111119 = A0q;
                                strArr111111111111111111111119[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr111111111111111111111119[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr1111111111111111111111110 = A0q;
                        strArr1111111111111111111111110[1] = "vl3p";
                        strArr1111111111111111111111110[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr1111111111111111111111111 = A0q;
                        strArr1111111111111111111111111[1] = "kgha";
                        strArr1111111111111111111111111[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA11116 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i1119).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA11116);
                return;
            default:
                b = -1;
                strA03 = A03(0, 22, 63);
                strA04 = A03(312, 17, 15);
                switch (b) {
                    case 0:
                        strA05 = A03(1204, 19, 26);
                        break;
                    case 1:
                        strA05 = A03(1223, 19, 13);
                        break;
                    case 2:
                        strA05 = A03(1098, 10, 34);
                        break;
                    case 3:
                        strA05 = A03(Connections.MAX_UNRELIABLE_MESSAGE_LEN, 11, 60);
                        break;
                    case 4:
                    case 5:
                    case 6:
                        strA05 = A03(1155, 13, 88);
                        if (this.A0j == null) {
                            listSingletonList = Collections.singletonList(this.A0j);
                        } else {
                            listSingletonList = null;
                        }
                        break;
                    case 7:
                        strA05 = A03(1108, 9, 78);
                        C2030Yh c2030YhA01113 = C2030Yh.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = c2030YhA01113.A05;
                        this.A0Q = c2030YhA01113.A02;
                        str3 = c2030YhA01113.A04;
                        break;
                    case 8:
                        strA05 = A03(1145, 10, 66);
                        Z7 z7A01113 = Z7.A00(new C1744Mk(A0D(this.A0d)));
                        listSingletonList = z7A01113.A08;
                        this.A0Q = z7A01113.A05;
                        str3 = z7A01113.A07;
                        break;
                    case 9:
                        Pair<String, List<byte[]>> pairA01115 = A02(new C1744Mk(A0D(this.A0d)));
                        strA05 = (String) pairA01115.first;
                        listSingletonList = (List) pairA01115.second;
                        break;
                    case 10:
                        strA05 = A03(1189, 15, 20);
                        break;
                    case 11:
                        strA05 = A03(IronSourceError.ERROR_RV_INSTANCE_INIT_EXCEPTION, 12, 53);
                        i6 = 8192;
                        listSingletonList = A05(A0D(this.A0d));
                        break;
                    case 12:
                        strA05 = A03(979, 10, 43);
                        i6 = 5760;
                        listSingletonList = new ArrayList<>(3);
                        listSingletonList.add(A0D(this.A0d));
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0X).array());
                        listSingletonList.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0Y).array());
                        break;
                    case 13:
                        strA05 = A03(941, 15, 61);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        YY yyA01116 = YZ.A03(this.A0j);
                        this.A0T = yyA01116.A01;
                        this.A0E = yyA01116.A00;
                        str3 = yyA01116.A02;
                        break;
                    case 14:
                        strA05 = A03(966, 13, 39);
                        i6 = 4096;
                        break;
                    case 15:
                        strA05 = A03(956, 10, 100);
                        i6 = 4096;
                        break;
                    case 16:
                        strArr = A0q;
                        if (strArr[1].length() != strArr[6].length()) {
                            String[] strArr1111111111111111111111112 = A0q;
                            strArr1111111111111111111111112[5] = "6QUONKhA6O8Ed3xalfR";
                            strArr1111111111111111111111112[2] = "NOhuNOvejIHrAqnQk0hIkKstV1x";
                            strA05 = A03(912, 9, 123);
                        } else {
                            A0q[4] = "EKok";
                            strA05 = A03(912, 9, 123);
                        }
                        break;
                    case 17:
                        strA05 = A03(921, 10, 117);
                        break;
                    case 18:
                        strA05 = A03(998, 13, 102);
                        this.A0c = new ZQ();
                        break;
                    case 19:
                    case 20:
                        strArr2 = A0q;
                        if (strArr2[5].length() != strArr2[2].length()) {
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        } else {
                            String[] strArr1111111111111111111111113 = A0q;
                            strArr1111111111111111111111113[1] = "hW4H";
                            strArr1111111111111111111111113[6] = "Xk0R";
                            strA05 = A03(1011, 13, kotlin.fh.h1);
                        }
                        break;
                    case 21:
                        strA05 = A03(1024, 16, 46);
                        break;
                    case 22:
                        strA05 = A03(931, 10, 127);
                        listSingletonList = Collections.singletonList(A0D(this.A0d));
                        break;
                    case 23:
                        strA05 = A03(989, 9, 32);
                        if (A09(new C1744Mk(A0D(this.A0d)))) {
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(360, 51, 87) + strA05);
                        } else {
                            iA03 = N1.A03(this.A0D);
                            if (iA03 == 0) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(573, 27, 18) + this.A0D + strA03 + strA05);
                            }
                        }
                        break;
                    case 24:
                        strA05 = A03(989, 9, 32);
                        iA03 = N1.A03(this.A0D);
                        if (iA03 == 0) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(680, 41, 108) + this.A0D + strA03 + strA05);
                        }
                        break;
                    case 25:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 8) {
                            i2 = this.A0D;
                            if (A0q[0].charAt(31) != '3') {
                                throw new RuntimeException();
                            }
                            String[] strArr1111111111111111111111114 = A0q;
                            strArr1111111111111111111111114[5] = "VzBIh1RO7Cltss8V3pR";
                            strArr1111111111111111111111114[2] = "dQGUSISo11Iibn7HU7JzvLc2G35";
                            if (i2 == 16) {
                                iA03 = -1;
                                strA05 = A03(1052, 15, 58);
                                MV.A07(strA04, A03(600, 38, 63) + this.A0D + strA03 + strA05);
                            } else {
                                iA03 = 268435456;
                            }
                        } else {
                            iA03 = 3;
                        }
                        break;
                    case 26:
                        strA05 = A03(989, 9, 32);
                        if (this.A0D == 32) {
                            iA03 = -1;
                            strA05 = A03(1052, 15, 58);
                            MV.A07(strA04, A03(638, 42, 37) + this.A0D + strA03 + strA05);
                        } else {
                            iA03 = 4;
                        }
                        break;
                    case 27:
                        strArr3 = A0q;
                        if (strArr3[3].length() != strArr3[7].length()) {
                            String[] strArr1111111111111111111111115 = A0q;
                            strArr1111111111111111111111115[5] = "MMbSQGvDXRPiQfFBd1V";
                            strArr1111111111111111111111115[2] = "W7H7FZnwTvozyyvBSyvNRi8FXXk";
                            strA05 = A03(892, 20, 77);
                        } else {
                            A0q[0] = "NijPkStBVwwMhuKrxoWoAUENiQXkBng3";
                            strA05 = A03(892, 17, 69);
                        }
                        break;
                    case 28:
                        strA05 = A03(1078, 10, 68);
                        listSingletonList = XR.A03(MatroskaExtractor.A0y, A0D(this.A0d));
                        break;
                    case 29:
                        strA05 = A03(j.a.j, 8, 77);
                        break;
                    case 30:
                        strA05 = A03(874, 18, 40);
                        listSingletonList = XR.A03(A0D(this.A0d));
                        break;
                    case 31:
                        strA05 = A03(859, 15, 88);
                        break;
                    case 32:
                        strA05 = A03(840, 19, 60);
                        byte[] bArr1114 = new byte[4];
                        System.arraycopy(A0D(this.A0d), 0, bArr1114, 0, 4);
                        listSingletonList = XR.A03(bArr1114);
                        break;
                    default:
                        throw L9.A01(A03(543, 30, 32), null);
                }
                if (this.A0k != null) {
                    str3 = c2040YsA00.A02;
                    strA05 = A03(1127, 18, 121);
                }
                int i11110 = 0 | (this.A0f ? 1 : 0) | (this.A0g ? 2 : 0);
                c1689Ke = new C1689Ke();
                if (!L8.A0C(strA05)) {
                    if (L8.A0F(strA05)) {
                        i3 = 2;
                        if (this.A0K == 0) {
                            if (this.A0L == -1) {
                                i4 = this.A0W;
                            } else {
                                i4 = this.A0L;
                            }
                            this.A0L = i4;
                            if (this.A0J == -1) {
                                i5 = this.A0M;
                            } else {
                                i5 = this.A0J;
                            }
                            this.A0J = i5;
                        }
                        f = -1.0f;
                        if (this.A0L != -1) {
                            f = (this.A0M * this.A0L) / (this.A0W * this.A0J);
                        }
                        if (this.A0h) {
                        }
                        iIntValue = -1;
                        str = this.A0e;
                        strArr4 = A0q;
                        if (strArr4[5].length() != strArr4[2].length()) {
                            A0q[0] = "8xIL423HLWl21wbkkH1JrpJPMotRimp3";
                            if (str != null) {
                                if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                    iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                                }
                            }
                        } else if (str != null) {
                            if (MatroskaExtractor.A0w.containsKey(this.A0e)) {
                                iIntValue = ((Integer) MatroskaExtractor.A0w.get(this.A0e)).intValue();
                            }
                        }
                        if (this.A0S == 0) {
                            f2 = this.A0A;
                            strArr5 = A0q;
                            if (strArr5[1].length() != strArr5[6].length()) {
                                String[] strArr1111111111111111111111116 = A0q;
                                strArr1111111111111111111111116[5] = "br7RWQjvSw1sD4yuyx2";
                                strArr1111111111111111111111116[2] = "vwylnRIQYSwdHCsvR3YEuL8YMXK";
                                if (Float.compare(f2, 0.0f) == 0) {
                                    iCompare = Float.compare(this.A08, 0.0f);
                                    strArr6 = A0q;
                                    if (strArr6[1].length() == strArr6[6].length()) {
                                        A0q[4] = "";
                                        if (iCompare == 0) {
                                            if (Float.compare(this.A09, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(this.A08, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(this.A08, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                    }
                                    throw new RuntimeException();
                                }
                            } else if (Float.compare(f2, 0.0f) == 0) {
                                iCompare = Float.compare(this.A08, 0.0f);
                                strArr6 = A0q;
                                if (strArr6[1].length() == strArr6[6].length()) {
                                    A0q[4] = "";
                                    if (iCompare == 0) {
                                        if (Float.compare(this.A09, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(this.A08, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(this.A08, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                }
                                throw new RuntimeException();
                            }
                        }
                        c1689Ke.A0r(this.A0W).A0f(this.A0M).A0Y(f).A0l(iIntValue).A13(this.A0l).A0o(this.A0U).A0t(colorInfo);
                    } else {
                        if (A03(892, 20, 77).equals(strA05)) {
                        }
                        i3 = 3;
                    }
                    break;
                } else {
                    i3 = 1;
                    c1689KeA0b = c1689Ke.A0b(this.A0E);
                    strArr8 = A0q;
                    if (strArr8[3].length() != strArr8[7].length()) {
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    } else {
                        String[] strArr1111111111111111111111117 = A0q;
                        strArr1111111111111111111111117[1] = "vl3p";
                        strArr1111111111111111111111117[6] = "0062";
                        c1689KeA0b.A0m(this.A0T).A0i(iA03);
                    }
                }
                if (this.A0e != null) {
                    str2 = this.A0e;
                    strArr7 = A0q;
                    if (strArr7[1].length() == strArr7[6].length()) {
                        String[] strArr1111111111111111111111118 = A0q;
                        strArr1111111111111111111111118[1] = "kgha";
                        strArr1111111111111111111111118[6] = "VVit";
                        c1689Ke.A0z(str2);
                    }
                    throw new RuntimeException();
                }
                VC vcA11117 = c1689Ke.A0g(i).A11(strA05).A0h(i6).A10(this.A0o).A0n(i11110).A12(listSingletonList).A0w(str3).A0u(this.A0Z).A14();
                this.A0b = interfaceC2044Yw.ALm(this.A0R, i3);
                this.A0b.A7E(vcA11117);
                return;
        }
    }
}
