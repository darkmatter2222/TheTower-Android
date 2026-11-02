package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class HZ extends AbstractRunnableC2979oq {
    public static byte[] A05;
    public static String[] A06 = {"WyCz8h7floq2Hs4ThFsEeFzQQuMVP6z2", "mSTUuWQAoYeAowXF", "QX5n2mojbDoKqPojtzwRwJon2kb7WfAH", "J7PoM8d3R8NTbjf8t0vaEmMiyxKw0K77", "8u35dAuLRzocdJEaFdASgxeMuVnn60Qw", "K1GvLw6sBv3orQHi", "wBSAobKCezPxUBmv24Ahxis1AuxM4GXl", "6ydzMmqBX95sZbPcV2rfRsYpcvwl4VbU"};
    public final /* synthetic */ int A00;
    public final /* synthetic */ C2755lA A01;
    public final /* synthetic */ InterfaceC2779lY A02;
    public final /* synthetic */ C2787lg A03;
    public final /* synthetic */ String A04;

    static {
        A01();
    }

    public HZ(C2755lA c2755lA, String str, int i, C2787lg c2787lg, InterfaceC2779lY interfaceC2779lY) {
        this.A01 = c2755lA;
        this.A04 = str;
        this.A00 = i;
        this.A03 = c2787lg;
        this.A02 = interfaceC2779lY;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 120);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{-37, -3, Ascii.RS, Ascii.ESC, 46, 32, -39, Ascii.FS, 43, Ascii.SUB, 44, 33, -39, Ascii.ESC, Ascii.RS, Ascii.FS, Ascii.SUB, 46, 44, Ascii.RS, -39, 44, -2, 39, 47, 34, 43, 40, 39, 38, Ascii.RS, 39, 45, -3, Ascii.SUB, 45, Ascii.SUB, 9, 43, 40, 47, 34, Ascii.GS, Ascii.RS, 43, -39, 39, 40, 45, -39, 34, 39, 35, Ascii.RS, Ascii.FS, 45, Ascii.RS, Ascii.GS, -46, -24, -19, -22, -97, -24, -14, -97, -19, -12, -21, -21, -96, Ascii.RS, 33, 33, 38, 49, 38, 44, 43, Ascii.RS, 41, Ascii.FS, 38, 43, 35, 44, 45, 66, 45, 53, 56, 45, 46, 56, 49, 43, 48, 53, 63, 55, 43, 63, 60, 45, 47, 49, 62, 60, 62, 67, SignedBytes.MAX_POWER_OF_TWO, 104, 91, 89, 101, 104, 90, 85, 90, 87, 106, 87, 88, 87, 105, 91, -18, -31, -19, -15, -31, -17, -16, -37, -27, -32, 44, 46, Ascii.ESC, 45, 50, 41, Ascii.RS, 49, 51, 32, 50, 55, 46, 35, Ascii.GS, 33, 45, 34, 35};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        String strA03;
        Map<String, String> mapA69;
        String strA8x;
        try {
            if (C2780lZ.A0K(this.A01, this.A04, this.A00, this.A03)) {
                return;
            }
            C2895nR.A08(this.A01, EnumC2887nJ.A0A.toString() + A00(0, 1, 41) + this.A04);
            Throwable cause = this.A03.getCause();
            if (cause != null) {
                strA03 = AbstractC3068qK.A03(this.A01, cause);
            } else {
                strA03 = AbstractC2865mx.A0R(this.A01) ? AbstractC3068qK.A03(this.A01, this.A03) : A00(0, 0, kotlin.fh.g1) + this.A03.getMessage();
            }
            if (AbstractC2865mx.A0V(this.A01)) {
                mapA69 = this.A01.A04().A69();
            } else if (this.A02 != null) {
                mapA69 = this.A02.A8a();
            } else if (C2780lZ.A02) {
                C2780lZ.A0F(new RuntimeException(A00(1, 57, 65), this.A03));
                mapA69 = new HashMap<>();
            } else {
                mapA69 = this.A01.A04().A69();
            }
            mapA69.put(A00(136, 7, 65), this.A04);
            mapA69.put(A00(143, 12, 70), String.valueOf(this.A00));
            JSONObject jSONObjectA03 = this.A03.A03();
            if (jSONObjectA03 != null) {
                mapA69.put(A00(71, 15, 69), jSONObjectA03.toString());
            }
            if ((A00(kotlin.fh.g1, 5, 99).equals(this.A04) || A00(111, 15, 126).equals(this.A04)) && (strA8x = this.A01.A04().A8x()) != null) {
                mapA69.put(A00(86, 20, 84), strA8x);
            }
            String strA0C = this.A01.A0C();
            if (strA0C != null && !TextUtils.isEmpty(strA0C)) {
                mapA69.put(A00(126, 10, 4), strA0C);
            }
            InterfaceC2778lX interfaceC2778lX = (InterfaceC2778lX) C2780lZ.A0A.get();
            if (interfaceC2778lX != null) {
                interfaceC2778lX.AMP(strA03, mapA69, this.A01);
            } else {
                C2780lZ.A0F(new RuntimeException(A00(58, 13, 7)));
            }
        } catch (Throwable th) {
            String[] strArr = A06;
            if (strArr[7].charAt(28) != strArr[6].charAt(28)) {
                throw new RuntimeException();
            }
            A06[3] = "fZFEnLEifE8VXmCUzFl1cmEH7gidrdeQ";
            C2780lZ.A0F(th);
        }
    }
}
