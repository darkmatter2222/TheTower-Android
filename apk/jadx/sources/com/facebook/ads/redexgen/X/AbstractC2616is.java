package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.is, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2616is {
    public static byte[] A06;
    public static String[] A07 = {"wCFFy4v0UHolBGzubHhtaTK0KlaK5TU8", "WXL", "veTi", "n3", "rW28yUWMMTgiQlEcIz6smwE3e87Fn5Ax", "QU5acghFPGL2KQJts4swUt9W5A9MK8iM", "qIZlYUWuFA6tmX766BSANKSPkXlWbMWT", "RhPzJuizv3JTUr3AZhw4zLdz5ZpO"};
    public InterfaceC2614iq A04 = null;
    public ArrayList<RecyclerView.ItemAnimator.ItemAnimatorFinishedListener> A05 = new ArrayList<>();
    public long A00 = 120;
    public long A03 = 120;
    public long A02 = 250;
    public long A01 = 250;

    static {
        A09();
    }

    public static int A06(AbstractC2638jE abstractC2638jE) {
        int i = abstractC2638jE.A0C & 14;
        if (abstractC2638jE.A0m()) {
            return 4;
        }
        if ((i & 4) != 0) {
            return i;
        }
        int iA0U = abstractC2638jE.A0U();
        int iA0R = abstractC2638jE.A0R();
        String[] strArr = A07;
        if (strArr[3].length() == strArr[1].length()) {
            throw new RuntimeException();
        }
        A07[0] = "z6mPnscAmNwlAliMzxZ9cFQDVALsWjfG";
        return (iA0U == -1 || iA0R == -1 || iA0U == iA0R) ? i : i | 2048;
    }

    private final C2615ir A07() {
        return new C2615ir();
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 42);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A06 = new byte[]{85, 84, 123, 84, 83, 87, 91, 78, 83, 85, 84, 73, 124, 83, 84, 83, 73, 82, 95, 94};
    }

    public final long A0A() {
        return this.A00;
    }

    public final long A0B() {
        return this.A01;
    }

    public final long A0C() {
        return this.A02;
    }

    public final long A0D() {
        return this.A03;
    }

    public final C2615ir A0E(C2635jB c2635jB, AbstractC2638jE abstractC2638jE) {
        return A07().A01(abstractC2638jE);
    }

    public final C2615ir A0F(C2635jB c2635jB, AbstractC2638jE abstractC2638jE, int i, List<Object> list) {
        return A07().A01(abstractC2638jE);
    }

    public final void A0G() {
        if (0 < this.A05.size()) {
            this.A05.get(0);
            throw new NullPointerException(A08(0, 20, 16));
        }
        this.A05.clear();
    }

    public abstract void A0H();

    public abstract void A0I();

    public final void A0J(InterfaceC2614iq interfaceC2614iq) {
        this.A04 = interfaceC2614iq;
    }

    public final void A0K(AbstractC2638jE abstractC2638jE) {
        if (this.A04 != null) {
            this.A04.ADr(abstractC2638jE);
        }
    }

    public abstract void A0L(AbstractC2638jE abstractC2638jE);

    public abstract boolean A0M();

    public abstract boolean A0N(AbstractC2638jE abstractC2638jE);

    public abstract boolean A0O(AbstractC2638jE abstractC2638jE, C2615ir c2615ir, C2615ir c2615ir2);

    public abstract boolean A0P(AbstractC2638jE abstractC2638jE, C2615ir c2615ir, C2615ir c2615ir2);

    public abstract boolean A0Q(AbstractC2638jE abstractC2638jE, C2615ir c2615ir, C2615ir c2615ir2);

    public abstract boolean A0R(AbstractC2638jE abstractC2638jE, AbstractC2638jE abstractC2638jE2, C2615ir c2615ir, C2615ir c2615ir2);

    public boolean A0S(AbstractC2638jE abstractC2638jE, List<Object> list) {
        return A0N(abstractC2638jE);
    }
}
