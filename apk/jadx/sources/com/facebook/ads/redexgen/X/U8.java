package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class U8 implements InterfaceC1678Jt {
    public static byte[] A05;
    public static String[] A06 = {"EQvdruYLxTDiWyNOhenvQ2afYrxJTL5D", "1CELPUEYQmweIKZYqHblcQN", "Qyt0hZyK6WAxXiYqPw90O1wELTqz9PzO", "wssYaw1PYjXDFvrNQBbao08KssjvD7ow", "5hwC4o8BhLjr3fFgxvSf1R", "rgl6ZuQUBOYIfxF6Chm90e8tVud3RCYy", "mHLEuJfGv4I7TWa81XzCpAmHz29imtfA", "jqNmgRKprS0bfipYRJ9soaMo1"};
    public static final InterfaceC1677Js<U8> A07;
    public static final String A08;
    public static final String A09;
    public int A00;
    public final int A01;
    public final int A02;
    public final String A03;
    public final VC[] A04;

    static {
        A05();
        A08 = N1.A0h(0);
        A09 = N1.A0h(1);
        A07 = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.U9
            @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
            public final InterfaceC1678Jt A7F(Bundle bundle) {
                return U8.A01(bundle);
            }
        };
    }

    public U8(String str, VC... vcArr) {
        AbstractC1722Ln.A07(vcArr.length > 0);
        this.A03 = str;
        this.A04 = vcArr;
        this.A01 = vcArr.length;
        int iA01 = L8.A01(vcArr[0].A0W);
        this.A02 = iA01 == -1 ? L8.A01(vcArr[0].A0S) : iA01;
        A04();
    }

    public U8(VC... vcArr) {
        this(A02(0, 0, 19), vcArr);
    }

    public static int A00(int i) {
        return i | 16384;
    }

    public static /* synthetic */ U8 A01(Bundle bundle) {
        List listA01;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(A08);
        if (parcelableArrayList == null) {
            listA01 = XR.A01();
        } else {
            InterfaceC1677Js<VC> interfaceC1677Js = VC.A0b;
            if (A06[3].charAt(3) == 'n') {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[4] = "kxVstqoe40upD9pEm8C8QW";
            strArr[1] = "CnVQAruXPcMxLneosLS85Et";
            listA01 = C1728Lt.A01(interfaceC1677Js, parcelableArrayList);
        }
        return new U8(bundle.getString(A09, A02(0, 0, 19)), (VC[]) listA01.toArray(new VC[0]));
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 39);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A03(String str) {
        return (str == null || str.equals(A02(96, 3, 32))) ? A02(0, 0, 19) : str;
    }

    private void A04() {
        String strA03 = A03(this.A04[0].A0V);
        int iA00 = A00(this.A04[0].A0E);
        for (int i = 1; i < this.A04.length; i++) {
            if (!strA03.equals(A03(this.A04[i].A0V))) {
                A06(A02(77, 9, 17), this.A04[0].A0V, this.A04[i].A0V, i);
                return;
            } else {
                if (iA00 != A00(this.A04[i].A0E)) {
                    A06(A02(86, 10, 121), Integer.toBinaryString(this.A04[0].A0E), Integer.toBinaryString(this.A04[i].A0E), i);
                    return;
                }
            }
        }
    }

    public static void A05() {
        A05 = new byte[]{76, Ascii.SI, 3, 1, Ascii.SO, 5, 2, 9, 8, 76, 5, 2, 76, 3, 2, 9, 76, 56, Ascii.RS, Ascii.CR, Ascii.SI, 7, 43, Ascii.RS, 3, Ascii.EM, Ascii.FS, 86, 76, 75, 79, 72, SignedBytes.MAX_POWER_OF_TWO, Ascii.FS, Ascii.SUB, 9, Ascii.VT, 3, 72, 123, 124, 116, 40, 46, Base64.padSymbol, 63, 55, 124, 108, 117, 124, Base64.padSymbol, 50, 56, 124, 123, 54, 53, Ascii.CAN, Ascii.ETB, Ascii.ETB, Ascii.DC4, 3, Ascii.DC4, Ascii.US, 5, 81, 37, 3, Ascii.DLE, Ascii.DC2, Ascii.SUB, 54, 3, Ascii.RS, 4, 1, 90, 87, 88, 81, 67, 87, 81, 83, 69, 44, 49, 50, 59, 126, 56, 50, 63, 57, 45, 114, 105, 99};
    }

    public static void A06(String str, String str2, String str3, int i) {
        MV.A08(A02(67, 10, 86), A02(0, 0, 19), new IllegalStateException(A02(57, 10, 86) + str + A02(0, 30, 75) + str2 + A02(39, 17, 123) + str3 + A02(30, 9, 79) + i + A02(56, 1, 56)));
    }

    public final int A07(VC vc) {
        for (int i = 0; i < this.A04.length; i++) {
            if (vc == this.A04[i]) {
                return i;
            }
        }
        return -1;
    }

    public final VC A08(int i) {
        return this.A04[i];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        String[] strArr = A06;
        if (strArr[4].length() == strArr[1].length()) {
            throw new RuntimeException();
        }
        A06[7] = "LY2ZyCGtHfQquYaBGbQVgLAG2";
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        U8 u8 = (U8) obj;
        return this.A03.equals(u8.A03) && Arrays.equals(this.A04, u8.A04);
    }

    public final int hashCode() {
        if (this.A00 == 0) {
            this.A00 = (((17 * 31) + this.A03.hashCode()) * 31) + Arrays.hashCode(this.A04);
        }
        return this.A00;
    }
}
