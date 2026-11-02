package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.provider.Settings;
import android.util.Pair;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class QG {
    public static byte[] A02;
    public static String[] A03 = {"Jjjr15BdmU1e1w5XBAxt2PqiJzdOv9H6", "k5EK5bSpx4qNpEuGVXJnW5pYWqYUNfvd", "AuFAuVqlCp0La4ZX5vRqqcxSvweqnfrd", "rgtUQqvj1CQPkdNiIbMq9Uo2BIKwxK6f", "3bXj4pAfTFAaMN", "bLL1Nxt1kQUgiKBEh7uhxeED33aOUrvl", "nlm3QVdrlvA3GNEtxoNDxXWnARVyweou", "WvjZNIDYapQpgxo06ZNUbI8M0TgCs59c"};
    public static final QG A04;
    public static final QG A05;

    @MetaExoPlayerCustomization
    public static final AbstractC1967Vq<Integer, Integer> A06;
    public final int A00;
    public final int[] A01;

    static {
        A06();
        A04 = new QG(new int[]{2}, 8);
        A05 = new QG(new int[]{2, 5, 6}, 8);
        A06 = new C1968Vr().A05(5, 6).A05(17, 6).A05(7, 6).A05(18, 6).A05(6, 8).A05(8, 8).A05(14, 8).A07();
    }

    public QG(int[] iArr, int i) {
        if (iArr != null) {
            this.A01 = Arrays.copyOf(iArr, iArr.length);
            Arrays.sort(this.A01);
        } else {
            this.A01 = new int[0];
        }
        this.A00 = i;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x004d  */
    public static int A00(int i) {
        if (N1.A02 <= 28) {
            if (i == 7) {
                i = 8;
            } else if (i == 3) {
                i = 6;
            } else {
                if (A03[4].length() == 8) {
                    throw new RuntimeException();
                }
                String[] strArr = A03;
                strArr[7] = "KiNINnFwTf81PmXbmHW08nBZpQERddvf";
                strArr[5] = "Y2CaNqhQ16llXRLdzrOdvyOrTRSc2v87";
                if (i == 4 || i == 5) {
                    i = 6;
                }
            }
        }
        if (N1.A02 <= 26 && A05(237, 4, 124).equals(N1.A03) && i == 1) {
            i = 2;
        }
        return N1.A01(i);
    }

    public static int A01(int i, int i2) {
        return N1.A02 >= 29 ? QF.A00(i, i2) : ((Integer) AbstractC1722Ln.A01(A06.getOrDefault(Integer.valueOf(i), 0))).intValue();
    }

    public static QG A02(Context context) {
        return A03(context, context.registerReceiver(null, new IntentFilter(A05(68, 36, 126))));
    }

    public static QG A03(Context context, Intent intent) {
        if (A07() && Settings.Global.getInt(context.getContentResolver(), A05(InterfaceC3669k1.c.b.g, 31, 48), 0) == 1) {
            return A05;
        }
        if (N1.A02 < 29 || !(N1.A18(context) || N1.A17(context))) {
            return (intent == null || intent.getIntExtra(A05(104, 36, 71), 0) == 0) ? A04 : new QG(intent.getIntArrayExtra(A05(140, 29, 74)), intent.getIntExtra(A05(169, 37, 17), 8));
        }
        return new QG(QF.A01(), 8);
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 23);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A02 = new byte[]{101, 105, 58, 60, 57, 57, 38, 59, Base64.padSymbol, 44, 45, Ascii.FF, 39, 42, 38, 45, 32, 39, 46, 58, 116, 66, 110, 98, 121, 108, 109, 49, 5, Ascii.DC4, Ascii.EM, Ascii.US, 51, 17, 0, 17, Ascii.DC2, Ascii.EM, Ascii.FS, Ascii.EM, 4, Ascii.EM, Ascii.NAK, 3, 43, Ascii.GS, 17, 8, 51, Ascii.CAN, 17, Ascii.RS, Ascii.RS, Ascii.NAK, Ascii.FS, 51, Ascii.US, 5, Ascii.RS, 4, 77, Ascii.FS, 45, 37, 43, 41, 45, 58, 8, 7, Ascii.CR, Ascii.ESC, 6, 0, Ascii.CR, 71, 4, Ascii.FF, Ascii.CR, 0, 8, 71, 8, 10, Ascii.GS, 0, 6, 7, 71, 33, 45, 36, 32, 54, 40, 60, 45, 32, 38, 54, 57, 37, 60, 46, 49, 62, 52, 34, 63, 57, 52, 126, Base64.padSymbol, 53, 52, 57, 49, 126, 53, 40, 36, 34, 49, 126, 17, 5, Ascii.DC4, Ascii.EM, Ascii.US, Ascii.SI, 0, Ascii.FS, 5, Ascii.ETB, Ascii.SI, 3, 4, 17, 4, Ascii.NAK, 60, 51, 57, 47, 50, 52, 57, 115, 48, 56, 57, 52, 60, 115, 56, 37, 41, 47, 60, 115, Ascii.CAN, 19, Ascii.RS, Ascii.DC2, Ascii.EM, Ascii.DC4, 19, Ascii.SUB, Ascii.SO, 103, 104, 98, 116, 105, 111, 98, 40, 107, 99, 98, 111, 103, 40, 99, 126, 114, 116, 103, 40, 75, 71, 94, 89, 69, 78, 71, 72, 72, 67, 74, 89, 69, 73, 83, 72, 82, 66, 95, 83, 66, 85, 73, 70, 75, 120, 84, 82, 85, 85, 72, 82, 73, 67, 120, 84, 72, 82, 73, 67, 120, 66, 73, 70, 69, 75, 66, 67, Ascii.CR, Ascii.RS, Ascii.FF, Ascii.RS};
    }

    public static boolean A07() {
        if (N1.A02 >= 17) {
            if (A05(21, 6, 20).equals(N1.A05) || A05(61, 6, 83).equals(N1.A05)) {
                return true;
            }
        }
        return false;
    }

    public final int A08() {
        return this.A00;
    }

    public final Pair<Integer, Integer> A09(VC vc) {
        int iA01;
        int iA03 = L8.A03((String) AbstractC1722Ln.A01(vc.A0W), vc.A0R);
        if (!A06.containsKey(Integer.valueOf(iA03))) {
            return null;
        }
        if (iA03 == 18 && !A0A(18)) {
            iA03 = 6;
        } else if (iA03 == 8 && !A0A(8)) {
            iA03 = 7;
        }
        if (!A0A(iA03)) {
            return null;
        }
        if (vc.A06 == -1 || iA03 == 18) {
            int i = vc.A0G;
            if (A03[0].charAt(21) != 'P') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[1] = "im8Toc9sdlxeSIkTkbHKRL54ibzm5AKd";
            strArr[2] = "E1ySJvazDXa0jNiMn3kQwKbv3M4CcROd";
            iA01 = A01(iA03, i != -1 ? vc.A0G : 48000);
        } else {
            iA01 = vc.A06;
            if (iA01 > this.A00) {
                return null;
            }
        }
        int iA00 = A00(iA01);
        if (iA00 == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iA03), Integer.valueOf(iA00));
    }

    public final boolean A0A(int i) {
        return Arrays.binarySearch(this.A01, i) >= 0;
    }

    public final boolean A0B(VC vc) {
        return A09(vc) != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QG)) {
            return false;
        }
        QG qg = (QG) obj;
        if (Arrays.equals(this.A01, qg.A01)) {
            int i = this.A00;
            if (A03[4].length() == 8) {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[6] = "mNlTbAuwojXnkISqIBnkNSSSmOFdaBFK";
            strArr[3] = "6PhpWRJp8Yp2AjRuVgCmopriU4FRmjKX";
            if (i == qg.A00) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.A00 + (Arrays.hashCode(this.A01) * 31);
    }

    public final String toString() {
        return A05(27, 34, 103) + this.A00 + A05(0, 21, 94) + Arrays.toString(this.A01) + A05(67, 1, InterfaceC3669k1.d.b.j);
    }
}
