package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import com.google.android.gms.nearby.uwb.RangingPosition;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2185bo {
    public static byte[] A07;
    public static String[] A08 = {"JsV4TFjYWvOVFh9fbEMBQ1yd", "zI9rFfLAPUbBcFVn1cs8sVfp7", "5vAFQLVRtXS7x8rkrLI0RrMKh", "5t", "1oeTKhLIb83oiC2b8AZ2Gaj38pe10VaJ", "yM2U", "BgBP9zcDMfdMiz0Sq4W1kP4oEPZ", "BxbzWHPj6NvSPUz9iUx4YOqPzI8l5Xlv"};
    public static final byte[] A09;
    public static final byte[] A0A;
    public static final byte[] A0B;
    public Bitmap A00;
    public final Canvas A01;
    public final Paint A02 = new Paint();
    public final Paint A03;
    public final C2177bg A04;
    public final C2178bh A05;
    public final C2184bn A06;

    static {
        A0A();
        A09 = new byte[]{0, 7, 8, Ascii.SI};
        A0A = new byte[]{0, 119, -120, -1};
        A0B = new byte[]{0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    }

    public C2185bo(int i, int i2) {
        this.A02.setStyle(Paint.Style.FILL_AND_STROKE);
        this.A02.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        this.A02.setPathEffect(null);
        this.A03 = new Paint();
        this.A03.setStyle(Paint.Style.FILL);
        this.A03.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        this.A03.setPathEffect(null);
        this.A01 = new Canvas();
        this.A05 = new C2178bh(719, 575, 0, 719, 0, 575);
        this.A04 = new C2177bg(0, A0F(), A0G(), A0H());
        this.A06 = new C2184bn(i, i2);
    }

    public static int A00(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    public static int A01(C1743Mj c1743Mj, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        boolean z = false;
        do {
            int iA04 = 0;
            int iA05 = c1743Mj.A04(2);
            if (iA05 != 0) {
                iA04 = 1;
            } else if (c1743Mj.A0H()) {
                iA04 = c1743Mj.A04(3) + 3;
                iA05 = c1743Mj.A04(2);
            } else if (!c1743Mj.A0H()) {
                switch (c1743Mj.A04(2)) {
                    case 0:
                        z = true;
                        iA05 = 0;
                        break;
                    case 1:
                        iA04 = 2;
                        iA05 = 0;
                        break;
                    case 2:
                        iA04 = c1743Mj.A04(4) + 12;
                        iA05 = c1743Mj.A04(2);
                        break;
                    case 3:
                        iA04 = c1743Mj.A04(8) + 29;
                        if (A08[6].length() != 27) {
                            throw new RuntimeException();
                        }
                        String[] strArr = A08;
                        strArr[3] = "rf";
                        strArr[0] = "t15PXyEyf06LFckNamOoNHYS";
                        iA05 = c1743Mj.A04(2);
                        break;
                    default:
                        iA05 = 0;
                        break;
                }
            } else {
                iA04 = 1;
                iA05 = 0;
            }
            if (iA04 != 0 && paint != null) {
                if (bArr != null) {
                    iA05 = bArr[iA05];
                }
                paint.setColor(iArr[iA05]);
                canvas.drawRect(i, i2, i + iA04, i2 + 1, paint);
            }
            i += iA04;
        } while (!z);
        return i;
    }

    public static int A02(C1743Mj c1743Mj, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        boolean z = false;
        do {
            int iA04 = 0;
            int iA05 = c1743Mj.A04(4);
            if (iA05 == 0) {
                if (!c1743Mj.A0H()) {
                    int iA06 = c1743Mj.A04(3);
                    if (iA06 != 0) {
                        iA04 = iA06 + 2;
                        iA05 = 0;
                    } else {
                        z = true;
                        iA05 = 0;
                    }
                } else if (c1743Mj.A0H()) {
                    switch (c1743Mj.A04(2)) {
                        case 0:
                            iA04 = 1;
                            iA05 = 0;
                            break;
                        case 1:
                            iA04 = 2;
                            iA05 = 0;
                            break;
                        case 2:
                            iA04 = c1743Mj.A04(4) + 9;
                            iA05 = c1743Mj.A04(4);
                            break;
                        case 3:
                            iA04 = c1743Mj.A04(8) + 25;
                            iA05 = c1743Mj.A04(4);
                            break;
                        default:
                            iA05 = 0;
                            break;
                    }
                } else {
                    iA04 = c1743Mj.A04(2) + 4;
                    iA05 = c1743Mj.A04(4);
                }
            } else {
                iA04 = 1;
            }
            if (iA04 != 0 && paint != null) {
                if (bArr != null) {
                    iA05 = bArr[iA05];
                }
                paint.setColor(iArr[iA05]);
                canvas.drawRect(i, i2, i + iA04, i2 + 1, paint);
            }
            i += iA04;
        } while (!z);
        return i;
    }

    public static int A03(C1743Mj c1743Mj, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        int iA04;
        int i3 = i;
        boolean z = false;
        do {
            int iA05 = c1743Mj.A04(8);
            if (iA05 != 0) {
                iA04 = 1;
            } else if (c1743Mj.A0H()) {
                iA04 = c1743Mj.A04(7);
                iA05 = c1743Mj.A04(8);
            } else {
                iA04 = c1743Mj.A04(7);
                if (iA04 != 0) {
                    iA05 = 0;
                } else {
                    z = true;
                    iA04 = 0;
                    iA05 = 0;
                }
            }
            if (iA04 != 0 && paint != null) {
                if (bArr != null) {
                    iA05 = bArr[iA05];
                }
                paint.setColor(iArr[iA05]);
                float f = i3;
                float f2 = i2;
                String[] strArr = A08;
                if (strArr[3].length() == strArr[0].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A08;
                strArr2[4] = "nFAY43cuMtbo8GHNqxxyMaFJhuv8uT08";
                strArr2[7] = "nVtWZ378Kka1Q7VhBISIVs1iQwprxuF1";
                canvas.drawRect(f, f2, i3 + iA04, i2 + 1, paint);
            }
            i3 += iA04;
        } while (!z);
        return i3;
    }

    public static C2177bg A04(C1743Mj c1743Mj, int i) {
        int[] iArr;
        int iA04;
        int iA05;
        int iA06;
        int iA07;
        int i2 = 8;
        int iA08 = c1743Mj.A04(8);
        c1743Mj.A09(8);
        int i3 = i - 2;
        int[] iArrA0F = A0F();
        int[] iArrA0G = A0G();
        int[] iArrA0H = A0H();
        while (i3 > 0) {
            int iA09 = c1743Mj.A04(i2);
            int iA010 = c1743Mj.A04(i2);
            int i4 = i3 - 2;
            if ((iA010 & 128) != 0) {
                iArr = iArrA0F;
            } else {
                iArr = (iA010 & 64) != 0 ? iArrA0G : iArrA0H;
            }
            if ((iA010 & 1) != 0) {
                iA04 = c1743Mj.A04(i2);
                iA05 = c1743Mj.A04(i2);
                iA06 = c1743Mj.A04(i2);
                iA07 = c1743Mj.A04(i2);
                i3 = i4 - 4;
            } else {
                iA04 = c1743Mj.A04(6) << 2;
                iA05 = c1743Mj.A04(4) << 4;
                iA06 = c1743Mj.A04(4) << 4;
                iA07 = c1743Mj.A04(2) << 6;
                i3 = i4 - 2;
            }
            if (iA04 == 0) {
                iA05 = 0;
                iA06 = 0;
                iA07 = 255;
            }
            iArr[iA09] = A00(255 - (iA07 & 255), N1.A07((int) (((double) iA04) + (((double) (iA05 + RangingPosition.RSSI_UNKNOWN)) * 1.402d)), 0, 255), N1.A07((int) ((((double) iA04) - (((double) (iA06 + RangingPosition.RSSI_UNKNOWN)) * 0.34414d)) - (((double) (iA05 + RangingPosition.RSSI_UNKNOWN)) * 0.71414d)), 0, 255), N1.A07((int) (((double) iA04) + (((double) (iA06 + RangingPosition.RSSI_UNKNOWN)) * 1.772d)), 0, 255));
            i2 = 8;
        }
        return new C2177bg(iA08, iArrA0F, iArrA0G, iArrA0H);
    }

    public static C2178bh A05(C1743Mj c1743Mj) {
        int iA04;
        int iA05;
        int iA06;
        int iA07;
        c1743Mj.A09(4);
        boolean zA0H = c1743Mj.A0H();
        c1743Mj.A09(3);
        int iA08 = c1743Mj.A04(16);
        int iA09 = c1743Mj.A04(16);
        if (zA0H) {
            iA04 = c1743Mj.A04(16);
            iA07 = c1743Mj.A04(16);
            iA05 = c1743Mj.A04(16);
            iA06 = c1743Mj.A04(16);
        } else {
            iA04 = 0;
            iA05 = 0;
            iA06 = iA09;
            iA07 = iA08;
        }
        return new C2178bh(iA08, iA09, iA04, iA07, iA05, iA06);
    }

    public static C2179bi A06(C1743Mj c1743Mj) {
        int iA04 = c1743Mj.A04(16);
        c1743Mj.A09(4);
        int iA05 = c1743Mj.A04(2);
        boolean zA0H = c1743Mj.A0H();
        c1743Mj.A09(1);
        byte[] bArr = N1.A07;
        byte[] bArr2 = N1.A07;
        if (iA05 == 1) {
            c1743Mj.A09(c1743Mj.A04(8) * 16);
        } else if (iA05 == 0) {
            int iA06 = c1743Mj.A04(16);
            int iA07 = c1743Mj.A04(16);
            if (iA06 > 0) {
                bArr = new byte[iA06];
                c1743Mj.A0G(bArr, 0, iA06);
            }
            if (iA07 > 0) {
                bArr2 = new byte[iA07];
                c1743Mj.A0G(bArr2, 0, iA07);
            } else {
                bArr2 = bArr;
            }
        }
        return new C2179bi(iA04, zA0H, bArr, bArr2);
    }

    public static C2180bj A07(C1743Mj c1743Mj, int i) {
        int iA04 = c1743Mj.A04(8);
        int iA05 = c1743Mj.A04(4);
        int iA06 = c1743Mj.A04(2);
        c1743Mj.A09(2);
        int i2 = i - 2;
        SparseArray sparseArray = new SparseArray();
        while (i2 > 0) {
            int iA07 = c1743Mj.A04(8);
            c1743Mj.A09(8);
            i2 -= 6;
            sparseArray.put(iA07, new C2181bk(c1743Mj.A04(16), c1743Mj.A04(16)));
        }
        return new C2180bj(iA04, iA05, iA06, sparseArray);
    }

    public static C2182bl A08(C1743Mj c1743Mj, int i) {
        int i2 = 8;
        int iA04 = c1743Mj.A04(8);
        c1743Mj.A09(4);
        boolean zA0H = c1743Mj.A0H();
        c1743Mj.A09(3);
        int iA05 = c1743Mj.A04(16);
        int iA06 = c1743Mj.A04(16);
        int iA07 = c1743Mj.A04(3);
        int iA08 = c1743Mj.A04(3);
        c1743Mj.A09(2);
        int iA09 = c1743Mj.A04(8);
        int iA010 = c1743Mj.A04(8);
        int iA011 = c1743Mj.A04(4);
        int iA012 = c1743Mj.A04(2);
        c1743Mj.A09(2);
        int i3 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i3 > 0) {
            int iA013 = c1743Mj.A04(16);
            int iA014 = c1743Mj.A04(2);
            int iA015 = c1743Mj.A04(2);
            int iA016 = c1743Mj.A04(12);
            c1743Mj.A09(4);
            int iA017 = c1743Mj.A04(12);
            i3 -= 6;
            int iA018 = 0;
            int iA019 = 0;
            if (iA014 == 1 || iA014 == 2) {
                iA018 = c1743Mj.A04(i2);
                iA019 = c1743Mj.A04(i2);
                i3 -= 2;
            }
            sparseArray.put(iA013, new C2183bm(iA014, iA015, iA016, iA017, iA018, iA019));
            i2 = 8;
        }
        return new C2182bl(iA04, zA0H, iA05, iA06, iA07, iA08, iA09, iA010, iA011, iA012, sparseArray);
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 115);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A07 = new byte[]{4, 33, 52, 33, 96, 38, 41, 37, 44, 36, 96, 44, 37, 46, 39, 52, 40, 96, 37, 56, 35, 37, 37, 36, 51, 96, 44, 41, 45, 41, 52, 55, 5, 17, 35, Ascii.DC2, 1, 0, Ascii.SYN, 1};
    }

    public static void A0B(C1743Mj c1743Mj, C2184bn c2184bn) {
        C2182bl c2182bl;
        int iA04 = c1743Mj.A04(8);
        int iA05 = c1743Mj.A04(16);
        int iA06 = c1743Mj.A04(16);
        int iA02 = c1743Mj.A02() + iA06;
        if (iA06 * 8 > c1743Mj.A01()) {
            MV.A07(A09(31, 9, 0), A09(0, 31, 51));
            c1743Mj.A09(c1743Mj.A01());
            return;
        }
        switch (iA04) {
            case 16:
                if (iA05 == c2184bn.A03) {
                    C2180bj c2180bj = c2184bn.A01;
                    C2180bj c2180bjA07 = A07(c1743Mj, iA06);
                    if (c2180bjA07.A00 != 0) {
                        c2184bn.A01 = c2180bjA07;
                        c2184bn.A08.clear();
                        c2184bn.A06.clear();
                        c2184bn.A07.clear();
                    } else if (c2180bj != null && c2180bj.A02 != c2180bjA07.A02) {
                        c2184bn.A01 = c2180bjA07;
                    }
                }
                break;
            case 17:
                C2180bj c2180bj2 = c2184bn.A01;
                if (iA05 == c2184bn.A03 && c2180bj2 != null) {
                    C2182bl c2182blA08 = A08(c1743Mj, iA06);
                    if (c2180bj2.A00 == 0 && (c2182bl = c2184bn.A08.get(c2182blA08.A03)) != null) {
                        c2182blA08.A00(c2182bl);
                    }
                    c2184bn.A08.put(c2182blA08.A03, c2182blA08);
                }
                break;
            case 18:
                if (iA05 == c2184bn.A03) {
                    C2177bg c2177bgA04 = A04(c1743Mj, iA06);
                    c2184bn.A06.put(c2177bgA04.A00, c2177bgA04);
                } else if (iA05 == c2184bn.A02) {
                    C2177bg c2177bgA05 = A04(c1743Mj, iA06);
                    c2184bn.A04.put(c2177bgA05.A00, c2177bgA05);
                }
                break;
            case 19:
                if (iA05 == c2184bn.A03) {
                    C2179bi c2179biA06 = A06(c1743Mj);
                    c2184bn.A07.put(c2179biA06.A00, c2179biA06);
                } else if (iA05 == c2184bn.A02) {
                    C2179bi c2179biA07 = A06(c1743Mj);
                    c2184bn.A05.put(c2179biA07.A00, c2179biA07);
                }
                break;
            case 20:
                if (iA05 == c2184bn.A03) {
                    c2184bn.A00 = A05(c1743Mj);
                }
                break;
        }
        c1743Mj.A0A(iA02 - c1743Mj.A02());
    }

    public static void A0C(C2179bi c2179bi, C2177bg c2177bg, int i, int i2, int i3, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i == 3) {
            iArr = c2177bg.A03;
        } else {
            iArr = i == 2 ? c2177bg.A02 : c2177bg.A01;
        }
        A0D(c2179bi.A03, iArr, i, i2, i3, paint, canvas);
        A0D(c2179bi.A02, iArr, i, i2, i3 + 1, paint, canvas);
    }

    public static void A0D(byte[] bArr, int[] iArr, int i, int i2, int i3, Paint paint, Canvas canvas) {
        byte[] bArr2;
        int i4 = i3;
        C1743Mj c1743Mj = new C1743Mj(bArr);
        byte[] bArrA0E = null;
        byte[] bArrA0E2 = null;
        byte[] bArrA0E3 = null;
        int iA01 = i2;
        while (c1743Mj.A01() != 0) {
            switch (c1743Mj.A04(8)) {
                case 16:
                    if (i == 3) {
                        bArr2 = bArrA0E2 == null ? A0A : bArrA0E2;
                    } else if (i == 2) {
                        bArr2 = bArrA0E == null ? A09 : bArrA0E;
                    } else {
                        bArr2 = null;
                    }
                    iA01 = A01(c1743Mj, iArr, bArr2, iA01, i4, paint, canvas);
                    if (A08[5].length() != 4) {
                        throw new RuntimeException();
                    }
                    A08[5] = "INWB";
                    c1743Mj.A06();
                    break;
                case 17:
                    iA01 = A02(c1743Mj, iArr, i == 3 ? bArrA0E3 == null ? A0B : bArrA0E3 : null, iA01, i4, paint, canvas);
                    c1743Mj.A06();
                    break;
                case 18:
                    iA01 = A03(c1743Mj, iArr, null, iA01, i4, paint, canvas);
                    break;
                case 32:
                    bArrA0E = A0E(4, 4, c1743Mj);
                    break;
                case 33:
                    bArrA0E2 = A0E(4, 8, c1743Mj);
                    break;
                case 34:
                    bArrA0E3 = A0E(16, 8, c1743Mj);
                    break;
                case 240:
                    i4 += 2;
                    iA01 = i2;
                    break;
            }
        }
    }

    public static byte[] A0E(int i, int i2, C1743Mj c1743Mj) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) c1743Mj.A04(i2);
        }
        return bArr;
    }

    public static int[] A0F() {
        int[] iArr = new int[4];
        iArr[0] = 0;
        if (A08[6].length() != 27) {
            throw new RuntimeException();
        }
        A08[5] = "UKRJ";
        iArr[1] = -1;
        iArr[2] = -16777216;
        iArr[3] = -8421505;
        return iArr;
    }

    public static int[] A0G() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < iArr.length; i++) {
            if (i < 8) {
                iArr[i] = A00(255, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                iArr[i] = A00(255, (i & 1) != 0 ? 127 : 0, (i & 2) != 0 ? 127 : 0, (i & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    /* JADX WARN: Code duplicated, block: B:122:0x0189  */
    public static int[] A0H() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i = 0; i < iArr.length; i++) {
            if (i >= 8) {
                int i2 = 170;
                switch (i & 136) {
                    case 0:
                        int i3 = ((i & 1) != 0 ? 85 : 0) + ((i & 16) != 0 ? 170 : 0);
                        int i4 = ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0);
                        int i5 = (i & 4) == 0 ? 0 : 85;
                        int i6 = i & 64;
                        if (A08[6].length() != 27) {
                            String[] strArr = A08;
                            strArr[4] = "bSnjUDub7bObQ8EGvYPBkslmisWTOY6w";
                            strArr[7] = "Yb931zwFH8JAISIiHzcsgH50hwdoubnO";
                            if (i6 == 0) {
                                i2 = 0;
                            }
                        } else {
                            A08[6] = "giTTEFiONoi9787xiXhrtfr6U9u";
                            if (i6 == 0) {
                                i2 = 0;
                            }
                        }
                        iArr[i] = A00(255, i3, i4, i5 + i2);
                        break;
                    case 8:
                        int i7 = ((i & 1) != 0 ? 85 : 0) + ((i & 16) != 0 ? 170 : 0);
                        int i8 = ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0);
                        int i9 = i & 4;
                        if (A08[5].length() != 4) {
                            throw new RuntimeException();
                        }
                        A08[6] = "LhhNv66emf4CN5nBnv9iDds5Bnp";
                        iArr[i] = A00(127, i7, i8, (i9 == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                        break;
                        break;
                    case 128:
                        int i10 = i & 1;
                        String[] strArr2 = A08;
                        if (strArr2[4].charAt(30) != strArr2[7].charAt(30)) {
                            String[] strArr3 = A08;
                            strArr3[4] = "Z8UcYjzUy6V9YAKzaWp6JqWgXNcZttQE";
                            strArr3[7] = "qowOW12Oo04mXVMG9XTKN3xvNkznhuB4";
                            int i11 = (i10 != 0 ? 43 : 0) + 127 + ((i & 16) != 0 ? 85 : 0);
                            String[] strArr4 = A08;
                            if (strArr4[4].charAt(30) != strArr4[7].charAt(30)) {
                                A08[5] = "NG2b";
                                iArr[i] = A00(255, i11, ((i & 2) != 0 ? 43 : 0) + 127 + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + 127 + ((i & 64) == 0 ? 0 : 85));
                                break;
                            }
                        }
                        throw new RuntimeException();
                    case 136:
                        iArr[i] = A00(255, ((i & 1) != 0 ? 43 : 0) + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + ((i & 64) == 0 ? 0 : 85));
                        break;
                }
            } else {
                iArr[i] = A00(63, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) == 0 ? 0 : 255);
            }
        }
        return iArr;
    }

    public final List<C1911Th> A0I(byte[] bArr, int i) {
        C1743Mj c1743Mj = new C1743Mj(bArr, i);
        while (c1743Mj.A01() >= 48 && c1743Mj.A04(8) == 15) {
            A0B(c1743Mj, this.A06);
        }
        C2180bj c2180bj = this.A06.A01;
        if (c2180bj != null) {
            C2178bh c2178bh = this.A06.A00 != null ? this.A06.A00 : this.A05;
            if (this.A00 == null || c2178bh.A05 + 1 != this.A00.getWidth() || c2178bh.A00 + 1 != this.A00.getHeight()) {
                this.A00 = Bitmap.createBitmap(c2178bh.A05 + 1, c2178bh.A00 + 1, Bitmap.Config.ARGB_8888);
                this.A01.setBitmap(this.A00);
            }
            ArrayList arrayList = new ArrayList();
            SparseArray<C2181bk> sparseArray = c2180bj.A03;
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                this.A01.save();
                C2181bk c2181bkValueAt = sparseArray.valueAt(i2);
                C2182bl c2182bl = this.A06.A08.get(sparseArray.keyAt(i2));
                int i3 = c2181bkValueAt.A00 + c2178bh.A02;
                int i4 = c2181bkValueAt.A01 + c2178bh.A04;
                this.A01.clipRect(i3, i4, Math.min(c2182bl.A08 + i3, c2178bh.A01), Math.min(c2182bl.A02 + i4, c2178bh.A03));
                C2177bg c2177bg = this.A06.A06.get(c2182bl.A00);
                if (c2177bg == null && (c2177bg = this.A06.A04.get(c2182bl.A00)) == null) {
                    c2177bg = this.A04;
                }
                SparseArray<C2183bm> sparseArray2 = c2182bl.A09;
                for (int i5 = 0; i5 < sparseArray2.size(); i5++) {
                    int iKeyAt = sparseArray2.keyAt(i5);
                    C2183bm c2183bmValueAt = sparseArray2.valueAt(i5);
                    C2179bi c2179bi = this.A06.A07.get(iKeyAt);
                    if (c2179bi == null) {
                        c2179bi = this.A06.A05.get(iKeyAt);
                    }
                    if (c2179bi != null) {
                        Paint paint = c2179bi.A01 ? null : this.A02;
                        int i6 = c2182bl.A01;
                        int i7 = i3 + c2183bmValueAt.A02;
                        int i8 = i4 + c2183bmValueAt.A05;
                        Canvas canvas = this.A01;
                        String[] strArr = A08;
                        if (strArr[4].charAt(30) != strArr[7].charAt(30)) {
                            String[] strArr2 = A08;
                            strArr2[3] = "Vx";
                            strArr2[0] = "u9oPMu67mHNYaVuzznnGdinz";
                            A0C(c2179bi, c2177bg, i6, i7, i8, paint, canvas);
                        }
                    }
                }
                if (c2182bl.A0A) {
                    this.A03.setColor(c2182bl.A01 == 3 ? c2177bg.A03[c2182bl.A07] : c2182bl.A01 == 2 ? c2177bg.A02[c2182bl.A06] : c2177bg.A01[c2182bl.A05]);
                    this.A01.drawRect(i3, i4, c2182bl.A08 + i3, c2182bl.A02 + i4, this.A03);
                }
                arrayList.add(new C1712Ld().A0D(Bitmap.createBitmap(this.A00, i3, i4, c2182bl.A08, c2182bl.A02)).A04(i3 / c2178bh.A05).A0A(0).A07(i4 / c2178bh.A00, 0).A09(0).A06(c2182bl.A08 / c2178bh.A05).A03(c2182bl.A02 / c2178bh.A00).A0H());
                this.A01.drawColor(0, PorterDuff.Mode.CLEAR);
                this.A01.restore();
            }
            return Collections.unmodifiableList(arrayList);
        }
        List<C1911Th> listEmptyList = Collections.emptyList();
        String[] strArr3 = A08;
        if (strArr3[4].charAt(30) != strArr3[7].charAt(30)) {
            String[] strArr4 = A08;
            strArr4[4] = "k6wxMV5rogRqQXlJ7wPhPjAOTGXgdcai";
            strArr4[7] = "gpzzOf5VMtZ0FadQglIjA6shEguw2FFx";
            return listEmptyList;
        }
        throw new RuntimeException();
    }

    public final void A0J() {
        this.A06.A00();
    }
}
