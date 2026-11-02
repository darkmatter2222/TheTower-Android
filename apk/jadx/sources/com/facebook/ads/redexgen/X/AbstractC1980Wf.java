package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1980Wf {
    public static String[] A00 = {"jsVhdVkaQoCpk9KqdUAiZca4HdZ2VVO0", "D9A5ubdEJQxBxuviQtQcaIh1QCjphQXE", "t3y8COzLe6b7c3W4fCOR2xqoMo7h91TQ", "250QQQYDlpiJvnAVvgjaLcARF5fQeBWe", "4NgAlkrALB1AimkMTk2", "8PyrEemzYI2i9iihWWfG6VVolxMAEh9s", "D9D38dcf2ayuNZnqNBbJQDMXQAgSRVHD", "tcAsi5BxMJnV5APEnVOV6WmreK2eaHE7"};

    public static C1926Tx A00(C1976Wa c1976Wa, InterfaceC1978Wc[] interfaceC1978WcArr) {
        List[] listArr = new List[interfaceC1978WcArr.length];
        for (int i = 0; i < interfaceC1978WcArr.length; i++) {
            InterfaceC1978Wc interfaceC1978Wc = interfaceC1978WcArr[i];
            listArr[i] = interfaceC1978Wc != null ? AbstractC14149l.A04(interfaceC1978Wc) : XR.A01();
        }
        return A01(c1976Wa, listArr);
    }

    public static C1926Tx A01(C1976Wa c1976Wa, List<? extends InterfaceC1978Wc>[] listArr) {
        int i;
        C12944e c12944e = new C12944e();
        int i2 = 0;
        while (true) {
            int iA02 = c1976Wa.A02();
            boolean z = false;
            if (A00[0].charAt(10) != 'C') {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[1] = "brWzkEokkFcQw4vyUvC8JO4cJLMTqZBM";
            strArr[5] = "v1B965bQbGNWWFTrgvUnhF0h5u0jOZNM";
            if (i2 >= iA02) {
                RY ryA06 = c1976Wa.A06();
                for (int i3 = 0; i3 < ryA06.A01; i3++) {
                    U8 u8A05 = ryA06.A05(i3);
                    int[] iArr = new int[u8A05.A01];
                    Arrays.fill(iArr, 0);
                    c12944e.A04(new C1927Ty(u8A05, false, iArr, new boolean[u8A05.A01]));
                }
                return new C1926Tx(c12944e.A05());
            }
            RY ryA07 = c1976Wa.A07(i2);
            List<? extends InterfaceC1978Wc> list = listArr[i2];
            if (A00[0].charAt(10) != 'C') {
                i = 0;
            } else {
                A00[0] = "6BWgFNJJitCY6EVz4s0Yvv4BaRAgKqgK";
                i = 0;
            }
            while (i < ryA07.A01) {
                U8 u8A06 = ryA07.A05(i);
                int iA05 = c1976Wa.A05(i2, i, z);
                String[] strArr2 = A00;
                if (strArr2[1].charAt(15) == strArr2[5].charAt(15)) {
                    throw new RuntimeException();
                }
                A00[3] = "y8ieqpQvb32JVrwa5hE6uK92vPBw6tqw";
                boolean z2 = iA05 != 0;
                int[] iArr2 = new int[u8A06.A01];
                boolean[] zArr = new boolean[u8A06.A01];
                for (int i4 = 0; i4 < u8A06.A01; i4++) {
                    iArr2[i4] = c1976Wa.A04(i2, i, i4);
                    boolean z3 = false;
                    for (int i5 = 0; i5 < list.size(); i5++) {
                        InterfaceC1978Wc interfaceC1978Wc = list.get(i5);
                        if (interfaceC1978Wc.A9y().equals(u8A06) && interfaceC1978Wc.AAk(i4) != -1) {
                            z3 = true;
                            break;
                        }
                    }
                    zArr[i4] = z3;
                }
                c12944e.A04(new C1927Ty(u8A06, z2, iArr2, zArr));
                i++;
                z = false;
            }
            i2++;
        }
    }
}
