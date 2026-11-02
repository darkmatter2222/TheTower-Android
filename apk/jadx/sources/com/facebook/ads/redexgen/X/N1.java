package com.facebook.ads.redexgen.X;

import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import com.unity3d.mediation.LevelPlayAdError;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class N1 {
    public static byte[] A00;
    public static String[] A01 = {"ftnJo", "BynIpPAUAWNC9vNvoGThiUa", "hBNCZiQ8pPYwFmFGGwUpo3kbD1DIJkte", "CFFBIyqcTfOPsOJkY34yk7xBRpee2llJ", "WyKvmg", "0OoP7F8ypt8wKb3f2EMp4cxc0Uhq7YEe", "cQVi1nKw8fYdEukIjOECqxoouxAZ5vMw", "WbqCp6jhj9T332ydBe"};
    public static final int A02;
    public static final String A03;
    public static final String A04;
    public static final String A05;
    public static final String A06;
    public static final byte[] A07;
    public static final Pattern A08;
    public static final Pattern A09;
    public static final Pattern A0A;
    public static final Pattern A0B;
    public static final int[] A0C;
    public static final int[] A0D;

    static {
        A0v();
        A02 = Build.VERSION.SDK_INT;
        A03 = Build.DEVICE;
        A05 = Build.MANUFACTURER;
        A06 = Build.MODEL;
        StringBuilder sbAppend = new StringBuilder().append(A03);
        String strA0i = A0i(166, 2, 71);
        A04 = sbAppend.append(strA0i).append(A06).append(strA0i).append(A05).append(strA0i).append(A02).toString();
        A07 = new byte[0];
        A0A = Pattern.compile(A0i(68, 95, 101));
        A0B = Pattern.compile(A0i(320, 84, 67));
        A08 = Pattern.compile(A0i(16, 17, 46));
        A09 = Pattern.compile(A0i(33, 35, 33), 2);
        A0C = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        A0D = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, InterfaceC3669k1.d.b.j, 119, 126, 121, 108, kotlin.fh.h1, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, 202, InterfaceC3669k1.c.b.f, 144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, InterfaceC3669k1.c.b.g, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, ModuleDescriptor.MODULE_VERSION, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, InterfaceC3669k1.c.b.h, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, InterfaceC3669k1.d.b.k, 120, 127, kotlin.fh.g1, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, AdSize.WIDE_SKYSCRAPER_WIDTH, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, 222, 217, 208, 215, 194, 197, 204, 203, 230, 225, 232, 239, 250, 253, 244, 243};
    }

    public static float A00(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    public static int A01(int i) {
        switch (i) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return 204;
            case 5:
                return 220;
            case 6:
                return 252;
            case 7:
                return 1276;
            case 8:
                return (A02 < 23 && A02 < 21) ? 0 : 6396;
            case 9:
            case 10:
            case 11:
            default:
                return 0;
            case 12:
                return A02 >= 32 ? 743676 : 0;
        }
    }

    public static int A02(int i) {
        switch (i) {
            case 2:
            case 4:
            case 7:
            case 16:
            case 18:
                return 6005;
            case 3:
            case 5:
            case 6:
            case 9:
            case 11:
            case 12:
            case 13:
            case 14:
            case 23:
            default:
                return 6006;
            case 8:
            case 15:
                return AdError.AD_ASSETS_UNSUPPORTED_TYPE_ERROR_CODE;
            case 10:
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                if (A01[0].length() != 5) {
                    throw new RuntimeException();
                }
                String[] strArr = A01;
                strArr[6] = "AduuIcDI3CffM3budxLbGOKrOabw9jZM";
                strArr[2] = "yrMjrPGNcPCwwzmlUu1PQIlrttgbg4ML";
                return 6004;
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
                return AdError.ICONVIEW_MISSING_ERROR_CODE;
        }
    }

    public static int A03(int i) {
        switch (i) {
            case 8:
                return 3;
            case 16:
                return 2;
            case 24:
                return 536870912;
            case 32:
                return 805306368;
            default:
                if (A01[1].length() != 23) {
                    throw new RuntimeException();
                }
                String[] strArr = A01;
                strArr[6] = "Mh3VTlDikinCdh86IfpmIik7a4I52LRL";
                strArr[2] = "8PSwQythrgPqMLvamE7YklspZb2tPoE0";
                return 0;
        }
    }

    public static int A04(int i) {
        switch (i) {
            case 1:
            case 12:
            case 14:
                return 3;
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
            default:
                return 3;
            case 13:
                String[] strArr = A01;
                if (strArr[5].charAt(22) != strArr[3].charAt(22)) {
                    throw new RuntimeException();
                }
                A01[1] = "Q1JFhLiK0gDjVnYZIaoXwHI";
                return 1;
        }
    }

    public static int A05(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    public static int A06(int i, int i2) {
        switch (i) {
            case 2:
            case 268435456:
                return i2 * 2;
            case 3:
                return i2;
            case 4:
            case 805306368:
                return i2 * 4;
            case 536870912:
                return i2 * 3;
            default:
                throw new IllegalArgumentException();
        }
    }

    public static int A07(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    public static int A08(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    public static int A09(Context context, String str, boolean z) {
        return (A02 < 29 || context.getApplicationContext().getApplicationInfo().targetSdkVersion < 29) ? 1 : 5;
    }

    public static int A0A(Uri uri) {
        int iA0E;
        String scheme = uri.getScheme();
        if (scheme != null && XC.A03(A0i(644, 4, 6), scheme)) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int iLastIndexOf = lastPathSegment.lastIndexOf(46);
        if (iLastIndexOf >= 0 && (iA0E = A0E(lastPathSegment.substring(iLastIndexOf + 1))) != 4) {
            return iA0E;
        }
        Matcher matcher = A09.matcher((CharSequence) AbstractC1722Ln.A01(uri.getPath()));
        if (!matcher.matches()) {
            return 4;
        }
        String strGroup = matcher.group(2);
        if (strGroup == null) {
            return 1;
        }
        String[] strArr = A01;
        if (strArr[6].charAt(24) == strArr[2].charAt(24)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[5] = "vt9nzqRqbYOZnTbDpNcNBsxU2qzn4ZXI";
        strArr2[3] = "kzzWq8blLLASsracN65mGfxWPTxDMvzO";
        if (strGroup.contains(A0i(608, 19, 14))) {
            return 0;
        }
        return strGroup.contains(A0i(592, 16, kotlin.fh.h1)) ? 2 : 1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x002c  */
    public static int A0B(Uri uri, String str) {
        byte b;
        if (str == null) {
            return A0A(uri);
        }
        int iHashCode = str.hashCode();
        if (A01[1].length() != 23) {
            throw new RuntimeException();
        }
        A01[1] = "iQgCl2ZJ955S3US5WhZgCR8";
        switch (iHashCode) {
            case -979127466:
                if (!str.equals(A0i(510, 21, 87))) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case -156749520:
                if (!str.equals(A0i(483, 27, 100))) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 64194685:
                if (!str.equals(A0i(463, 20, 119))) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case 1154777587:
                if (!str.equals(A0i(531, 18, 66))) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return 0;
            case 1:
                return 2;
            case 2:
                return 1;
            case 3:
                return 3;
            default:
                return 4;
        }
    }

    public static int A0C(MW mw, long j, boolean z, boolean z2) {
        int i = 0;
        int iA02 = mw.A02() - 1;
        while (i <= iA02) {
            int i2 = (i + iA02) >>> 1;
            if (mw.A03(i2) < j) {
                i = i2 + 1;
            } else {
                iA02 = i2 - 1;
            }
        }
        if (z && iA02 + 1 < mw.A02() && mw.A03(iA02 + 1) == j) {
            return iA02 + 1;
        }
        if (z2 && iA02 == -1) {
            return 0;
        }
        return iA02;
    }

    public static int A0D(String str) {
        int length = str.length();
        AbstractC1722Ln.A07(length <= 4);
        String[] strArr = A01;
        if (strArr[5].charAt(22) != strArr[3].charAt(22)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[4] = "RF7FEp";
        strArr2[7] = "xMxJLhKfzCETVVVRn8";
        int iCharAt = 0;
        for (int i = 0; i < length; i++) {
            iCharAt = (iCharAt << 8) | str.charAt(i);
        }
        return iCharAt;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0078 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x0079 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x007a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:6:0x0012 A[RETURN] */
    public static int A0E(String str) {
        byte b;
        String strA01 = XC.A01(str);
        switch (strA01.hashCode()) {
            case 104579:
                if (strA01.equals(A0i(LevelPlayAdError.ERROR_CODE_SHOW_WHILE_SHOW, 3, 89))) {
                    b = 2;
                }
                switch (b) {
                    case 0:
                        return 0;
                    case 1:
                        return 2;
                    case 2:
                    case 3:
                        return 1;
                    default:
                        return 4;
                }
            case 108321:
                if (strA01.equals(A0i(641, 3, 60))) {
                    b = 0;
                }
                switch (b) {
                    case 0:
                        return 0;
                    case 1:
                        return 2;
                    case 2:
                    case 3:
                        return 1;
                    default:
                        return 4;
                }
            case 3242057:
                if (strA01.equals(A0i(633, 4, 93))) {
                    b = 3;
                }
                switch (b) {
                    case 0:
                        return 0;
                    case 1:
                        return 2;
                    case 2:
                    case 3:
                        return 1;
                    default:
                        return 4;
                }
            case 3299913:
                String[] strArr = A01;
                if (strArr[6].charAt(24) == strArr[2].charAt(24)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[4] = "hoNUFz";
                strArr2[7] = "qYE4hZbDowsiAmeDMQ";
                if (strA01.equals(A0i(637, 4, 20))) {
                    b = 1;
                }
                switch (b) {
                    case 0:
                        return 0;
                    case 1:
                        return 2;
                    case 2:
                    case 3:
                        return 1;
                    default:
                        return 4;
                }
        }
        b = -1;
        switch (b) {
            case 0:
                return 0;
            case 1:
                return 2;
            case 2:
            case 3:
                return 1;
            default:
                return 4;
        }
    }

    public static int A0F(ByteBuffer byteBuffer, int i) {
        int i2 = byteBuffer.getInt(i);
        return byteBuffer.order() == ByteOrder.BIG_ENDIAN ? i2 : Integer.reverseBytes(i2);
    }

    public static <T extends Comparable<? super T>> int A0G(List<? extends Comparable<? super T>> list, T t, boolean z, boolean z2) {
        int iBinarySearch = Collections.binarySearch(list, t);
        if (iBinarySearch < 0) {
            iBinarySearch = ~iBinarySearch;
        } else {
            int size = list.size();
            do {
                iBinarySearch++;
                if (iBinarySearch >= size) {
                    break;
                }
            } while (list.get(iBinarySearch).compareTo(t) == 0);
            if (z) {
                iBinarySearch--;
            }
        }
        return z2 ? Math.min(list.size() - 1, iBinarySearch) : iBinarySearch;
    }

    public static <T extends Comparable<? super T>> int A0H(List<? extends Comparable<? super T>> list, T t, boolean z, boolean z2) {
        int iBinarySearch = Collections.binarySearch(list, t);
        if (iBinarySearch < 0) {
            iBinarySearch = -(iBinarySearch + 2);
        } else {
            do {
                iBinarySearch--;
                if (iBinarySearch < 0) {
                    break;
                }
            } while (list.get(iBinarySearch).compareTo(t) == 0);
            if (z) {
                iBinarySearch++;
            }
        }
        return z2 ? Math.max(0, iBinarySearch) : iBinarySearch;
    }

    public static int A0I(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            i3 = (i3 << 8) ^ A0C[((i3 >>> 24) ^ (bArr[i] & 255)) & 255];
            i++;
        }
        return i3;
    }

    public static int A0J(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            i3 = A0D[(bArr[i] & 255) ^ i3];
            i++;
        }
        return i3;
    }

    public static int A0K(long[] jArr, long j, boolean z, boolean z2) {
        int iBinarySearch = Arrays.binarySearch(jArr, j);
        if (iBinarySearch < 0) {
            iBinarySearch = ~iBinarySearch;
        } else {
            do {
                iBinarySearch++;
                if (iBinarySearch >= jArr.length) {
                    break;
                }
            } while (jArr[iBinarySearch] == j);
            if (z) {
                iBinarySearch--;
            }
        }
        return z2 ? Math.min(jArr.length - 1, iBinarySearch) : iBinarySearch;
    }

    public static int A0L(long[] jArr, long j, boolean z, boolean z2) {
        int iBinarySearch = Arrays.binarySearch(jArr, j);
        if (iBinarySearch < 0) {
            iBinarySearch = -(iBinarySearch + 2);
        } else {
            do {
                iBinarySearch--;
                if (iBinarySearch < 0) {
                    break;
                }
            } while (jArr[iBinarySearch] == j);
            if (z) {
                iBinarySearch++;
            }
        }
        return z2 ? Math.max(0, iBinarySearch) : iBinarySearch;
    }

    public static long A0M(int i) {
        return ((long) i) & 4294967295L;
    }

    public static long A0N(int i, int i2) {
        return (A0M(i) << 32) | A0M(i2);
    }

    public static long A0O(long j) {
        return (j == -9223372036854775807L || j == Long.MIN_VALUE) ? j : j * 1000;
    }

    public static long A0P(long j) {
        return (j == -9223372036854775807L || j == Long.MIN_VALUE) ? j : j / 1000;
    }

    public static long A0Q(long j, float f) {
        return f == 1.0f ? j : Math.round(j * ((double) f));
    }

    public static long A0R(long j, float f) {
        return f == 1.0f ? j : Math.round(j / ((double) f));
    }

    public static long A0S(long j, long j2, long j3) {
        long j4 = j + j2;
        return ((j ^ j4) & (j2 ^ j4)) < 0 ? j3 : j4;
    }

    public static long A0T(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    public static long A0U(long j, long j2, long j3) {
        if (j3 < j2 || j3 % j2 != 0) {
            if (j3 < j2) {
                long j4 = j2 % j3;
                String[] strArr = A01;
                if (strArr[5].charAt(22) == strArr[3].charAt(22)) {
                    String[] strArr2 = A01;
                    strArr2[4] = "IPy2Ly";
                    strArr2[7] = "5vEgcpH0iVVJMjzbRN";
                    if (j4 == 0) {
                        return j * (j2 / j3);
                    }
                }
            }
            return (long) (j * (j2 / j3));
        }
        long j5 = j / (j3 / j2);
        String[] strArr3 = A01;
        if (strArr3[6].charAt(24) != strArr3[2].charAt(24)) {
            String[] strArr4 = A01;
            strArr4[6] = "Wwcydx2ywO5Js0hVIgMPrydxQI2GT274";
            strArr4[2] = "9S7HLHaddpKKZPVX7I2pUDzoDLzUbMCJ";
            return j5;
        }
        throw new RuntimeException();
    }

    public static long A0V(long j, long j2, long j3) {
        long j4 = j - j2;
        return ((j ^ j2) & (j ^ j4)) < 0 ? j3 : j4;
    }

    public static Point A0W(Context context) {
        DisplayManager displayManager;
        Display defaultDisplay = null;
        if (A02 >= 17 && (displayManager = (DisplayManager) context.getSystemService(A0i(581, 7, 109))) != null) {
            defaultDisplay = displayManager.getDisplay(0);
        }
        if (defaultDisplay == null) {
            defaultDisplay = ((WindowManager) AbstractC1722Ln.A01((WindowManager) context.getSystemService(A0i(714, 6, 82)))).getDefaultDisplay();
        }
        return A0X(context, defaultDisplay);
    }

    public static Point A0X(Context context, Display display) {
        if (display.getDisplayId() == 0) {
            boolean zA18 = A18(context);
            if (A01[0].length() == 5) {
                String[] strArr = A01;
                strArr[4] = "px5jAz";
                strArr[7] = "O0CwjRdnjEnBdgYzvR";
                if (zA18) {
                    String strA0m = A02 < 28 ? A0m(A0i(661, 16, 5)) : A0m(A0i(695, 19, 23));
                    if (!TextUtils.isEmpty(strA0m)) {
                        try {
                            String[] strArrA1O = A1O(strA0m.trim(), A0i(720, 1, 22));
                            if (strArrA1O.length == 2) {
                                int i = Integer.parseInt(strArrA1O[0]);
                                int i2 = Integer.parseInt(strArrA1O[1]);
                                if (i > 0 && i2 > 0) {
                                    return new Point(i, i2);
                                }
                            }
                        } catch (NumberFormatException unused) {
                        }
                        MV.A05(A0i(313, 4, kotlin.fh.g1), A0i(225, 22, 90) + strA0m);
                    }
                    if (A01[1].length() == 23) {
                        A01[1] = "bVxCxLMs2EjeECtIJYJlSgA";
                        if (A0i(309, 4, 95).equals(A05) && A06.startsWith(A0i(170, 6, 91)) && context.getPackageManager().hasSystemFeature(A0i(549, 32, 77))) {
                            return new Point(3840, 2160);
                        }
                    }
                }
            }
            throw new RuntimeException();
        }
        Point point = new Point();
        if (A02 >= 23) {
            A0z(display, point);
        } else if (A02 >= 17) {
            A0y(display, point);
        } else {
            A0x(display, point);
        }
        return point;
    }

    public static Handler A0Y() {
        return A0a(null);
    }

    public static Handler A0Z() {
        return A0b(null);
    }

    public static Handler A0a(Handler.Callback callback) {
        return A0c((Looper) AbstractC1722Ln.A02(Looper.myLooper()), callback);
    }

    public static Handler A0b(Handler.Callback callback) {
        return A0c(A0d(), callback);
    }

    public static Handler A0c(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static Looper A0d() {
        Looper looperMyLooper = Looper.myLooper();
        return looperMyLooper != null ? looperMyLooper : Looper.getMainLooper();
    }

    public static CharSequence A0e(CharSequence charSequence, int i) {
        return charSequence.length() <= i ? charSequence : charSequence.subSequence(0, i);
    }

    @EnsuresNonNull
    public static <T> T A0f(T t) {
        return t;
    }

    public static String A0g(int i) {
        switch (i) {
            case 0:
                return A0i(247, 2, 121);
            case 1:
                return A0i(290, 19, 22);
            case 2:
                return A0i(272, 18, 28);
            case 3:
                return A0i(249, 23, 56);
            case 4:
                String[] strArr = A01;
                if (strArr[5].charAt(22) != strArr[3].charAt(22)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[6] = "ep5pajUplpIVLurMLF4BXTyv20cDg2lO";
                strArr2[2] = "ol0CAjh987qCy1dpImZAa3qdLNtdPp25";
                return A0i(TypedValues.AttributesType.TYPE_EASING, 3, 96);
            default:
                throw new IllegalStateException();
        }
    }

    public static String A0h(int i) {
        return Integer.toString(i, 36);
    }

    public static String A0i(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 124);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A0j(Context context, String str) {
        String strA0i;
        try {
            strA0i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            strA0i = A0i(169, 1, 2);
            String[] strArr = A01;
            if (strArr[4].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[5] = "NUhyDZ9UNiZ13p46IvOLOrx9GJvtk3o6";
            strArr2[3] = "konvKpsKfFam0PpuQIwWbLxjYiOygmuk";
        }
        return str + A0i(168, 1, 28) + strA0i + A0i(0, 16, 34) + Build.VERSION.RELEASE + A0i(163, 2, 39) + A0i(176, 18, 117);
    }

    public static String A0k(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new Locale(str).getISO3Language();
        } catch (MissingResourceException unused) {
            return XC.A01(str);
        }
    }

    public static String A0l(String str) {
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.charAt(i2) == '%') {
                i++;
            }
        }
        if (i == 0) {
            return str;
        }
        int i3 = length - (i * 2);
        StringBuilder sb = new StringBuilder(i3);
        Matcher matcher = A08.matcher(str);
        int iEnd = 0;
        while (i > 0 && matcher.find()) {
            sb.append((CharSequence) str, iEnd, matcher.start()).append((char) Integer.parseInt((String) AbstractC1722Ln.A01(matcher.group(1)), 16));
            iEnd = matcher.end();
            i--;
        }
        if (iEnd < length) {
            sb.append((CharSequence) str, iEnd, length);
        }
        if (sb.length() != i3) {
            return null;
        }
        return sb.toString();
    }

    public static String A0m(String str) {
        try {
            Class<?> cls = Class.forName(A0i(436, 27, 42));
            return (String) cls.getMethod(A0i(LevelPlayAdError.ERROR_CODE_LOAD_FAILED_ALREADY_CALLED, 3, 93), String.class).invoke(cls, str);
        } catch (Exception e) {
            MV.A08(A0i(313, 4, kotlin.fh.g1), A0i(194, 31, 79) + str, e);
            return null;
        }
    }

    public static String A0n(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static String A0o(Locale locale) {
        return A02 >= 21 ? A0p(locale) : locale.toString();
    }

    public static String A0p(Locale locale) {
        return locale.toLanguageTag();
    }

    public static String A0q(byte[] bArr) {
        return new String(bArr, XA.A05);
    }

    public static String A0r(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, XA.A05);
    }

    public static String A0s(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            String[] strArr = A01;
            if (strArr[4].length() != strArr[7].length()) {
                A01[1] = "M86ztIepEmUlarNQjmuOeOo";
                sb.append(obj.getClass().getSimpleName());
                if (i < objArr.length - 1) {
                    String[] strArr2 = A01;
                    if (strArr2[6].charAt(24) != strArr2[2].charAt(24)) {
                        A01[0] = "UxfwE";
                        sb.append(A0i(166, 2, 71));
                    }
                }
            }
            throw new RuntimeException();
        }
        return sb.toString();
    }

    public static /* synthetic */ Thread A0t(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static ExecutorService A0u(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.facebook.ads.redexgen.X.Mz
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return N1.A0t(str, runnable);
            }
        });
    }

    public static void A0v() {
        A00 = new byte[]{-66, -58, -22, 7, Ascii.FF, 19, Ascii.SYN, -39, -33, Ascii.FF, 2, Ascii.DLE, Ascii.CR, 7, 2, -66, -49, -46, 5, -21, -41, -16, Ascii.VT, -41, Ascii.DLE, -38, -41, -29, 7, 37, -36, 39, -45, -59, -36, -41, -53, -57, -7, -53, -58, -36, 6, Ascii.DLE, 10, 9, -36, -59, -36, -41, -52, -59, 10, -2, Ascii.VT, 6, 3, 2, Ascii.DLE, 17, -59, -53, -57, -58, -58, -36, -58, -36, 9, Base64.padSymbol, 69, Base64.padSymbol, 69, Base64.padSymbol, 69, Base64.padSymbol, 69, 10, Base64.padSymbol, Ascii.SO, 9, Base64.padSymbol, 69, Base64.padSymbol, 69, 10, Base64.padSymbol, Ascii.SO, 9, Base64.padSymbol, 69, Base64.padSymbol, 69, 10, 60, 53, 85, 62, 9, Base64.padSymbol, 69, Base64.padSymbol, 69, 10, Ascii.ESC, 9, Base64.padSymbol, 69, Base64.padSymbol, 69, 10, Ascii.ESC, 9, Base64.padSymbol, 69, Base64.padSymbol, 69, 10, 9, 60, Base64.padSymbol, Ascii.SI, Ascii.CR, 62, 9, Base64.padSymbol, 69, Ascii.FF, 10, 10, 32, 9, 60, 59, 91, 62, 93, 9, 9, Base64.padSymbol, Ascii.FF, 93, Base64.padSymbol, Ascii.SO, 10, 9, Base64.padSymbol, 69, 32, Base64.padSymbol, 69, 10, Ascii.ESC, 32, 9, Base64.padSymbol, 69, Base64.padSymbol, 69, 10, 10, 10, 32, -52, -61, -65, -17, -29, -57, -67, Ascii.EM, 41, Ascii.CAN, 45, 32, Ascii.CAN, 54, 105, 96, 65, 93, 82, 106, 86, 99, Base64.padSymbol, 90, 83, 32, 35, Ascii.US, 41, Ascii.US, 34, 17, 44, 52, 55, 48, 47, -21, 63, 58, -21, Base64.padSymbol, 48, 44, 47, -21, 62, 68, 62, 63, 48, 56, -21, 59, Base64.padSymbol, 58, 59, 48, Base64.padSymbol, 63, 68, -21, Ascii.US, 68, 76, 55, 66, 63, 58, -10, 58, 63, 73, 70, 66, 55, 79, -10, 73, 63, 80, 59, Ascii.DLE, -10, 67, 68, 2, 3, 19, -7, Ascii.FF, -9, -7, -7, -8, 7, 19, -9, -11, 4, -11, -10, -3, 0, -3, 8, -3, -7, 7, -26, -25, -9, -19, -26, -21, -19, -24, -24, -25, -22, -20, -35, -36, -9, -36, -22, -27, -32, -31, -15, -25, -32, -27, -25, -30, -30, -31, -28, -26, -41, -42, -15, -26, -21, -30, -41, 46, 74, 73, 84, 59, 90, 79, 82, 53, 33, 47, Ascii.GS, -25, -20, -24, -2, Ascii.SI, -25, -25, Ascii.SUB, -17, -20, -8, Ascii.FS, -23, -24, Ascii.CAN, -24, -2, -25, -25, Ascii.SUB, -17, -20, -8, Ascii.FS, -23, -24, Ascii.FF, -24, -2, -25, -25, Ascii.SUB, -17, -20, -8, Ascii.FS, -23, -24, 3, -24, -2, -25, 19, -25, -25, Ascii.SUB, -17, -20, -8, Ascii.FS, -23, -24, 7, -24, -2, -25, -25, Ascii.SUB, -17, -20, -8, Ascii.FS, -23, -24, Ascii.FF, -24, -2, -25, -25, Ascii.SUB, -17, -20, -8, -19, Ascii.FS, -23, -24, Ascii.DC2, -24, -2, -24, -2, -29, 89, 102, 92, 106, 103, 97, 92, 38, 96, 89, 106, 92, 111, 89, 106, 93, 38, 108, 113, 104, 93, 38, 89, 109, 108, 103, 101, 103, 108, 97, 110, 93, 7, Ascii.DC4, 10, Ascii.CAN, Ascii.NAK, Ascii.SI, 10, -44, Ascii.NAK, Ascii.EM, -44, -7, Ascii.US, Ascii.EM, Ascii.SUB, Ascii.VT, 19, -10, Ascii.CAN, Ascii.NAK, Ascii.SYN, Ascii.VT, Ascii.CAN, Ascii.SUB, Ascii.SI, Ascii.VT, Ascii.EM, 84, 99, 99, 95, 92, 86, 84, 103, 92, 98, 97, 34, 87, 84, 102, 91, Ascii.RS, 107, 96, 95, 65, 80, 80, 76, 73, 67, 65, 84, 73, 79, 78, Ascii.SI, 86, 78, 68, Ascii.SO, 77, 83, Ascii.CR, 83, 83, 84, 82, Ascii.VT, 88, 77, 76, 52, 67, 67, 63, 60, 54, 52, 71, 60, 66, 65, 2, 75, 0, SignedBytes.MAX_POWER_OF_TWO, 67, 56, 58, 40, 37, Ascii.US, Ascii.US, 46, 46, 42, 39, 33, Ascii.US, 50, 39, 45, 44, -19, 54, -21, 48, 50, 49, 46, 44, 56, 54, -9, 60, 56, 55, 66, -9, 45, Base64.padSymbol, 63, -9, 49, 42, 59, 45, SignedBytes.MAX_POWER_OF_TWO, 42, 59, 46, -9, 57, 42, 55, 46, 53, -9, 58, 47, 49, 45, 77, 82, 92, 89, 85, 74, 98, -4, -1, 2, -5, 77, 86, 89, 84, 72, 91, 36, 84, Ascii.SUB, 92, Ascii.US, Ascii.DC4, 72, 72, 87, 83, -16, -7, -4, -9, -21, -2, -57, -9, -6, -18, -73, -2, -13, -9, -17, -73, -19, -3, -16, SignedBytes.MAX_POWER_OF_TWO, 62, 77, 62, 72, 66, 66, 76, 70, 69, -3, -61, 5, -56, 37, 40, Ascii.FS, -12, -10, -11, -14, -11, -13, -18, -21, -10, -25, -31, -17, -29, -11, -10, -25, -12, -12, -6, -12, -81, -27, -22, -12, -15, -19, -30, -6, -82, -12, -22, -5, -26, 109, 91, 101, 88, 103, 90, 102, 94, Ascii.EM, 54, Ascii.EM, 56, 66, 54, 58, 60, 49, 50, 9, -8, 1, -9, 2, 5, -63, -9, -4, 6, 3, -1, -12, Ascii.FF, -64, 6, -4, Ascii.CR, -8, 69, 55, 60, 50, Base64.padSymbol, 69, 10};
    }

    public static void A0w(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    public static void A0x(Display display, Point point) {
        display.getSize(point);
    }

    public static void A0y(Display display, Point point) {
        display.getRealSize(point);
    }

    public static void A0z(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    public static void A10(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void A11(Throwable th) throws Throwable {
        A12(th);
        throw null;
    }

    public static <T extends Throwable> void A12(Throwable th) throws Throwable {
        throw th;
    }

    public static void A13(long[] jArr, long j, long j2) {
        if (j2 >= j && j2 % j == 0) {
            long j3 = j2 / j;
            for (int i = 0; i < jArr.length; i++) {
                jArr[i] = jArr[i] / j3;
            }
            return;
        }
        if (A01[1].length() != 23) {
            throw new RuntimeException();
        }
        A01[0] = "wws9L";
        if (j2 >= j || j % j2 != 0) {
            double d = j / j2;
            for (int i2 = 0; i2 < jArr.length; i2++) {
                jArr[i2] = (long) (jArr[i2] * d);
            }
            return;
        }
        long j4 = j / j2;
        for (int i3 = 0; i3 < jArr.length; i3++) {
            jArr[i3] = jArr[i3] * j4;
        }
    }

    public static boolean A14(int i) {
        return i == 536870912 || i == 805306368 || i == 4;
    }

    public static boolean A15(int i) {
        if (i != 3 && i != 2 && i != 268435456) {
            String[] strArr = A01;
            if (strArr[4].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            A01[0] = "Wp8bK";
            if (i != 536870912 && i != 805306368 && i != 4) {
                return false;
            }
        }
        return true;
    }

    public static boolean A16(int i) {
        return i == 10 || i == 13;
    }

    public static boolean A17(Context context) {
        return A02 >= 23 && context.getPackageManager().hasSystemFeature(A0i(InterfaceC3669k1.a.b.d, 32, 124));
    }

    public static boolean A18(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService(A0i(689, 6, 81));
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static boolean A19(SQLiteDatabase sQLiteDatabase, String str) {
        return DatabaseUtils.queryNumEntries(sQLiteDatabase, A0i(648, 13, 6), A0i(677, 12, 125), new String[]{str}) > 0;
    }

    public static boolean A1A(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || A0i(588, 4, 26).equals(scheme);
    }

    public static boolean A1B(Handler handler, Runnable runnable) {
        if (!handler.getLooper().getThread().isAlive()) {
            return false;
        }
        if (handler.getLooper() != Looper.myLooper()) {
            return handler.post(runnable);
        }
        runnable.run();
        return true;
    }

    public static boolean A1C(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    public static boolean A1D(C1744Mk c1744Mk, C1744Mk c1744Mk2, Inflater inflater) {
        if (c1744Mk.A07() <= 0) {
            return false;
        }
        if (c1744Mk2.A08() < c1744Mk.A07()) {
            c1744Mk2.A0c(c1744Mk.A07() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(c1744Mk.A0l(), c1744Mk.A09(), c1744Mk.A07());
        int iInflate = 0;
        while (true) {
            try {
                iInflate += inflater.inflate(c1744Mk2.A0l(), iInflate, c1744Mk2.A08() - iInflate);
                if (inflater.finished()) {
                    c1744Mk2.A0e(iInflate);
                    inflater.reset();
                    return true;
                }
                if (!inflater.needsDictionary() && !inflater.needsInput()) {
                    if (iInflate == c1744Mk2.A08()) {
                        c1744Mk2.A0c(c1744Mk2.A08() * 2);
                    }
                }
                inflater.reset();
                return false;
            } catch (DataFormatException unused) {
                inflater.reset();
                return false;
            } catch (Throwable th) {
                inflater.reset();
                throw th;
            }
        }
    }

    public static boolean A1E(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static byte[] A1F(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public static byte[] A1G(String str) {
        return str.getBytes(XA.A05);
    }

    @EnsuresNonNull
    public static <T> T[] A1H(T[] tArr) {
        return tArr;
    }

    public static <T> T[] A1I(T[] tArr, int i) {
        AbstractC1722Ln.A07(i <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i);
    }

    public static <T> T[] A1J(T[] tArr, int i, int i2) {
        AbstractC1722Ln.A07(i >= 0);
        AbstractC1722Ln.A07(i2 <= tArr.length);
        T[] tArr2 = (T[]) Arrays.copyOfRange(tArr, i, i2);
        String[] strArr = A01;
        if (strArr[5].charAt(22) != strArr[3].charAt(22)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[5] = "wiytlp6LfgQL3IKGabRQEcxL4wsnKGzQ";
        strArr2[3] = "HmwAuiujpnpnFZToUkO1QMxNuOmiVyxI";
        return tArr2;
    }

    public static <T> T[] A1K(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    public static String[] A1L() {
        String[] strArrA1M = A1M();
        for (int i = 0; i < strArrA1M.length; i++) {
            strArrA1M[i] = A0k(strArrA1M[i]);
        }
        return strArrA1M;
    }

    public static String[] A1M() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        return A02 >= 24 ? A1N(configuration) : new String[]{A0o(configuration.locale)};
    }

    public static String[] A1N(Configuration configuration) {
        return A1O(configuration.getLocales().toLanguageTags(), A0i(165, 1, 23));
    }

    public static String[] A1O(String str, String str2) {
        return str.split(str2, -1);
    }

    public static String[] A1P(String str, String str2) {
        return str.split(str2, 2);
    }
}
