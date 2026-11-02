package com.facebook.ads.redexgen.X;

import com.applovin.sdk.AppLovinErrorCodes;
import java.util.Arrays;
import java.util.Formattable;
import java.util.MissingFormatArgumentException;
import java.util.UnknownFormatConversionException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class YP {
    public static byte[] A00;
    public static String[] A01 = {"s22ei7jEKUY9529lCkJcZ4gJOWEEq6sw", "duV9wRl87qqwtjVxV5Z0l273mrzPB", "wMMC0QDni77iJPSC6cwStA4u0doNggjm", "8ULfkGAtnNjfoAXaBKqRxFGDDrSAPchC", "VlaoSfTQE6wEJso3tLAiebs4KdKOrk2p", "qxQGNomuCID4prBZS5y4k4PWwIkvdajS", "", "T0faEiDKlZDlpeu3iXR"};
    public static final Object[] A02;

    static {
        A0L();
        A02 = new Object[]{null};
    }

    public static int A00(String str) {
        return A0C(null, str, 0, null, null, null, null);
    }

    public static int A01(String str, int i) {
        int length = str.length();
        boolean z = false;
        while (i < length) {
            if (str.charAt(i) == '%' && A02(str, i) == -100) {
                if (str.charAt(i + 1) != '%') {
                    return i + 2;
                }
                i++;
                z = true;
            }
            i++;
        }
        return z ? AppLovinErrorCodes.UNABLE_TO_PRECACHE_IMAGE_RESOURCES : AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES;
    }

    public static int A02(String str, int i) {
        int i2 = i + 1;
        if (str.length() <= i2) {
            return -101;
        }
        char cCharAt = str.charAt(i2);
        return (cCharAt == 's' || cCharAt == 'd' || cCharAt == '%') ? -100 : -101;
    }

    public static int A03(@Nullable String str, @Nullable int i, @Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, Object obj4, Object[] objArr) {
        switch (i) {
            case 0:
                int iA00 = A00(str);
                if (A01[6].length() == 24) {
                    throw new RuntimeException();
                }
                A01[7] = "WehvTxaaI3lXA2zhZ2U";
                return iA00;
            case 1:
                return A04(str, obj);
            case 2:
                return A05(str, obj, obj2);
            case 3:
                return A06(str, obj, obj2, obj3);
            case 4:
                return A07(str, obj, obj2, obj3, obj4);
            default:
                return A08(str, objArr);
        }
    }

    public static int A04(@Nullable String str, Object obj) {
        return A0C(null, str, 1, obj, null, null, null);
    }

    public static int A05(@Nullable String str, @Nullable Object obj, Object obj2) {
        return A0C(null, str, 2, obj, obj2, null, null);
    }

    public static int A06(@Nullable String str, @Nullable Object obj, @Nullable Object obj2, Object obj3) {
        return A0C(null, str, 3, obj, obj2, obj3, null);
    }

    public static int A07(@Nullable String str, @Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, Object obj4) {
        return A0C(null, str, 4, obj, obj2, obj3, obj4);
    }

    public static int A08(@Nullable String str, Object[] objArr) {
        return A0F(null, str, objArr);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0041 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:18:0x0042 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bb, code lost:
    
        if (r3 != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00bd, code lost:
    
        if (r6 != null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00bf, code lost:
    
        r5 = 0 + 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ca, code lost:
    
        if (r3 != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00cd, code lost:
    
        r6.append(((java.lang.Long) r7).longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d8, code lost:
    
        if (r6 != null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00da, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e1, code lost:
    
        throw new java.lang.AssertionError();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A09(@javax.annotation.Nullable java.lang.StringBuilder r6, @javax.annotation.Nullable java.lang.Object r7) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.YP.A09(java.lang.StringBuilder, java.lang.Object):int");
    }

    public static int A0A(@Nullable StringBuilder sb, @Nullable Object obj) {
        if (obj instanceof Formattable) {
            if (sb != null) {
                throw new AssertionError();
            }
            String[] strArr = A01;
            if (strArr[0].charAt(21) != strArr[5].charAt(21)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[0] = "4BKkoEbfngOw5R5InwlEw4FZQQsGPoGb";
            strArr2[5] = "0QrsJ9emLHdwhPrF0n6J941lHnHZbBBM";
            return -1;
        }
        String string = null;
        if (obj instanceof String) {
            if (A01[7].length() != 19) {
                string = (String) obj;
            } else {
                A01[6] = "2Hj2rBW3humzXZ";
                string = (String) obj;
            }
        } else if (obj != null) {
            string = obj.toString();
        }
        if (string == null) {
            string = A0G(47, 4, 32);
        }
        if (sb == null) {
            return string.length();
        }
        sb.append(string);
        return -3;
    }

    public static int A0B(@Nullable StringBuilder sb, String str, int i, int i2, boolean z) {
        int length = str.length();
        int i3 = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '%') {
                if (length <= i + 1 || str.charAt(i + 1) != '%') {
                    if (!z) {
                        throw new AssertionError();
                    }
                    if (A01[1].length() != 29) {
                        throw new RuntimeException();
                    }
                    A01[6] = "iV8t4Rd0";
                    return -1;
                }
                i++;
            }
            if (sb == null) {
                i3++;
            } else {
                sb.append(cCharAt);
            }
            i++;
        }
        if (z) {
            return i2 + i3;
        }
        return -3;
    }

    public static int A0C(@Nullable StringBuilder sb, @Nullable String str, @Nullable int i, @Nullable Object obj, @Nullable Object obj2, Object obj3, Object obj4) {
        int i2;
        int iA01 = 0;
        int i3 = 0;
        boolean z = sb == null;
        int i4 = i == 0 ? -1 : 0;
        int i5 = i4;
        while (true) {
            if (i5 >= i) {
                i2 = AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES;
                break;
            }
            int iA0D = A0D(sb, str, iA01, obj, obj2, obj3, obj4, i5);
            if (iA0D == -1) {
                return -1;
            }
            if (z) {
                i3 += iA0D;
            }
            iA01 = A01(str, iA01);
            if (i5 == i4) {
                i2 = AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES;
                if (iA01 == -200 && z) {
                    return -2;
                }
            } else {
                i2 = AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES;
            }
            if (iA01 < 0) {
                break;
            }
            i5++;
        }
        if (iA01 != i2 && iA01 != -201) {
            return A0B(sb, str, iA01, i3, z);
        }
        if (z) {
            return i3;
        }
        return -3;
    }

    public static int A0D(@Nullable StringBuilder sb, @Nullable String str, @Nullable int i, @Nullable Object obj, @Nullable Object obj2, Object obj3, Object obj4, int i2) {
        switch (i2) {
            case -1:
                int iA0E = A0E(sb, str, i, null, false);
                if (A01[3].charAt(12) != 'o') {
                    throw new RuntimeException();
                }
                A01[1] = "hCwEXGE3aO1xOwN9cf3ilFtdUGpFL";
                return iA0E;
            case 0:
                return A0E(sb, str, i, obj, true);
            case 1:
                return A0E(sb, str, i, obj2, true);
            case 2:
                return A0E(sb, str, i, obj3, true);
            case 3:
                return A0E(sb, str, i, obj4, true);
            default:
                throw new AssertionError();
        }
    }

    public static int A0E(@Nullable StringBuilder sb, @Nullable String str, int i, Object obj, boolean z) {
        int iA09;
        int length = str.length();
        int i2 = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '%') {
                if (A02(str, i) != -100) {
                    return -1;
                }
                char cCharAt2 = str.charAt(i + 1);
                if (!z && cCharAt2 != '%') {
                    return -1;
                }
                boolean z2 = true;
                if (cCharAt2 == 's') {
                    iA09 = A0A(sb, obj);
                } else if (cCharAt2 == 'd') {
                    iA09 = A09(sb, obj);
                } else if (cCharAt2 == '%') {
                    z2 = false;
                    if (sb != null) {
                        sb.append('%');
                    }
                    iA09 = 1;
                    i++;
                } else {
                    iA09 = -1;
                }
                if (iA09 == -1) {
                    return -1;
                }
                if (sb == null) {
                    i2 += iA09;
                }
                if (z2) {
                    break;
                }
            } else if (sb == null) {
                i2++;
            } else {
                sb.append(cCharAt);
            }
            i++;
        }
        if (sb == null) {
            return i2;
        }
        return -3;
    }

    public static int A0F(@Nullable StringBuilder sb, @Nullable String str, Object... objArr) {
        int iA01 = 0;
        int i = 0;
        boolean z = sb == null;
        boolean z2 = false;
        if (objArr == null || objArr.length == 0) {
            objArr = A02;
            z2 = true;
        }
        boolean z3 = false;
        for (Object obj : objArr) {
            int iA0E = A0E(sb, str, iA01, obj, !z2);
            if (iA0E == -1) {
                return -1;
            }
            if (z) {
                i += iA0E;
            }
            iA01 = A01(str, iA01);
            if (iA01 == -200) {
                break;
            }
            if (iA01 == -201) {
                z3 = true;
                break;
            }
            z3 = true;
        }
        if (z && !z3) {
            return -2;
        }
        if (iA01 != -200 && iA01 != -201) {
            return A0B(sb, str, iA01, i, z);
        }
        if (z) {
            return i;
        }
        if (A01[1].length() != 29) {
            throw new RuntimeException();
        }
        A01[6] = "CmNNkHWmndNZo1faI8JZxc9feyzulH";
        return -3;
    }

    public static String A0G(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A0H(@Nullable String str, @Nullable int i, @Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, Object obj4, Object[] objArr) {
        switch (i) {
            case 0:
                return A0K(str, new Object[0]);
            case 1:
                return A0K(str, obj);
            case 2:
                return A0K(str, obj, obj2);
            case 3:
                return A0K(str, obj, obj2, obj3);
            case 4:
                return A0K(str, obj, obj2, obj3, obj4);
            default:
                return A0K(str, objArr);
        }
    }

    public static String A0I(@Nullable String str, @Nullable int i, @Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, Object obj4, Object[] objArr) {
        int iA03 = A03(str, i, obj, obj2, obj3, obj4, objArr);
        if (iA03 == -1) {
            return A0H(str, i, obj, obj2, obj3, obj4, objArr);
        }
        if (iA03 == -2) {
            return str;
        }
        StringBuilder sb = new StringBuilder(iA03);
        if (i == -1) {
            A0F(sb, str, objArr);
        } else {
            A0C(sb, str, i, obj, obj2, obj3, obj4);
        }
        return sb.toString();
    }

    public static String A0J(@Nullable String str, Object obj) {
        return A0I(str, 1, obj, null, null, null, null);
    }

    public static String A0K(@Nullable String str, Object... objArr) {
        try {
            return String.format(null, str, (Object[]) YL.A00(objArr, A0G(2, 45, 18)));
        } catch (MissingFormatArgumentException | UnknownFormatConversionException e) {
            throw new RuntimeException(e.getMessage() + A0G(0, 2, 103) + str);
        }
    }

    public static void A0L() {
        A00 = new byte[]{6, -20, -54, -33, -26, -20, -29, -37, -105, -27, -26, -21, -105, -39, -36, -105, -27, -20, -29, -29, -105, -20, -27, -37, -36, -23, -105, -27, -26, -23, -28, -40, -29, -105, -38, -32, -23, -38, -20, -28, -22, -21, -40, -27, -38, -36, -22, -13, -6, -15, -15};
    }
}
