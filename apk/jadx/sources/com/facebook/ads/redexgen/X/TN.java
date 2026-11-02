package com.facebook.ads.redexgen.X;

import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import com.facebook.ads.androidx.media3.common.ColorInfo;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.services.UnityAdsConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Deprecated
public final class TN {
    public static int A00;
    public static byte[] A01;
    public static String[] A02 = {"8dUGo6F8AMoPuPIm55ZDmNNDBIRvhzvR", "r8zctQxkAXSUMutWv9iWyLU", "iiYAkITwew9vhpibKXbmKCqqQtEguKth", "v6MBTntR43y4vhVK16MgmrBcTKeItHb7", "Mylxl3Yy3nCYa1MNaOECJxZ6OHISgUso", "Iep63ONt8wdwcLogaAiC6rqWmtK2AiQO", "G57BjPFtxLg7y80mHzBy8KrY7exST9bg", "mwLFLeNGNA6y40PB2bE13TMpMx6Uqito"};
    public static final HashMap<TJ, List<C1894Sq>> A03;
    public static final Pattern A04;

    static {
        A0S();
        A04 = Pattern.compile(A0N(1409, 10, 66));
        A03 = new HashMap<>();
        A00 = -1;
    }

    public static int A00() throws TK {
        if (A00 == -1) {
            int iMax = 0;
            C1894Sq c1894SqA0J = A0J(A0N(1756, 9, 123), false, false);
            if (c1894SqA0J != null) {
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrA0V = c1894SqA0J.A0V();
                if (A02[3].charAt(7) != 'R') {
                    throw new RuntimeException();
                }
                String[] strArr = A02;
                strArr[6] = "tkEGHyvt7UQ9r0Pm2IXrMZ4gOuaW9vA9";
                strArr[0] = "qJ6ht2UDbiHYCZHmVIZrLKtn02GC9vsC";
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArrA0V) {
                    iMax = Math.max(A03(codecProfileLevel.level), iMax);
                }
                iMax = Math.max(iMax, N1.A02 >= 21 ? 345600 : 172800);
            }
            A00 = iMax;
        }
        return A00;
    }

    public static int A01(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case 22:
                if (A02[2].charAt(18) == 'r') {
                    throw new RuntimeException();
                }
                String[] strArr = A02;
                strArr[6] = "G72VEvg0byZqgDfmoLnqc6gcDeFRd7JU";
                strArr[0] = "9rYt9JPAGiNoPWwmCzJCxEYPdeoz8MKG";
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    public static int A02(int i) {
        switch (i) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            case 20:
                return 32;
            case 21:
                return 64;
            case 22:
                return 128;
            case 30:
                return 256;
            case 31:
                return 512;
            case 32:
                return 1024;
            case 40:
                return 2048;
            case 41:
                return 4096;
            case 42:
                return 8192;
            case 50:
                return 16384;
            case 51:
                return 32768;
            case 52:
                return 65536;
            default:
                return -1;
        }
    }

    public static int A03(int i) {
        switch (i) {
            case 1:
            case 2:
                return 25344;
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                if (A02[4].charAt(2) != 'l') {
                    throw new RuntimeException();
                }
                A02[3] = "9NTwP7jR1QHHvJZsVMMjIfQzJj7PXppb";
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            case 131072:
            case 262144:
            case 524288:
                return 35651584;
            default:
                return -1;
        }
    }

    public static int A04(int i) {
        switch (i) {
            case 66:
                return 1;
            case 77:
                return 2;
            case 88:
                return 4;
            case 100:
                return 8;
            case 110:
                return 16;
            case 122:
                return 32;
            case 244:
                return 64;
            default:
                return -1;
        }
    }

    public static int A05(int i) {
        switch (i) {
            case 1:
                return 1;
            case 2:
                if (A02[3].charAt(7) != 'R') {
                    throw new RuntimeException();
                }
                A02[3] = "eB8BWvgRCOR56DPi9E8V4RotZF3WcVOb";
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 17:
                return 17;
            case 20:
                return 20;
            case 23:
                return 23;
            case 29:
                return 29;
            case 39:
                return 39;
            case 42:
                return 42;
            default:
                return -1;
        }
    }

    public static int A06(int i) {
        switch (i) {
            case 10:
                return 1;
            case 11:
                return 2;
            case 20:
                return 4;
            case 21:
                return 8;
            case 30:
                return 16;
            case 31:
                return 32;
            case 40:
                return 64;
            case 41:
                return 128;
            case 50:
                return 256;
            case 51:
                return 512;
            case 60:
                return 2048;
            case 61:
                if (A02[2].charAt(18) == 'r') {
                    throw new RuntimeException();
                }
                A02[3] = "oCnZef6RuMlDl4hDjp9YbNpW5t5yAPGg";
                return 4096;
            case 62:
                return 8192;
            default:
                return -1;
        }
    }

    public static int A07(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                String[] strArr = A02;
                if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                    return 2;
                }
                A02[3] = "zjpHGKFRd9AKlJSDPomoSAUO9T5a5LfX";
                return 2;
            case 2:
                String[] strArr2 = A02;
                if (strArr2[5].length() == strArr2[1].length()) {
                    throw new RuntimeException();
                }
                String[] strArr3 = A02;
                strArr3[5] = "lV2izc8g2kw8KhmWtCRKuWOaEoUT3CRn";
                strArr3[1] = "KTznvB6sDbZjnvUopcIGIaZ";
                return 4;
            case 3:
                return 8;
            default:
                return -1;
        }
    }

    public static /* synthetic */ int A08(C1894Sq c1894Sq) {
        String str = c1894Sq.A03;
        if (str.startsWith(A0N(861, 10, 13)) || str.startsWith(A0N(1560, 10, 22))) {
            return 1;
        }
        return (N1.A02 >= 26 || !str.equals(A0N(725, 25, 2))) ? 0 : -1;
    }

    public static /* synthetic */ int A09(C1894Sq c1894Sq) {
        return c1894Sq.A03.startsWith(A0N(861, 10, 13)) ? 1 : 0;
    }

    public static /* synthetic */ int A0A(TM tm, Object obj, Object obj2) {
        return tm.A9Z(obj2) - tm.A9Z(obj);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:13:0x0053  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b0  */
    public static Pair<Integer, Integer> A0B(VC vc) {
        if (vc.A0R == null) {
            return null;
        }
        String[] strArrSplit = vc.A0R.split(A0N(1407, 2, 108));
        if (A0N(1765, 18, 44).equals(vc.A0W)) {
            return A0E(vc.A0R, strArrSplit);
        }
        byte b = 0;
        String str = strArrSplit[0];
        if (A02[2].charAt(18) == 'r') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[5] = "g9rKOWN7zDwbh1XMiJbaCPQJhxpJfftf";
        strArr[1] = "v0Jh6jnorZtCk4QF1Ey6pBz";
        switch (str.hashCode()) {
            case 3004662:
                if (!str.equals(A0N(1545, 4, InterfaceC3669k1.d.b.k))) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 3006243:
                if (!str.equals(A0N(1549, 4, 54))) {
                    b = -1;
                }
                break;
            case 3006244:
                if (!str.equals(A0N(1553, 4, 122))) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 3199032:
                if (A02[7].charAt(9) == 'A') {
                    String[] strArr2 = A02;
                    strArr2[6] = "ba5yFE65KxvqqTGmzEVpP5Ni4EGBmMUY";
                    strArr2[0] = "YbACTLMvpFCSlTLmLPHlmPsy2XSMtJB1";
                    if (!str.equals(A0N(1600, 4, 114))) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                } else {
                    A02[2] = "VO6YVvTiIvgUZEsn7gSa3xNY1khKDZ8p";
                    if (!str.equals(A0N(1600, 4, 51))) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                }
                break;
            case 3214780:
                if (!str.equals(A0N(1604, 4, 67))) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 3356560:
                if (!str.equals(A0N(1625, 4, 91))) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case 3624515:
                if (!str.equals(A0N(1839, 4, 35))) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
            case 1:
                return A0D(vc.A0R, strArrSplit);
            case 2:
                return A0F(vc.A0R, strArrSplit);
            case 3:
            case 4:
                return A0H(vc.A0R, strArrSplit, vc.A0N);
            case 5:
                return A0G(vc.A0R, strArrSplit, vc.A0N);
            case 6:
                return A0C(vc.A0R, strArrSplit);
            default:
                return null;
        }
    }

    public static Pair<Integer, Integer> A0C(String str, String[] strArr) {
        int iA05;
        int length = strArr.length;
        String strA0N = A0N(428, 38, InterfaceC3669k1.d.b.k);
        String strA0N2 = A0N(IronSourceError.ERROR_BN_LOAD_NO_CONFIG, 14, 52);
        if (length != 3) {
            MV.A07(strA0N2, strA0N + str);
            return null;
        }
        try {
            if (A0N(1491, 15, 110).equals(L8.A05(Integer.parseInt(strArr[1], 16))) && (iA05 = A05(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair<>(Integer.valueOf(iA05), 0);
            }
        } catch (NumberFormatException unused) {
            MV.A07(strA0N2, strA0N + str);
        }
        return null;
    }

    public static Pair<Integer, Integer> A0D(String str, String[] strArr) {
        int i;
        int i2;
        int length = strArr.length;
        String strA0N = A0N(307, 37, 42);
        String strA0N2 = A0N(IronSourceError.ERROR_BN_LOAD_NO_CONFIG, 14, 52);
        if (length < 2) {
            MV.A07(strA0N2, strA0N + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i2 = Integer.parseInt(strArr[1].substring(4), 16);
            } else {
                if (strArr.length < 3) {
                    MV.A07(strA0N2, strA0N + str);
                    return null;
                }
                i = Integer.parseInt(strArr[1]);
                i2 = Integer.parseInt(strArr[2]);
            }
            int iA04 = A04(i);
            if (iA04 == -1) {
                MV.A07(strA0N2, A0N(1212, 21, 104) + i);
                return null;
            }
            int iA02 = A02(i2);
            if (iA02 != -1) {
                return new Pair<>(Integer.valueOf(iA04), Integer.valueOf(iA02));
            }
            MV.A07(strA0N2, A0N(1193, 19, 44) + i2);
            return null;
        } catch (NumberFormatException unused) {
            MV.A07(strA0N2, strA0N + str);
            return null;
        }
    }

    public static Pair<Integer, Integer> A0E(String str, String[] strArr) {
        int length = strArr.length;
        String strA0N = A0N(344, 46, 83);
        String strA0N2 = A0N(IronSourceError.ERROR_BN_LOAD_NO_CONFIG, 14, 52);
        if (length < 3) {
            MV.A07(strA0N2, strA0N + str);
            return null;
        }
        Matcher matcher = A04.matcher(strArr[1]);
        if (!matcher.matches()) {
            MV.A07(strA0N2, strA0N + str);
            return null;
        }
        String strGroup = matcher.group(1);
        Integer numA0L = A0L(strGroup);
        if (numA0L == null) {
            MV.A07(strA0N2, A0N(1268, 37, 75) + strGroup);
            return null;
        }
        String str2 = strArr[2];
        if (A02[7].charAt(9) != 'A') {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[5] = "S9zkjqpoyUH9inSfD9kVhS4ney05wWfo";
        strArr2[1] = "9xt422QbI46eLZqNwVxu0MP";
        Integer numA0K = A0K(str2);
        if (numA0K != null) {
            return new Pair<>(numA0L, numA0K);
        }
        MV.A07(strA0N2, A0N(1233, 35, 87) + str2);
        return null;
    }

    public static Pair<Integer, Integer> A0F(String str, String[] strArr) {
        int length = strArr.length;
        String strA0N = A0N(466, 37, 36);
        String strA0N2 = A0N(IronSourceError.ERROR_BN_LOAD_NO_CONFIG, 14, 52);
        if (length < 3) {
            MV.A07(strA0N2, strA0N + str);
            return null;
        }
        try {
            int i = Integer.parseInt(strArr[1]);
            int i2 = Integer.parseInt(strArr[2]);
            int iA07 = A07(i);
            if (iA07 == -1) {
                MV.A07(strA0N2, A0N(1380, 21, 13) + i);
                return null;
            }
            int iA06 = A06(i2);
            if (iA06 != -1) {
                return new Pair<>(Integer.valueOf(iA07), Integer.valueOf(iA06));
            }
            MV.A07(strA0N2, A0N(1361, 19, 25) + i2);
            return null;
        } catch (NumberFormatException unused) {
            MV.A07(strA0N2, strA0N + str);
            return null;
        }
    }

    public static Pair<Integer, Integer> A0G(String str, String[] strArr, ColorInfo colorInfo) {
        int i;
        int length = strArr.length;
        String strA0N = A0N(270, 37, 61);
        String strA0N2 = A0N(IronSourceError.ERROR_BN_LOAD_NO_CONFIG, 14, 52);
        if (length < 4) {
            MV.A07(strA0N2, strA0N + str);
            return null;
        }
        try {
            int i2 = Integer.parseInt(strArr[1]);
            int i3 = Integer.parseInt(strArr[2].substring(0, 2));
            int i4 = Integer.parseInt(strArr[3]);
            if (i2 != 0) {
                MV.A07(strA0N2, A0N(1172, 21, 80) + i2);
                return null;
            }
            if (i4 != 8 && i4 != 10) {
                MV.A07(strA0N2, A0N(1130, 23, 82) + i4);
                return null;
            }
            if (i4 == 8) {
                i = 1;
            } else {
                i = (colorInfo == null || !(colorInfo.A04 != null || colorInfo.A03 == 7 || colorInfo.A03 == 6)) ? 2 : 4096;
            }
            int iA01 = A01(i3);
            if (iA01 != -1) {
                return new Pair<>(Integer.valueOf(i), Integer.valueOf(iA01));
            }
            MV.A07(strA0N2, A0N(1153, 19, 121) + i3);
            return null;
        } catch (NumberFormatException unused) {
            MV.A07(strA0N2, strA0N + str);
            return null;
        }
    }

    public static Pair<Integer, Integer> A0H(String str, String[] strArr, ColorInfo colorInfo) {
        int i;
        int length = strArr.length;
        String strA0N = A0N(390, 38, 37);
        String strA0N2 = A0N(IronSourceError.ERROR_BN_LOAD_NO_CONFIG, 14, 52);
        if (length < 4) {
            MV.A07(strA0N2, strA0N + str);
            return null;
        }
        Matcher matcher = A04.matcher(strArr[1]);
        if (!matcher.matches()) {
            MV.A07(strA0N2, strA0N + str);
            return null;
        }
        String strGroup = matcher.group(1);
        if (A0N(77, 1, 77).equals(strGroup)) {
            i = 1;
        } else {
            if (!A0N(86, 1, 74).equals(strGroup)) {
                MV.A07(strA0N2, A0N(1332, 29, 92) + strGroup);
                return null;
            }
            i = (colorInfo == null || colorInfo.A03 != 6) ? 2 : 4096;
        }
        String str2 = strArr[3];
        Integer numA0M = A0M(str2);
        if (numA0M != null) {
            return new Pair<>(Integer.valueOf(i), numA0M);
        }
        MV.A07(strA0N2, A0N(1305, 27, 22) + str2);
        return null;
    }

    public static C1894Sq A0I() throws TK {
        return A0J(A0N(1506, 9, 17), false, false);
    }

    public static C1894Sq A0J(String str, boolean z, boolean z2) throws TK {
        List<C1894Sq> listA0R = A0R(str, z, z2);
        if (listA0R.isEmpty()) {
            return null;
        }
        return listA0R.get(0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:51:0x0117  */
    /* JADX WARN: Code duplicated, block: B:53:0x011e  */
    /* JADX WARN: Code duplicated, block: B:55:0x0125  */
    /* JADX WARN: Code duplicated, block: B:57:0x012c  */
    /* JADX WARN: Code duplicated, block: B:59:0x0133  */
    /* JADX WARN: Code duplicated, block: B:61:0x013a  */
    /* JADX WARN: Code duplicated, block: B:63:0x014e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:64:0x014f  */
    /* JADX WARN: Code duplicated, block: B:66:0x0157  */
    /* JADX WARN: Code duplicated, block: B:68:0x015e  */
    /* JADX WARN: Code duplicated, block: B:70:0x0165  */
    /* JADX WARN: Code duplicated, block: B:72:0x016a  */
    /* JADX WARN: Code duplicated, block: B:74:0x016f  */
    /* JADX WARN: Code duplicated, block: B:76:0x0174  */
    /* JADX WARN: Code duplicated, block: B:78:0x0179  */
    /* JADX WARN: Code duplicated, block: B:7:0x0010  */
    /* JADX WARN: Code duplicated, block: B:82:0x0195  */
    /* JADX WARN: Code duplicated, block: B:9:0x0014 A[RETURN] */
    public static Integer A0K(String str) {
        byte b;
        String[] strArr;
        if (str == null) {
            return null;
        }
        switch (str.hashCode()) {
            case 1537:
                if (str.equals(A0N(59, 2, 5))) {
                    b = 0;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        if (A02[4].charAt(2) != 'l') {
                            return 64;
                        }
                        A02[3] = "I0dSnu3RcYiUgXcZOTFCd7cKTt97n99I";
                        return 64;
                    case 7:
                        return 128;
                    case 8:
                        strArr = A02;
                        if (strArr[6].charAt(15) == strArr[0].charAt(15)) {
                            A02[4] = "TKlLS193G0RDuo6EKixXlatqbVh9bidO";
                            return 256;
                        }
                        break;
                    case 9:
                        return 512;
                    case 10:
                        return 1024;
                    case 11:
                        return 2048;
                    case 12:
                        return 4096;
                    default:
                        return null;
                }
                throw new RuntimeException();
            case 1538:
                if (str.equals(A0N(61, 2, 69))) {
                    b = 1;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        if (A02[4].charAt(2) != 'l') {
                            return 64;
                        }
                        A02[3] = "I0dSnu3RcYiUgXcZOTFCd7cKTt97n99I";
                        return 64;
                    case 7:
                        return 128;
                    case 8:
                        strArr = A02;
                        if (strArr[6].charAt(15) == strArr[0].charAt(15)) {
                            A02[4] = "TKlLS193G0RDuo6EKixXlatqbVh9bidO";
                            return 256;
                        }
                        break;
                    case 9:
                        return 512;
                    case 10:
                        return 1024;
                    case 11:
                        return 2048;
                    case 12:
                        return 4096;
                    default:
                        return null;
                }
                throw new RuntimeException();
            case 1539:
                if (str.equals(A0N(63, 2, 38))) {
                    b = 2;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        if (A02[4].charAt(2) != 'l') {
                            return 64;
                        }
                        A02[3] = "I0dSnu3RcYiUgXcZOTFCd7cKTt97n99I";
                        return 64;
                    case 7:
                        return 128;
                    case 8:
                        strArr = A02;
                        if (strArr[6].charAt(15) == strArr[0].charAt(15)) {
                            A02[4] = "TKlLS193G0RDuo6EKixXlatqbVh9bidO";
                            return 256;
                        }
                        break;
                    case 9:
                        return 512;
                    case 10:
                        return 1024;
                    case 11:
                        return 2048;
                    case 12:
                        return 4096;
                    default:
                        return null;
                }
                throw new RuntimeException();
            case 1540:
                if (str.equals(A0N(65, 2, 22))) {
                    b = 3;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        if (A02[4].charAt(2) != 'l') {
                            return 64;
                        }
                        A02[3] = "I0dSnu3RcYiUgXcZOTFCd7cKTt97n99I";
                        return 64;
                    case 7:
                        return 128;
                    case 8:
                        strArr = A02;
                        if (strArr[6].charAt(15) == strArr[0].charAt(15)) {
                            A02[4] = "TKlLS193G0RDuo6EKixXlatqbVh9bidO";
                            return 256;
                        }
                        break;
                    case 9:
                        return 512;
                    case 10:
                        return 1024;
                    case 11:
                        return 2048;
                    case 12:
                        return 4096;
                    default:
                        return null;
                }
                throw new RuntimeException();
            case 1541:
                if (str.equals(A0N(67, 2, 123))) {
                    b = 4;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        if (A02[4].charAt(2) != 'l') {
                            return 64;
                        }
                        A02[3] = "I0dSnu3RcYiUgXcZOTFCd7cKTt97n99I";
                        return 64;
                    case 7:
                        return 128;
                    case 8:
                        strArr = A02;
                        if (strArr[6].charAt(15) == strArr[0].charAt(15)) {
                            A02[4] = "TKlLS193G0RDuo6EKixXlatqbVh9bidO";
                            return 256;
                        }
                        break;
                    case 9:
                        return 512;
                    case 10:
                        return 1024;
                    case 11:
                        return 2048;
                    case 12:
                        return 4096;
                    default:
                        return null;
                }
                throw new RuntimeException();
            case 1542:
                if (str.equals(A0N(69, 2, 40))) {
                    b = 5;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        if (A02[4].charAt(2) != 'l') {
                            return 64;
                        }
                        A02[3] = "I0dSnu3RcYiUgXcZOTFCd7cKTt97n99I";
                        return 64;
                    case 7:
                        return 128;
                    case 8:
                        strArr = A02;
                        if (strArr[6].charAt(15) == strArr[0].charAt(15)) {
                            A02[4] = "TKlLS193G0RDuo6EKixXlatqbVh9bidO";
                            return 256;
                        }
                        break;
                    case 9:
                        return 512;
                    case 10:
                        return 1024;
                    case 11:
                        return 2048;
                    case 12:
                        return 4096;
                    default:
                        return null;
                }
                throw new RuntimeException();
            case 1543:
                if (str.equals(A0N(71, 2, 124))) {
                    b = 6;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        if (A02[4].charAt(2) != 'l') {
                            return 64;
                        }
                        A02[3] = "I0dSnu3RcYiUgXcZOTFCd7cKTt97n99I";
                        return 64;
                    case 7:
                        return 128;
                    case 8:
                        strArr = A02;
                        if (strArr[6].charAt(15) == strArr[0].charAt(15)) {
                            A02[4] = "TKlLS193G0RDuo6EKixXlatqbVh9bidO";
                            return 256;
                        }
                        break;
                    case 9:
                        return 512;
                    case 10:
                        return 1024;
                    case 11:
                        return 2048;
                    case 12:
                        return 4096;
                    default:
                        return null;
                }
                throw new RuntimeException();
            case 1544:
                if (str.equals(A0N(73, 2, 89))) {
                    b = 7;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        if (A02[4].charAt(2) != 'l') {
                            return 64;
                        }
                        A02[3] = "I0dSnu3RcYiUgXcZOTFCd7cKTt97n99I";
                        return 64;
                    case 7:
                        return 128;
                    case 8:
                        strArr = A02;
                        if (strArr[6].charAt(15) == strArr[0].charAt(15)) {
                            A02[4] = "TKlLS193G0RDuo6EKixXlatqbVh9bidO";
                            return 256;
                        }
                        break;
                    case 9:
                        return 512;
                    case 10:
                        return 1024;
                    case 11:
                        return 2048;
                    case 12:
                        return 4096;
                    default:
                        return null;
                }
                throw new RuntimeException();
            case 1545:
                if (str.equals(A0N(75, 2, 79))) {
                    b = 8;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        if (A02[4].charAt(2) != 'l') {
                            return 64;
                        }
                        A02[3] = "I0dSnu3RcYiUgXcZOTFCd7cKTt97n99I";
                        return 64;
                    case 7:
                        return 128;
                    case 8:
                        strArr = A02;
                        if (strArr[6].charAt(15) == strArr[0].charAt(15)) {
                            A02[4] = "TKlLS193G0RDuo6EKixXlatqbVh9bidO";
                            return 256;
                        }
                        break;
                    case 9:
                        return 512;
                    case 10:
                        return 1024;
                    case 11:
                        return 2048;
                    case 12:
                        return 4096;
                    default:
                        return null;
                }
                throw new RuntimeException();
            case 1567:
                if (str.equals(A0N(78, 2, 61))) {
                    b = 9;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        if (A02[4].charAt(2) != 'l') {
                            return 64;
                        }
                        A02[3] = "I0dSnu3RcYiUgXcZOTFCd7cKTt97n99I";
                        return 64;
                    case 7:
                        return 128;
                    case 8:
                        strArr = A02;
                        if (strArr[6].charAt(15) == strArr[0].charAt(15)) {
                            A02[4] = "TKlLS193G0RDuo6EKixXlatqbVh9bidO";
                            return 256;
                        }
                        break;
                    case 9:
                        return 512;
                    case 10:
                        return 1024;
                    case 11:
                        return 2048;
                    case 12:
                        return 4096;
                    default:
                        return null;
                }
                throw new RuntimeException();
            case 1568:
                if (str.equals(A0N(80, 2, 99))) {
                    b = 10;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        if (A02[4].charAt(2) != 'l') {
                            return 64;
                        }
                        A02[3] = "I0dSnu3RcYiUgXcZOTFCd7cKTt97n99I";
                        return 64;
                    case 7:
                        return 128;
                    case 8:
                        strArr = A02;
                        if (strArr[6].charAt(15) == strArr[0].charAt(15)) {
                            A02[4] = "TKlLS193G0RDuo6EKixXlatqbVh9bidO";
                            return 256;
                        }
                        break;
                    case 9:
                        return 512;
                    case 10:
                        return 1024;
                    case 11:
                        return 2048;
                    case 12:
                        return 4096;
                    default:
                        return null;
                }
                throw new RuntimeException();
            case 1569:
                String[] strArr2 = A02;
                if (strArr2[5].length() != strArr2[1].length()) {
                    A02[2] = "7NdxXyvdwPVJRftqUY2wxMKlj1n7eRzg";
                    if (str.equals(A0N(82, 2, 37))) {
                        b = Ascii.VT;
                    } else {
                        b = -1;
                    }
                    switch (b) {
                        case 0:
                            return 1;
                        case 1:
                            return 2;
                        case 2:
                            return 4;
                        case 3:
                            return 8;
                        case 4:
                            return 16;
                        case 5:
                            return 32;
                        case 6:
                            if (A02[4].charAt(2) != 'l') {
                                return 64;
                            }
                            A02[3] = "I0dSnu3RcYiUgXcZOTFCd7cKTt97n99I";
                            return 64;
                        case 7:
                            return 128;
                        case 8:
                            strArr = A02;
                            if (strArr[6].charAt(15) == strArr[0].charAt(15)) {
                                A02[4] = "TKlLS193G0RDuo6EKixXlatqbVh9bidO";
                                return 256;
                            }
                            break;
                        case 9:
                            return 512;
                        case 10:
                            return 1024;
                        case 11:
                            return 2048;
                        case 12:
                            return 4096;
                        default:
                            return null;
                    }
                }
                throw new RuntimeException();
            case 1570:
                if (str.equals(A0N(84, 2, 118))) {
                    b = Ascii.FF;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        if (A02[4].charAt(2) != 'l') {
                            return 64;
                        }
                        A02[3] = "I0dSnu3RcYiUgXcZOTFCd7cKTt97n99I";
                        return 64;
                    case 7:
                        return 128;
                    case 8:
                        strArr = A02;
                        if (strArr[6].charAt(15) == strArr[0].charAt(15)) {
                            A02[4] = "TKlLS193G0RDuo6EKixXlatqbVh9bidO";
                            return 256;
                        }
                        break;
                    case 9:
                        return 512;
                    case 10:
                        return 1024;
                    case 11:
                        return 2048;
                    case 12:
                        return 4096;
                    default:
                        return null;
                }
                throw new RuntimeException();
            default:
                b = -1;
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        if (A02[4].charAt(2) != 'l') {
                            return 64;
                        }
                        A02[3] = "I0dSnu3RcYiUgXcZOTFCd7cKTt97n99I";
                        return 64;
                    case 7:
                        return 128;
                    case 8:
                        strArr = A02;
                        if (strArr[6].charAt(15) == strArr[0].charAt(15)) {
                            A02[4] = "TKlLS193G0RDuo6EKixXlatqbVh9bidO";
                            return 256;
                        }
                        break;
                    case 9:
                        return 512;
                    case 10:
                        return 1024;
                    case 11:
                        return 2048;
                    case 12:
                        return 4096;
                    default:
                        return null;
                }
                throw new RuntimeException();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:49:0x011d  */
    /* JADX WARN: Code duplicated, block: B:51:0x0124  */
    /* JADX WARN: Code duplicated, block: B:53:0x012b  */
    /* JADX WARN: Code duplicated, block: B:55:0x013b  */
    /* JADX WARN: Code duplicated, block: B:57:0x0147  */
    /* JADX WARN: Code duplicated, block: B:59:0x0158  */
    /* JADX WARN: Code duplicated, block: B:61:0x015f  */
    /* JADX WARN: Code duplicated, block: B:63:0x0166  */
    /* JADX WARN: Code duplicated, block: B:65:0x016d  */
    /* JADX WARN: Code duplicated, block: B:67:0x0172  */
    /* JADX WARN: Code duplicated, block: B:69:0x0177  */
    /* JADX WARN: Code duplicated, block: B:71:0x017c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0010  */
    /* JADX WARN: Code duplicated, block: B:9:0x0014 A[RETURN] */
    public static Integer A0L(String str) {
        byte b;
        if (str == null) {
            return null;
        }
        switch (str.hashCode()) {
            case 1536:
                if (str.equals(A0N(57, 2, 56))) {
                    b = 0;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        return 64;
                    case 7:
                        if (A02[3].charAt(7) != 'R') {
                            A02[7] = "8S2YWKwdKAKe1CQo9HDo1Hu2DfNxbzAD";
                            return 128;
                        }
                        String[] strArr = A02;
                        strArr[6] = "oFJqwurlYXb39u7mQCp61OqscqIeBaZf";
                        strArr[0] = "2VTONKbeJhtvekFmIoqBhFquTYl001GW";
                        return 128;
                    case 8:
                        return 256;
                    case 9:
                        return 512;
                    default:
                        return null;
                }
            case 1537:
                if (A02[7].charAt(9) == 'A') {
                    String[] strArr2 = A02;
                    strArr2[6] = "24VAuTAi90Z4EtCmrc1fPZHXkeVyN1FF";
                    strArr2[0] = "NjIHQNrKzK0Ns2ImEBzkNMMsijGpPmpK";
                    if (str.equals(A0N(59, 2, 5))) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                    switch (b) {
                        case 0:
                            return 1;
                        case 1:
                            return 2;
                        case 2:
                            return 4;
                        case 3:
                            return 8;
                        case 4:
                            return 16;
                        case 5:
                            return 32;
                        case 6:
                            return 64;
                        case 7:
                            if (A02[3].charAt(7) != 'R') {
                                A02[7] = "8S2YWKwdKAKe1CQo9HDo1Hu2DfNxbzAD";
                                return 128;
                            }
                            String[] strArr3 = A02;
                            strArr3[6] = "oFJqwurlYXb39u7mQCp61OqscqIeBaZf";
                            strArr3[0] = "2VTONKbeJhtvekFmIoqBhFquTYl001GW";
                            return 128;
                        case 8:
                            return 256;
                        case 9:
                            return 512;
                        default:
                            return null;
                    }
                }
                throw new RuntimeException();
            case 1538:
                if (A02[7].charAt(9) == 'A') {
                    A02[7] = "tzHhCV1q6AHsq615yKmCggqrQ7CwzYSp";
                    if (str.equals(A0N(61, 2, 69))) {
                        b = 2;
                    } else {
                        b = -1;
                    }
                    switch (b) {
                        case 0:
                            return 1;
                        case 1:
                            return 2;
                        case 2:
                            return 4;
                        case 3:
                            return 8;
                        case 4:
                            return 16;
                        case 5:
                            return 32;
                        case 6:
                            return 64;
                        case 7:
                            if (A02[3].charAt(7) != 'R') {
                                A02[7] = "8S2YWKwdKAKe1CQo9HDo1Hu2DfNxbzAD";
                                return 128;
                            }
                            String[] strArr4 = A02;
                            strArr4[6] = "oFJqwurlYXb39u7mQCp61OqscqIeBaZf";
                            strArr4[0] = "2VTONKbeJhtvekFmIoqBhFquTYl001GW";
                            return 128;
                        case 8:
                            return 256;
                        case 9:
                            return 512;
                        default:
                            return null;
                    }
                }
                throw new RuntimeException();
            case 1539:
                if (str.equals(A0N(63, 2, 38))) {
                    b = 3;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        return 64;
                    case 7:
                        if (A02[3].charAt(7) != 'R') {
                            A02[7] = "8S2YWKwdKAKe1CQo9HDo1Hu2DfNxbzAD";
                            return 128;
                        }
                        String[] strArr5 = A02;
                        strArr5[6] = "oFJqwurlYXb39u7mQCp61OqscqIeBaZf";
                        strArr5[0] = "2VTONKbeJhtvekFmIoqBhFquTYl001GW";
                        return 128;
                    case 8:
                        return 256;
                    case 9:
                        return 512;
                    default:
                        return null;
                }
            case 1540:
                if (str.equals(A0N(65, 2, 22))) {
                    b = 4;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        return 64;
                    case 7:
                        if (A02[3].charAt(7) != 'R') {
                            A02[7] = "8S2YWKwdKAKe1CQo9HDo1Hu2DfNxbzAD";
                            return 128;
                        }
                        String[] strArr6 = A02;
                        strArr6[6] = "oFJqwurlYXb39u7mQCp61OqscqIeBaZf";
                        strArr6[0] = "2VTONKbeJhtvekFmIoqBhFquTYl001GW";
                        return 128;
                    case 8:
                        return 256;
                    case 9:
                        return 512;
                    default:
                        return null;
                }
            case 1541:
                if (str.equals(A0N(67, 2, 123))) {
                    b = 5;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        return 64;
                    case 7:
                        if (A02[3].charAt(7) != 'R') {
                            A02[7] = "8S2YWKwdKAKe1CQo9HDo1Hu2DfNxbzAD";
                            return 128;
                        }
                        String[] strArr7 = A02;
                        strArr7[6] = "oFJqwurlYXb39u7mQCp61OqscqIeBaZf";
                        strArr7[0] = "2VTONKbeJhtvekFmIoqBhFquTYl001GW";
                        return 128;
                    case 8:
                        return 256;
                    case 9:
                        return 512;
                    default:
                        return null;
                }
            case 1542:
                String[] strArr8 = A02;
                if (strArr8[5].length() != strArr8[1].length()) {
                    String[] strArr9 = A02;
                    strArr9[6] = "AMSiMJ10hGixZEbmMmGVedYDliEnOJen";
                    strArr9[0] = "t71rCTPmCzGvnFImWCDR981xSZqFBmvA";
                    if (str.equals(A0N(69, 2, 40))) {
                        b = 6;
                    } else {
                        b = -1;
                    }
                    switch (b) {
                        case 0:
                            return 1;
                        case 1:
                            return 2;
                        case 2:
                            return 4;
                        case 3:
                            return 8;
                        case 4:
                            return 16;
                        case 5:
                            return 32;
                        case 6:
                            return 64;
                        case 7:
                            if (A02[3].charAt(7) != 'R') {
                                A02[7] = "8S2YWKwdKAKe1CQo9HDo1Hu2DfNxbzAD";
                                return 128;
                            }
                            String[] strArr10 = A02;
                            strArr10[6] = "oFJqwurlYXb39u7mQCp61OqscqIeBaZf";
                            strArr10[0] = "2VTONKbeJhtvekFmIoqBhFquTYl001GW";
                            return 128;
                        case 8:
                            return 256;
                        case 9:
                            return 512;
                        default:
                            return null;
                    }
                }
                throw new RuntimeException();
            case 1543:
                if (str.equals(A0N(71, 2, 124))) {
                    b = 7;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        return 64;
                    case 7:
                        if (A02[3].charAt(7) != 'R') {
                            A02[7] = "8S2YWKwdKAKe1CQo9HDo1Hu2DfNxbzAD";
                            return 128;
                        }
                        String[] strArr11 = A02;
                        strArr11[6] = "oFJqwurlYXb39u7mQCp61OqscqIeBaZf";
                        strArr11[0] = "2VTONKbeJhtvekFmIoqBhFquTYl001GW";
                        return 128;
                    case 8:
                        return 256;
                    case 9:
                        return 512;
                    default:
                        return null;
                }
            case 1544:
                if (str.equals(A0N(73, 2, 89))) {
                    b = 8;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        return 64;
                    case 7:
                        if (A02[3].charAt(7) != 'R') {
                            A02[7] = "8S2YWKwdKAKe1CQo9HDo1Hu2DfNxbzAD";
                            return 128;
                        }
                        String[] strArr12 = A02;
                        strArr12[6] = "oFJqwurlYXb39u7mQCp61OqscqIeBaZf";
                        strArr12[0] = "2VTONKbeJhtvekFmIoqBhFquTYl001GW";
                        return 128;
                    case 8:
                        return 256;
                    case 9:
                        return 512;
                    default:
                        return null;
                }
            case 1545:
                if (str.equals(A0N(75, 2, 79))) {
                    b = 9;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        return 64;
                    case 7:
                        if (A02[3].charAt(7) != 'R') {
                            A02[7] = "8S2YWKwdKAKe1CQo9HDo1Hu2DfNxbzAD";
                            return 128;
                        }
                        String[] strArr13 = A02;
                        strArr13[6] = "oFJqwurlYXb39u7mQCp61OqscqIeBaZf";
                        strArr13[0] = "2VTONKbeJhtvekFmIoqBhFquTYl001GW";
                        return 128;
                    case 8:
                        return 256;
                    case 9:
                        return 512;
                    default:
                        return null;
                }
            default:
                b = -1;
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 2;
                    case 2:
                        return 4;
                    case 3:
                        return 8;
                    case 4:
                        return 16;
                    case 5:
                        return 32;
                    case 6:
                        return 64;
                    case 7:
                        if (A02[3].charAt(7) != 'R') {
                            A02[7] = "8S2YWKwdKAKe1CQo9HDo1Hu2DfNxbzAD";
                            return 128;
                        }
                        String[] strArr14 = A02;
                        strArr14[6] = "oFJqwurlYXb39u7mQCp61OqscqIeBaZf";
                        strArr14[0] = "2VTONKbeJhtvekFmIoqBhFquTYl001GW";
                        return 128;
                    case 8:
                        return 256;
                    case 9:
                        return 512;
                    default:
                        return null;
                }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x0242  */
    /* JADX WARN: Code duplicated, block: B:103:0x0249  */
    /* JADX WARN: Code duplicated, block: B:105:0x0250  */
    /* JADX WARN: Code duplicated, block: B:107:0x0257  */
    /* JADX WARN: Code duplicated, block: B:109:0x025f  */
    /* JADX WARN: Code duplicated, block: B:111:0x0266  */
    /* JADX WARN: Code duplicated, block: B:113:0x026d  */
    /* JADX WARN: Code duplicated, block: B:115:0x0274  */
    /* JADX WARN: Code duplicated, block: B:117:0x027b  */
    /* JADX WARN: Code duplicated, block: B:119:0x0282  */
    /* JADX WARN: Code duplicated, block: B:121:0x0287  */
    /* JADX WARN: Code duplicated, block: B:123:0x028c  */
    /* JADX WARN: Code duplicated, block: B:125:0x0293  */
    /* JADX WARN: Code duplicated, block: B:127:0x029a  */
    /* JADX WARN: Code duplicated, block: B:129:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:131:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:133:0x02af  */
    /* JADX WARN: Code duplicated, block: B:135:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:137:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:139:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:141:0x02da  */
    /* JADX WARN: Code duplicated, block: B:143:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:145:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:147:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:149:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:151:0x0303  */
    /* JADX WARN: Code duplicated, block: B:7:0x0012  */
    /* JADX WARN: Code duplicated, block: B:84:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:97:0x0234  */
    /* JADX WARN: Code duplicated, block: B:99:0x023b  */
    /* JADX WARN: Code duplicated, block: B:9:0x0016 A[RETURN] */
    public static Integer A0M(String str) {
        byte b;
        String[] strArr;
        if (str == null) {
            return null;
        }
        switch (str.hashCode()) {
            case 70821:
                if (str.equals(A0N(253, 3, 47))) {
                    b = Ascii.CR;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 70914:
                if (str.equals(A0N(256, 3, 88))) {
                    b = Ascii.SO;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 70917:
                if (str.equals(A0N(259, 3, 99))) {
                    b = Ascii.SI;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 71007:
                if (A02[7].charAt(9) == 'A') {
                    A02[7] = "aoLJil7LMAHjDju71l5axfeNH0uKvG9t";
                    if (str.equals(A0N(262, 3, 110))) {
                        b = Ascii.DLE;
                    } else {
                        b = -1;
                    }
                } else if (str.equals(A0N(262, 3, 110))) {
                    b = Ascii.DLE;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 71010:
                if (str.equals(A0N(265, 3, 24))) {
                    b = 17;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 74665:
                if (str.equals(A0N(535, 3, 48))) {
                    b = 0;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 74758:
                if (str.equals(A0N(542, 3, 49))) {
                    b = 1;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 74761:
                if (str.equals(A0N(545, 3, 81))) {
                    b = 2;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 74851:
                if (str.equals(A0N(548, 3, 13))) {
                    b = 3;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 74854:
                if (str.equals(A0N(551, 3, 125))) {
                    b = 4;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2193639:
                if (str.equals(A0N(221, 4, 124))) {
                    b = Ascii.DC2;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2193642:
                if (str.equals(A0N(225, 4, 9))) {
                    b = 19;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2193732:
                if (str.equals(A0N(229, 4, 119))) {
                    b = Ascii.DC4;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2193735:
                if (str.equals(A0N(233, 4, 89))) {
                    b = Ascii.NAK;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2193738:
                if (str.equals(A0N(237, 4, 66))) {
                    b = Ascii.SYN;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2193825:
                if (str.equals(A0N(241, 4, 41))) {
                    b = Ascii.ETB;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2193828:
                if (str.equals(A0N(245, 4, 2))) {
                    b = Ascii.CAN;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2193831:
                if (str.equals(A0N(249, 4, 14))) {
                    b = Ascii.EM;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2312803:
                if (str.equals(A0N(TypedValues.PositionType.TYPE_PERCENT_WIDTH, 4, 76))) {
                    b = 5;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2312806:
                if (A02[3].charAt(7) != 'R') {
                    throw new RuntimeException();
                }
                A02[2] = "fzWK9p6YnDlUuc60NPShoW0cux6m0lRC";
                if (str.equals(A0N(TypedValues.PositionType.TYPE_PERCENT_Y, 4, 14))) {
                    b = 6;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2312896:
                if (str.equals(A0N(FrameMetricsAggregator.EVERY_DURATION, 4, 100))) {
                    b = 7;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2312899:
                if (str.equals(A0N(515, 4, 120))) {
                    b = 8;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2312902:
                if (str.equals(A0N(519, 4, 45))) {
                    b = 9;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2312989:
                if (str.equals(A0N(523, 4, 32))) {
                    b = 10;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2312992:
                if (str.equals(A0N(IronSourceError.ERROR_NON_EXISTENT_INSTANCE, 4, 44))) {
                    b = Ascii.VT;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            case 2312995:
                if (str.equals(A0N(531, 4, 82))) {
                    b = Ascii.FF;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
            default:
                b = -1;
                switch (b) {
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 16;
                    case 3:
                        return 64;
                    case 4:
                        strArr = A02;
                        if (strArr[6].charAt(15) != strArr[0].charAt(15)) {
                            A02[3] = "Ykig2JKRpXuYZ4YNzXrojwX7NIQTzNG2";
                            return 256;
                        }
                        A02[3] = "m2iijEbR23EvrfZ6Kv0Tj0ffopLNEGiq";
                        return 256;
                    case 5:
                        return 1024;
                    case 6:
                        return 4096;
                    case 7:
                        return 16384;
                    case 8:
                        return 65536;
                    case 9:
                        return 262144;
                    case 10:
                        return 1048576;
                    case 11:
                        return 4194304;
                    case 12:
                        return 16777216;
                    case 13:
                        return 2;
                    case 14:
                        return 8;
                    case 15:
                        return 32;
                    case 16:
                        return 128;
                    case 17:
                        return 512;
                    case 18:
                        return 2048;
                    case 19:
                        return 8192;
                    case 20:
                        return 32768;
                    case 21:
                        return 131072;
                    case 22:
                        return 524288;
                    case 23:
                        return 2097152;
                    case 24:
                        return 8388608;
                    case 25:
                        return 33554432;
                    default:
                        return null;
                }
        }
    }

    public static String A0N(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 14);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A0O(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals(A0N(1765, 18, 44))) {
            if (A0N(651, 21, 5).equals(str)) {
                return A0N(1806, 12, 124);
            }
            if (A0N(UnityAdsConstants.AdOperations.GET_TOKEN_TIMEOUT_MS, 21, 7).equals(str) || A0N(IronSourceError.ERROR_DO_RV_LOAD_DURING_SHOW, 34, 14).equals(str)) {
                return A0N(1783, 13, 87);
            }
            return null;
        }
        if (str2.equals(A0N(1435, 10, 4)) && A0N(912, 20, 91).equals(str)) {
            return A0N(1515, 15, 126);
        }
        if (str2.equals(A0N(1469, 10, 55)) && A0N(932, 20, 115).equals(str)) {
            return A0N(1530, 15, 78);
        }
        if (str2.equals(A0N(1426, 9, 41)) && A0N(893, 19, 109).equals(str)) {
            return A0N(1479, 12, 50);
        }
        return null;
    }

    public static String A0P(VC vc) {
        if (A0N(1455, 14, 91).equals(vc.A0W)) {
            return A0N(1445, 10, 22);
        }
        String strA0N = A0N(1765, 18, 44);
        if (A02[3].charAt(7) != 'R') {
            throw new RuntimeException();
        }
        A02[2] = "rqInriroazKdRsv5jXjIPAgzbzIN4TC0";
        if (!strA0N.equals(vc.A0W)) {
            return null;
        }
        Pair<Integer, Integer> pairA0B = A0B(vc);
        if (A02[7].charAt(9) != 'A') {
            A02[2] = "NQfq8aQjQWGHe8sFbgE1hG7FQREG1IYe";
            if (pairA0B == null) {
                return null;
            }
        } else {
            A02[7] = "XsFRotiGYAAFSsgEYFWT7BVtqhbOagPk";
            if (pairA0B == null) {
                return null;
            }
        }
        int iIntValue = ((Integer) pairA0B.first).intValue();
        if (A02[2].charAt(18) == 'r') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[5] = "iRih6KkEaMp7CFZGb37GmG26CbrMhDzO";
        strArr[1] = "UeJjFOHTtO0f00JDb1ilo8Z";
        if (iIntValue == 16 || iIntValue == 256) {
            return A0N(1796, 10, 15);
        }
        if (iIntValue != 512) {
            return null;
        }
        if (A02[2].charAt(18) == 'r') {
            return A0N(1756, 9, 123);
        }
        String[] strArr2 = A02;
        strArr2[5] = "vIlxmHBbHwVyrZx4UCFLkGU4tMJeC6xE";
        strArr2[1] = "wIzFQwHa4Wsc07pp9aeXx5i";
        return A0N(1756, 9, 123);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x00e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x012c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:111:0x01c8 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:55:0x011e  */
    /* JADX WARN: Code duplicated, block: B:59:0x0132  */
    /* JADX WARN: Code duplicated, block: B:61:0x0140 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:75:0x018b A[Catch: Exception -> 0x020a, TRY_ENTER, TryCatch #3 {Exception -> 0x020a, blocks: (B:3:0x0014, B:5:0x002a, B:8:0x0035, B:11:0x0040, B:72:0x017b, B:75:0x018b, B:77:0x0191, B:80:0x01c8, B:81:0x0202), top: B:94:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x01be A[LOOP:0: B:4:0x0028->B:78:0x01be, LOOP_END] */
    /*  JADX ERROR: JadxRuntimeException in pass: ProcessVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Method arg registers not loaded: com.facebook.ads.redexgen.X.TK.<init>(java.lang.Throwable, com.facebook.ads.redexgen.X.TI):void, class status: GENERATED_AND_UNLOADED
        	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:309)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isArgUnused(ProcessVariables.java:146)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.lambda$isVarUnused$0(ProcessVariables.java:131)
        	at jadx.core.utils.ListUtils.allMatch(ListUtils.java:224)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isVarUnused(ProcessVariables.java:131)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.processBlock(ProcessVariables.java:82)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:93)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.removeUnusedResults(ProcessVariables.java:73)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.visit(ProcessVariables.java:48)
        */
    public static java.util.ArrayList<com.facebook.ads.redexgen.X.C1894Sq> A0Q(com.facebook.ads.redexgen.X.TJ r23, com.facebook.ads.redexgen.X.TL r24) throws com.facebook.ads.redexgen.X.TK {
        /*
            Method dump skipped, instruction units count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.TN.A0Q(com.facebook.ads.redexgen.X.TJ, com.facebook.ads.redexgen.X.TL):java.util.ArrayList");
    }

    public static synchronized List<C1894Sq> A0R(String str, boolean z, boolean z2) throws TK {
        TJ tj = new TJ(str, z, z2);
        List<C1894Sq> list = A03.get(tj);
        if (list != null) {
            return list;
        }
        ArrayList<C1894Sq> arrayListA0Q = A0Q(tj, N1.A02 >= 21 ? new S6(z, z2) : new S7());
        if (z && arrayListA0Q.isEmpty() && 21 <= N1.A02 && N1.A02 <= 23) {
            arrayListA0Q = A0Q(tj, new S7());
            if (!arrayListA0Q.isEmpty()) {
                MV.A07(A0N(IronSourceError.ERROR_BN_LOAD_NO_CONFIG, 14, 52), A0N(564, 51, 1) + str + A0N(34, 12, 2) + arrayListA0Q.get(0).A03);
            }
        }
        A0T(str, arrayListA0Q);
        AbstractC14149l abstractC14149lA05 = AbstractC14149l.A05(arrayListA0Q);
        A03.put(tj, abstractC14149lA05);
        return abstractC14149lA05;
    }

    public static void A0S() {
        A01 = new byte[]{125, -123, 69, 77, -117, -122, -114, -111, -118, -119, 69, -103, -108, 69, -106, -102, -118, -105, -98, 69, -120, -122, -107, -122, -121, -114, -111, -114, -103, -114, -118, -104, 78, 124, 62, 48, 81, -125, -125, -123, 125, 121, 126, 119, 74, 48, -106, -37, -51, -53, -35, -38, -51, 91, -96, -92, 91, 118, 118, 67, 68, -125, -123, 100, 103, 84, 88, -71, -66, 102, 108, -70, -63, -105, -97, -115, -106, -116, 124, 123, -94, -94, 100, 101, -75, -73, -118, -80, -84, -80, -49, -65, -51, -51, -49, -48, -15, -17, -5, -16, -15, -2, -108, -126, -122, -127, -123, 92, 74, 78, 73, 78, -77, -95, -90, -96, -92, -58, -76, -71, -77, -72, 94, 81, 81, 75, 77, 127, 114, 114, 108, 111, 104, 91, 91, 85, 91, -114, -127, -127, 124, -127, -74, -68, -61, -76, -76, -74, -73, -40, -42, -30, -41, -40, -27, -60, -54, -47, -62, -50, -45, -49, -61, -59, -26, -28, -16, -27, -26, -13, 100, 106, 113, 110, 113, 84, 101, -122, -124, -112, -123, -122, -109, 91, 97, 104, 110, -121, -118, 122, -127, -117, 92, 125, 123, -121, 124, 125, -118, 90, 117, 125, -128, 121, 120, 52, -120, -125, 52, -123, -119, 121, -122, -115, 52, 119, -125, 120, 121, 119, 52, -46, -69, -68, -70, 95, 72, 73, 74, -51, -74, -70, -75, -81, -104, -100, -102, -104, -127, -123, -122, 127, 104, 111, 103, 88, 65, 72, 67, 100, 77, 84, 82, -123, 112, 109, -82, -100, -106, -71, -89, -92, -60, -75, -84, 110, 95, 89, -90, -85, -108, -78, -71, -70, -67, -76, -71, -78, 107, -72, -84, -73, -79, -70, -67, -72, -80, -81, 107, -116, -95, 124, 107, -82, -70, -81, -80, -82, 107, -66, -65, -67, -76, -71, -78, -123, 107, -127, -97, -90, -89, -86, -95, -90, -97, 88, -91, -103, -92, -98, -89, -86, -91, -99, -100, 88, 121, -114, 123, 88, -101, -89, -100, -99, -101, 88, -85, -84, -86, -95, -90, -97, 114, 88, -86, -56, -49, -48, -45, -54, -49, -56, -127, -50, -62, -51, -57, -48, -45, -50, -58, -59, -127, -91, -48, -51, -61, -38, -127, -73, -54, -44, -54, -48, -49, -127, -60, -48, -59, -58, -60, -127, -44, -43, -45, -54, -49, -56, -101, -127, 124, -102, -95, -94, -91, -100, -95, -102, 83, -96, -108, -97, -103, -94, -91, -96, -104, -105, 83, 123, 120, -119, 118, 83, -106, -94, -105, -104, -106, 83, -90, -89, -91, -100, -95, -102, 109, 83, -56, -26, -19, -18, -15, -24, -19, -26, -97, -20, -32, -21, -27, -18, -15, -20, -28, -29, -97, -52, -49, -77, -64, -97, -30, -18, -29, -28, -30, -97, -14, -13, -15, -24, -19, -26, -71, -97, 123, -103, -96, -95, -92, -101, -96, -103, 82, -97, -109, -98, -104, -95, -92, -97, -105, -106, 82, -120, -126, 107, 82, -107, -95, -106, -105, -107, 82, -91, -90, -92, -101, -96, -103, 108, 82, -90, -117, -116, -118, 104, 77, 78, 79, -66, -93, -89, -94, -46, -73, -69, -71, -121, 108, 112, 113, 122, 95, 102, 94, -122, 107, 114, 109, -84, -111, -104, -106, -118, 113, 110, 124, 99, 102, -104, -117, 117, 111, -85, -107, -110, 103, 84, 75, -41, -60, -66, 101, 104, 75, 92, 125, 123, -121, 124, 125, -118, 92, 116, 115, 120, 112, 82, 126, 115, 116, 114, 91, 120, -126, -125, 47, 80, 95, 88, 47, 115, 120, 115, 125, 54, -125, 47, 123, 120, -126, -125, 47, -126, 116, 114, -124, -127, 116, 47, 115, 116, 114, 126, 115, 116, -127, 47, 117, 126, -127, 73, 47, -113, -89, -90, -85, -93, -123, -79, -90, -89, -91, -105, -74, -85, -82, 117, 115, 126, 84, 107, -98, -97, -108, -107, -103, 84, 103, 103, 105, 84, 106, -117, -119, -107, -118, -117, -104, 98, 96, 107, 65, 96, 102, 65, 91, 88, 105, 86, 87, 105, 65, 87, 120, 118, -126, 119, 120, -123, -85, -87, -76, -118, -87, -80, -89, -118, -99, -79, -96, -91, -85, -118, -96, -95, -97, -85, -96, -95, -82, -118, -99, -99, -97, 123, 121, -124, 90, 121, -128, 119, 90, 109, -127, 112, 117, 123, 90, 112, 113, 111, 123, 112, 113, 126, 90, 112, 127, 124, 109, 111, 95, 95, 93, 104, 62, 93, 100, 91, 62, 81, 101, 84, 89, 95, 62, 84, 85, 83, 95, 84, 85, 98, 62, 98, 81, 103, 100, 98, 109, 67, 103, 105, 96, 67, -117, 126, 121, 122, -124, 67, 121, 122, 120, -124, 121, 122, -121, -103, -105, -94, 120, -99, -113, -115, 120, -105, -102, 125, 120, -114, -81, -83, -71, -82, -81, -68, -116, -118, -107, 107, -112, -126, -128, 107, -98, -98, -96, 107, -95, -94, -96, -57, -59, -48, -90, -53, -67, -69, -90, -27, -24, -85, -90, -36, -35, -37, -116, -118, -107, 107, -112, -126, -128, 107, -77, -83, 117, 107, -95, -94, -96, -41, -43, -32, -74, -22, -6, -21, -11, -74, -23, -3, -20, -15, -9, -74, -11, -8, -69, -74, -20, -19, -21, -9, -20, -19, -6, 106, 104, 115, 73, -126, -118, -118, -126, -121, -128, -100, -102, -91, 123, -76, -68, -68, -76, -71, -78, 123, -65, -82, -60, 123, -79, -78, -80, -68, -79, -78, -65, -54, -56, -45, -87, -25, -30, -32, -87, -36, -34, -82, -87, -33, -32, -34, -22, -33, -32, -19, -72, -74, -63, -105, -43, -48, -50, -105, -54, -43, -54, -52, -105, -51, -50, -52, -40, -51, -50, -37, -48, -50, -39, -81, -19, -24, -26, -81, -25, -19, -30, -28, -81, -27, -26, -28, -16, -27, -26, -13, -60, -62, -51, -93, -26, -40, -28, -30, -93, -42, -22, -39, -34, -28, -93, -39, -38, -40, -28, -39, -38, -25, -93, -42, -42, -40, -124, -126, -115, 99, -90, -104, -92, -94, 99, -106, -86, -103, -98, -92, 99, -103, -102, -104, -92, -103, -102, -89, 
        99, -94, -91, 104, -79, -81, -70, -112, -45, -59, -47, -49, -112, -40, -53, -58, -57, -47, -112, -58, -57, -59, -47, -58, -57, -44, -112, -40, -46, -102, -57, -59, -48, -90, -23, -20, -31, -90, -39, -19, -36, -31, -25, -90, -36, -35, -37, -25, -36, -35, -22, -90, -34, -28, -39, -37, 107, 105, 116, 74, -114, -127, 125, -120, -112, -127, -121, 74, -110, -123, -128, -127, -117, 74, -128, -127, 127, -117, -128, -127, -114, 74, -112, -111, -118, -118, -127, -120, -127, -128, 102, 77, -108, -124, 110, 113, 117, -120, -111, -127, 107, 110, 115, -123, -44, -60, -41, -76, -78, 115, 111, 77, 80, 82, 101, -38, -14, -16, -9, -9, -16, -11, -18, -89, -22, -10, -21, -20, -22, -89, -75, -50, -53, -50, -49, -41, -50, -128, -95, -74, -111, -128, -62, -55, -44, -128, -60, -59, -48, -44, -56, -102, -128, -36, -11, -14, -11, -10, -2, -11, -89, -56, -35, -72, -89, -13, -20, -3, -20, -13, -63, -89, -77, -52, -55, -52, -51, -43, -52, 126, -97, -76, -113, 126, -50, -48, -51, -60, -57, -54, -61, -104, 126, -113, -88, -91, -88, -87, -79, -88, 90, 123, -112, 125, 90, -90, -97, -80, -97, -90, 116, 90, -53, -28, -31, -28, -27, -19, -28, -106, -73, -52, -71, -106, -26, -24, -27, -36, -33, -30, -37, -80, -106, -70, -45, -48, -45, -44, -36, -45, -123, -87, -44, -47, -57, -34, -123, -69, -50, -40, -50, -44, -45, -123, -47, -54, -37, -54, -47, -123, -40, -39, -41, -50, -45, -52, -97, -123, -82, -57, -60, -57, -56, -48, -57, 121, -99, -56, -59, -69, -46, 121, -81, -62, -52, -62, -56, -57, 121, -55, -53, -56, -65, -62, -59, -66, 121, -52, -51, -53, -62, -57, -64, -109, 121, 121, -110, -113, -110, -109, -101, -110, 68, 108, 105, 122, 103, 68, -112, -119, -102, -119, -112, 68, -105, -104, -106, -115, -110, -117, 94, 68, -65, -40, -43, -40, -39, -31, -40, -118, -78, -81, -64, -83, -118, -38, -36, -39, -48, -45, -42, -49, -118, -35, -34, -36, -45, -40, -47, -92, -118, 124, -107, -110, -107, -106, -98, -107, 71, 125, 119, 96, 71, -109, -116, -99, -116, -109, 97, 71, 112, -119, -122, -119, -118, -110, -119, 59, 113, 107, 84, 59, -117, -115, -118, -127, -124, -121, -128, 85, 59, -45, -28, -36, -22, -24, -28, -42, -88, -82, -84, -108, -113, 120, -84, -76, 123, 121, 116, -46, -88, -95, -31, -14, -29, -82, -104, -84, -101, -96, -90, 102, -104, -102, 106, 115, -121, 118, 123, -127, 65, 115, 126, 115, 117, -123, -103, -120, -115, -109, 83, -119, -123, -121, 87, -54, -34, -51, -46, -40, -104, -50, -54, -52, -100, -106, -45, -40, -52, -90, -70, -87, -82, -76, 116, -85, -79, -90, -88, -95, -75, -92, -87, -81, 111, -84, -89, 109, -95, -93, 115, -35, -15, -32, -27, -21, -85, -23, -20, -80, -35, -87, -24, -35, -16, -23, -128, -108, -125, -120, -114, 78, -111, -128, -106, -19, 1, -16, -11, -5, -69, 4, -71, -8, -13, -71, -19, -8, -19, -17, -67, -47, -64, -59, -53, -117, -44, -119, -56, -61, -119, -62, -56, -67, -65, -32, -11, -81, -80, -91, -70, -89, 117, -23, -2, -21, -70, -47, -96, -100, -121, 86, 82, -123, -110, -120, -106, -109, -115, -120, -74, -123, -127, -76, -63, -73, -59, -62, -68, -73, -127, -86, 121, 117, -82, -74, -74, -82, -77, -84, 117, -80, 126, -95, -87, -75, -78, -22, -24, -24, -24, -27, -10, -79, -71, -57, -76, -126, -19, -23, -17, -9, -24, -114, -126, -109, -118, -113, -122, -115, -107, -122, -126, -107, -107, -42, -39, -99, -54, -64, -66, -55, 127, -6, -8, 3, -71, -15, -15, -8, -5, -16, -14, -71, -88, -90, -79, 103, -96, -88, -88, -96, -91, -98, 103, -68, -70, -59, 123, -66, -80, -68, -70, 123, -61, -74, -79, -78, -68, 123, -79, -78, -80, -68, -79, -78, -65, 123, -75, -78, -61, -80, -64, -60, -61, -79, -78, -80, -96, -98, -87, 95, -92, -106, -108, 95, -119, -117, -120, -115, -120, -114, -112, 126, -118, -112, -110, -117, -124, -104, -122, -109, -103, -108, -104, -34, -48, -50, -32, -35, -48, -104, -37, -41, -52, -28, -51, -52, -50, -42, -76, -90, -77, -77, -94, -81, -80, -94, 94, -11, -10, -17, -17, -26, -19, -26, -27, -82, -15, -19, -30, -6, -29, -30, -28, -20, -1, -14, -19, -18, -8, -72, -22, -1, -20, -80, -93, -98, -97, -87, 105, -98, -87, -90, -100, -77, 103, -80, -93, -83, -93, -87, -88, -37, -50, -55, -54, -44, -108, -55, -37, -60, -51, -54, -37, -56, -109, -122, -127, -126, -116, 76, -123, -126, -109, -128, 0, -13, -18, -17, -7, -71, -14, -17, 0, -19, -18, 0, -106, -119, -116, -116, -123, -124, 119, 122, 122, 115, 113, SignedBytes.MAX_POWER_OF_TWO, -107, -120, -117, -117, -124, -113, -117, -108, -110, -89, -95, 97, 106, 7, -14, -5, -7, 1, -14, -96, -117, -104, -107, -116, -110, -102, -117, 5, -16, -3, -6, -9, -1, -16};
    }

    public static void A0T(String str, List<C1894Sq> list) {
        if (A0N(1506, 9, 17).equals(str)) {
            if (N1.A02 < 26 && N1.A03.equals(A0N(1090, 2, 6)) && list.size() == 1 && list.get(0).A03.equals(A0N(725, 25, 2))) {
                list.add(C1894Sq.A02(A0N(871, 22, 63), A0N(1506, 9, 17), A0N(1506, 9, 17), null, false, true, false, false, false));
            }
            A0U(list, new TM() { // from class: com.facebook.ads.redexgen.X.S9
                @Override // com.facebook.ads.redexgen.X.TM
                public final int A9Z(Object obj) {
                    return TN.A08((C1894Sq) obj);
                }
            });
        }
        if (N1.A02 < 21 && list.size() > 1) {
            String str2 = list.get(0).A03;
            if (A0N(805, 15, kotlin.fh.g1).equals(str2) || A0N(771, 19, 60).equals(str2) || A0N(835, 26, 122).equals(str2)) {
                A0U(list, new TM() { // from class: com.facebook.ads.redexgen.X.S8
                    @Override // com.facebook.ads.redexgen.X.TM
                    public final int A9Z(Object obj) {
                        return TN.A09((C1894Sq) obj);
                    }
                });
            }
        }
        if (N1.A02 >= 32 || list.size() <= 1) {
            return;
        }
        if (A0N(IronSourceError.ERROR_RV_LOAD_FAIL_UNEXPECTED, 26, kotlin.fh.g1).equals(list.get(0).A03)) {
            list.add(list.remove(0));
        }
    }

    public static <T> void A0U(List<T> list, final TM<T> tm) {
        Collections.sort(list, new Comparator() { // from class: com.facebook.ads.redexgen.X.TH
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return TN.A0A(tm, obj, obj2);
            }
        });
    }

    public static boolean A0V(MediaCodecInfo mediaCodecInfo) {
        return N1.A02 >= 29 && A0W(mediaCodecInfo);
    }

    public static boolean A0W(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    public static boolean A0X(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    public static boolean A0Y(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    public static boolean A0Z(MediaCodecInfo mediaCodecInfo) {
        if (N1.A02 >= 29) {
            return A0a(mediaCodecInfo);
        }
        String strA01 = XC.A01(mediaCodecInfo.getName());
        return (strA01.startsWith(A0N(1644, 11, 43)) || strA01.startsWith(A0N(1570, 11, 69)) || strA01.startsWith(A0N(1581, 10, 57))) ? false : true;
    }

    public static boolean A0a(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }

    public static boolean A0b(MediaCodecInfo mediaCodecInfo, String str) {
        return N1.A02 >= 29 ? A0X(mediaCodecInfo) : !A0c(mediaCodecInfo, str);
    }

    public static boolean A0c(MediaCodecInfo mediaCodecInfo, String str) {
        if (N1.A02 >= 29) {
            return A0Y(mediaCodecInfo);
        }
        if (L8.A0C(str)) {
            return true;
        }
        String strA01 = XC.A01(mediaCodecInfo.getName());
        boolean zStartsWith = strA01.startsWith(A0N(1422, 4, 114));
        if (A02[4].charAt(2) == 'l') {
            String[] strArr = A02;
            strArr[6] = "kPKQnTipPTqOrKfmBaU8B0RizfdUv9N2";
            strArr[0] = "yPiEXPzK2jm7ufpmDtWHR21tDFVHIGIt";
            if (zStartsWith) {
                return false;
            }
            if (A02[4].charAt(2) != 'l') {
                String[] strArr2 = A02;
                strArr2[5] = "T1Vmzi3QSMeCtN55oXwOzx8sVY2YMDkl";
                strArr2[1] = "YfLEJN30HrAZTn6s3cLSURc";
                if (strA01.startsWith(A0N(1644, 11, 40))) {
                    return true;
                }
            } else {
                A02[3] = "UOJS2AFRQSbQzLO8G4M2TGgqeJJyfnLV";
                if (strA01.startsWith(A0N(1644, 11, 43))) {
                    return true;
                }
            }
            if (strA01.startsWith(A0N(1633, 11, 125))) {
                return true;
            }
            String[] strArr3 = A02;
            if (strArr3[5].length() != strArr3[1].length()) {
                A02[7] = "acLj2MZZzAWrC0mXSbFvBgGe7y7u70QG";
                if ((strA01.startsWith(A0N(1688, 8, 35)) && strA01.contains(A0N(53, 4, 31))) || strA01.equals(A0N(1655, 33, 63)) || strA01.startsWith(A0N(1570, 11, 69)) || strA01.startsWith(A0N(1581, 10, 57))) {
                    return true;
                }
                return (strA01.startsWith(A0N(1629, 4, 67)) || strA01.startsWith(A0N(1557, 3, 96))) ? false : true;
            }
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:107:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:109:0x0308  */
    /* JADX WARN: Code duplicated, block: B:111:0x0319  */
    /* JADX WARN: Code duplicated, block: B:113:0x032a  */
    /* JADX WARN: Code duplicated, block: B:139:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:141:0x03e5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:142:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:82:0x0236  */
    /* JADX WARN: Code duplicated, block: B:98:0x02a6  */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0339, code lost:
    
        if (A0N(1104, 5, 115).equals(com.facebook.ads.redexgen.X.N1.A03) != false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c7, code lost:
    
        if (com.facebook.ads.redexgen.X.N1.A03.startsWith(A0N(268, 2, 80)) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01c5, code lost:
    
        if (A0N(1109, 6, 18).equals(com.facebook.ads.redexgen.X.N1.A03) != false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0245, code lost:
    
        if (A0N(117, 5, 117).equals(com.facebook.ads.redexgen.X.N1.A03) != false) goto L84;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean A0d(android.media.MediaCodecInfo r8, java.lang.String r9, boolean r10, java.lang.String r11) {
        /*
            Method dump skipped, instruction units count: 1073
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.TN.A0d(android.media.MediaCodecInfo, java.lang.String, boolean, java.lang.String):boolean");
    }
}
