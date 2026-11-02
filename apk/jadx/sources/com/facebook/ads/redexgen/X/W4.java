package com.facebook.ads.redexgen.X;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class W4<K, V> extends AbstractSet<Map.Entry<K, V>> {
    public static String[] A01 = {"WodfJ9zhEnlXNtqdV", "y0kWzKoaH0eMYeNB35wHkc7qqJzFWN0", "tpy6", "", "7nQRkIlYhCKQBMnXyW4Er", "ww9Z", "RpAcaNkygWJa3mpBy5ICAZSZh27fiMgF", ""};
    public final /* synthetic */ W0 A00;

    public W4(W0 w0) {
        this.A00 = w0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.A00.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        Map<K, V> mapA0h = this.A00.A0h();
        if (mapA0h == null) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iA07 = this.A00.A07(entry.getKey());
            return iA07 != -1 && A6.A01(this.A00.A0F(iA07), entry.getValue());
        }
        boolean zContains = mapA0h.entrySet().contains(obj);
        String[] strArr = A01;
        if (strArr[5].length() != strArr[2].length()) {
            throw new RuntimeException();
        }
        A01[6] = "FpCjpgmyESJyu6z0fuva3OnAmLys7XVv";
        return zContains;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return this.A00.A0d();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        int iA00;
        int iA06;
        Map<K, V> mapA0h = this.A00.A0h();
        if (mapA0h != null) {
            Set<Map.Entry<K, V>> setEntrySet = mapA0h.entrySet();
            if (A01[6].charAt(10) != 'J') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[3] = "";
            strArr[7] = "";
            return setEntrySet.remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (this.A00.A0p() || (iA06 = AbstractC1975Vz.A06(entry.getKey(), entry.getValue(), (iA00 = this.A00.A00()), this.A00.A0C(), this.A00.A0T(), this.A00.A0V(), this.A00.A0W())) == -1) {
            return false;
        }
        this.A00.A0n(iA06, iA00);
        W0.A04(this.A00);
        this.A00.A0j();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.A00.size();
    }
}
