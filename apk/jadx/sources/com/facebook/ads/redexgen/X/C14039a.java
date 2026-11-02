package com.facebook.ads.redexgen.X;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9a, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C14039a<V> implements InterfaceC1977Wb<List<V>>, Serializable {
    public static byte[] A01;
    public static String[] A02 = {"iDYYeQ31KU40zvbeJpWTE", "2Vc", "CBNerzMpePj9he9aCflIZ", "WB7bGmKP", "tKWgeM1UCXsJnqBB7iooCi1sjneNsJxw", "BZpcRruJKyqI4tCWv4Jm4koMLnC", "T2RpLGx0zCmkhPaRs29Ow", "cadmNVCsk1fE"};
    public final int A00;

    static {
        A02();
    }

    public C14039a(int i) {
        this.A00 = W7.A00(i, A00(0, 20, 51));
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A02[7].length() != 12) {
                throw new RuntimeException();
            }
            A02[7] = "3eQarWo70slw";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 19);
            i4++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1977Wb
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final List<V> get() {
        return new ArrayList(this.A00);
    }

    public static void A02() {
        A01 = new byte[]{-85, -66, -74, -85, -87, -70, -85, -86, -100, -89, -78, -69, -85, -71, -106, -85, -72, -111, -85, -65};
    }
}
