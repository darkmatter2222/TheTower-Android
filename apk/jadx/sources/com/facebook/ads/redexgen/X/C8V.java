package com.facebook.ads.redexgen.X;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.ApicFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.BinaryFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.ChapterFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.ChapterTocFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.CommentFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.GeobFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.MlltFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.PrivFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.TextInformationFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.UrlLinkFrame;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8V, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C8V extends AbstractC1818Pn {
    public static byte[] A01;
    public static String[] A02 = {"", "cj5A7A3gSiMrjq6AfdRtUzMbAEmYo4f3", "rN0JSnT6BKYEo3a1vAa71uiPZpT3Npi4", "TFfDjeYUbSMox1u3Lh", "USqEMSAtWn6GCJW8", "LWCCD3Qy9N2tqhYZ51Cp6k4Ti82bug", "tGTUqJzeCARhQZlaOnJcj6ftdoc", "hcOUpEd5Vf6AXCwQ9vkWGhfgcjokDV"};
    public static final InterfaceC2074a0 A03;
    public final InterfaceC2074a0 A00;

    static {
        A0N();
        A03 = new InterfaceC2074a0() { // from class: com.facebook.ads.redexgen.X.Pc
            @Override // com.facebook.ads.redexgen.X.InterfaceC2074a0
            public final boolean A6z(int i, int i2, int i3, int i4, int i5) {
                return C8V.A0O(i, i2, i3, i4, i5);
            }
        };
    }

    public C8V() {
        this(null);
    }

    public C8V(InterfaceC2074a0 interfaceC2074a0) {
        this.A00 = interfaceC2074a0;
    }

    public static int A00(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    public static int A01(C1744Mk c1744Mk, int i) {
        byte[] bArrA0l = c1744Mk.A0l();
        int iA09 = c1744Mk.A09();
        for (int i2 = iA09; i2 + 1 < iA09 + i; i2++) {
            if ((bArrA0l[i2] & 255) == 255 && bArrA0l[i2 + 1] == 0) {
                System.arraycopy(bArrA0l, i2 + 2, bArrA0l, i2 + 1, (i - (i2 - iA09)) - 2);
                i--;
            }
        }
        return i;
    }

    public static int A02(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    public static int A03(byte[] bArr, int i, int i2) {
        int iA02 = A02(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return iA02;
        }
        while (iA02 < bArr.length - 1) {
            if ((iA02 - i) % 2 == 0 && bArr[iA02 + 1] == 0) {
                return iA02;
            }
            iA02 = A02(bArr, iA02 + 1);
        }
        return bArr.length;
    }

    public static ApicFrame A04(C1744Mk c1744Mk, int i, int i2) {
        int iA02;
        String strA01;
        int iA0I = c1744Mk.A0I();
        Charset charsetA0M = A0M(iA0I);
        byte[] bArr = new byte[i - 1];
        c1744Mk.A0k(bArr, 0, i - 1);
        String strA0J = A0J(TypedValues.CycleType.TYPE_VISIBILITY, 6, 32);
        if (i2 == 2) {
            iA02 = 2;
            strA01 = strA0J + XC.A01(new String(bArr, 0, 3, XA.A00));
            if (A0J(418, 9, 76).equals(strA01)) {
                strA01 = A0J(InterfaceC3669k1.a.b.h, 10, 56);
            }
        } else {
            iA02 = A02(bArr, 0);
            strA01 = XC.A01(new String(bArr, 0, iA02, XA.A00));
            if (strA01.indexOf(47) == -1) {
                strA01 = strA0J + strA01;
            }
        }
        int i3 = bArr[iA02 + 1] & 255;
        int i4 = iA02 + 2;
        int iA03 = A03(bArr, i4, iA0I);
        return new ApicFrame(strA01, new String(bArr, i4, iA03 - i4, charsetA0M), i3, A0Q(bArr, A00(iA0I) + iA03, bArr.length));
    }

    public static BinaryFrame A05(C1744Mk c1744Mk, int i, String str) {
        byte[] bArr = new byte[i];
        c1744Mk.A0k(bArr, 0, i);
        return new BinaryFrame(str, bArr);
    }

    public static ChapterFrame A06(C1744Mk c1744Mk, int i, int i2, boolean z, int i3, InterfaceC2074a0 interfaceC2074a0) {
        int iA09 = c1744Mk.A09();
        int iA02 = A02(c1744Mk.A0l(), iA09);
        String str = new String(c1744Mk.A0l(), iA09, iA02 - iA09, XA.A00);
        c1744Mk.A0f(iA02 + 1);
        int iA0C = c1744Mk.A0C();
        int iA0C2 = c1744Mk.A0C();
        long jA0Q = c1744Mk.A0Q();
        if (jA0Q == 4294967295L) {
            jA0Q = -1;
        }
        long jA0Q2 = c1744Mk.A0Q();
        String[] strArr = A02;
        if (strArr[4].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[4] = "16GLdZTfXwhLC42l";
        strArr2[6] = "GYTFmdJXXk2kcTCmyq6sFxfgRhF";
        if (jA0Q2 == 4294967295L) {
            jA0Q2 = -1;
        }
        ArrayList arrayList = new ArrayList();
        int i4 = iA09 + i;
        while (c1744Mk.A09() < i4) {
            Id3Frame id3FrameA0B = A0B(i2, c1744Mk, z, i3, interfaceC2074a0);
            if (id3FrameA0B != null) {
                arrayList.add(id3FrameA0B);
            }
        }
        return new ChapterFrame(str, iA0C, iA0C2, jA0Q, jA0Q2, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    public static ChapterTocFrame A07(C1744Mk c1744Mk, int i, int i2, boolean z, int i3, InterfaceC2074a0 interfaceC2074a0) {
        int iA09 = c1744Mk.A09();
        int iA02 = A02(c1744Mk.A0l(), iA09);
        String str = new String(c1744Mk.A0l(), iA09, iA02 - iA09, XA.A00);
        c1744Mk.A0f(iA02 + 1);
        int iA0I = c1744Mk.A0I();
        boolean z2 = (iA0I & 2) != 0;
        boolean z3 = (iA0I & 1) != 0;
        int iA0I2 = c1744Mk.A0I();
        String[] strArr = new String[iA0I2];
        for (int i4 = 0; i4 < iA0I2; i4++) {
            int iA010 = c1744Mk.A09();
            int iA03 = A02(c1744Mk.A0l(), iA010);
            strArr[i4] = new String(c1744Mk.A0l(), iA010, iA03 - iA010, XA.A00);
            c1744Mk.A0f(iA03 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i5 = iA09 + i;
        while (c1744Mk.A09() < i5) {
            Id3Frame id3FrameA0B = A0B(i2, c1744Mk, z, i3, interfaceC2074a0);
            if (id3FrameA0B != null) {
                arrayList.add(id3FrameA0B);
            }
        }
        return new ChapterTocFrame(str, z2, z3, strArr, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    public static CommentFrame A08(C1744Mk c1744Mk, int i) {
        if (i < 4) {
            return null;
        }
        int iA0I = c1744Mk.A0I();
        Charset charsetA0M = A0M(iA0I);
        byte[] bArr = new byte[3];
        c1744Mk.A0k(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        byte[] bArr2 = new byte[i - 4];
        c1744Mk.A0k(bArr2, 0, i - 4);
        int iA03 = A03(bArr2, 0, iA0I);
        String str2 = new String(bArr2, 0, iA03, charsetA0M);
        int iA00 = A00(iA0I) + iA03;
        return new CommentFrame(str, str2, A0L(bArr2, iA00, A03(bArr2, iA00, iA0I), charsetA0M));
    }

    public static GeobFrame A09(C1744Mk c1744Mk, int i) {
        int iA0I = c1744Mk.A0I();
        Charset charsetA0M = A0M(iA0I);
        byte[] bArr = new byte[i - 1];
        c1744Mk.A0k(bArr, 0, i - 1);
        int iA02 = A02(bArr, 0);
        String str = new String(bArr, 0, iA02, XA.A00);
        int i2 = iA02 + 1;
        int iA03 = A03(bArr, i2, iA0I);
        String strA0L = A0L(bArr, i2, iA03, charsetA0M);
        int iA00 = A00(iA0I) + iA03;
        int iA04 = A03(bArr, iA00, iA0I);
        return new GeobFrame(str, strA0L, A0L(bArr, iA00, iA04, charsetA0M), A0Q(bArr, A00(iA0I) + iA04, bArr.length));
    }

    public static C2075a1 A0A(C1744Mk c1744Mk) {
        int iA07 = c1744Mk.A07();
        String strA0J = A0J(170, 10, 119);
        if (iA07 < 10) {
            MV.A07(strA0J, A0J(30, 31, 62));
            return null;
        }
        int iA0K = c1744Mk.A0K();
        boolean z = false;
        if (iA0K != 4801587) {
            MV.A07(strA0J, A0J(348, 50, 59) + String.format(A0J(0, 4, 97), Integer.valueOf(iA0K)));
            return null;
        }
        int iA0I = c1744Mk.A0I();
        c1744Mk.A0g(1);
        int iA0I2 = c1744Mk.A0I();
        int iA0H = c1744Mk.A0H();
        if (iA0I == 2) {
            if ((iA0I2 & 64) != 0) {
                MV.A07(strA0J, A0J(180, 68, 37));
                return null;
            }
        } else if (iA0I == 3) {
            int i = iA0I2 & 64;
            if (A02[3].length() == 3) {
                throw new RuntimeException();
            }
            A02[0] = "pllyyO0jSkbVxRBNu1SFBoHx8r2sOd";
            if (i != 0) {
                int iA0C = c1744Mk.A0C();
                c1744Mk.A0g(iA0C);
                iA0H -= iA0C + 4;
            }
        } else {
            if (iA0I != 4) {
                MV.A07(strA0J, A0J(248, 46, 65) + iA0I);
                return null;
            }
            if ((iA0I2 & 64) != 0) {
                int iA0H2 = c1744Mk.A0H();
                c1744Mk.A0g(iA0H2 - 4);
                iA0H -= iA0H2;
            }
            if ((iA0I2 & 16) != 0) {
                iA0H -= 10;
            }
        }
        if (iA0I < 4 && (iA0I2 & 128) != 0) {
            z = true;
        }
        return new C2075a1(iA0I, z, iA0H);
    }

    /* JADX WARN: Code duplicated, block: B:154:0x0238  */
    /* JADX WARN: Code duplicated, block: B:168:0x0272  */
    /* JADX WARN: Code duplicated, block: B:169:0x0274  */
    /* JADX WARN: Code duplicated, block: B:171:0x0282  */
    /* JADX WARN: Code duplicated, block: B:173:0x0290  */
    /* JADX WARN: Code duplicated, block: B:174:0x0292  */
    /* JADX WARN: Code duplicated, block: B:177:0x0297 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:180:0x029f A[Catch: all -> 0x02e1, TryCatch #0 {all -> 0x02e1, blocks: (B:92:0x013f, B:182:0x02a9, B:94:0x0147, B:101:0x015d, B:103:0x0165, B:133:0x01e1, B:134:0x01e7, B:140:0x01f7, B:147:0x0209, B:161:0x024e, B:167:0x0265, B:179:0x029a, B:180:0x029f), top: B:188:0x0135 }] */
    public static Id3Frame A0B(int i, C1744Mk c1744Mk, boolean z, int i2, InterfaceC2074a0 interfaceC2074a0) {
        int iA0L;
        Id3Frame id3FrameA05;
        int iA0I = c1744Mk.A0I();
        int iA0I2 = c1744Mk.A0I();
        int iA0I3 = c1744Mk.A0I();
        int iA0I4 = i >= 3 ? c1744Mk.A0I() : 0;
        if (i == 4) {
            int iA0L2 = c1744Mk.A0L();
            iA0L = !z ? (iA0L2 & 255) | (((iA0L2 >> 8) & 255) << 7) | (((iA0L2 >> 16) & 255) << 14) | (((iA0L2 >> 24) & 255) << 21) : iA0L2;
        } else {
            iA0L = i == 3 ? c1744Mk.A0L() : c1744Mk.A0K();
        }
        int iA0M = i >= 3 ? c1744Mk.A0M() : 0;
        if (A02[0].length() != 19) {
            A02[3] = "xkx3apvo31jkPgr5AN31ZqqPcB15x4w";
            if (iA0I == 0 && iA0I2 == 0 && iA0I3 == 0 && iA0I4 == 0 && iA0L == 0 && iA0M == 0) {
                c1744Mk.A0f(c1744Mk.A0A());
                return null;
            }
            int iA09 = c1744Mk.A09() + iA0L;
            int iA0A = c1744Mk.A0A();
            String strA0J = A0J(170, 10, 119);
            if (iA09 > iA0A) {
                MV.A07(strA0J, A0J(133, 37, 117));
                c1744Mk.A0f(c1744Mk.A0A());
                return null;
            }
            if (interfaceC2074a0 != null && !interfaceC2074a0.A6z(i, iA0I, iA0I2, iA0I3, iA0I4)) {
                c1744Mk.A0f(iA09);
                return null;
            }
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            if (i == 3) {
                z5 = (iA0M & 128) != 0;
                z3 = (iA0M & 64) != 0;
                z6 = (iA0M & 32) != 0;
                z2 = z5;
            } else if (i == 4) {
                z6 = (iA0M & 64) != 0;
                z2 = (iA0M & 8) != 0;
                z3 = (iA0M & 4) != 0;
                z4 = (iA0M & 2) != 0;
                z5 = (iA0M & 1) != 0;
            }
            if (z2 || z3) {
                MV.A07(strA0J, A0J(294, 50, kotlin.fh.h1));
                c1744Mk.A0f(iA09);
                return null;
            }
            if (z6) {
                iA0L--;
                c1744Mk.A0g(1);
            }
            if (z5) {
                iA0L -= 4;
                c1744Mk.A0g(4);
            }
            if (z4) {
                iA0L = A01(c1744Mk, iA0L);
            }
            try {
                if (iA0I == 84 && iA0I2 == 88 && iA0I3 == 88 && (i == 2 || iA0I4 == 88)) {
                    id3FrameA05 = A0E(c1744Mk, iA0L);
                } else if (iA0I == 84) {
                    id3FrameA05 = A0F(c1744Mk, iA0L, A0K(i, iA0I, iA0I2, iA0I3, iA0I4));
                } else if (iA0I == 87 && iA0I2 == 88 && iA0I3 == 88 && (i == 2 || iA0I4 == 88)) {
                    id3FrameA05 = A0G(c1744Mk, iA0L);
                } else if (iA0I == 87) {
                    id3FrameA05 = A0H(c1744Mk, iA0L, A0K(i, iA0I, iA0I2, iA0I3, iA0I4));
                } else {
                    if (iA0I == 80) {
                        String[] strArr = A02;
                        if (strArr[7].length() == strArr[5].length()) {
                            String[] strArr2 = A02;
                            strArr2[1] = "3Rmled7pOU2MIFm80fDikiUgpbd3LEyL";
                            strArr2[2] = "hew1IOjEcjVUCeARNBOOJbNfjgwkGxJB";
                            if (iA0I2 == 82 && iA0I3 == 73 && iA0I4 == 86) {
                                id3FrameA05 = A0D(c1744Mk, iA0L);
                            }
                        }
                    }
                    if (iA0I == 71 && iA0I2 == 69 && iA0I3 == 79 && (iA0I4 == 66 || i == 2)) {
                        id3FrameA05 = A09(c1744Mk, iA0L);
                    } else {
                        String[] strArr3 = A02;
                        if (strArr3[1].charAt(15) != strArr3[2].charAt(15)) {
                            A02[0] = "hLiqWaU2VKQGxb7qu5NekskVW";
                            if (i != 2 ? iA0I == 65 && iA0I2 == 80 && iA0I3 == 73 && iA0I4 == 67 : iA0I == 80 && iA0I2 == 73 && iA0I3 == 67) {
                                id3FrameA05 = A04(c1744Mk, iA0L, i);
                            } else if (iA0I == 67 && iA0I2 == 79 && iA0I3 == 77 && (iA0I4 == 77 || i == 2)) {
                                id3FrameA05 = A08(c1744Mk, iA0L);
                            } else if (iA0I == 67) {
                                String[] strArr4 = A02;
                                if (strArr4[1].charAt(15) != strArr4[2].charAt(15)) {
                                    A02[3] = "WRLDsLsRIWfesP2br";
                                    if (iA0I2 == 72) {
                                        if (iA0I3 != 65 && iA0I4 == 80) {
                                            id3FrameA05 = A06(c1744Mk, iA0L, i, z, i2, interfaceC2074a0);
                                        }
                                    }
                                } else {
                                    String[] strArr5 = A02;
                                    strArr5[1] = "TqjjqncCc8SNUp0iowWlF0GQKU84swFz";
                                    strArr5[2] = "FaXpscmVu9s0bcRjOAQpdBtEjkIewf4R";
                                    if (iA0I2 == 72) {
                                        if (iA0I3 != 65) {
                                        }
                                    }
                                }
                                if (iA0I != 67 && iA0I2 == 84 && iA0I3 == 79 && iA0I4 == 67) {
                                    id3FrameA05 = A07(c1744Mk, iA0L, i, z, i2, interfaceC2074a0);
                                } else if (iA0I != 77) {
                                    id3FrameA05 = A05(c1744Mk, iA0L, A0K(i, iA0I, iA0I2, iA0I3, iA0I4));
                                } else {
                                    if (A02[3].length() != 3) {
                                        String[] strArr6 = A02;
                                        strArr6[7] = "9iw4en5w9JOYJKcMErTHNJTWSACkJY";
                                        strArr6[5] = "3VadItTRNagJu0YfKnz18yFaBCd9zL";
                                        if (iA0I2 == 76) {
                                            if (iA0I3 != 76 && iA0I4 == 84) {
                                                id3FrameA05 = A0C(c1744Mk, iA0L);
                                            }
                                        }
                                    } else if (iA0I2 == 76) {
                                        if (iA0I3 != 76) {
                                        }
                                    }
                                    id3FrameA05 = A05(c1744Mk, iA0L, A0K(i, iA0I, iA0I2, iA0I3, iA0I4));
                                }
                            } else if (iA0I != 67) {
                                if (iA0I != 77) {
                                    id3FrameA05 = A05(c1744Mk, iA0L, A0K(i, iA0I, iA0I2, iA0I3, iA0I4));
                                } else {
                                    if (A02[3].length() != 3) {
                                        String[] strArr7 = A02;
                                        strArr7[7] = "9iw4en5w9JOYJKcMErTHNJTWSACkJY";
                                        strArr7[5] = "3VadItTRNagJu0YfKnz18yFaBCd9zL";
                                        if (iA0I2 == 76) {
                                            if (iA0I3 != 76) {
                                            }
                                        }
                                    } else if (iA0I2 == 76) {
                                        if (iA0I3 != 76) {
                                        }
                                    }
                                    id3FrameA05 = A05(c1744Mk, iA0L, A0K(i, iA0I, iA0I2, iA0I3, iA0I4));
                                }
                            } else if (iA0I != 77) {
                                id3FrameA05 = A05(c1744Mk, iA0L, A0K(i, iA0I, iA0I2, iA0I3, iA0I4));
                            } else {
                                if (A02[3].length() != 3) {
                                    String[] strArr8 = A02;
                                    strArr8[7] = "9iw4en5w9JOYJKcMErTHNJTWSACkJY";
                                    strArr8[5] = "3VadItTRNagJu0YfKnz18yFaBCd9zL";
                                    if (iA0I2 == 76) {
                                        if (iA0I3 != 76) {
                                        }
                                    }
                                } else if (iA0I2 == 76) {
                                    if (iA0I3 != 76) {
                                    }
                                }
                                id3FrameA05 = A05(c1744Mk, iA0L, A0K(i, iA0I, iA0I2, iA0I3, iA0I4));
                            }
                        }
                    }
                }
                if (id3FrameA05 == null) {
                    MV.A07(strA0J, A0J(61, 27, 89) + A0K(i, iA0I, iA0I2, iA0I3, iA0I4) + A0J(18, 12, 100) + iA0L);
                }
                c1744Mk.A0f(iA09);
                return id3FrameA05;
            } catch (Throwable th) {
                c1744Mk.A0f(iA09);
                throw th;
            }
        }
        throw new RuntimeException();
    }

    public static MlltFrame A0C(C1744Mk c1744Mk, int i) {
        int iA0M = c1744Mk.A0M();
        int iA0K = c1744Mk.A0K();
        int iA0K2 = c1744Mk.A0K();
        int iA0I = c1744Mk.A0I();
        int iA0I2 = c1744Mk.A0I();
        C1743Mj c1743Mj = new C1743Mj();
        c1743Mj.A0C(c1744Mk);
        int i2 = ((i - 10) * 8) / (iA0I + iA0I2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int iA04 = c1743Mj.A04(iA0I);
            int iA05 = c1743Mj.A04(iA0I2);
            iArr[i3] = iA04;
            iArr2[i3] = iA05;
        }
        return new MlltFrame(iA0M, iA0K, iA0K2, iArr, iArr2);
    }

    public static PrivFrame A0D(C1744Mk c1744Mk, int i) {
        byte[] bArr = new byte[i];
        c1744Mk.A0k(bArr, 0, i);
        int iA02 = A02(bArr, 0);
        return new PrivFrame(new String(bArr, 0, iA02, XA.A00), A0Q(bArr, iA02 + 1, bArr.length));
    }

    public static TextInformationFrame A0E(C1744Mk c1744Mk, int i) {
        if (i < 1) {
            return null;
        }
        int iA0I = c1744Mk.A0I();
        byte[] bArr = new byte[i - 1];
        c1744Mk.A0k(bArr, 0, i - 1);
        int iA03 = A03(bArr, 0, iA0I);
        return new TextInformationFrame(A0J(344, 4, 31), new String(bArr, 0, iA03, A0M(iA0I)), A0I(bArr, iA0I, A00(iA0I) + iA03));
    }

    public static TextInformationFrame A0F(C1744Mk c1744Mk, int i, String str) {
        if (i < 1) {
            return null;
        }
        int iA0I = c1744Mk.A0I();
        byte[] bArr = new byte[i - 1];
        c1744Mk.A0k(bArr, 0, i - 1);
        return new TextInformationFrame(str, null, A0I(bArr, iA0I, 0));
    }

    public static UrlLinkFrame A0G(C1744Mk c1744Mk, int i) {
        if (i >= 1) {
            int iA0I = c1744Mk.A0I();
            byte[] bArr = new byte[i - 1];
            c1744Mk.A0k(bArr, 0, i - 1);
            int iA03 = A03(bArr, 0, iA0I);
            String str = new String(bArr, 0, iA03, A0M(iA0I));
            int iA00 = A00(iA0I) + iA03;
            return new UrlLinkFrame(A0J(398, 4, 13), str, A0L(bArr, iA00, A02(bArr, iA00), XA.A00));
        }
        String[] strArr = A02;
        if (strArr[7].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[4] = "SPxeGoZSNSgTbWym";
        strArr2[6] = "33lkerVVGiVeq1xCyMDroZS8rCI";
        return null;
    }

    public static UrlLinkFrame A0H(C1744Mk c1744Mk, int i, String str) {
        byte[] bArr = new byte[i];
        c1744Mk.A0k(bArr, 0, i);
        return new UrlLinkFrame(str, null, new String(bArr, 0, A02(bArr, 0), XA.A00));
    }

    public static AbstractC14149l<String> A0I(byte[] bArr, int i, int i2) {
        int length = bArr.length;
        String strA0J = A0J(0, 0, 96);
        if (i2 >= length) {
            return AbstractC14149l.A04(strA0J);
        }
        C12944e c12944eA01 = AbstractC14149l.A01();
        int iA03 = A03(bArr, i2, i);
        while (i2 < iA03) {
            c12944eA01.A04(new String(bArr, i2, iA03 - i2, A0M(i)));
            i2 = iA03 + A00(i);
            iA03 = A03(bArr, i2, i);
        }
        AbstractC14149l<String> abstractC14149lA05 = c12944eA01.A05();
        return abstractC14149lA05.isEmpty() ? AbstractC14149l.A04(strA0J) : abstractC14149lA05;
    }

    public static String A0J(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 121);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A0K(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, A0J(4, 6, 50), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, A0J(10, 8, 73), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static String A0L(byte[] bArr, int i, int i2, Charset charset) {
        if (i2 > i && i2 <= bArr.length) {
            return new String(bArr, i, i2 - i, charset);
        }
        String strA0J = A0J(0, 0, 96);
        String[] strArr = A02;
        if (strArr[4].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[4] = "Ajw25UA1JzSG5nck";
        strArr2[6] = "CW3KTU3u5THrbhQ2QNxXB8tc6gb";
        return strA0J;
    }

    public static Charset A0M(int i) {
        switch (i) {
            case 1:
                return XA.A02;
            case 2:
                return XA.A03;
            case 3:
                return XA.A05;
            default:
                return XA.A00;
        }
    }

    public static void A0N() {
        A01 = new byte[]{Base64.padSymbol, 40, 46, SignedBytes.MAX_POWER_OF_TWO, 110, 40, 110, 40, 110, 40, Ascii.NAK, 83, Ascii.NAK, 83, Ascii.NAK, 83, Ascii.NAK, 83, 49, Base64.padSymbol, 123, 111, 124, 112, 120, 78, 116, 103, 120, 32, 3, 38, 51, 38, 103, 51, 40, 40, 103, 52, 47, 40, 53, 51, 103, 51, 40, 103, 37, 34, 103, 38, 41, 103, Ascii.SO, 3, 116, 103, 51, 38, 32, 102, 65, 73, 76, 69, 68, 0, 84, 79, 0, 68, 69, 67, 79, 68, 69, 0, 70, 82, 65, 77, 69, Ascii.SUB, 0, 73, 68, Ascii.GS, 59, Ascii.FS, Ascii.DC4, 17, Ascii.CAN, Ascii.EM, 93, 9, Ascii.DC2, 93, Ascii.VT, Ascii.FS, 17, Ascii.DC4, Ascii.EM, Ascii.FS, 9, Ascii.CAN, 93, 52, 57, 78, 93, 9, Ascii.FS, Ascii.SUB, 93, 10, Ascii.DC4, 9, Ascii.NAK, 93, Ascii.DLE, Ascii.FS, Ascii.ETB, Ascii.DC2, Ascii.SI, 43, Ascii.CAN, Ascii.SI, Ascii.SO, Ascii.DC4, Ascii.DC2, 19, SignedBytes.MAX_POWER_OF_TWO, 74, 126, 109, 97, 105, 44, 127, 101, 118, 105, 44, 105, 116, 111, 105, 105, 104, 127, 44, 126, 105, 97, 109, 101, 98, 101, 98, 107, 44, 120, 109, 107, 44, 104, 109, 120, 109, 71, 106, Base64.padSymbol, 74, 107, 109, 97, 106, 107, 124, Ascii.SI, 55, 53, 44, 44, 57, 56, 124, Ascii.NAK, Ascii.CAN, 111, 124, 40, Base64.padSymbol, 59, 124, 43, 53, 40, 52, 124, 49, Base64.padSymbol, 54, 51, 46, 10, 57, 46, 47, 53, 51, 50, 97, 110, 124, Base64.padSymbol, 50, 56, 124, 41, 50, 56, 57, 58, 53, 50, 57, 56, 124, 63, 51, 49, 44, 46, 57, 47, 47, 53, 51, 50, 124, 47, 63, 52, 57, 49, 57, 107, 83, 81, 72, 72, 93, 92, Ascii.CAN, 113, 124, Ascii.VT, Ascii.CAN, 76, 89, 95, Ascii.CAN, 79, 81, 76, 80, Ascii.CAN, 77, 86, 75, 77, 72, 72, 87, 74, 76, 93, 92, Ascii.CAN, 85, 89, 82, 87, 74, 110, 93, 74, 75, 81, 87, 86, 5, 65, 121, 123, 98, 98, 123, 124, 117, 50, 103, 124, 97, 103, 98, 98, 125, 96, 102, 119, 118, 50, 113, 125, 127, 98, 96, 119, 97, 97, 119, 118, 50, 125, 96, 50, 119, 124, 113, 96, 107, 98, 102, 119, 118, 50, 116, 96, 115, 127, 119, 50, 62, 62, 62, Ascii.ETB, 44, 39, 58, 50, 39, 33, 54, 39, 38, 98, 36, 43, 48, 49, 54, 98, 54, 42, 48, 39, 39, 98, 32, 59, 54, 39, 49, 98, 45, 36, 98, Ascii.VT, 6, 113, 98, 54, 35, 37, 98, 42, 39, 35, 38, 39, 48, 120, 98, 114, 58, 35, 44, 44, 44, 48, 52, 56, 62, 60, 118, 40, 44, 32, 38, 36, 110, 43, 49, 36, 38, 92, 88, 84, 82, 80, Ascii.SUB, 95, 69, 82};
    }

    public static /* synthetic */ boolean A0O(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    public static boolean A0P(C1744Mk c1744Mk, int i, int i2, boolean z) throws Throwable {
        int iA0C;
        long jA0Q;
        int iA0M;
        int iA09 = c1744Mk.A09();
        while (true) {
            try {
                if (c1744Mk.A07() < i2) {
                    c1744Mk.A0f(iA09);
                    return true;
                }
                if (i >= 3) {
                    try {
                        iA0C = c1744Mk.A0C();
                        jA0Q = c1744Mk.A0Q();
                        iA0M = c1744Mk.A0M();
                    } catch (Throwable th) {
                        th = th;
                        c1744Mk.A0f(iA09);
                        throw th;
                    }
                } else {
                    iA0C = c1744Mk.A0K();
                    jA0Q = c1744Mk.A0K();
                    iA0M = 0;
                }
                if (iA0C == 0 && jA0Q == 0 && iA0M == 0) {
                    c1744Mk.A0f(iA09);
                    return true;
                }
                if (i == 4 && !z) {
                    if ((8421504 & jA0Q) != 0) {
                        c1744Mk.A0f(iA09);
                        return false;
                    }
                    jA0Q = (((jA0Q >> 24) & 255) << 21) | (jA0Q & 255) | (((jA0Q >> 8) & 255) << 7) | (((jA0Q >> 16) & 255) << 14);
                }
                boolean z2 = false;
                boolean z3 = false;
                if (i == 4) {
                    z2 = (iA0M & 64) != 0;
                    z3 = (iA0M & 1) != 0;
                } else if (i == 3) {
                    z2 = (iA0M & 32) != 0;
                    z3 = (iA0M & 128) != 0;
                }
                int i3 = z2 ? 0 + 1 : 0;
                if (z3) {
                    i3 += 4;
                }
                if (jA0Q < i3) {
                    c1744Mk.A0f(iA09);
                    return false;
                }
                if (c1744Mk.A07() < jA0Q) {
                    c1744Mk.A0f(iA09);
                    return false;
                }
                c1744Mk.A0g((int) jA0Q);
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public static byte[] A0Q(byte[] bArr, int i, int i2) {
        return i2 <= i ? N1.A07 : Arrays.copyOfRange(bArr, i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1818Pn
    public final Metadata A0R(C13968e c13968e, ByteBuffer byteBuffer) {
        return A0S(byteBuffer.array(), byteBuffer.limit());
    }

    public final Metadata A0S(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        C1744Mk c1744Mk = new C1744Mk(bArr, i);
        C2075a1 c2075a1A0A = A0A(c1744Mk);
        if (c2075a1A0A == null) {
            return null;
        }
        int iA09 = c1744Mk.A09();
        int i2 = c2075a1A0A.A01 == 2 ? 6 : 10;
        int iA01 = c2075a1A0A.A00;
        if (c2075a1A0A.A02) {
            iA01 = A01(c1744Mk, c2075a1A0A.A00);
        }
        c1744Mk.A0e(iA09 + iA01);
        boolean z = false;
        if (!A0P(c1744Mk, c2075a1A0A.A01, i2, false)) {
            if (c2075a1A0A.A01 != 4 || !A0P(c1744Mk, 4, i2, true)) {
                MV.A07(A0J(170, 10, 119), A0J(88, 45, 4) + c2075a1A0A.A01);
                return null;
            }
            z = true;
        }
        while (c1744Mk.A07() >= i2) {
            Id3Frame id3FrameA0B = A0B(c2075a1A0A.A01, c1744Mk, z, i2, this.A00);
            if (id3FrameA0B != null) {
                arrayList.add(id3FrameA0B);
            }
        }
        return new Metadata(arrayList);
    }
}
