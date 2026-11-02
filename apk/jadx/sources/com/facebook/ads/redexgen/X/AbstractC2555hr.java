package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2555hr {
    public static byte[] A00;
    public static final C2554hq A01;

    static {
        A01();
        A01 = new JI() { // from class: com.facebook.ads.redexgen.X.7W
            public static byte[] A00;
            public static String[] A01 = {"lLTnlT7kdgZgpONat", "d79paUk3eSzGphhSN42PN5Aq8dj9iVyl", "SPt342n", "OIl1JjPDUNYuj0Z8zSbytdcas", "BSu1Ds7nymHwzPjWE4jzwGDd8JkRRJPQ", "PB1eQ9fbEyjMYRd9wV6iR7DUEeVSeCVP", "JUVWQPWt2QIcAEqAV6T0sxDALqwyj", "zKN2MvPWkZddLmlUYuVLkoywXLI"};

            static {
                A01();
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
                int i4 = 0;
                while (true) {
                    int length = bArrCopyOfRange.length;
                    if (A01[7].length() == 21) {
                        throw new RuntimeException();
                    }
                    A01[7] = "QKmrPpG47xHIA";
                    if (i4 >= length) {
                        return new String(bArrCopyOfRange);
                    }
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 58);
                    i4++;
                }
            }

            public static void A01() {
                A00 = new byte[]{79, Ascii.VT, 0, 10, Ascii.FS, 79, 1, 0, Ascii.ESC, 79, 6, 2, Ascii.US, 3, 10, 2, 10, 1, Ascii.ESC, 79, 6, 1, Ascii.ESC, 10, Ascii.GS, 9, Ascii.SO, Ascii.FF, 10, 79, 2, 10, Ascii.ESC, 7, 0, Ascii.VT, 79, 0, 1, 33, 10, Ascii.FS, Ascii.ESC, 10, Ascii.VT, 41, 3, 6, 1, 8, 125, 57, 50, 56, 46, 125, 51, 50, 41, 125, 52, 48, 45, 49, 56, 48, 56, 51, 41, 125, 52, 51, 41, 56, 47, 59, 60, 62, 56, 125, 48, 56, 41, 53, 50, 57, 125, 50, 51, 19, 56, 46, 41, 56, 57, Ascii.CR, 47, 56, Ascii.ESC, 49, 52, 51, 58, 5, 65, 74, SignedBytes.MAX_POWER_OF_TWO, 86, 5, 75, 74, 81, 5, 76, 72, 85, 73, SignedBytes.MAX_POWER_OF_TWO, 72, SignedBytes.MAX_POWER_OF_TWO, 75, 81, 5, 76, 75, 81, SignedBytes.MAX_POWER_OF_TWO, 87, 67, 68, 70, SignedBytes.MAX_POWER_OF_TWO, 5, 72, SignedBytes.MAX_POWER_OF_TWO, 81, 77, 74, 65, 5, 74, 75, 107, SignedBytes.MAX_POWER_OF_TWO, 86, 81, SignedBytes.MAX_POWER_OF_TWO, 65, 117, 87, SignedBytes.MAX_POWER_OF_TWO, 118, 70, 87, 74, 73, 73, 3, 71, 76, 70, 80, 3, 77, 76, 87, 3, 74, 78, 83, 79, 70, 78, 70, 77, 87, 3, 74, 77, 87, 70, 81, 69, 66, SignedBytes.MAX_POWER_OF_TWO, 70, 3, 78, 70, 87, 75, 76, 71, 3, 76, 77, 109, 70, 80, 87, 70, 71, 112, SignedBytes.MAX_POWER_OF_TWO, 81, 76, 79, 79, 35, 103, 108, 102, 112, 35, 109, 108, 119, 35, 106, 110, 115, 111, 102, 110, 102, 109, 119, 35, 106, 109, 119, 102, 113, 101, 98, 96, 102, 35, 110, 102, 119, 107, 108, 103, 35, 108, 109, 77, 102, 112, 119, 102, 103, 80, 96, 113, 108, 111, 111, 66, 96, 96, 102, 115, 119, 102, 103, 81, Ascii.NAK, Ascii.RS, Ascii.DC4, 2, 81, Ascii.US, Ascii.RS, 5, 81, Ascii.CAN, Ascii.FS, 1, Ascii.GS, Ascii.DC4, Ascii.FS, Ascii.DC4, Ascii.US, 5, 81, Ascii.CAN, Ascii.US, 5, Ascii.DC4, 3, Ascii.ETB, Ascii.DLE, Ascii.DC2, Ascii.DC4, 81, Ascii.FS, Ascii.DC4, 5, Ascii.EM, Ascii.RS, Ascii.NAK, 81, Ascii.RS, Ascii.US, 34, 5, Ascii.DLE, 3, 5, 63, Ascii.DC4, 2, 5, Ascii.DC4, Ascii.NAK, 34, Ascii.DC2, 3, Ascii.RS, Ascii.GS, Ascii.GS, 47, 107, 96, 106, 124, 47, 97, 96, 123, 47, 102, 98, 127, 99, 106, 98, 106, 97, 123, 47, 102, 97, 123, 106, 125, 105, 110, 108, 106, 47, 98, 106, 123, 103, 96, 107, 47, 96, 97, 92, 123, 96, 127, 65, 106, 124, 123, 106, 107, 92, 108, 125, 96, 99, 99, 75, 116, 120, 106, 77, 124, 111, 120, 115, 105, Base64.padSymbol, 80, 111, 99, 113, 86, 103, 116, 99, 104, 114, 69, 105, 107, 118, 103, 114};
            }

            @Override // com.facebook.ads.redexgen.X.C2554hq
            public final void A02(ViewParent viewParent, View view) {
                try {
                    viewParent.onStopNestedScroll(view);
                } catch (AbstractMethodError e) {
                    Log.e(A00(389, 16, 60), A00(378, 11, 39) + viewParent + A00(323, 55, 53), e);
                }
            }

            @Override // com.facebook.ads.redexgen.X.C2554hq
            public final void A03(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
                try {
                    viewParent.onNestedScroll(view, i, i2, i3, i4);
                } catch (AbstractMethodError e) {
                    Log.e(A00(389, 16, 60), A00(378, 11, 39) + viewParent + A00(157, 51, 25), e);
                }
            }

            @Override // com.facebook.ads.redexgen.X.C2554hq
            public final void A04(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
                try {
                    viewParent.onNestedPreScroll(view, i, i2, iArr);
                } catch (AbstractMethodError e) {
                    Log.e(A00(389, 16, 60), A00(378, 11, 39) + viewParent + A00(103, 54, 31), e);
                }
            }

            @Override // com.facebook.ads.redexgen.X.C2554hq
            public final void A05(ViewParent viewParent, View view, View view2, int i) {
                try {
                    viewParent.onNestedScrollAccepted(view, view2, i);
                } catch (AbstractMethodError e) {
                    Log.e(A00(389, 16, 60), A00(378, 11, 39) + viewParent + A00(208, 59, 57), e);
                }
            }

            @Override // com.facebook.ads.redexgen.X.C2554hq
            public final boolean A06(ViewParent viewParent, View view, float f, float f2) {
                try {
                    return viewParent.onNestedPreFling(view, f, f2);
                } catch (AbstractMethodError e) {
                    Log.e(A00(389, 16, 60), A00(378, 11, 39) + viewParent + A00(50, 53, 103), e);
                    return false;
                }
            }

            @Override // com.facebook.ads.redexgen.X.C2554hq
            public final boolean A07(ViewParent viewParent, View view, float f, float f2, boolean z) {
                try {
                    return viewParent.onNestedFling(view, f, f2, z);
                } catch (AbstractMethodError e) {
                    Log.e(A00(389, 16, 60), A00(378, 11, 39) + viewParent + A00(0, 50, 85), e);
                    return false;
                }
            }

            @Override // com.facebook.ads.redexgen.X.C2554hq
            public final boolean A08(ViewParent viewParent, View view, View view2, int i) {
                try {
                    return viewParent.onStartNestedScroll(view, view2, i);
                } catch (AbstractMethodError e) {
                    Log.e(A00(389, 16, 60), A00(378, 11, 39) + viewParent + A00(267, 56, 75), e);
                    return false;
                }
            }
        };
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 64);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{115, 114, 82, 121, 111, 104, 121, 120, 76, 110, 121, 79, 127, 110, 115, 112, 112, 6, 7, 39, Ascii.FF, Ascii.SUB, Ascii.GS, Ascii.FF, Ascii.CR, 58, 10, Ascii.ESC, 6, 5, 5, 119, 118, 86, 125, 107, 108, 125, 124, 75, 123, 106, 119, 116, 116, 89, 123, 123, 125, 104, 108, 125, 124, 126, 127, 66, 101, 112, 99, 101, 95, 116, 98, 101, 116, 117, 66, 114, 99, 126, 125, 125, 85, 84, 105, 78, 85, 74, 116, 95, 73, 78, 95, 94, 105, 89, 72, 85, 86, 86};
    }

    public static void A02(ViewParent viewParent, View view, int i) {
        if (0 != 0) {
            throw new NullPointerException(A00(72, 18, 122));
        }
        if (i == 0) {
            A01.A02(viewParent, view);
        }
    }

    public static void A03(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5) {
        if (0 != 0) {
            throw new NullPointerException(A00(17, 14, 41));
        }
        if (i5 == 0) {
            A01.A03(viewParent, view, i, i2, i3, i4);
        }
    }

    public static void A04(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (0 != 0) {
            throw new NullPointerException(A00(0, 17, 92));
        }
        if (i3 == 0) {
            A01.A04(viewParent, view, i, i2, iArr);
        }
    }

    public static void A05(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (0 != 0) {
            throw new NullPointerException(A00(31, 22, 88));
        }
        if (i2 == 0) {
            A01.A05(viewParent, view, view2, i);
        }
    }

    public static boolean A06(ViewParent viewParent, View view, float f, float f2) {
        return A01.A06(viewParent, view, f, f2);
    }

    public static boolean A07(ViewParent viewParent, View view, float f, float f2, boolean z) {
        return A01.A07(viewParent, view, f, f2, z);
    }

    public static boolean A08(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (0 != 0) {
            throw new NullPointerException(A00(53, 19, 81));
        }
        if (i2 == 0) {
            return A01.A08(viewParent, view, view2, i);
        }
        return false;
    }
}
