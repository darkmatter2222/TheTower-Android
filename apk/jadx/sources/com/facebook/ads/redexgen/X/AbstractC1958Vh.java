package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1958Vh<K0> {
    public static byte[] A00;
    public static String[] A01 = {"NCmgtE7mLsHswiI1KU1fD79FtmEU6NCc", "PIzQSysLlo", "9ION7uxlTtvGYi5oQtUEUuvU4tAfjNPf", "dp340J4R6jKwPELw4vlLmhe0ZwjXG0", "HGvj", "yTuerXynFCQ22hCobp3RuVrDx5j1B6Al", "tDGkFewwJ18L", "79dL"};

    static {
        A02();
    }

    private final C9Z<K0, Object> A00(final int i) {
        W7.A00(i, A01(0, 20, 103));
        return new C9Z<K0, Object>(this) { // from class: com.facebook.ads.redexgen.X.4Z
            public final /* synthetic */ AbstractC1958Vh A01;

            {
                this.A01 = this;
            }

            @Override // com.facebook.ads.redexgen.X.C9Z
            public final <K extends K0, V> InterfaceC14119i<K, V> A00() {
                return AbstractC1956Vf.A00(this.A01.A04(), new C14039a(i));
            }
        };
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = bArrCopyOfRange[i4];
            if (A01[6].length() == 27) {
                throw new RuntimeException();
            }
            A01[3] = "8bYxTqf7QMllR5OEDQwe";
            bArrCopyOfRange[i4] = (byte) ((b ^ i3) ^ 35);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{33, 60, 52, 33, 39, 48, 33, 32, Ascii.DC2, 37, 40, 49, 33, 55, Ascii.DC4, 33, 54, Ascii.SI, 33, Base64.padSymbol};
    }

    public final C9Z<K0, Object> A03() {
        return A00(2);
    }

    public abstract <K extends K0, V> Map<K, Collection<V>> A04();
}
