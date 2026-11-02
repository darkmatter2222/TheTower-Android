package com.facebook.ads.redexgen.X;

import com.facebook.ads.redexgen.X.AbstractC2832mQ;
import com.facebook.ads.redexgen.X.C2830mO;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mP, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2831mP<T extends AbstractC2832mQ, E extends C2830mO> {
    public static String[] A02 = {"WBmgDKUAJnOjRPVdo459bnYJXDnRSoZA", "OZ5TpfWbSmXE", "sC9WLlq1dd0W0qrWeGI0su3O22TcCAEW", "0Ub2X", "5m4s5CvbohnvtMuC", "JEGJTDHJWZGaFE0Bjwe", "ELtjylBnyGpGsAAS3nfDjHYeujv6lcAm", "LzmA2INjpudrbI3uXcOOEdZHAsdjx9ZW"};
    public final Map<Class<E>, List<WeakReference<T>>> A00 = new HashMap();
    public final Queue<E> A01 = new ArrayDeque();

    private void A00(E e) {
        List<WeakReference<T>> list;
        if (this.A00 == null || (list = this.A00.get(e.getClass())) == null) {
            return;
        }
        A01(list);
        if (list.isEmpty()) {
            return;
        }
        Iterator it = new ArrayList(list).iterator();
        while (it.hasNext()) {
            AbstractC2832mQ abstractC2832mQ = (AbstractC2832mQ) ((WeakReference) it.next()).get();
            if (abstractC2832mQ != null && abstractC2832mQ.A00(e)) {
                abstractC2832mQ.A03(e);
            }
        }
    }

    private void A01(List<WeakReference<T>> list) {
        if (list != null) {
            int i = 0;
            for (int i2 = 0; i2 < list.size(); i2++) {
                WeakReference<T> weakReference = list.get(i2);
                T t = weakReference.get();
                if (A02[1].length() != 12) {
                    throw new RuntimeException();
                }
                String[] strArr = A02;
                strArr[6] = "MDutMibHR0xfS0kHpIX6qzWASaThPw85";
                strArr[0] = "nvT9JaP2TDwXv3h3yDNvutMp299h55Zc";
                if (t != null) {
                    list.set(i, weakReference);
                    i++;
                }
            }
            for (int size = list.size() - 1; size >= i; size--) {
                list.remove(size);
            }
        }
    }

    public final synchronized void A02(E e) {
        if (this.A01.isEmpty()) {
            this.A01.add(e);
            while (!this.A01.isEmpty()) {
                A00(this.A01.peek());
                this.A01.remove();
            }
        } else {
            this.A01.add(e);
        }
    }

    public final synchronized void A03(T... tArr) {
        if (tArr == null) {
            return;
        }
        for (T t : tArr) {
            A05(t);
        }
    }

    public final synchronized void A04(T... tArr) {
        if (tArr == null) {
            return;
        }
        for (T t : tArr) {
            A06(t);
        }
    }

    public final synchronized boolean A05(T t) {
        if (t == null) {
            return false;
        }
        Class<E> clsA01 = t.A01();
        List<WeakReference<T>> arrayList = this.A00.get(clsA01);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.A00.put(clsA01, arrayList);
        }
        A01(arrayList);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (arrayList.get(i).get() == t) {
                return false;
            }
        }
        return arrayList.add(new WeakReference<>(t));
    }

    public final synchronized boolean A06(T t) {
        if (t == null) {
            return false;
        }
        List<WeakReference<T>> list = this.A00.get(t.A01());
        if (list == null) {
            return false;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i).get() == t) {
                list.get(i).clear();
                return true;
            }
        }
        return false;
    }
}
