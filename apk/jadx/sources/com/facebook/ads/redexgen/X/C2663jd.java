package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Build;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;
import java.io.Serializable;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2663jd {
    public static byte[] A04;
    public static String[] A05 = {"9hgZ6gmZVIzcUa9O3mA", "hr5Nv5KmFuAh0QYIKM2bmKkmepVb4QJ5", "yO2HUjhUlIghedwjslAMsCcdfdKPfyCH", "zrGIWgWbx8IbO9KwhUHxd6SamLqSPg13", "PAiLfCht7j7DwfzIfnXwlTfs7d", "E", "ondXKsNdPZeIQPGRQ", "4zzip8XOl1eQzOydGeEIF"};
    public final Intent A00;
    public final C2658jY A01;
    public final C1618Hi A02;
    public final InterfaceC2884nG A03;

    static {
        A0L();
    }

    public C2663jd(C2658jY c2658jY, Intent intent, InterfaceC2884nG interfaceC2884nG, C1618Hi c1618Hi) {
        this.A01 = c2658jY;
        this.A00 = intent;
        this.A03 = interfaceC2884nG;
        this.A02 = c1618Hi;
    }

    private LA A00() {
        int i = Build.VERSION.SDK_INT;
        String strA0K = A0K(33, 18, 119);
        return i >= 33 ? (LA) this.A00.getSerializableExtra(strA0K, LA.class) : (LA) this.A00.getSerializableExtra(strA0K);
    }

    private C1708Kz A01() {
        int i = Build.VERSION.SDK_INT;
        String strA0K = A0K(14, 19, 96);
        return i >= 33 ? (C1708Kz) this.A00.getSerializableExtra(strA0K, C1708Kz.class) : (C1708Kz) this.A00.getSerializableExtra(strA0K);
    }

    private C13767i A02() {
        int i = Build.VERSION.SDK_INT;
        String strA0K = A0K(0, 14, 71);
        if (i >= 33) {
            return (C13767i) this.A00.getSerializableExtra(strA0K, C13767i.class);
        }
        Intent intent = this.A00;
        if (A05[5].length() == 28) {
            throw new RuntimeException();
        }
        String[] strArr = A05;
        strArr[2] = "aLIzZsfvOjvh4cc7MNDterfabrQQ7uCt";
        strArr[1] = "2zeXMh2DNoLhbNF5aRtGPwdJAkJRstyd";
        return (C13767i) intent.getSerializableExtra(strA0K);
    }

    private C13747g A03() {
        int i = Build.VERSION.SDK_INT;
        String strA0K = A0K(51, 25, 55);
        if (i < 33) {
            return (C13747g) this.A00.getSerializableExtra(strA0K);
        }
        Serializable serializableExtra = this.A00.getSerializableExtra(strA0K, C13747g.class);
        String[] strArr = A05;
        if (strArr[7].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        A05[5] = "bi";
        return (C13747g) serializableExtra;
    }

    private InterfaceC3120rA A05() {
        return new C2670jk(this.A01, this.A00, this.A03, this.A02).A03();
    }

    private InterfaceC3120rA A06() {
        C13767i c13767iA02 = A02();
        if (c13767iA02 == null) {
            return null;
        }
        return A09(new C7E(this.A01), c13767iA02, c13767iA02.A1u(), new FH());
    }

    private InterfaceC3120rA A07() {
        C13747g c13747gA03 = A03();
        if (c13747gA03 == null) {
            return null;
        }
        return A09(new C7E(this.A01), c13747gA03, c13747gA03.A1u(), new FG());
    }

    private InterfaceC3120rA A08(EnumC2955oR enumC2955oR) {
        InterfaceC3175s3 fh;
        InterfaceC3119r9 iv;
        String strA08 = this.A01.A08();
        LA laA00 = strA08 != null ? AbstractC2671jl.A00(strA08) : null;
        if (laA00 == null) {
            if (enumC2955oR == EnumC2955oR.A0H) {
                laA00 = A03();
            } else if (enumC2955oR == EnumC2955oR.A0B) {
                laA00 = A02();
            }
        }
        if (laA00 == null) {
            return null;
        }
        laA00.A21(this.A01.A08());
        if (!laA00.A2K()) {
            return new C13305o(this.A02, this.A03, new C2746kz(this.A02), new IV(this.A01), laA00);
        }
        this.A01.A0F(laA00.A2R());
        if (enumC2955oR == EnumC2955oR.A0H) {
            fh = new FG();
            iv = new C7E(this.A01);
        } else {
            fh = new FH();
            iv = new IV(this.A01);
        }
        return new C13395x(this.A02, fh, this.A03, laA00, new C2746kz(this.A02), iv);
    }

    private InterfaceC3120rA A09(InterfaceC3119r9 interfaceC3119r9, LA la, String str, InterfaceC3175s3 interfaceC3175s3) {
        if (la.A32().A0I().A07() != null) {
            return la.A2Z() ? new FM(this.A02, this.A03, interfaceC3119r9, la, la.A32().A0I().A07(), str, interfaceC3175s3) : new FS(this.A02, this.A03, interfaceC3119r9, la, str, interfaceC3175s3);
        }
        interfaceC3119r9.A5C(interfaceC3175s3.A8c());
        interfaceC3119r9.A5C(interfaceC3175s3.A8X());
        return null;
    }

    private final FL A0A() {
        return new FL(this.A02, this.A01);
    }

    private FI A0B(RelativeLayout relativeLayout) {
        FI fi = new FI(this.A02, new IS(this), this.A03, new IV(this.A01));
        fi.A05(relativeLayout);
        fi.A04(this.A00.getIntExtra(A0K(76, 27, 55), 200));
        AbstractC3086qc.A0O(relativeLayout, ViewCompat.MEASURED_STATE_MASK);
        return fi;
    }

    private C6U A0C() {
        C13767i c13767iA02 = A02();
        if (c13767iA02 == null) {
            return null;
        }
        return new C6U(this.A02, this.A03, new IV(this.A01), c13767iA02, new FH(), 1);
    }

    private C6U A0D() {
        C13747g c13747gA03 = A03();
        if (c13747gA03 == null) {
            return null;
        }
        return new C6U(this.A02, this.A03, new IV(this.A01), c13747gA03, new FG(), 0);
    }

    private E2 A0E() {
        C1905Tb c1905TbA02;
        LA laA00 = A00();
        if (laA00 == null || (c1905TbA02 = M1.A02(laA00.A1r())) == null) {
            return null;
        }
        return new E2(this.A02, new IV(this.A01), c1905TbA02, laA00.A37());
    }

    private D8 A0F(EnumC2955oR enumC2955oR) {
        C13747g c13747gA03 = A03();
        if (c13747gA03 != null) {
            this.A01.A0F(c13747gA03.A2R());
            return enumC2955oR == EnumC2955oR.A0I ? new C13385w(this.A02, new FG(), this.A03, c13747gA03, new C2746kz(this.A02), new C7E(this.A01)) : new C13315p(this.A02, new FG(), this.A03, c13747gA03, new C2746kz(this.A02), new C7E(this.A01));
        }
        if (A05[5].length() == 28) {
            throw new RuntimeException();
        }
        A05[6] = "3doWMQfY6jUOCGy1t";
        return null;
    }

    private D2 A0G(EnumC2955oR enumC2955oR) {
        InterfaceC3175s3 fg;
        InterfaceC3119r9 c7e;
        String strA08 = this.A01.A08();
        C1708Kz c1708KzA00 = strA08 != null ? AbstractC2672jm.A00(strA08) : null;
        if (c1708KzA00 == null) {
            c1708KzA00 = A01();
        }
        if (c1708KzA00 == null) {
            return null;
        }
        if (enumC2955oR == EnumC2955oR.A05) {
            fg = new FH();
            c7e = new IV(this.A01);
        } else {
            fg = new FG();
            c7e = new C7E(this.A01);
        }
        return new D2(this.A02, fg, this.A03, c1708KzA00, new C2746kz(this.A02), c7e);
    }

    private C13385w A0H() {
        C13767i c13767iA02 = A02();
        if (c13767iA02 == null) {
            return null;
        }
        return new C13385w(this.A02, new FH(), this.A03, c13767iA02, new C2746kz(this.A02), new IV(this.A01));
    }

    private C13315p A0I() {
        C13767i c13767iA02 = A02();
        if (c13767iA02 != null) {
            this.A01.A0F(c13767iA02.A2R());
            return new C13315p(this.A02, new FH(), this.A03, c13767iA02, new C2746kz(this.A02), new IV(this.A01));
        }
        String[] strArr = A05;
        if (strArr[7].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A05;
        strArr2[2] = "pmcQlDH7sZXh2s7s4TnMspoe9rHNP7fr";
        strArr2[1] = "eL2WbgazC7ehXX3SrLnYK8eATWSTto9D";
        return null;
    }

    private C1487Cg A0J(EnumC2955oR enumC2955oR) {
        LA laA02;
        LA laA03;
        if (enumC2955oR == EnumC2955oR.A0L) {
            laA02 = A03();
            if (A05[3].charAt(25) != 'L') {
                throw new RuntimeException();
            }
            A05[0] = "";
            if (laA02 == null || (laA03 = A03()) == null) {
                return null;
            }
        } else if (enumC2955oR != EnumC2955oR.A0F || (laA02 = A02()) == null || (laA03 = A02()) == null) {
            return null;
        }
        return new C1487Cg(this.A02, this.A03, laA02, laA03, new C7E(this.A01), this.A01, enumC2955oR);
    }

    public static String A0K(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 49);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0L() {
        A04 = new byte[]{Ascii.ETB, Ascii.DC2, 41, Ascii.DC2, Ascii.ETB, 2, Ascii.ETB, 41, Ascii.DC4, 3, Ascii.CAN, Ascii.DC2, Ascii.SUB, 19, 50, 57, 48, 56, 63, 52, 53, Ascii.DLE, 53, Ascii.NAK, 48, 37, 48, 19, 36, 63, 53, Base64.padSymbol, 52, 40, 39, 50, 47, 48, 35, 7, 34, 2, 39, 50, 39, 4, 51, 40, 34, 42, 35, 116, 99, 113, 103, 116, 98, 99, 98, 80, 111, 98, 99, 105, 71, 98, 66, 103, 114, 103, 68, 115, 104, 98, 106, 99, 112, 111, 98, 99, 105, 89, 114, 111, 107, 99, 89, 118, 105, 106, 106, 111, 104, 97, 89, 111, 104, 114, 99, 116, 112, 103, 106};
    }

    public final InterfaceC3120rA A0M(EnumC2955oR enumC2955oR, RelativeLayout relativeLayout) {
        if (enumC2955oR == null) {
            return null;
        }
        switch (C2662jc.A00[enumC2955oR.ordinal()]) {
            case 1:
                if (relativeLayout != null) {
                    return A0B(relativeLayout);
                }
                return null;
            case 2:
            case 3:
                return A08(enumC2955oR);
            case 4:
            case 5:
                return A0F(enumC2955oR);
            case 6:
                return A07();
            case 7:
                InterfaceC3120rA interfaceC3120rAA05 = A05();
                String[] strArr = A05;
                if (strArr[7].length() != strArr[4].length()) {
                    A05[3] = "JqgzsZEJ1D6XbsEZiOD5vqemmLO24Iu2";
                    return interfaceC3120rAA05;
                }
                break;
            case 8:
                return A0I();
            case 9:
                return A0H();
            case 10:
                return A06();
            case 11:
                return A0E();
            case 12:
                return A0C();
            case 13:
                return A0D();
            case 14:
            case 15:
                return A0G(enumC2955oR);
            case 16:
                return A0A();
            case 17:
            case 18:
                C1487Cg c1487CgA0J = A0J(enumC2955oR);
                String[] strArr2 = A05;
                if (strArr2[7].length() != strArr2[4].length()) {
                    A05[3] = "jUkUT1rQCZ9nRV5DLYO9lkZtxLvo9yBa";
                    return c1487CgA0J;
                }
                break;
            default:
                return null;
        }
        throw new RuntimeException();
    }
}
