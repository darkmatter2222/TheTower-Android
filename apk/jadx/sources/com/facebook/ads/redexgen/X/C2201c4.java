package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.regex.Pattern;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.c4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2201c4 {
    public static byte[] A03;
    public static String[] A04 = {"z07RPsSBQpgO4nPA3kfdcobPyI7MDW94", "CvFjhsqL7D8D4TD1nrgOH6GcmqHJswgj", "oaXI9WK9", "DouG6F9yBn5zVMX5iF88GXTfaPyEPfLR", "E3z", "wrF", "TPH2H6eM", "WGrr6AeMtrEAjikbklbyiOkaYEeRIVLM"};
    public static final AbstractC14139k<String> A05;
    public static final AbstractC14139k<String> A06;
    public static final AbstractC14139k<String> A07;
    public static final AbstractC14139k<String> A08;
    public static final Pattern A09;
    public final int A00;
    public final int A01;
    public final int A02;

    static {
        A03();
        A09 = Pattern.compile(A02(0, 3, 8));
        A08 = AbstractC14139k.A05(A02(8, 4, 118), A02(33, 4, 5));
        A06 = AbstractC14139k.A06(A02(24, 3, 31), A02(48, 6, 75), A02(18, 6, 23));
        A05 = AbstractC14139k.A05(A02(27, 6, 97), A02(37, 4, 12));
        A07 = AbstractC14139k.A06(A02(3, 5, 120), A02(12, 6, 96), A02(41, 7, 10));
    }

    public C2201c4(int i, int i2, int i3) {
        this.A01 = i;
        this.A00 = i2;
        this.A02 = i3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x0042  */
    /* JADX WARN: Code duplicated, block: B:13:0x0046  */
    /* JADX WARN: Code duplicated, block: B:16:0x004d  */
    /* JADX WARN: Code duplicated, block: B:17:0x004f  */
    /* JADX WARN: Code duplicated, block: B:19:0x005d  */
    /* JADX WARN: Code duplicated, block: B:20:0x005f  */
    /* JADX WARN: Code duplicated, block: B:23:0x006f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0071  */
    /* JADX WARN: Code duplicated, block: B:37:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:39:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:43:0x00db  */
    /* JADX WARN: Code duplicated, block: B:47:0x0100  */
    /* JADX WARN: Code duplicated, block: B:49:0x0109  */
    /* JADX WARN: Code duplicated, block: B:4:0x0020  */
    /* JADX WARN: Code duplicated, block: B:52:0x0121  */
    /* JADX WARN: Code duplicated, block: B:54:0x0125  */
    /* JADX WARN: Code duplicated, block: B:57:0x013c  */
    /* JADX WARN: Code duplicated, block: B:59:0x0140  */
    /* JADX WARN: Code duplicated, block: B:62:0x0147  */
    /* JADX WARN: Code duplicated, block: B:63:0x0149  */
    /* JADX WARN: Code duplicated, block: B:64:0x014b  */
    /* JADX WARN: Code duplicated, block: B:66:0x015a  */
    /* JADX WARN: Code duplicated, block: B:67:0x015c  */
    /* JADX WARN: Code duplicated, block: B:69:0x0172  */
    /* JADX WARN: Code duplicated, block: B:6:0x0024  */
    /* JADX WARN: Code duplicated, block: B:72:0x0181  */
    /* JADX WARN: Code duplicated, block: B:75:0x0190  */
    /* JADX WARN: Code duplicated, block: B:76:0x0192  */
    /* JADX WARN: Code duplicated, block: B:78:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:79:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:81:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:9:0x0031  */
    public static C2201c4 A00(AbstractC14139k<String> abstractC14139k) {
        byte b;
        int i;
        C9T c9tA02;
        C9T c9tA03;
        C9T c9tA04;
        String strA02;
        String str;
        byte b2;
        int i2;
        String strA03;
        String str2;
        boolean zEquals;
        String[] strArr;
        int i3;
        boolean zEquals2;
        String[] strArr2;
        String str3;
        int i4;
        C9T c9tA05 = VX.A02(A07, abstractC14139k);
        String strA04 = A02(41, 7, 10);
        String str4 = (String) AbstractC1966Vp.A00(c9tA05, strA04);
        byte b3 = 2;
        byte b4 = 1;
        switch (str4.hashCode()) {
            case -1392885889:
                String[] strArr3 = A04;
                if (strArr3[1].charAt(5) == strArr3[0].charAt(5)) {
                    String[] strArr4 = A04;
                    strArr4[1] = "OcLcysBJRH9QYT2g4vWW3XYU9Bd1ujT5";
                    strArr4[0] = "GwI6UsK64lqgkqAzZJIipeflOH4aD1Pc";
                    if (str4.equals(A02(12, 6, 96))) {
                        b = 2;
                    } else {
                        b = -1;
                    }
                    switch (b) {
                        case 0:
                            i = 2;
                            break;
                        case 1:
                            i = -2;
                            break;
                        default:
                            i = 1;
                            break;
                    }
                    c9tA02 = VX.A02(A08, abstractC14139k);
                    if (!c9tA02.isEmpty()) {
                        str3 = (String) c9tA02.iterator().next();
                        switch (str3.hashCode()) {
                            case 3005871:
                                if (!str3.equals(A02(8, 4, 118))) {
                                    b4 = -1;
                                }
                                break;
                            case 3387192:
                                if (str3.equals(A02(33, 4, 5))) {
                                    b4 = -1;
                                } else {
                                    b4 = 0;
                                }
                                break;
                            default:
                                b4 = -1;
                                break;
                        }
                        switch (b4) {
                            case 0:
                                i4 = 0;
                                break;
                            default:
                                i4 = -1;
                                break;
                        }
                        return new C2201c4(i4, 0, i);
                    }
                    c9tA03 = VX.A02(A05, abstractC14139k);
                    c9tA04 = VX.A02(A06, abstractC14139k);
                    if (!c9tA03.isEmpty() && c9tA04.isEmpty()) {
                        return new C2201c4(-1, 0, i);
                    }
                    strA02 = A02(27, 6, 97);
                    str = (String) AbstractC1966Vp.A00(c9tA03, strA02);
                    switch (str.hashCode()) {
                        case -1274499742:
                            if (str.equals(strA02)) {
                                b2 = -1;
                            } else {
                                b2 = 1;
                            }
                            break;
                        case 3417674:
                            if (str.equals(A02(37, 4, 12))) {
                                b2 = -1;
                            } else {
                                b2 = 0;
                            }
                            break;
                        default:
                            b2 = -1;
                            break;
                    }
                    switch (b2) {
                        case 0:
                            i2 = 2;
                            break;
                        default:
                            i2 = 1;
                            break;
                    }
                    strA03 = A02(18, 6, 23);
                    str2 = (String) AbstractC1966Vp.A00(c9tA04, strA03);
                    switch (str2.hashCode()) {
                        case -1360216880:
                            zEquals = str2.equals(strA03);
                            strArr = A04;
                            if (strArr[2].length() != strArr[6].length()) {
                                String[] strArr5 = A04;
                                strArr5[4] = "1NI";
                                strArr5[5] = "6Dd";
                                if (!zEquals) {
                                    b3 = -1;
                                }
                            } else {
                                String[] strArr6 = A04;
                                strArr6[4] = "orq";
                                strArr6[5] = "bmT";
                                if (!zEquals) {
                                    b3 = -1;
                                }
                            }
                            switch (b3) {
                                case 0:
                                    i3 = 2;
                                    break;
                                case 1:
                                    i3 = 3;
                                    break;
                                default:
                                    i3 = 1;
                                    break;
                            }
                            return new C2201c4(i3, i2, i);
                        case -905816648:
                            if (str2.equals(A02(48, 6, 75))) {
                                b3 = 1;
                            } else {
                                b3 = -1;
                            }
                            switch (b3) {
                                case 0:
                                    i3 = 2;
                                    break;
                                case 1:
                                    i3 = 3;
                                    break;
                                default:
                                    i3 = 1;
                                    break;
                            }
                            return new C2201c4(i3, i2, i);
                        case 99657:
                            zEquals2 = str2.equals(A02(24, 3, 31));
                            strArr2 = A04;
                            if (strArr2[4].length() == strArr2[5].length()) {
                                A04[7] = "VLiZAShxH4447oVRIDUJnKoJOEqIIq3v";
                                if (zEquals2) {
                                    b3 = 0;
                                } else {
                                    b3 = -1;
                                }
                                switch (b3) {
                                    case 0:
                                        i3 = 2;
                                        break;
                                    case 1:
                                        i3 = 3;
                                        break;
                                    default:
                                        i3 = 1;
                                        break;
                                }
                                return new C2201c4(i3, i2, i);
                            }
                            break;
                        default:
                            b3 = -1;
                            switch (b3) {
                                case 0:
                                    i3 = 2;
                                    break;
                                case 1:
                                    i3 = 3;
                                    break;
                                default:
                                    i3 = 1;
                                    break;
                            }
                            return new C2201c4(i3, i2, i);
                    }
                }
                throw new RuntimeException();
            case -1106037339:
                if (str4.equals(strA04)) {
                    b = 1;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        i = 2;
                        break;
                    case 1:
                        i = -2;
                        break;
                    default:
                        i = 1;
                        break;
                }
                c9tA02 = VX.A02(A08, abstractC14139k);
                if (!c9tA02.isEmpty()) {
                    str3 = (String) c9tA02.iterator().next();
                    switch (str3.hashCode()) {
                        case 3005871:
                            if (!str3.equals(A02(8, 4, 118))) {
                                b4 = -1;
                            }
                            break;
                        case 3387192:
                            if (str3.equals(A02(33, 4, 5))) {
                                b4 = -1;
                            } else {
                                b4 = 0;
                            }
                            break;
                        default:
                            b4 = -1;
                            break;
                    }
                    switch (b4) {
                        case 0:
                            i4 = 0;
                            break;
                        default:
                            i4 = -1;
                            break;
                    }
                    return new C2201c4(i4, 0, i);
                }
                c9tA03 = VX.A02(A05, abstractC14139k);
                c9tA04 = VX.A02(A06, abstractC14139k);
                if (!c9tA03.isEmpty()) {
                }
                strA02 = A02(27, 6, 97);
                str = (String) AbstractC1966Vp.A00(c9tA03, strA02);
                switch (str.hashCode()) {
                    case -1274499742:
                        if (str.equals(strA02)) {
                            b2 = -1;
                        } else {
                            b2 = 1;
                        }
                        break;
                    case 3417674:
                        if (str.equals(A02(37, 4, 12))) {
                            b2 = -1;
                        } else {
                            b2 = 0;
                        }
                        break;
                    default:
                        b2 = -1;
                        break;
                }
                switch (b2) {
                    case 0:
                        i2 = 2;
                        break;
                    default:
                        i2 = 1;
                        break;
                }
                strA03 = A02(18, 6, 23);
                str2 = (String) AbstractC1966Vp.A00(c9tA04, strA03);
                switch (str2.hashCode()) {
                    case -1360216880:
                        zEquals = str2.equals(strA03);
                        strArr = A04;
                        if (strArr[2].length() != strArr[6].length()) {
                            String[] strArr7 = A04;
                            strArr7[4] = "1NI";
                            strArr7[5] = "6Dd";
                            if (!zEquals) {
                                b3 = -1;
                            }
                        } else {
                            String[] strArr8 = A04;
                            strArr8[4] = "orq";
                            strArr8[5] = "bmT";
                            if (!zEquals) {
                                b3 = -1;
                            }
                        }
                        switch (b3) {
                            case 0:
                                i3 = 2;
                                break;
                            case 1:
                                i3 = 3;
                                break;
                            default:
                                i3 = 1;
                                break;
                        }
                        return new C2201c4(i3, i2, i);
                    case -905816648:
                        if (str2.equals(A02(48, 6, 75))) {
                            b3 = 1;
                        } else {
                            b3 = -1;
                        }
                        switch (b3) {
                            case 0:
                                i3 = 2;
                                break;
                            case 1:
                                i3 = 3;
                                break;
                            default:
                                i3 = 1;
                                break;
                        }
                        return new C2201c4(i3, i2, i);
                    case 99657:
                        zEquals2 = str2.equals(A02(24, 3, 31));
                        strArr2 = A04;
                        if (strArr2[4].length() == strArr2[5].length()) {
                            A04[7] = "VLiZAShxH4447oVRIDUJnKoJOEqIIq3v";
                            if (zEquals2) {
                                b3 = 0;
                            } else {
                                b3 = -1;
                            }
                            switch (b3) {
                                case 0:
                                    i3 = 2;
                                    break;
                                case 1:
                                    i3 = 3;
                                    break;
                                default:
                                    i3 = 1;
                                    break;
                            }
                            return new C2201c4(i3, i2, i);
                        }
                        throw new RuntimeException();
                    default:
                        b3 = -1;
                        switch (b3) {
                            case 0:
                                i3 = 2;
                                break;
                            case 1:
                                i3 = 3;
                                break;
                            default:
                                i3 = 1;
                                break;
                        }
                        return new C2201c4(i3, i2, i);
                }
                break;
            case 92734940:
                if (str4.equals(A02(3, 5, 120))) {
                    b = 0;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        i = 2;
                        break;
                    case 1:
                        i = -2;
                        break;
                    default:
                        i = 1;
                        break;
                }
                c9tA02 = VX.A02(A08, abstractC14139k);
                if (!c9tA02.isEmpty()) {
                    str3 = (String) c9tA02.iterator().next();
                    switch (str3.hashCode()) {
                        case 3005871:
                            if (!str3.equals(A02(8, 4, 118))) {
                                b4 = -1;
                            }
                            break;
                        case 3387192:
                            if (str3.equals(A02(33, 4, 5))) {
                                b4 = -1;
                            } else {
                                b4 = 0;
                            }
                            break;
                        default:
                            b4 = -1;
                            break;
                    }
                    switch (b4) {
                        case 0:
                            i4 = 0;
                            break;
                        default:
                            i4 = -1;
                            break;
                    }
                    return new C2201c4(i4, 0, i);
                }
                c9tA03 = VX.A02(A05, abstractC14139k);
                c9tA04 = VX.A02(A06, abstractC14139k);
                if (!c9tA03.isEmpty()) {
                }
                strA02 = A02(27, 6, 97);
                str = (String) AbstractC1966Vp.A00(c9tA03, strA02);
                switch (str.hashCode()) {
                    case -1274499742:
                        if (str.equals(strA02)) {
                            b2 = -1;
                        } else {
                            b2 = 1;
                        }
                        break;
                    case 3417674:
                        if (str.equals(A02(37, 4, 12))) {
                            b2 = -1;
                        } else {
                            b2 = 0;
                        }
                        break;
                    default:
                        b2 = -1;
                        break;
                }
                switch (b2) {
                    case 0:
                        i2 = 2;
                        break;
                    default:
                        i2 = 1;
                        break;
                }
                strA03 = A02(18, 6, 23);
                str2 = (String) AbstractC1966Vp.A00(c9tA04, strA03);
                switch (str2.hashCode()) {
                    case -1360216880:
                        zEquals = str2.equals(strA03);
                        strArr = A04;
                        if (strArr[2].length() != strArr[6].length()) {
                            String[] strArr9 = A04;
                            strArr9[4] = "1NI";
                            strArr9[5] = "6Dd";
                            if (!zEquals) {
                                b3 = -1;
                            }
                        } else {
                            String[] strArr10 = A04;
                            strArr10[4] = "orq";
                            strArr10[5] = "bmT";
                            if (!zEquals) {
                                b3 = -1;
                            }
                        }
                        switch (b3) {
                            case 0:
                                i3 = 2;
                                break;
                            case 1:
                                i3 = 3;
                                break;
                            default:
                                i3 = 1;
                                break;
                        }
                        return new C2201c4(i3, i2, i);
                    case -905816648:
                        if (str2.equals(A02(48, 6, 75))) {
                            b3 = 1;
                        } else {
                            b3 = -1;
                        }
                        switch (b3) {
                            case 0:
                                i3 = 2;
                                break;
                            case 1:
                                i3 = 3;
                                break;
                            default:
                                i3 = 1;
                                break;
                        }
                        return new C2201c4(i3, i2, i);
                    case 99657:
                        zEquals2 = str2.equals(A02(24, 3, 31));
                        strArr2 = A04;
                        if (strArr2[4].length() == strArr2[5].length()) {
                            A04[7] = "VLiZAShxH4447oVRIDUJnKoJOEqIIq3v";
                            if (zEquals2) {
                                b3 = 0;
                            } else {
                                b3 = -1;
                            }
                            switch (b3) {
                                case 0:
                                    i3 = 2;
                                    break;
                                case 1:
                                    i3 = 3;
                                    break;
                                default:
                                    i3 = 1;
                                    break;
                            }
                            return new C2201c4(i3, i2, i);
                        }
                        throw new RuntimeException();
                    default:
                        b3 = -1;
                        switch (b3) {
                            case 0:
                                i3 = 2;
                                break;
                            case 1:
                                i3 = 3;
                                break;
                            default:
                                i3 = 1;
                                break;
                        }
                        return new C2201c4(i3, i2, i);
                }
                break;
            default:
                b = -1;
                switch (b) {
                    case 0:
                        i = 2;
                        break;
                    case 1:
                        i = -2;
                        break;
                    default:
                        i = 1;
                        break;
                }
                c9tA02 = VX.A02(A08, abstractC14139k);
                if (!c9tA02.isEmpty()) {
                    str3 = (String) c9tA02.iterator().next();
                    switch (str3.hashCode()) {
                        case 3005871:
                            if (!str3.equals(A02(8, 4, 118))) {
                                b4 = -1;
                            }
                            break;
                        case 3387192:
                            if (str3.equals(A02(33, 4, 5))) {
                                b4 = -1;
                            } else {
                                b4 = 0;
                            }
                            break;
                        default:
                            b4 = -1;
                            break;
                    }
                    switch (b4) {
                        case 0:
                            i4 = 0;
                            break;
                        default:
                            i4 = -1;
                            break;
                    }
                    return new C2201c4(i4, 0, i);
                }
                c9tA03 = VX.A02(A05, abstractC14139k);
                c9tA04 = VX.A02(A06, abstractC14139k);
                if (!c9tA03.isEmpty()) {
                }
                strA02 = A02(27, 6, 97);
                str = (String) AbstractC1966Vp.A00(c9tA03, strA02);
                switch (str.hashCode()) {
                    case -1274499742:
                        if (str.equals(strA02)) {
                            b2 = -1;
                        } else {
                            b2 = 1;
                        }
                        break;
                    case 3417674:
                        if (str.equals(A02(37, 4, 12))) {
                            b2 = -1;
                        } else {
                            b2 = 0;
                        }
                        break;
                    default:
                        b2 = -1;
                        break;
                }
                switch (b2) {
                    case 0:
                        i2 = 2;
                        break;
                    default:
                        i2 = 1;
                        break;
                }
                strA03 = A02(18, 6, 23);
                str2 = (String) AbstractC1966Vp.A00(c9tA04, strA03);
                switch (str2.hashCode()) {
                    case -1360216880:
                        zEquals = str2.equals(strA03);
                        strArr = A04;
                        if (strArr[2].length() != strArr[6].length()) {
                            String[] strArr11 = A04;
                            strArr11[4] = "1NI";
                            strArr11[5] = "6Dd";
                            if (!zEquals) {
                                b3 = -1;
                            }
                        } else {
                            String[] strArr12 = A04;
                            strArr12[4] = "orq";
                            strArr12[5] = "bmT";
                            if (!zEquals) {
                                b3 = -1;
                            }
                        }
                        switch (b3) {
                            case 0:
                                i3 = 2;
                                break;
                            case 1:
                                i3 = 3;
                                break;
                            default:
                                i3 = 1;
                                break;
                        }
                        return new C2201c4(i3, i2, i);
                    case -905816648:
                        if (str2.equals(A02(48, 6, 75))) {
                            b3 = 1;
                        } else {
                            b3 = -1;
                        }
                        switch (b3) {
                            case 0:
                                i3 = 2;
                                break;
                            case 1:
                                i3 = 3;
                                break;
                            default:
                                i3 = 1;
                                break;
                        }
                        return new C2201c4(i3, i2, i);
                    case 99657:
                        zEquals2 = str2.equals(A02(24, 3, 31));
                        strArr2 = A04;
                        if (strArr2[4].length() == strArr2[5].length()) {
                            A04[7] = "VLiZAShxH4447oVRIDUJnKoJOEqIIq3v";
                            if (zEquals2) {
                                b3 = 0;
                            } else {
                                b3 = -1;
                            }
                            switch (b3) {
                                case 0:
                                    i3 = 2;
                                    break;
                                case 1:
                                    i3 = 3;
                                    break;
                                default:
                                    i3 = 1;
                                    break;
                            }
                            return new C2201c4(i3, i2, i);
                        }
                        throw new RuntimeException();
                    default:
                        b3 = -1;
                        switch (b3) {
                            case 0:
                                i3 = 2;
                                break;
                            case 1:
                                i3 = 3;
                                break;
                            default:
                                i3 = 1;
                                break;
                        }
                        return new C2201c4(i3, i2, i);
                }
                break;
        }
    }

    public static C2201c4 A01(String str) {
        if (str == null) {
            return null;
        }
        String strA01 = XC.A01(str.trim());
        if (strA01.isEmpty()) {
            return null;
        }
        return A00(AbstractC14139k.A08(TextUtils.split(strA01, A09)));
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 58);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{110, 65, Ascii.EM, 35, 36, 54, 39, 48, 45, 57, 56, 35, 56, 63, 60, 53, 40, 63, 78, 68, 95, 78, 65, 72, 65, 74, 81, Base64.padSymbol, 50, 55, 55, 62, 63, 81, 80, 81, 90, 89, 70, 83, 88, 95, 69, 68, 67, 89, 84, 85, 2, Ascii.DC4, 2, Ascii.DLE, Ascii.FS, Ascii.DC4};
    }
}
