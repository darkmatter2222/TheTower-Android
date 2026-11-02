package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.base.ElementTypesAreNonnullByDefault;
import com.google.common.base.Strings;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC1995Wu {
    public static byte[] A00;
    public static String[] A01 = {"yLf2HicXrUDTrCognVgn2uErClFvYzD7", "dZSCxToOGH4PBUg6Cr17nPJnJoJDV", "D3UFkwhQeChOYpXdWloUWCk5s0bAp9ud", "23BZbQDrhO9CuGymfsYgJ1pc3XIY1uwx", "EsCj8hFANHTQyQYBgfdBlVqcdUl1c", "RDqNHKRm7z3WZIkicfSvQp9DElLV3lip", "CBOTegxNDh2cFAbW6nn8DY3rguG0", "Ii3jxu3agXZO8FdWqBmYOKpcdCkW"};

    static {
        A0A();
    }

    public static int A00(int i, int i2) {
        return A02(i, i2, A06(167, 5, 60));
    }

    public static int A01(int i, int i2) {
        return A03(i, i2, A06(167, 5, 60));
    }

    public static int A02(int i, int i2, String str) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(A08(i, i2, str));
        }
        return i;
    }

    public static int A03(int i, int i2, String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(A09(i, i2, str));
        }
        return i;
    }

    public static <T> T A04(@CheckForNull T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    public static <T> T A05(@CheckForNull T t, @CheckForNull Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 5);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A07(int i, int i2, int i3) {
        if (i < 0 || i > i3) {
            return A09(i, i3, A06(187, 11, 20));
        }
        if (i2 < 0 || i2 > i3) {
            return A09(i2, i3, A06(105, 9, 56));
        }
        Integer numValueOf = Integer.valueOf(i2);
        Integer numValueOf2 = Integer.valueOf(i);
        String[] strArr = A01;
        if (strArr[7].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        A01[5] = "MJl6yHMnAPDCWTfuq5FBuEhRAmk1QkZc";
        return Strings.A02(A06(114, 53, 108), new Object[]{numValueOf, numValueOf2});
    }

    public static String A08(int i, int i2, String str) {
        if (i < 0) {
            return Strings.A02(A06(77, 28, 44), new Object[]{str, Integer.valueOf(i)});
        }
        if (i2 >= 0) {
            return Strings.A02(A06(0, 35, 14), new Object[]{str, Integer.valueOf(i), Integer.valueOf(i2)});
        }
        throw new IllegalArgumentException(A06(172, 15, 0) + i2);
    }

    public static String A09(int i, int i2, String str) {
        if (i < 0) {
            return Strings.A02(A06(77, 28, 44), new Object[]{str, Integer.valueOf(i)});
        }
        if (i2 >= 0) {
            return Strings.A02(A06(35, 42, 63), new Object[]{str, Integer.valueOf(i), Integer.valueOf(i2)});
        }
        throw new IllegalArgumentException(A06(172, 15, 0) + i2);
    }

    public static void A0A() {
        A00 = new byte[]{46, 120, 43, 35, 46, 120, 34, 43, 102, 126, 120, 127, 43, 105, 110, 43, 103, 110, 120, 120, 43, 127, 99, 106, 101, 43, 120, 98, 113, 110, 43, 35, 46, 120, 34, Ascii.US, 73, Ascii.SUB, Ascii.DC2, Ascii.US, 73, 19, Ascii.SUB, 87, 79, 73, 78, Ascii.SUB, 84, 85, 78, Ascii.SUB, 88, 95, Ascii.SUB, 93, 72, 95, 91, 78, 95, 72, Ascii.SUB, 78, 82, 91, 84, Ascii.SUB, 73, 83, SignedBytes.MAX_POWER_OF_TWO, 95, Ascii.SUB, Ascii.DC2, Ascii.US, 73, 19, Ascii.FF, 90, 9, 1, Ascii.FF, 90, 0, 9, 68, 92, 90, 93, 9, 71, 70, 93, 9, 75, 76, 9, 71, 76, 78, 72, 93, SignedBytes.MAX_POWER_OF_TWO, 95, 76, 88, 83, 89, Ascii.GS, 84, 83, 89, 88, 69, Ascii.FF, 7, Ascii.CR, 73, 0, 7, Ascii.CR, Ascii.FF, 17, 73, 65, 76, Ascii.SUB, SignedBytes.MAX_POWER_OF_TWO, 73, 4, Ascii.FS, Ascii.SUB, Ascii.GS, 73, 7, 6, Ascii.GS, 73, Ascii.VT, Ascii.FF, 73, 5, Ascii.FF, Ascii.SUB, Ascii.SUB, 73, Ascii.GS, 1, 8, 7, 73, Ascii.SUB, Ascii.GS, 8, Ascii.ESC, Ascii.GS, 73, 0, 7, Ascii.CR, Ascii.FF, 17, 73, 65, 76, Ascii.SUB, SignedBytes.MAX_POWER_OF_TWO, 80, 87, 93, 92, 65, 107, 96, 98, 100, 113, 108, 115, 96, 37, 118, 108, 127, 96, 63, 37, 98, 101, 112, 99, 101, 49, 120, 127, 117, 116, 105};
    }

    public static void A0B(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException(A07(i, i2, i3));
        }
    }

    public static void A0C(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void A0D(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void A0E(@CheckForNull boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void A0F(@CheckForNull boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void A0G(boolean z, String str, int i, int i2) {
        if (!z) {
            throw new IllegalArgumentException(Strings.A02(str, new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}));
        }
    }

    public static void A0H(boolean z, String str, long j) {
        if (!z) {
            throw new IllegalArgumentException(Strings.A02(str, new Object[]{Long.valueOf(j)}));
        }
    }
}
