package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.util.SparseArray;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1728Lt {
    public static String[] A00 = {"4iWaQX9QL0TV7ciG", "xT1DBnx3cgqSI1EHRIJwYOLbDuZXZSSy", "zf4ERY3epGDBpzw7qq", "RVk2EvtAO6JxDlUsvytnaWlyeZGN0zQx", "4SbbE41KWjNAZ40flvn9aeYMmzNdDWTu", "VvpAlJlvg5jCIDhdzyGj2bOvFlVVLQ9f", "Y1o2uThHomph9fqnYqxDCn", "j5QvKsjh7m2QCLDYHybofUYs0e8V1AN4"};

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends InterfaceC1678Jt> SparseArray<T> A00(InterfaceC1677Js<T> interfaceC1677Js, SparseArray<Bundle> sparseArray) {
        SparseArray<T> sparseArray2 = (SparseArray<T>) new SparseArray(sparseArray.size());
        int i = 0;
        while (true) {
            int size = sparseArray.size();
            if (A00[1].charAt(5) == 'T') {
                throw new RuntimeException();
            }
            A00[0] = "yJ7q7c4kcteAallN";
            if (i >= size) {
                return sparseArray2;
            }
            sparseArray2.put(sparseArray.keyAt(i), interfaceC1677Js.A7F(sparseArray.valueAt(i)));
            i++;
        }
    }

    public static <T extends InterfaceC1678Jt> AbstractC14149l<T> A01(InterfaceC1677Js<T> interfaceC1677Js, List<Bundle> list) {
        C12944e c12944eA01 = AbstractC14149l.A01();
        for (int i = 0; i < list.size(); i++) {
            c12944eA01.A04(interfaceC1677Js.A7F((Bundle) AbstractC1722Ln.A01(list.get(i))));
        }
        return c12944eA01.A05();
    }

    public static void A02(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) N1.A0f(C1728Lt.class.getClassLoader()));
        }
    }
}
