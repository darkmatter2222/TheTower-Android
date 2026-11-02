package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Bundle;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class UK implements InterfaceC1678Jt {
    public static byte[] A0H;
    public static String[] A0I = {"CRN0hGm9pLPRKzlpzE443dmYLVfMUuoy", "rnDEoG", "ItK9AhqRSbWdzc6lXKTPtxjTH0z1DcUl", "JI2gcrD7INQNJp2I4TzyxvCSr3A9oR", "CNqMxmhzBOjtEQdMOhwR", "HJQ3OXuP0FxDG82bkyHAEZvRk", "KBZAcECbAAaQLfP89GkTUbK7uJBbcbRh", "4or5KbzE8wJ6ToGpR"};
    public static final InterfaceC1677Js<UK> A0J;
    public static final Object A0K;
    public static final C1933Ug A0L;
    public static final Object A0M;
    public static final String A0N;
    public static final String A0O;
    public static final String A0P;
    public static final String A0Q;
    public static final String A0R;
    public static final String A0S;
    public static final String A0T;
    public static final String A0U;
    public static final String A0V;
    public static final String A0W;
    public static final String A0X;
    public static final String A0Y;
    public static final String A0Z;
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public long A06;
    public long A07;
    public C1937Uk A08;
    public Object A0A;

    @Deprecated
    public Object A0B;
    public boolean A0D;

    @Deprecated
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public Object A0C = A0K;
    public C1933Ug A09 = A0L;

    static {
        A03();
        A0K = new Object();
        A0M = new Object();
        A0L = new C1694Kj().A03(A02(0, 48, 117)).A00(Uri.EMPTY).A05();
        A0W = N1.A0h(1);
        A0Y = N1.A0h(2);
        A0Z = N1.A0h(3);
        A0P = N1.A0h(4);
        A0T = N1.A0h(5);
        A0R = N1.A0h(6);
        A0V = N1.A0h(7);
        A0S = N1.A0h(8);
        A0N = N1.A0h(9);
        A0O = N1.A0h(10);
        A0Q = N1.A0h(11);
        A0U = N1.A0h(12);
        A0X = N1.A0h(13);
        A0J = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.UL
            @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
            public final InterfaceC1678Jt A7F(Bundle bundle) {
                return UK.A00(bundle);
            }
        };
    }

    public static UK A00(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(A0W);
        C1933Ug c1933Ug = bundle2 != null ? (C1933Ug) C1933Ug.A07.A7F(bundle2) : C1933Ug.A08;
        long j = bundle.getLong(A0Y, -9223372036854775807L);
        long j2 = bundle.getLong(A0Z, -9223372036854775807L);
        long j3 = bundle.getLong(A0P, -9223372036854775807L);
        boolean z = bundle.getBoolean(A0T, false);
        boolean z2 = bundle.getBoolean(A0R, false);
        Bundle bundle3 = bundle.getBundle(A0V);
        C1937Uk c1937Uk = bundle3 != null ? (C1937Uk) C1937Uk.A06.A7F(bundle3) : null;
        boolean z3 = bundle.getBoolean(A0S, false);
        long j4 = bundle.getLong(A0N, 0L);
        long j5 = bundle.getLong(A0O, -9223372036854775807L);
        int i = bundle.getInt(A0Q, 0);
        int i2 = bundle.getInt(A0U, 0);
        long j6 = bundle.getLong(A0X, 0L);
        UK uk = new UK();
        uk.A07(A0M, c1933Ug, null, j, j2, j3, z, z2, c1937Uk, j4, j5, i, i2, j6);
        uk.A0F = z3;
        return uk;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 88);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0H = new byte[]{48, 60, 58, -5, 51, 46, 48, 50, 47, 60, 60, 56, -5, 46, 49, SignedBytes.MAX_POWER_OF_TWO, -5, 46, 59, 49, 63, 60, 54, 49, 69, -5, 58, 50, 49, 54, 46, 0, -5, 48, 60, 58, 58, 60, 59, -5, 33, 54, 58, 50, 57, 54, 59, 50};
    }

    public final long A04() {
        return N1.A0P(this.A02);
    }

    public final long A05() {
        return this.A02;
    }

    public final long A06() {
        return N1.A0P(this.A03);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0022  */
    public final UK A07(Object obj, C1933Ug c1933Ug, Object obj2, long j, long j2, long j3, boolean z, boolean z2, C1937Uk c1937Uk, long j4, long j5, int i, int i2, long j6) {
        Object obj3;
        this.A0C = obj;
        this.A09 = c1933Ug != null ? c1933Ug : A0L;
        if (c1933Ug != null) {
            C1702Kr c1702Kr = c1933Ug.A03;
            if (A0I[3].length() != 30) {
                throw new RuntimeException();
            }
            A0I[6] = "h3G8ym5P8t5kbfswind79baZa3Ju2VDk";
            if (c1702Kr != null) {
                obj3 = c1933Ug.A03.A03;
            } else {
                obj3 = null;
            }
        } else {
            obj3 = null;
        }
        this.A0B = obj3;
        this.A0A = obj2;
        this.A06 = j;
        this.A07 = j2;
        this.A04 = j3;
        this.A0G = z;
        this.A0D = z2;
        this.A0E = c1937Uk != null;
        this.A08 = c1937Uk;
        this.A02 = j4;
        this.A03 = j5;
        this.A00 = i;
        this.A01 = i2;
        this.A05 = j6;
        this.A0F = false;
        if (A0I[3].length() != 30) {
            return this;
        }
        String[] strArr = A0I;
        strArr[7] = "10uQ3EvA1StLF51Ey";
        strArr[4] = "1GYw7E8tdmALiJ1Exlj3";
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:46:0x00db  */
    /* JADX WARN: Code duplicated, block: B:53:0x00f0  */
    public final boolean equals(Object obj) {
        long j;
        if (this == obj) {
            return true;
        }
        if (obj == null || !getClass().equals(obj.getClass())) {
            return false;
        }
        UK uk = (UK) obj;
        if (N1.A1E(this.A0C, uk.A0C) && N1.A1E(this.A09, uk.A09) && N1.A1E(this.A0A, uk.A0A)) {
            boolean zA1E = N1.A1E(this.A08, uk.A08);
            if (A0I[6].charAt(13) == 'f') {
                A0I[5] = "VZCjmgY1";
                if (zA1E && this.A06 == uk.A06) {
                    long j2 = this.A07;
                    long j3 = uk.A07;
                    if (A0I[3].length() == 30) {
                        String[] strArr = A0I;
                        strArr[7] = "Ns7gCmiAWnf8TCTMb";
                        strArr[4] = "qNDpCiYA7n4834q8C0O8";
                        if (j2 == j3 && this.A04 == uk.A04) {
                            boolean z = this.A0G;
                            boolean z2 = uk.A0G;
                            if (A0I[5].length() != 7) {
                                A0I[0] = "jKXpBwmT3BpaphLVXOvr3km9c4JXYR51";
                                if (z == z2) {
                                    if (this.A0D == uk.A0D && this.A0F == uk.A0F) {
                                        j = this.A02;
                                        if (A0I[2].charAt(21) != 'o') {
                                            A0I[0] = "rLVvreRZahpYjM6MuIkPSbmg4vaZeUJ4";
                                            if (j == uk.A02) {
                                                if (this.A03 != uk.A03 && this.A00 == uk.A00 && this.A01 == uk.A01 && this.A05 == uk.A05) {
                                                    return true;
                                                }
                                            }
                                        } else if (j == uk.A02) {
                                            if (this.A03 != uk.A03) {
                                            }
                                        }
                                    }
                                }
                            } else if (z == z2) {
                                if (this.A0D == uk.A0D) {
                                    j = this.A02;
                                    if (A0I[2].charAt(21) != 'o') {
                                        A0I[0] = "rLVvreRZahpYjM6MuIkPSbmg4vaZeUJ4";
                                        if (j == uk.A02) {
                                            if (this.A03 != uk.A03) {
                                            }
                                        }
                                    } else if (j == uk.A02) {
                                        if (this.A03 != uk.A03) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new RuntimeException();
        }
        return false;
    }

    public final int hashCode() {
        return (((((((((((((((((((((((((((((7 * 31) + this.A0C.hashCode()) * 31) + this.A09.hashCode()) * 31) + (this.A0A == null ? 0 : this.A0A.hashCode())) * 31) + (this.A08 != null ? this.A08.hashCode() : 0)) * 31) + ((int) (this.A06 ^ (this.A06 >>> 32)))) * 31) + ((int) (this.A07 ^ (this.A07 >>> 32)))) * 31) + ((int) (this.A04 ^ (this.A04 >>> 32)))) * 31) + (this.A0G ? 1 : 0)) * 31) + (this.A0D ? 1 : 0)) * 31) + (this.A0F ? 1 : 0)) * 31) + ((int) (this.A02 ^ (this.A02 >>> 32)))) * 31) + ((int) (this.A03 ^ (this.A03 >>> 32)))) * 31) + this.A00) * 31) + this.A01) * 31) + ((int) (this.A05 ^ (this.A05 >>> 32)));
    }
}
