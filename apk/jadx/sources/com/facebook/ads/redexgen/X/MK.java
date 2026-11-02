package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.io.File;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public final class MK extends C2341eL {
    public static byte[] A00;
    public static String[] A01 = {"I4nb8GxG61c", "lWcZexrzZyPCwXa97JGbRx7RMJI9gKq1", "aakAI8mh6jqTIwflRhZ8D8Z0ceFTjQl", "vyRM5UEFF9IluSyRJ5unfvLfh1Lz04qO", "nBXQmVWORPT1", "tt93hsDHQxAndY2rD5XDN08ttdcn", "s8Ypc7mSdfoJt0WWWrUbzXXDxRiQzd3", "Gmc"};
    public static final Pattern A02;
    public static final Pattern A03;
    public static final Pattern A04;

    static {
        A07();
        A02 = Pattern.compile(A06(8, 29, 33), 32);
        A03 = Pattern.compile(A06(37, 29, 61), 32);
        A04 = Pattern.compile(A06(66, 30, 38), 32);
    }

    public MK(String str, long j, long j2, long j3, File file) {
        super(str, j, j2, j3, file);
    }

    public static MK A00(File file, long j, long j2, C2350eU c2350eU) {
        String strA0F;
        long j3 = j2;
        long length = j;
        String name = file.getName();
        if (!name.endsWith(A06(1, 7, 51))) {
            file = A05(file, c2350eU);
            if (file == null) {
                return null;
            }
            name = file.getName();
        }
        Matcher matcher = A04.matcher(name);
        if (!matcher.matches() || (strA0F = c2350eU.A0F(Integer.parseInt((String) AbstractC1722Ln.A01(matcher.group(1))))) == null) {
            return null;
        }
        if (length == -1) {
            length = file.length();
        }
        if (length == 0) {
            return null;
        }
        long j4 = Long.parseLong((String) AbstractC1722Ln.A01(matcher.group(2)));
        if (j3 == -9223372036854775807L) {
            j3 = Long.parseLong((String) AbstractC1722Ln.A01(matcher.group(3)));
        }
        return new MK(strA0F, j4, length, j3, file);
    }

    public static MK A01(File file, long j, C2350eU c2350eU) {
        return A00(file, j, -9223372036854775807L, c2350eU);
    }

    public static MK A02(String str, long j) {
        return new MK(str, j, -1L, -9223372036854775807L, null);
    }

    public static MK A03(String str, long j, long j2) {
        return new MK(str, j, j2, -9223372036854775807L, null);
    }

    public static File A04(File file, int i, long j, long j2) {
        StringBuilder sbAppend = new StringBuilder().append(i);
        String strA06 = A06(0, 1, 35);
        return new File(file, sbAppend.append(strA06).append(j).append(strA06).append(j2).append(A06(1, 7, 51)).toString());
    }

    /* JADX WARN: Code duplicated, block: B:15:0x006d  */
    /* JADX WARN: Code duplicated, block: B:17:0x00a3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:18:0x00a4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:9:0x003d A[RETURN] */
    public static File A05(File file, C2350eU c2350eU) {
        File fileA04;
        String strA0l = null;
        String name = file.getName();
        Matcher matcher = A03.matcher(name);
        if (matcher.matches()) {
            String strGroup = matcher.group(1);
            String[] strArr = A01;
            if (strArr[3].charAt(6) != strArr[1].charAt(6)) {
                A01[4] = "ow8kvC";
                strA0l = N1.A0l((String) AbstractC1722Ln.A01(strGroup));
                if (strA0l == null) {
                    return null;
                }
                fileA04 = A04((File) AbstractC1722Ln.A02(file.getParentFile()), c2350eU.A0B(strA0l), Long.parseLong((String) AbstractC1722Ln.A01(matcher.group(2))), Long.parseLong((String) AbstractC1722Ln.A01(matcher.group(3))));
                if (file.renameTo(fileA04)) {
                    return fileA04;
                }
                return null;
            }
            throw new RuntimeException();
        }
        Pattern pattern = A02;
        if (A01[4].length() != 5) {
            String[] strArr2 = A01;
            strArr2[3] = "S7mgE4wgu7RVVt6ksDuDtQLvooCgQXJY";
            strArr2[1] = "YrgFSEXA3Qgd65zP5V28q2MnJWVi9qqT";
            matcher = pattern.matcher(name);
            if (matcher.matches()) {
                strA0l = (String) AbstractC1722Ln.A01(matcher.group(1));
            }
            if (strA0l == null) {
                return null;
            }
            fileA04 = A04((File) AbstractC1722Ln.A02(file.getParentFile()), c2350eU.A0B(strA0l), Long.parseLong((String) AbstractC1722Ln.A01(matcher.group(2))), Long.parseLong((String) AbstractC1722Ln.A01(matcher.group(3))));
            if (file.renameTo(fileA04)) {
                return null;
            }
            return fileA04;
        }
        throw new RuntimeException();
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] ^ i3;
            String[] strArr = A01;
            if (strArr[6].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "Ts3WY6eF5JEGJnDZKyxqmKfGkyXOPSQH";
            strArr2[1] = "3uLJhb5CzQdeeBRXFU6Oy1dBtA7VgI52";
            bArrCopyOfRange[i4] = (byte) (i5 ^ 6);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A00 = new byte[]{Ascii.VT, Ascii.ESC, 67, 6, Ascii.ESC, 80, 77, 90, 121, Ascii.SI, 9, Ascii.FF, Ascii.SO, 123, 9, Ascii.SI, 123, 67, Ascii.FF, Ascii.SO, 123, 9, Ascii.SI, 123, 67, Ascii.FF, Ascii.SO, 123, 9, 81, Ascii.SYN, 123, 9, 66, 95, 72, 3, 101, 19, Ascii.NAK, Ascii.DLE, Ascii.DC2, 103, Ascii.NAK, 19, 103, 95, Ascii.DLE, Ascii.DC2, 103, Ascii.NAK, 19, 103, 95, Ascii.DLE, Ascii.DC2, 103, Ascii.NAK, 77, 9, 103, Ascii.NAK, 94, 67, 84, Ascii.US, 126, 8, 124, 68, Ascii.VT, 9, 124, Ascii.SO, 8, 124, 68, Ascii.VT, 9, 124, Ascii.SO, 8, 124, 68, Ascii.VT, 9, 124, Ascii.SO, 86, 19, 124, Ascii.SO, 69, 88, 79, 4};
    }

    public final MK A0D(File file, long j) {
        AbstractC1722Ln.A08(this.A05);
        return new MK(this.A04, this.A02, this.A01, j, file);
    }
}
