package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import java.util.Map;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class KF extends AbstractRunnableC2979oq {
    public static byte[] A05;
    public static String[] A06 = {"Gpv8eHHTEOtePQmo1OD6muRo415gTvmp", "m8VLVbL9uinkegCEMoYL3DBV4Qd", "9DesmfPYImwpHbFMCkN8D4N2A0eEtTnA", "p6qK7niiHhY9MGJ6cPP69YBKuDETC8Y4", "5iURk91XNbuPvrJWt8OL2zSUhjl2Moa0", "44pBDqZwGccZEwpE1ClPCXXxeIB", "3LUdHIp1lrC6CN8jsqyi77AXm4NZ0z", "iLxtTrJV"};
    public final /* synthetic */ long A00;
    public final /* synthetic */ C1716Lh A01;
    public final /* synthetic */ C2442fz A02;
    public final /* synthetic */ C13717d A03;
    public final /* synthetic */ C2803lw A04;

    static {
        A01();
    }

    public KF(C13717d c13717d, C2442fz c2442fz, C1716Lh c1716Lh, long j, C2803lw c2803lw) {
        this.A03 = c13717d;
        this.A02 = c2442fz;
        this.A01 = c1716Lh;
        this.A00 = j;
        this.A04 = c2803lw;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A06;
            if (strArr[1].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            A06[2] = "zvIoaGxek6NRisBEUIKkM8UdU9N5bmYn";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 50);
            i4++;
        }
    }

    public static void A01() {
        A05 = new byte[]{33, Base64.padSymbol, 19, 54, 51, 34, 38, 55, 32, 114, 38, 59, 63, 55, Base64.padSymbol, 39, 38, 124, 90, 77, 77, 80, 77, 36, 58, 46, 119, 106, 110, 102, 108, 118, 119};
        if (A06[4].charAt(21) == 'x') {
            throw new RuntimeException();
        }
        A06[2] = "OuAVUMSSWbttlxL4z5HkeS5T535dgvDy";
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        this.A03.A0S(this.A02);
        this.A03.A0P(this.A01);
        Map mapA01 = this.A03.A01(this.A00);
        mapA01.put(A00(18, 5, 13), A00(0, 2, 62));
        mapA01.put(A00(23, 3, 123), A00(26, 7, 49));
        this.A03.A05(this.A04.A03(EnumC2807m0.A05), mapA01);
        this.A03.AEr(new C2922nt(AdErrorType.NETWORK_ERROR, A00(2, 16, 96)));
    }
}
