package com.facebook.ads.redexgen.X;

import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.48, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AnonymousClass48 extends AnonymousClass89 {
    public static byte[] A0I;
    public static String[] A0J = {"5avthSGNkh5nCkdsZIi", "L7ywCvhw", "hcOfJ", "5OsTCrdsimt4RFq0qGqjElJ", "wTm22FlZF43Koip7lRcC4ioY9aXXXMpL", "iAEOK", "pdCqApPDO85ILCqbyu426ZzonGdtH", "8UARrx67oil6FdkvMzqyfSv"};
    public static final int[] A0K;
    public static final int[] A0L;
    public static final int[] A0M;
    public static final int[] A0N;
    public static final int[] A0O;
    public static final int[] A0P;
    public static final int[] A0Q;
    public static final boolean[] A0R;
    public byte A00;
    public byte A01;
    public int A02;
    public int A03;
    public long A05;
    public List<C1911Th> A07;
    public List<C1911Th> A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public final int A0C;
    public final int A0D;
    public final int A0E;
    public final long A0F;
    public final C1744Mk A0G = new C1744Mk();
    public final ArrayList<C2169bY> A0H = new ArrayList<>();
    public C2169bY A06 = new C2169bY(0, 4);
    public int A04 = 0;

    static {
        A09();
        A0M = new int[]{11, 1, 3, 12, 14, 5, 7, 9};
        A0L = new int[]{0, 4, 8, 12, 16, 20, 24, 28};
        A0Q = new int[]{-1, -16711936, -16776961, -16711681, SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -65281};
        A0K = new int[]{32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, kotlin.fh.g1, kotlin.fh.h1, 108, 109, 110, 111, InterfaceC3669k1.d.b.j, InterfaceC3669k1.d.b.k, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};
        A0N = new int[]{174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
        A0O = new int[]{193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, InterfaceC3669k1.c.b.g, InterfaceC3669k1.c.b.h, 239, 212, 217, 249, 219, 171, 187};
        A0P = new int[]{195, 227, InterfaceC3669k1.c.b.f, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
        A0R = new boolean[]{false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    }

    public AnonymousClass48(String str, int i, long j) {
        this.A0F = j > 0 ? 1000 * j : -9223372036854775807L;
        this.A0C = A06(48, 25, 26).equals(str) ? 2 : 3;
        switch (i) {
            case 1:
                this.A0D = 0;
                this.A0E = 0;
                break;
            case 2:
                this.A0D = 1;
                this.A0E = 0;
                break;
            case 3:
                this.A0D = 0;
                this.A0E = 1;
                break;
            case 4:
                this.A0D = 1;
                this.A0E = 1;
                break;
            default:
                MV.A07(A06(0, 13, 82), A06(13, 35, 91));
                this.A0D = 0;
                this.A0E = 0;
                break;
        }
        A0E(0);
        A08();
        this.A0A = true;
        this.A05 = -9223372036854775807L;
    }

    public static char A00(byte b) {
        return (char) A0K[(b & 127) - 32];
    }

    public static char A01(byte b) {
        return (char) A0O[b & Ascii.US];
    }

    public static char A02(byte b) {
        return (char) A0P[b & Ascii.US];
    }

    public static char A03(byte b) {
        return (char) A0N[b & Ascii.SI];
    }

    public static char A04(byte b, byte b2) {
        if ((b & 1) != 0) {
            return A02(b2);
        }
        char cA01 = A01(b2);
        if (A0J[1].length() != 8) {
            throw new RuntimeException();
        }
        String[] strArr = A0J;
        strArr[3] = "or9hMb2GTVnsuDDJtVDKwJP";
        strArr[7] = "v53taZhdbGsZv6EdprRx1cb";
        return cA01;
    }

    public static int A05(byte b) {
        return (b >> 3) & 1;
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 125);
        }
        return new String(bArrCopyOfRange);
    }

    private List<C1911Th> A07() {
        int iMin = 2;
        int size = this.A0H.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            C1911Th c1911ThA08 = this.A0H.get(i).A08(Integer.MIN_VALUE);
            arrayList.add(c1911ThA08);
            if (c1911ThA08 != null) {
                iMin = Math.min(iMin, c1911ThA08.A08);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            C1911Th c1911Th = (C1911Th) arrayList.get(i2);
            if (c1911Th != null) {
                if (c1911Th.A08 != iMin) {
                    c1911Th = (C1911Th) AbstractC1722Ln.A01(this.A0H.get(i2).A08(iMin));
                }
                arrayList2.add(c1911Th);
            }
        }
        return arrayList2;
    }

    private void A08() {
        this.A06.A0C(this.A02);
        this.A0H.clear();
        this.A0H.add(this.A06);
    }

    public static void A09() {
        A0I = new byte[]{108, 74, 78, Ascii.EM, Ascii.US, Ascii.ETB, 107, 74, 76, SignedBytes.MAX_POWER_OF_TWO, 75, 74, 93, 111, 72, 80, 71, 74, 79, 66, 6, 69, 78, 71, 72, 72, 67, 74, 8, 6, 98, 67, SignedBytes.MAX_POWER_OF_TWO, 71, 83, 74, 82, 79, 72, 65, 6, 82, 73, 6, 101, 101, Ascii.ETB, 8, 6, Ascii.ETB, Ascii.ETB, Ascii.VT, Ascii.SO, 4, 6, 19, Ascii.SO, 8, 9, 72, Ascii.US, 74, 10, Ascii.ETB, 83, 74, 4, 2, 6, 74, 81, 87, 95};
    }

    private void A0A(byte b) {
        this.A06.A0B(' ');
        this.A06.A0F((b >> 1) & 7, (b & 1) == 1);
    }

    private void A0B(byte b) {
        switch (b) {
            case 32:
                A0E(2);
                break;
            case 33:
            case 34:
            case 35:
            case 36:
            case 40:
            default:
                if (this.A02 != 0) {
                    switch (b) {
                        case 33:
                            this.A06.A09();
                            break;
                        case 44:
                            this.A07 = Collections.emptyList();
                            if (this.A02 == 1 || this.A02 == 3) {
                                A08();
                            }
                            break;
                        case 45:
                            if (this.A02 == 1 && !this.A06.A0G()) {
                                this.A06.A0A();
                                break;
                            }
                            break;
                        case 46:
                            A08();
                            break;
                        case 47:
                            this.A07 = A07();
                            A08();
                            break;
                    }
                }
                break;
            case 37:
                A0E(1);
                A0F(2);
                break;
            case 38:
                A0E(1);
                A0F(3);
                break;
            case 39:
                A0E(1);
                A0F(4);
                break;
            case 41:
                A0E(3);
                break;
        }
    }

    private void A0C(byte b, byte b2) {
        int i = A0M[b & 7];
        if ((b2 & 32) != 0) {
            i++;
        }
        if (i != this.A06.A03) {
            if (this.A02 != 1 && !this.A06.A0G()) {
                this.A06 = new C2169bY(this.A02, this.A03);
                this.A0H.add(this.A06);
            }
            C2169bY c2169bY = this.A06;
            if (A0J[4].charAt(12) == 'w') {
                throw new RuntimeException();
            }
            String[] strArr = A0J;
            strArr[3] = "DcsChnubJ5w4sO391Pamf6w";
            strArr[7] = "OeJDKNTkUiCX6ocwK3eoY7M";
            c2169bY.A03 = i;
        }
        boolean z = (b2 & Ascii.DLE) == 16;
        int i2 = (b2 >> 1) & 7;
        this.A06.A0F(z ? 8 : i2, (b2 & 1) == 1);
        if (z) {
            this.A06.A02 = A0L[i2];
        }
    }

    private void A0D(byte b, byte b2) {
        if (A0L(b)) {
            this.A0A = false;
        }
        if (A0K(b)) {
            switch (b2) {
                case 32:
                case 37:
                case 38:
                case 39:
                case 41:
                case 47:
                    this.A0A = true;
                    break;
                case 42:
                case 43:
                    this.A0A = false;
                    break;
            }
        }
    }

    private void A0E(int i) {
        if (this.A02 == i) {
            return;
        }
        int i2 = this.A02;
        this.A02 = i;
        if (i != 3) {
            A08();
            if (i2 == 3 || i == 1 || i == 0) {
                this.A07 = Collections.emptyList();
                return;
            }
            return;
        }
        int i3 = 0;
        while (true) {
            int size = this.A0H.size();
            String[] strArr = A0J;
            if (strArr[3].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A0J[1] = "t04SQziW";
            if (i3 >= size) {
                return;
            }
            this.A0H.get(i3).A0D(i);
            i3++;
        }
    }

    private void A0F(int i) {
        this.A03 = i;
        this.A06.A0E(i);
    }

    private boolean A0G() {
        return (this.A0F == -9223372036854775807L || this.A05 == -9223372036854775807L || A0V() - this.A05 < this.A0F) ? false : true;
    }

    private boolean A0H(byte b) {
        if (A0I(b)) {
            this.A04 = A05(b);
        }
        return this.A04 == this.A0D;
    }

    public static boolean A0I(byte b) {
        return (b & 224) == 0;
    }

    public static boolean A0J(byte b) {
        return (b & 240) == 16;
    }

    public static boolean A0K(byte b) {
        return (b & 247) == 20;
    }

    public static boolean A0L(byte b) {
        return 1 <= b && b <= 15;
    }

    public static boolean A0M(byte b, byte b2) {
        return (b & 246) == 18 && (b2 & 224) == 32;
    }

    public static boolean A0N(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 32;
    }

    public static boolean A0O(byte b, byte b2) {
        return (b & 246) == 20 && (b2 & 240) == 32;
    }

    public static boolean A0P(byte b, byte b2) {
        return (b & 240) == 16 && (b2 & 192) == 64;
    }

    public static boolean A0Q(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 48;
    }

    public static boolean A0R(byte b, byte b2) {
        return (b & 247) == 23 && b2 >= 33 && b2 <= 35;
    }

    private boolean A0S(boolean z, byte b, byte b2) {
        if (!z || !A0J(b)) {
            this.A0B = false;
        } else {
            if (this.A0B && this.A00 == b && this.A01 == b2) {
                this.A0B = false;
                return true;
            }
            this.A0B = true;
            this.A00 = b;
            if (A0J[4].charAt(12) == 'w') {
                throw new RuntimeException();
            }
            A0J[4] = "EXG4zTRNuhoKHo36gTZJWdwUCSkho82B";
            this.A01 = b2;
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89
    /* JADX INFO: renamed from: A0W */
    public final /* bridge */ /* synthetic */ C8B A6Q() throws C1795Oj {
        return super.A6Q();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89, com.facebook.ads.redexgen.X.InterfaceC1775Np
    /* JADX INFO: renamed from: A0X, reason: merged with bridge method [inline-methods] */
    public final C8A A6S() throws C1795Oj {
        C8A c8aA6S = super.A6S();
        if (c8aA6S != null) {
            return c8aA6S;
        }
        if (A0G()) {
            C8A c8aA0Y = A0Y();
            if (A0J[1].length() != 8) {
                throw new RuntimeException();
            }
            String[] strArr = A0J;
            strArr[5] = "5suUi";
            strArr[2] = "gJClB";
            if (c8aA0Y != null) {
                this.A07 = Collections.emptyList();
                this.A05 = -9223372036854775807L;
                c8aA0Y.A0C(A0V(), A0Z(), Long.MAX_VALUE);
                return c8aA0Y;
            }
        }
        String[] strArr2 = A0J;
        if (strArr2[6].length() == strArr2[0].length()) {
            throw new RuntimeException();
        }
        A0J[1] = "FI5BPZoo";
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89
    public final C1793Oh A0Z() {
        this.A08 = this.A07;
        return new C1793Oh((List) AbstractC1722Ln.A01(this.A07));
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89
    /* JADX INFO: renamed from: A0a */
    public final /* bridge */ /* synthetic */ void AIW(C8B c8b) throws C1795Oj {
        super.AIW(c8b);
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0016 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00dc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x00de  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:57:0x0105  */
    /* JADX WARN: Code duplicated, block: B:59:0x010b  */
    /* JADX WARN: Code duplicated, block: B:60:0x010f  */
    /* JADX WARN: Code duplicated, block: B:62:0x0115  */
    /* JADX WARN: Code duplicated, block: B:63:0x0119  */
    /* JADX WARN: Code duplicated, block: B:65:0x011f  */
    /* JADX WARN: Code duplicated, block: B:66:0x0127  */
    /* JADX WARN: Code duplicated, block: B:68:0x012d  */
    /* JADX WARN: Code duplicated, block: B:69:0x0131  */
    /* JADX WARN: Code duplicated, block: B:72:0x0140  */
    /* JADX WARN: Code duplicated, block: B:74:0x0154  */
    /* JADX WARN: Code duplicated, block: B:76:0x016b  */
    /* JADX WARN: Code duplicated, block: B:77:0x0176  */
    /* JADX WARN: Code duplicated, block: B:96:0x00a5 A[SYNTHETIC] */
    @Override // com.facebook.ads.redexgen.X.AnonymousClass89
    public final void A0b(C8B c8b) {
        boolean zA0I;
        C2169bY c2169bY;
        String[] strArr;
        ByteBuffer byteBuffer = (ByteBuffer) AbstractC1722Ln.A01(c8b.A02);
        this.A0G.A0j(byteBuffer.array(), byteBuffer.limit());
        boolean z = false;
        while (true) {
            if (this.A0G.A07() < this.A0C) {
                if (z) {
                    if (this.A02 == 1 || this.A02 == 3) {
                        this.A07 = A07();
                        this.A05 = A0V();
                        return;
                    }
                    return;
                }
                return;
            }
            byte bA0I = this.A0C == 2 ? (byte) -4 : (byte) this.A0G.A0I();
            int iA0I = this.A0G.A0I();
            int iA0I2 = this.A0G.A0I();
            if ((bA0I & 2) == 0 && (bA0I & 1) == this.A0E) {
                byte b = (byte) (iA0I & 127);
                byte b2 = (byte) (iA0I2 & 127);
                if (A0J[1].length() != 8) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0J;
                strArr2[5] = "zzZOL";
                strArr2[2] = "Ii7YA";
                if (b != 0 || b2 != 0) {
                    boolean z2 = this.A09;
                    this.A09 = (bA0I & 4) == 4 && A0R[iA0I] && A0R[iA0I2];
                    if (!A0S(this.A09, b, b2)) {
                        boolean z3 = this.A09;
                        if (A0J[4].charAt(12) != 'w') {
                            A0J[4] = "OQPfwdakyQEEoguuPgoXIjpRrx5nAeXz";
                            if (z3) {
                                A0D(b, b2);
                                if (this.A0A && A0H(b)) {
                                    zA0I = A0I(b);
                                    if (A0J[1].length() != 8) {
                                        String[] strArr3 = A0J;
                                        strArr3[5] = "qrfjn";
                                        strArr3[2] = "qcX0c";
                                        if (zA0I) {
                                            c2169bY = this.A06;
                                            strArr = A0J;
                                            if (strArr[3].length() != strArr[7].length()) {
                                                String[] strArr4 = A0J;
                                                strArr4[6] = "cQQGewpSHeyD1TxEZlNzeXFV7EUQS";
                                                strArr4[0] = "FZt20IToQ9Y3dkLnOsO";
                                                c2169bY.A0B(A00(b));
                                                if ((b2 & 224) != 0) {
                                                    this.A06.A0B(A00(b2));
                                                }
                                            } else {
                                                String[] strArr5 = A0J;
                                                strArr5[3] = "FODveKOqM7gv8wpB8GnQzFJ";
                                                strArr5[7] = "SCaId2ImMQy7oB4WYOLvjJ1";
                                                c2169bY.A0B(A00(b));
                                                if ((b2 & 224) != 0) {
                                                    this.A06.A0B(A00(b2));
                                                }
                                            }
                                        } else if (A0Q(b, b2)) {
                                            this.A06.A0B(A03(b2));
                                        } else if (A0M(b, b2)) {
                                            this.A06.A09();
                                            this.A06.A0B(A04(b, b2));
                                        } else if (A0N(b, b2)) {
                                            A0A(b2);
                                        } else if (A0P(b, b2)) {
                                            A0C(b, b2);
                                        } else if (A0R(b, b2)) {
                                            this.A06.A04 = b2 - 32;
                                        } else if (A0O(b, b2)) {
                                            A0B(b2);
                                        }
                                    } else if (zA0I) {
                                        c2169bY = this.A06;
                                        strArr = A0J;
                                        if (strArr[3].length() != strArr[7].length()) {
                                            String[] strArr6 = A0J;
                                            strArr6[6] = "cQQGewpSHeyD1TxEZlNzeXFV7EUQS";
                                            strArr6[0] = "FZt20IToQ9Y3dkLnOsO";
                                            c2169bY.A0B(A00(b));
                                            if ((b2 & 224) != 0) {
                                                this.A06.A0B(A00(b2));
                                            }
                                        } else {
                                            String[] strArr7 = A0J;
                                            strArr7[3] = "FODveKOqM7gv8wpB8GnQzFJ";
                                            strArr7[7] = "SCaId2ImMQy7oB4WYOLvjJ1";
                                            c2169bY.A0B(A00(b));
                                            if ((b2 & 224) != 0) {
                                                this.A06.A0B(A00(b2));
                                            }
                                        }
                                    } else if (A0Q(b, b2)) {
                                        this.A06.A0B(A03(b2));
                                    } else if (A0M(b, b2)) {
                                        this.A06.A09();
                                        this.A06.A0B(A04(b, b2));
                                    } else if (A0N(b, b2)) {
                                        A0A(b2);
                                    } else if (A0P(b, b2)) {
                                        A0C(b, b2);
                                    } else if (A0R(b, b2)) {
                                        this.A06.A04 = b2 - 32;
                                    } else if (A0O(b, b2)) {
                                        A0B(b2);
                                    }
                                    z = true;
                                }
                            } else if (z2) {
                                A08();
                                z = true;
                            }
                        } else {
                            String[] strArr8 = A0J;
                            strArr8[3] = "axBiQb0Rj1DOhL8QGkD5Lmk";
                            strArr8[7] = "v2K7g7OXfsXZiNtAGVex1VH";
                            if (z3) {
                                A0D(b, b2);
                                if (this.A0A) {
                                    zA0I = A0I(b);
                                    if (A0J[1].length() != 8) {
                                        String[] strArr9 = A0J;
                                        strArr9[5] = "qrfjn";
                                        strArr9[2] = "qcX0c";
                                        if (zA0I) {
                                            c2169bY = this.A06;
                                            strArr = A0J;
                                            if (strArr[3].length() != strArr[7].length()) {
                                                String[] strArr10 = A0J;
                                                strArr10[6] = "cQQGewpSHeyD1TxEZlNzeXFV7EUQS";
                                                strArr10[0] = "FZt20IToQ9Y3dkLnOsO";
                                                c2169bY.A0B(A00(b));
                                                if ((b2 & 224) != 0) {
                                                    this.A06.A0B(A00(b2));
                                                }
                                            } else {
                                                String[] strArr11 = A0J;
                                                strArr11[3] = "FODveKOqM7gv8wpB8GnQzFJ";
                                                strArr11[7] = "SCaId2ImMQy7oB4WYOLvjJ1";
                                                c2169bY.A0B(A00(b));
                                                if ((b2 & 224) != 0) {
                                                    this.A06.A0B(A00(b2));
                                                }
                                            }
                                        } else if (A0Q(b, b2)) {
                                            this.A06.A0B(A03(b2));
                                        } else if (A0M(b, b2)) {
                                            this.A06.A09();
                                            this.A06.A0B(A04(b, b2));
                                        } else if (A0N(b, b2)) {
                                            A0A(b2);
                                        } else if (A0P(b, b2)) {
                                            A0C(b, b2);
                                        } else if (A0R(b, b2)) {
                                            this.A06.A04 = b2 - 32;
                                        } else if (A0O(b, b2)) {
                                            A0B(b2);
                                        }
                                    } else if (zA0I) {
                                        c2169bY = this.A06;
                                        strArr = A0J;
                                        if (strArr[3].length() != strArr[7].length()) {
                                            String[] strArr12 = A0J;
                                            strArr12[6] = "cQQGewpSHeyD1TxEZlNzeXFV7EUQS";
                                            strArr12[0] = "FZt20IToQ9Y3dkLnOsO";
                                            c2169bY.A0B(A00(b));
                                            if ((b2 & 224) != 0) {
                                                this.A06.A0B(A00(b2));
                                            }
                                        } else {
                                            String[] strArr13 = A0J;
                                            strArr13[3] = "FODveKOqM7gv8wpB8GnQzFJ";
                                            strArr13[7] = "SCaId2ImMQy7oB4WYOLvjJ1";
                                            c2169bY.A0B(A00(b));
                                            if ((b2 & 224) != 0) {
                                                this.A06.A0B(A00(b2));
                                            }
                                        }
                                    } else if (A0Q(b, b2)) {
                                        this.A06.A0B(A03(b2));
                                    } else if (A0M(b, b2)) {
                                        this.A06.A09();
                                        this.A06.A0B(A04(b, b2));
                                    } else if (A0N(b, b2)) {
                                        A0A(b2);
                                    } else if (A0P(b, b2)) {
                                        A0C(b, b2);
                                    } else if (A0R(b, b2)) {
                                        this.A06.A04 = b2 - 32;
                                    } else if (A0O(b, b2)) {
                                        A0B(b2);
                                    }
                                    z = true;
                                }
                            } else if (z2) {
                                A08();
                                z = true;
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89
    public final boolean A0d() {
        return this.A07 != this.A08;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89, com.facebook.ads.redexgen.X.InterfaceC1775Np
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89, com.facebook.ads.redexgen.X.InterfaceC1796Ok
    public final /* bridge */ /* synthetic */ void AKz(long j) {
        super.AKz(j);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass89, com.facebook.ads.redexgen.X.InterfaceC1775Np
    public final void flush() {
        super.flush();
        this.A07 = null;
        this.A08 = null;
        A0E(0);
        A0F(4);
        A08();
        this.A09 = false;
        this.A0B = false;
        this.A00 = (byte) 0;
        this.A01 = (byte) 0;
        this.A04 = 0;
        this.A0A = true;
        this.A05 = -9223372036854775807L;
    }
}
