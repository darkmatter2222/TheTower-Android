package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class MH extends AbstractC2361ef {
    public static String A04;
    public static String A05;
    public static String A06;
    public static byte[] A07;
    public static String[] A08 = {"1", "OJ2IOsbUnCKybSqk53zM3JXcifahO", "e4RldewFXKwYCBzcZ5CwWZ5XjhlRHNiJ", "729G42gqUNiz5ZAUAxRhvFZ2YWMhTd0L", "J1Ql0tv9onNfDvsMKNTgjNyaDa6Pnzub", "9fBm", "mbPUpspz4Nj5AFGqwEe2w9x9WWs", "2uSYGuFAJgr"};
    public int A00;
    public final boolean A01;
    public final C2367em A02;
    public final boolean A03;

    static {
        A0B();
        A04 = A0A(64, 7, 72);
        A05 = A0A(85, 24, 50);
        A06 = A0A(118, 16, 9);
    }

    public MH(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, String str, C2367em c2367em, boolean z) {
        this(c1618Hi, interfaceC2884nG, str, c2367em, z, false);
    }

    public MH(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, String str, C2367em c2367em, boolean z, boolean z2) {
        super(c1618Hi, interfaceC2884nG, str);
        this.A00 = 0;
        this.A02 = c2367em;
        this.A03 = z;
        this.A01 = z2;
        if (this.A02 != null) {
            this.A02.A07(new InterfaceC2360ee() { // from class: com.facebook.ads.redexgen.X.MI
                @Override // com.facebook.ads.redexgen.X.InterfaceC2360ee
                public final void AGh() {
                    this.A00.A0K();
                }
            });
        }
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 30);
            if (A08[3].charAt(0) != '7') {
                throw new RuntimeException();
            }
            A08[5] = "PWjD";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A07 = new byte[]{93, 114, 119, 125, 117, 62, 114, 113, 121, 121, 123, 122, 68, 75, 65, 87, 74, 76, 65, Ascii.VT, 76, 75, 81, SignedBytes.MAX_POWER_OF_TWO, 75, 81, Ascii.VT, 68, 70, 81, 76, 74, 75, Ascii.VT, 115, 108, 96, 114, Ascii.CAN, Ascii.ESC, Ascii.EM, 17, 37, Ascii.SO, 19, Ascii.ETB, Ascii.US, 46, 39, 35, 52, 39, Ascii.GS, 54, 43, 47, 39, Ascii.VT, 17, Ascii.DLE, 7, Ascii.VT, 9, 1, 37, 35, 53, 53, 51, 37, 37, 76, 87, 80, 79, 92, 75, 74, 88, 85, 102, 85, 80, 87, 82, 89, 95, 73, 94, 115, 88, 94, 77, 79, 71, 73, 94, 115, 69, 95, 115, 66, 67, 88, 115, 66, 89, SignedBytes.MAX_POWER_OF_TWO, SignedBytes.MAX_POWER_OF_TWO, 73, 79, 89, 78, 95, 80, 85, 95, 87, 96, 118, 99, 116, 127, 72, 118, 121, 115, 72, 117, 101, 120, 96, 100, 114};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2361ef
    public final EnumC2358ec A0G(String str) {
        if (this.A02 != null) {
            this.A02.A08(super.A03);
        }
        if (C3304u8.A05(super.A01)) {
            EnumC2358ec enumC2358ec = EnumC2358ec.A05;
            if (A08[1].length() != 32) {
                A08[6] = "d9";
                return enumC2358ec;
            }
        } else {
            boolean zA0N = A0N(str);
            String[] strArr = A08;
            if (strArr[2].charAt(18) != strArr[4].charAt(18)) {
                A08[1] = "2xR5Lf7zvGoOc6k6N0KJGWYDjft65vIkC";
                return zA0N ? EnumC2358ec.A05 : A0J();
            }
        }
        throw new RuntimeException();
    }

    public abstract EnumC2358ec A0J();

    public final /* synthetic */ void A0K() {
        this.A00++;
        if (!A0N(null) || super.A00 == null) {
            return;
        }
        super.A00.ADg();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0082  */
    /* JADX WARN: Code duplicated, block: B:23:0x0091  */
    /* JADX WARN: Code duplicated, block: B:26:0x00ae  */
    public final void A0L(Map<String, String> map, EnumC2358ec enumC2358ec) {
        C2367em c2367em;
        if (!TextUtils.isEmpty(super.A03)) {
            if (this instanceof C13907w) {
                super.A02.ACy(super.A03, map);
            } else {
                InterfaceC2884nG interfaceC2884nG = super.A02;
                String str = super.A03;
                if (A08[6].length() != 8) {
                    A08[5] = "D2ZF";
                    interfaceC2884nG.ACA(str, map);
                } else {
                    interfaceC2884nG.ACA(str, map);
                }
            }
            boolean zA02 = EnumC2358ec.A02(enumC2358ec);
            if (A08[1].length() == 32) {
                throw new RuntimeException();
            }
            A08[0] = "X";
            boolean z = this.A02 != null;
            if (C2863mv.A2W(super.A01)) {
                HashMap map2 = new HashMap();
                map2.put(A04, Boolean.toString(!zA02));
                map2.put(A05, Boolean.toString(z));
                map2.put(A06, Boolean.toString(this.A01));
                super.A02.ACb(super.A03, map2);
            }
            if (this.A02 != null) {
                this.A02.A06(enumC2358ec);
                if (A08[6].length() != 8) {
                    A08[6] = "4hYdj7INWre5bef3R1byHGHBMmQCX";
                    if (zA02) {
                        c2367em = this.A02;
                        if (A08[6].length() != 8) {
                            String[] strArr = A08;
                            strArr[2] = "42brCgECckKxVuTsLxKp6fXlInYi7mUj";
                            strArr[4] = "SJ7s8Rg0tKhfkKPQamVQVBa2w2xrx0QV";
                            c2367em.A05();
                        } else {
                            c2367em.A05();
                        }
                    }
                } else {
                    A08[5] = "IMSq";
                    if (zA02) {
                        c2367em = this.A02;
                        if (A08[6].length() != 8) {
                            String[] strArr2 = A08;
                            strArr2[2] = "42brCgECckKxVuTsLxKp6fXlInYi7mUj";
                            strArr2[4] = "SJ7s8Rg0tKhfkKPQamVQVBa2w2xrx0QV";
                            c2367em.A05();
                        } else {
                            c2367em.A05();
                        }
                    }
                }
            } else {
                HashMap map3 = new HashMap();
                map3.put(A0A(47, 10, 92), Long.toString(-1L));
                map3.put(A0A(38, 9, 100), Long.toString(-1L));
                map3.put(A0A(57, 7, 122), EnumC2358ec.A04.name());
                super.A02.ACz(super.A03, map3);
            }
        }
        AbstractC3018pW.A04(super.A01, A0A(0, 12, 0));
    }

    public final boolean A0M(Uri uri) {
        try {
            String queryParameter = uri.getQueryParameter(A0A(71, 14, 39));
            if (TextUtils.isEmpty(queryParameter)) {
                return false;
            }
            Intent intent = new Intent(A0A(12, 26, 59), AbstractC3011pP.A00(queryParameter));
            intent.addFlags(268435456);
            if (Build.VERSION.SDK_INT >= 30) {
                intent.addFlags(1024);
            }
            return C2997p8.A0F(super.A01, intent);
        } catch (C2995p6 unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x002d  */
    public final boolean A0N(String str) {
        if (str != null) {
            String[] strArr = A08;
            if (strArr[2].charAt(18) == strArr[4].charAt(18)) {
                throw new RuntimeException();
            }
            A08[3] = "7G1cJQr0jIuGleknkY04jEhD0A31LjuP";
            if (!str.equals(A0A(109, 9, 34))) {
                if (this.A00 == 0 && this.A00 >= C2863mv.A0G(super.A01)) {
                    return true;
                }
            }
        } else if (this.A00 == 0) {
        }
        return false;
    }
}
