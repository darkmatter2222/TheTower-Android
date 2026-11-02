package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.View;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ig, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2604ig {
    public static byte[] A03;
    public int A00;
    public final Rect A01;
    public final AbstractC2620iw A02;

    static {
        A04();
    }

    public AbstractC2604ig(AbstractC2620iw abstractC2620iw) {
        this.A00 = Integer.MIN_VALUE;
        this.A01 = new Rect();
        this.A02 = abstractC2620iw;
    }

    public /* synthetic */ AbstractC2604ig(AbstractC2620iw abstractC2620iw, J4 j4) {
        this(abstractC2620iw);
    }

    public static J4 A00(AbstractC2620iw abstractC2620iw) {
        return new J4(abstractC2620iw);
    }

    public static J3 A01(AbstractC2620iw abstractC2620iw) {
        return new J3(abstractC2620iw);
    }

    public static AbstractC2604ig A02(AbstractC2620iw abstractC2620iw, int i) {
        switch (i) {
            case 0:
                return A00(abstractC2620iw);
            case 1:
                return A01(abstractC2620iw);
            default:
                throw new IllegalArgumentException(A03(0, 19, 11));
        }
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 54);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A03 = new byte[]{84, 83, 75, 92, 81, 84, 89, Ascii.GS, 82, 79, 84, 88, 83, 73, 92, 73, 84, 82, 83};
    }

    public final int A05() {
        if (Integer.MIN_VALUE == this.A00) {
            return 0;
        }
        return A0C() - this.A00;
    }

    public abstract int A06();

    public abstract int A07();

    public abstract int A08();

    public abstract int A09();

    public abstract int A0A();

    public abstract int A0B();

    public abstract int A0C();

    public abstract int A0D(View view);

    public abstract int A0E(View view);

    public abstract int A0F(View view);

    public abstract int A0G(View view);

    public abstract int A0H(View view);

    public abstract int A0I(View view);

    public final void A0J() {
        this.A00 = A0C();
    }

    public abstract void A0K(int i);
}
