package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.common.base.Ascii;
import java.util.Arrays;
import org.json.JSONException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class GJ implements InterfaceC2187bq {
    public static byte[] A03;
    public static String[] A04 = {"Uw4OqKfxrSl3mEv", "VqN2b3nioUrp4JO4Jinaxa7heHGcMfmj", "RKN56TZmz8G8vSZ7D7kYOpuBRs6noRkR", "lFzX", "v1ebTUXYyOhZWRRzR1yx5a2LWyaadprb", "q7AVSoVdO1Y", "l0BlUcehLgrbJ08aN7EZVrGsyfO9Oj5h", "UBwSl28KkUZ2ITe"};
    public final /* synthetic */ long A00;
    public final /* synthetic */ C2945oH A01;
    public final /* synthetic */ C2948oK A02;

    static {
        A01();
    }

    public GJ(C2948oK c2948oK, C2945oH c2945oH, long j) {
        this.A02 = c2948oK;
        this.A01 = c2945oH;
        this.A00 = j;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 10);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{99, 99, 99, 54, 104, 49, 50, 103, Ascii.DC4, 65, Ascii.ETB, 65, Ascii.US, Ascii.US, 17, 70, 1, Ascii.CAN, 4, 5, Ascii.SO, 51, 40, 46, 59, 63, 34, 36, 37, 113, 107, 108, 90, 77, 73, 90, 77, Ascii.US, 90, 77, 77, 80, 77, Ascii.US, 80, 92, 92, 74, 77, 77, 90, 91, 75, 125, 106, 110, 125, 106, 56, 106, 125, 104, 116, 113, 125, 124, 56, 107, 109, 123, 123, 125, 107, 107, 126, 109, 116, 116, 97, 75, 74, 103, 75, 73, 84, 72, 65, 80, 65, 95, 94, 117, 66, 66, 95, 66};
    }

    private final void A02(C2136b1 c2136b1) {
        AbstractC2944oG.A06(this.A01);
        try {
            InterfaceC2193bw interfaceC2193bwA00 = c2136b1.A00();
            if (interfaceC2193bwA00 != null) {
                String strA7d = interfaceC2193bwA00.A7d();
                C2951oN c2951oNA07 = this.A02.A06.A07(this.A02.A05, strA7d, this.A00);
                if (c2951oNA07.A01() == EnumC2950oM.A04) {
                    GF gf = (GF) c2951oNA07;
                    String strA04 = gf.A04();
                    AdErrorType adErrorTypeAdErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(gf.A03(), AdErrorType.ERROR_MESSAGE);
                    if (strA04 != null) {
                        strA7d = strA04;
                    }
                    this.A02.A05.A0F().A3t(C3076qS.A01(this.A02.A01), adErrorTypeAdErrorTypeFromCode.getErrorCode(), strA7d, adErrorTypeAdErrorTypeFromCode.isPublicError());
                    this.A02.A0E(C2922nt.A01(adErrorTypeAdErrorTypeFromCode, strA7d));
                    return;
                }
            }
            AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
            String message = c2136b1.getMessage();
            this.A02.A05.A0F().A3t(C3076qS.A01(this.A02.A01), adErrorType.getErrorCode(), message, adErrorType.isPublicError());
            this.A02.A0E(C2922nt.A01(adErrorType, message));
        } catch (JSONException e) {
            AdErrorType adErrorType2 = AdErrorType.NETWORK_ERROR;
            String message2 = c2136b1.getMessage();
            this.A02.A05.A0F().A3t(C3076qS.A01(this.A02.A01), adErrorType2.getErrorCode(), A00(16, 15, 65) + e.getMessage(), adErrorType2.isPublicError());
            this.A02.A0E(C2922nt.A01(adErrorType2, message2));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2187bq
    public final void AES(InterfaceC2193bw interfaceC2193bw) {
        AbstractC2933o5.A05(A00(79, 10, 46), A00(52, 27, 18), A00(8, 8, 45));
        this.A02.A05.A0F().A5A();
        if (interfaceC2193bw != null) {
            String strA7d = interfaceC2193bw.A7d();
            if (C2863mv.A00(this.A02.A05) > 0) {
                C1618Hi c1618Hi = this.A02.A05;
                String[] strArr = A04;
                if (strArr[0].length() != strArr[7].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A04;
                strArr2[2] = "tgxx0UuGIft9UA3MnRMnFLQfhWdW0vbW";
                strArr2[4] = "0P0cGKPCvj1NlSOKLSh97X6dm38hZHc8";
                C2988oz.A00(c1618Hi).A0C(strA7d);
            }
            AbstractC2944oG.A06(this.A01);
            this.A02.A0O(strA7d, this.A00, this.A01);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2187bq
    public final void AEs(Exception exc) {
        AbstractC2933o5.A05(A00(89, 7, 58), A00(31, 21, 53), A00(0, 8, 90));
        this.A02.A05.A0F().A5A();
        if (C2136b1.class.equals(exc.getClass())) {
            A02((C2136b1) exc);
            return;
        }
        AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
        String message = exc.getMessage();
        this.A02.A05.A0F().A3t(C3076qS.A01(this.A02.A01), adErrorType.getErrorCode(), message, adErrorType.isPublicError());
        this.A02.A0E(C2922nt.A01(adErrorType, message));
    }
}
