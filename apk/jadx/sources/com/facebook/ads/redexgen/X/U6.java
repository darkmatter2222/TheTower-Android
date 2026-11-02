package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class U6 implements InterfaceC1678Jt {
    public final U8 A00;
    public final AbstractC14149l<Integer> A01;
    public static String[] A02 = {"ClIjfNGNXsUk9Y65KCPt0kyaipz", "Z7", "CNTSnfydZqXddc4vWhW6qn2wSRN26B1h", "bmCjOqxcxaOGr21LifywwZxlc2XULa8r", "pOixQKHn13K2", "le", "m5Yl4zAIkaBSDrKZZfoRRREfDj1", "5me5y5ryL2nahGoSPpOL6tfSSzOLyGKY"};
    public static final String A05 = N1.A0h(0);
    public static final String A04 = N1.A0h(1);
    public static final InterfaceC1677Js<U6> A03 = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.U7
        @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
        public final InterfaceC1678Jt A7F(Bundle bundle) {
            return U6.A00(bundle);
        }
    };

    public U6(U8 u8, List<Integer> list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= u8.A01)) {
            throw new IndexOutOfBoundsException();
        }
        this.A00 = u8;
        this.A01 = AbstractC14149l.A05(list);
    }

    public static /* synthetic */ U6 A00(Bundle bundle) {
        return new U6((U8) U8.A07.A7F((Bundle) AbstractC1722Ln.A01(bundle.getBundle(A05))), AnonymousClass19.A09((int[]) AbstractC1722Ln.A01(bundle.getIntArray(A04))));
    }

    public final int A01() {
        return this.A00.A02;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0048 A[PHI: r7
  0x0048: PHI (r7v2 com.facebook.ads.redexgen.X.U6) = (r7v1 com.facebook.ads.redexgen.X.U6), (r7v3 com.facebook.ads.redexgen.X.U6) binds: [B:20:0x0064, B:15:0x0046] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:18:0x0052 A[ORIG_RETURN, RETURN] */
    public final boolean equals(Object obj) {
        U6 u6;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            Class<?> cls = getClass();
            if (A02[2].charAt(12) == 'r') {
                throw new RuntimeException();
            }
            A02[4] = "XfF7V5xjwCjiq8qmEdtylrR0E5w";
            if (cls == obj.getClass()) {
                if (A02[6].length() != 26) {
                    A02[0] = "sevTgvOvcIIO9hcSdxKvVaXYDQ2";
                    u6 = (U6) obj;
                    if (this.A00.equals(u6.A00)) {
                        if (this.A01.equals(u6.A01)) {
                            return true;
                        }
                    }
                } else {
                    A02[2] = "u5GjXIxc3Iwrp0kRgHbkZLfq8SY7HrhC";
                    u6 = (U6) obj;
                    if (this.A00.equals(u6.A00)) {
                        if (this.A01.equals(u6.A01)) {
                            return true;
                        }
                    }
                }
                return false;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.A00.hashCode() + (this.A01.hashCode() * 31);
    }
}
