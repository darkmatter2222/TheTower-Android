package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.b8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public abstract class AbstractC2143b8 {
    public static String[] A00 = {"byjuLDSAzhwRGO7eKKPI3or4AjnenBfg", "BT7bwZqbuVe6NV2hX8Ecfp0mExchBrJu", "aAG2C4tSMMggRHfXlZpibIt7s3KN1quw", "20ZxdlGZmGUMkXVcBqc3NOAHKm2atkKo", "d84S0i0AZIa6E3JHHu7iVpzB1yidxeR7", "LrYdV1XxeE5MkXAYS54WiQwkvWuBaZAe", "Si4gdBsV7XbcFojchbGSMgBQBQBK0sit", "BYheausTDQAkRyRY2BEjJPVsFpUkSvHM"};
    public static final int[] A01 = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static boolean A00(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579 && z) {
            return true;
        }
        for (int i2 : A01) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean A01(Q9 q9) throws IOException {
        return A03(q9, true, false);
    }

    public static boolean A02(Q9 q9, boolean z) throws IOException {
        return A03(q9, false, z);
    }

    public static boolean A03(Q9 q9, boolean z, boolean z2) throws IOException {
        long jA90 = q9.A90();
        long j = 4096;
        if (jA90 != -1 && jA90 <= 4096) {
            j = jA90;
        }
        int i = (int) j;
        C1744Mk c1744Mk = new C1744Mk(64);
        int i2 = 0;
        boolean z3 = false;
        boolean z4 = false;
        while (i2 < i) {
            int i3 = 8;
            c1744Mk.A0d(8);
            boolean zAI7 = q9.AI7(c1744Mk.A0l(), 0, 8, true);
            String[] strArr = A00;
            if (strArr[2].charAt(4) == strArr[3].charAt(4)) {
                throw new RuntimeException();
            }
            A00[5] = "m00lnZKg3AS2XW8qA0V7ArZlWhVusfYO";
            if (!zAI7) {
                break;
            }
            long jA0Q = c1744Mk.A0Q();
            int iA0C = c1744Mk.A0C();
            if (jA0Q == 1) {
                i3 = 16;
                q9.AI6(c1744Mk.A0l(), 8, 8);
                c1744Mk.A0e(16);
                jA0Q = c1744Mk.A0P();
            } else if (jA0Q == 0) {
                long jA91 = q9.A90();
                if (jA91 != -1) {
                    jA0Q = (jA91 - q9.A9L()) + ((long) 8);
                }
            }
            long j2 = i3;
            if (A00[0].charAt(4) != 'L') {
                throw new RuntimeException();
            }
            A00[5] = "UtmF8gcvAmDE2tg754qnRZQuWqRLyGBv";
            if (jA0Q < j2) {
                return false;
            }
            i2 += i3;
            if (iA0C == 1836019574) {
                i += (int) jA0Q;
                if (jA90 != -1 && i > jA90) {
                    i = (int) jA90;
                }
            } else {
                if (iA0C == 1836019558 || iA0C == 1836475768) {
                    z4 = true;
                    break;
                }
                if ((((long) i2) + jA0Q) - ((long) i3) >= i) {
                    break;
                }
                int i4 = (int) (jA0Q - ((long) i3));
                i2 += i4;
                if (iA0C == 1718909296) {
                    if (i4 < 8) {
                        return false;
                    }
                    c1744Mk.A0d(i4);
                    q9.AI6(c1744Mk.A0l(), 0, i4);
                    int i5 = i4 / 4;
                    for (int i6 = 0; i6 < i5; i6++) {
                        if (i6 != 1) {
                            if (A00(c1744Mk.A0C(), z2)) {
                                z3 = true;
                                break;
                            }
                        } else {
                            if (A00[0].charAt(4) != 'L') {
                                throw new RuntimeException();
                            }
                            String[] strArr2 = A00;
                            strArr2[2] = "dzqLaRrB8roYzptOlyeuWukPOQGnaBr5";
                            strArr2[3] = "tCGCFdpd4Lxzt3Z9CL7bUlzjSUebpCXv";
                            c1744Mk.A0g(4);
                        }
                    }
                    if (!z3) {
                        return false;
                    }
                } else if (i4 != 0) {
                    q9.A4X(i4);
                }
            }
        }
        return z3 && z == z4;
    }
}
