package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ng, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1766Ng implements InterfaceC2253cu {
    public static String[] A05 = {"WrPJ0pg2mPJfrspahLmz5pjFVZ3GhqoW", "XFEX4XZYlFg40morts9AHvey8KOZtdLm", "6cuKepiJY3YuoKcwF9RqxVJry7zuXWia", "FhTxBa1JVVSZU0W7vi0M8MQjQwVICFNT", "5t1v8XDPU0UxAmsbKSZNGz4o0pupsy3y", "sc1mKX", "4t0AqRJOupFITXPu5dRmgnMWkOT1YaYH", "0ivFdIyTIrvJN3IRKWLvTn9YwUe91U3g"};
    public final int A00;
    public final /* synthetic */ C1765Nf A04;
    public final C1743Mj A03 = new C1743Mj(new byte[5]);
    public final SparseArray<InterfaceC2262d3> A01 = new SparseArray<>();
    public final SparseIntArray A02 = new SparseIntArray();

    public C1766Ng(C1765Nf c1765Nf, int i) {
        this.A04 = c1765Nf;
        this.A00 = i;
    }

    private C2258cz A00(C1744Mk c1744Mk, int i) {
        int iA09 = c1744Mk.A09();
        int i2 = iA09 + i;
        int i3 = -1;
        String strTrim = null;
        ArrayList arrayList = null;
        while (true) {
            int iA010 = c1744Mk.A09();
            String[] strArr = A05;
            if (strArr[1].charAt(14) == strArr[6].charAt(14)) {
                throw new RuntimeException();
            }
            A05[3] = "FRrIYo9gZZwdZZnKdS5xpGv7sNAFUJd3";
            if (iA010 < i2) {
                int iA0I = c1744Mk.A0I();
                int iA011 = c1744Mk.A09() + c1744Mk.A0I();
                if (iA011 <= i2) {
                    if (iA0I == 5) {
                        long jA0Q = c1744Mk.A0Q();
                        if (jA0Q == 1094921523) {
                            i3 = 129;
                        } else if (jA0Q == 1161904947) {
                            i3 = 135;
                        } else if (jA0Q == 1094921524) {
                            i3 = 172;
                        } else if (jA0Q == 1212503619) {
                            i3 = 36;
                        }
                    } else if (iA0I == 106) {
                        i3 = 129;
                    } else if (iA0I == 122) {
                        i3 = 135;
                    } else if (iA0I == 127) {
                        if (c1744Mk.A0I() == 21) {
                            i3 = 172;
                        }
                    } else if (iA0I == 123) {
                        i3 = 138;
                    } else if (iA0I == 10) {
                        String strA0W = c1744Mk.A0W(3);
                        if (A05[7].charAt(23) != 'U') {
                            String[] strArr2 = A05;
                            strArr2[1] = "86rcz2fFTzPsI86Gjcev7r1TLV4z3OrO";
                            strArr2[6] = "Q16PsPIOBdkA1kpc6X8ekK9PiWV3jtDj";
                            strTrim = strA0W.trim();
                        } else {
                            A05[3] = "FoFLSaMdUolFLraf7Ybm8uTRjuWnz4Vo";
                            strTrim = strA0W.trim();
                        }
                    } else if (iA0I == 89) {
                        i3 = 89;
                        arrayList = new ArrayList();
                        while (c1744Mk.A09() < iA011) {
                            String strTrim2 = c1744Mk.A0W(3).trim();
                            int iA0I2 = c1744Mk.A0I();
                            byte[] bArr = new byte[4];
                            c1744Mk.A0k(bArr, 0, 4);
                            arrayList.add(new C2257cy(strTrim2, iA0I2, bArr));
                        }
                    } else if (iA0I == 111) {
                        i3 = 257;
                    }
                    c1744Mk.A0g(iA011 - c1744Mk.A09());
                }
            }
            c1744Mk.A0f(i2);
            return new C2258cz(i3, strTrim, arrayList, Arrays.copyOfRange(c1744Mk.A0l(), iA09, i2));
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0149 A[DONT_INVERT, PHI: r1 r2 r8 r9
  0x0149: PHI (r1v30 com.facebook.ads.redexgen.X.cz) = (r1v25 com.facebook.ads.redexgen.X.cz), (r1v34 com.facebook.ads.redexgen.X.cz) binds: [B:53:0x01d1, B:32:0x0147] A[DONT_GENERATE, DONT_INLINE]
  0x0149: PHI (r2v15 int) = (r2v7 int), (r2v16 int) binds: [B:53:0x01d1, B:32:0x0147] A[DONT_GENERATE, DONT_INLINE]
  0x0149: PHI (r8v9 int) = (r8v6 int), (r8v11 int) binds: [B:53:0x01d1, B:32:0x0147] A[DONT_GENERATE, DONT_INLINE]
  0x0149: PHI (r9v7 int) = (r9v3 int), (r9v8 int) binds: [B:53:0x01d1, B:32:0x0147] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x0159  */
    /* JADX WARN: Code duplicated, block: B:41:0x016d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0176 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:47:0x0187  */
    /* JADX WARN: Code duplicated, block: B:49:0x0191  */
    /* JADX WARN: Code duplicated, block: B:50:0x019c  */
    /* JADX WARN: Code duplicated, block: B:51:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:79:0x0166 A[SYNTHETIC] */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2253cu
    public final void A5j(C1744Mk c1744Mk) {
        C1752Ms c1752Ms;
        int iA04;
        int iA05;
        int iA06;
        C2258cz c2258czA00;
        int i;
        InterfaceC2262d3 interfaceC2262d3A64;
        if (c1744Mk.A0I() != 2) {
            return;
        }
        int i2 = this.A04.A09;
        if (A05[3].charAt(0) == 'F') {
            A05[4] = "5ZtlFdMXD0W0AKqJcYLBU1vIsgZ10Iwd";
            if (i2 == 1 || this.A04.A09 == 2 || this.A04.A02 == 1) {
                c1752Ms = (C1752Ms) this.A04.A0I.get(0);
            } else {
                c1752Ms = new C1752Ms(((C1752Ms) this.A04.A0I.get(0)).A02());
                this.A04.A0I.add(c1752Ms);
            }
            if ((c1744Mk.A0I() & 128) == 0) {
                return;
            }
            c1744Mk.A0g(1);
            int iA0M = c1744Mk.A0M();
            int i3 = 3;
            c1744Mk.A0g(3);
            c1744Mk.A0h(this.A03, 2);
            this.A03.A09(3);
            int i4 = 13;
            this.A04.A01 = this.A03.A04(13);
            c1744Mk.A0h(this.A03, 2);
            int i5 = 4;
            this.A03.A09(4);
            c1744Mk.A0g(this.A03.A04(12));
            int i6 = 21;
            if (this.A04.A09 == 2 && this.A04.A05 == null) {
                C2258cz c2258cz = new C2258cz(21, null, null, N1.A07);
                this.A04.A05 = this.A04.A0H.A64(21, c2258cz);
                if (this.A04.A05 != null) {
                    this.A04.A05.AAo(c1752Ms, this.A04.A03, new C2261d2(iA0M, 21, 8192));
                }
            }
            this.A01.clear();
            this.A02.clear();
            int iA07 = c1744Mk.A07();
            while (iA07 > 0) {
                C1743Mj c1743Mj = this.A03;
                String[] strArr = A05;
                if (strArr[1].charAt(14) != strArr[6].charAt(14)) {
                    A05[5] = "dmuM78";
                    c1744Mk.A0h(c1743Mj, 5);
                    iA04 = this.A03.A04(8);
                    this.A03.A09(i3);
                    iA05 = this.A03.A04(i4);
                    this.A03.A09(i5);
                    iA06 = this.A03.A04(12);
                    c2258czA00 = A00(c1744Mk, iA06);
                    if (iA04 != 6) {
                        if (iA04 == 5) {
                        }
                    }
                    iA07 -= iA06 + 5;
                    if (this.A04.A09 == 2) {
                        i = iA04;
                    } else {
                        i = iA05;
                    }
                    if (!this.A04.A0C.get(i)) {
                        if (this.A04.A09 == 2 || iA04 != i6) {
                            interfaceC2262d3A64 = this.A04.A0H.A64(iA04, c2258czA00);
                        } else {
                            interfaceC2262d3A64 = this.A04.A05;
                        }
                        if (this.A04.A09 == 2 || iA05 < this.A02.get(i, 8192)) {
                            this.A02.put(i, iA05);
                            this.A01.put(i, interfaceC2262d3A64);
                        }
                    }
                    i6 = 21;
                    i3 = 3;
                    i5 = 4;
                    i4 = 13;
                } else {
                    c1744Mk.A0h(c1743Mj, 5);
                    iA04 = this.A03.A04(8);
                    this.A03.A09(i3);
                    iA05 = this.A03.A04(i4);
                    this.A03.A09(i5);
                    iA06 = this.A03.A04(12);
                    c2258czA00 = A00(c1744Mk, iA06);
                    if (iA04 != 6) {
                        if (iA04 == 5) {
                        }
                    }
                    iA07 -= iA06 + 5;
                    if (this.A04.A09 == 2) {
                        i = iA04;
                    } else {
                        i = iA05;
                    }
                    if (!this.A04.A0C.get(i)) {
                        if (this.A04.A09 == 2) {
                            interfaceC2262d3A64 = this.A04.A0H.A64(iA04, c2258czA00);
                        } else {
                            interfaceC2262d3A64 = this.A04.A0H.A64(iA04, c2258czA00);
                        }
                        if (this.A04.A09 == 2) {
                            this.A02.put(i, iA05);
                            this.A01.put(i, interfaceC2262d3A64);
                        } else {
                            this.A02.put(i, iA05);
                            this.A01.put(i, interfaceC2262d3A64);
                        }
                    }
                    i6 = 21;
                    i3 = 3;
                    i5 = 4;
                    i4 = 13;
                }
                iA04 = c2258czA00.A00;
                iA07 -= iA06 + 5;
                if (this.A04.A09 == 2) {
                    i = iA04;
                } else {
                    i = iA05;
                }
                if (!this.A04.A0C.get(i)) {
                    if (this.A04.A09 == 2) {
                        interfaceC2262d3A64 = this.A04.A0H.A64(iA04, c2258czA00);
                    } else {
                        interfaceC2262d3A64 = this.A04.A0H.A64(iA04, c2258czA00);
                    }
                    if (this.A04.A09 == 2) {
                        this.A02.put(i, iA05);
                        this.A01.put(i, interfaceC2262d3A64);
                    } else {
                        this.A02.put(i, iA05);
                        this.A01.put(i, interfaceC2262d3A64);
                    }
                }
                i6 = 21;
                i3 = 3;
                i5 = 4;
                i4 = 13;
            }
            int size = this.A02.size();
            for (int i7 = 0; i7 < size; i7++) {
                int iKeyAt = this.A02.keyAt(i7);
                int iValueAt = this.A02.valueAt(i7);
                this.A04.A0C.put(iKeyAt, true);
                this.A04.A0D.put(iValueAt, true);
                InterfaceC2262d3 interfaceC2262d3ValueAt = this.A01.valueAt(i7);
                if (interfaceC2262d3ValueAt != null) {
                    if (interfaceC2262d3ValueAt != this.A04.A05) {
                        interfaceC2262d3ValueAt.AAo(c1752Ms, this.A04.A03, new C2261d2(iA0M, iKeyAt, 8192));
                    }
                    this.A04.A0B.put(iValueAt, interfaceC2262d3ValueAt);
                }
            }
            if (this.A04.A09 == 2) {
                if (this.A04.A08) {
                    return;
                }
                this.A04.A03.A6x();
                this.A04.A02 = 0;
                this.A04.A08 = true;
                return;
            }
            int i8 = 0;
            this.A04.A0B.remove(this.A00);
            C1765Nf c1765Nf = this.A04;
            if (this.A04.A09 != 1) {
                int i9 = this.A04.A02;
                if (A05[7].charAt(23) != 'U') {
                    String[] strArr2 = A05;
                    strArr2[2] = "cOQDQpzMhrcl1CtsXtFiSTP6gwzqV3qW";
                    strArr2[0] = "yb3hnpA3u1t26YJLwEutzpd0DtxVnfej";
                    i8 = i9 - 1;
                }
            }
            c1765Nf.A02 = i8;
            if (this.A04.A02 == 0) {
                this.A04.A03.A6x();
                this.A04.A08 = true;
                return;
            }
            return;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2253cu
    public final void AAo(C1752Ms c1752Ms, InterfaceC2044Yw interfaceC2044Yw, C2261d2 c2261d2) {
    }
}
