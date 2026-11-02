package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class IY extends AbstractC2623iz {
    public static byte[] A03;
    public static String[] A04 = {"WP5CpU5dCfM1vj2iCgRczyLeS833jqA7", "f0t6mABNpir4NiI1IJBR", "VMSqLwjWc3fXvu7D9B7JwatTJSWiKmSt", "2kGOlvpEajHcc9JJ5BV7kSrV8Uhb9VDh", "BGGgbgkg4NpzKA2XjpG6Q8iHB2GG9zH0", "ziOTckvigWpUqNYWulExTvMWDfbzI1Sq", "WkLWBkQ13lLgYVln8HDaQ7gYbGPRUWfj", "hZJ2tRP2pGaevCKAXmW2Fr9GhnOGACBf"};
    public C7O A00;
    public Scroller A01;
    public final AbstractC2625j1 A02 = new IZ(this);

    static {
        A09();
    }

    private final J5 A05(AbstractC2620iw abstractC2620iw) {
        return A0E(abstractC2620iw);
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 53);
        }
        return new String(bArrCopyOfRange);
    }

    private void A07() {
        this.A00.A1p(this.A02);
        this.A00.setOnFlingListener(null);
    }

    private void A08() throws IllegalStateException {
        if (this.A00.getOnFlingListener() != null) {
            throw new IllegalStateException(A06(0, 43, 103));
        }
        this.A00.A1o(this.A02);
        this.A00.setOnFlingListener(this);
    }

    public static void A09() {
        byte[] bArr = {-35, 10, -68, 5, 10, Ascii.SI, Ascii.DLE, -3, 10, -1, 1, -68, Ascii.VT, 2, -68, -21, 10, -30, 8, 5, 10, 3, -24, 5, Ascii.SI, Ascii.DLE, 1, 10, 1, Ascii.SO, -68, -3, 8, Ascii.SO, 1, -3, 0, Ascii.NAK, -68, Ascii.SI, 1, Ascii.DLE, -54};
        if (A04[2].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A04;
        strArr[3] = "Gfsvb5V6ZkZ1EjPhJmDEOg0wCX37AMGK";
        strArr[5] = "BogmwpJuEiSgKohE6B9VLJKkNQC2pxlX";
        A03 = bArr;
    }

    private boolean A0A(AbstractC2620iw abstractC2620iw, int i, int i2) {
        J5 j5A05;
        if (!(abstractC2620iw instanceof InterfaceC2632j8) || (j5A05 = A05(abstractC2620iw)) == null) {
            return false;
        }
        int iA0C = A0C(abstractC2620iw, i, i2);
        String[] strArr = A04;
        if (strArr[0].charAt(25) == strArr[7].charAt(25)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[0] = "3QNQgzU1MIdfo8xP0zEWa1SfaSPVi8u7";
        strArr2[7] = "BhxrOivCOMjMD1hwED78TbVHZR3oyoMb";
        if (iA0C == -1) {
            return false;
        }
        j5A05.A0H(iA0C);
        abstractC2620iw.A2c(j5A05);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2623iz
    public final boolean A0B(int i, int i2) {
        AbstractC2620iw layoutManager = this.A00.getLayoutManager();
        if (layoutManager == null || this.A00.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.A00.getMinFlingVelocity();
        return (Math.abs(i2) > minFlingVelocity || Math.abs(i) > minFlingVelocity) && A0A(layoutManager, i, i2);
    }

    public abstract int A0C(AbstractC2620iw abstractC2620iw, int i, int i2);

    public abstract View A0D(AbstractC2620iw abstractC2620iw);

    @Deprecated
    public abstract J5 A0E(AbstractC2620iw abstractC2620iw);

    public final void A0F() {
        AbstractC2620iw layoutManager;
        View viewA0D;
        if (this.A00 == null || (layoutManager = this.A00.getLayoutManager()) == null || (viewA0D = A0D(layoutManager)) == null) {
            return;
        }
        int[] iArrA0H = A0H(layoutManager, viewA0D);
        if (iArrA0H[0] == 0 && iArrA0H[1] == 0) {
            return;
        }
        this.A00.A1i(iArrA0H[0], iArrA0H[1]);
    }

    public final void A0G(C7O c7o) throws IllegalStateException {
        if (this.A00 == c7o) {
            return;
        }
        if (this.A00 != null) {
            A07();
        }
        this.A00 = c7o;
        if (this.A00 != null) {
            A08();
            this.A01 = new Scroller(this.A00.getContext(), new DecelerateInterpolator());
            A0F();
        }
    }

    public abstract int[] A0H(AbstractC2620iw abstractC2620iw, View view);
}
