package com.facebook.ads.redexgen.X;

import com.google.common.base.ElementTypesAreNonnullByDefault;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.We, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public final class C1979We {
    public static String[] A04 = {"GDF7LT9zaN1tQTqlfLNLfAIfOtG9s0hL", "1cIEi", "LEB4R7gs6bsfmRbxrEjZlrEpKVzBfHoW", "GRwMr", "vE3lOApuJipIWEcGhcTLuWUdfiSHNcaM", "VHJbobYshQpQJc84hdTVV33YzEjVEGH4", "BPjDLgO1rk9tBxxzuhgjx7EasFoI5ksj", "We4pisMx0yRYlbPFur3a9KCcHEHqNzeD"};
    public final int A00;
    public final A7 A01;
    public final InterfaceC1981Wg A02;
    public final boolean A03;

    public C1979We(InterfaceC1981Wg interfaceC1981Wg) {
        this(interfaceC1981Wg, false, A7.A03(), Integer.MAX_VALUE);
    }

    public C1979We(InterfaceC1981Wg interfaceC1981Wg, boolean z, A7 a7, int i) {
        this.A02 = interfaceC1981Wg;
        this.A03 = z;
        this.A01 = a7;
        this.A00 = i;
    }

    public static C1979We A02(char c) {
        return A03(A7.A02(c));
    }

    public static C1979We A03(A7 a7) {
        AbstractC1995Wu.A04(a7);
        return new C1979We(new A4(a7));
    }

    private Iterator<String> A04(CharSequence charSequence) {
        return this.A02.ABT(this, charSequence);
    }

    public final List<String> A06(CharSequence charSequence) {
        AbstractC1995Wu.A04(charSequence);
        Iterator<String> itA04 = A04(charSequence);
        ArrayList arrayList = new ArrayList();
        while (true) {
            boolean zHasNext = itA04.hasNext();
            String[] strArr = A04;
            if (strArr[7].charAt(8) == strArr[5].charAt(8)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[7] = "8TlqMoe7Qz8AAdZs3cRhuRffJeUXlyVi";
            strArr2[5] = "2lJKwnsTF8A7HJC30NZyYWaavFcWeBv2";
            if (!zHasNext) {
                return Collections.unmodifiableList(arrayList);
            }
            arrayList.add(itA04.next());
        }
    }
}
