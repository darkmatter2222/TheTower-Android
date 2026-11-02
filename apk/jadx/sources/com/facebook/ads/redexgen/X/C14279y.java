package com.facebook.ads.redexgen.X;

import com.google.common.collect.ParametricNullness;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import javax.annotation.CheckForNull;

/* JADX INFO: Add missing generic type declarations: [V] */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9y, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C14279y<V> extends AbstractC12954f<K, V>.WrappedCollection implements List<V> {
    public static String[] A01 = {"yqiMvUs1v7eVluXRUxsEyPEsBjsKjM5l", "OXPfcqd4GeIxC6iUCtvWyfUHbt36pBie", "sM6yaTXzMiDSK7ONVrY0vOid0gAsyXBa", "A8UY2RcLB4Vmv23vg0I8MPnUhN", "EQDms4pnRjFW6iPAffoEoOHe6uiWZ", "1OXOubA3adqIwS", "7KHC7W8Of3", "P6tltmPTrk6wEN"};
    public final /* synthetic */ AbstractC12954f A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Incorrect inner types in method signature: (TK;Ljava/util/List<TV;>;Lcom/facebook/ads/redexgen/X/4f<TK;TV;>.WrappedCollection;)V */
    public C14279y(@ParametricNullness AbstractC12954f abstractC12954f, @CheckForNull Object obj, List list, WA wa) {
        super(abstractC12954f, obj, list, wa);
        this.A00 = abstractC12954f;
    }

    public final List<V> A06() {
        return (List) A02();
    }

    @Override // java.util.List
    public final void add(@ParametricNullness int i, V v) {
        A04();
        boolean zIsEmpty = A02().isEmpty();
        A06().add(i, v);
        AbstractC12954f.A00(this.A00);
        if (zIsEmpty) {
            A03();
        }
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection<? extends V> collection) {
        if (!collection.isEmpty()) {
            int size = size();
            boolean zAddAll = A06().addAll(i, collection);
            if (zAddAll) {
                AbstractC12954f.A02(this.A00, A02().size() - size);
                if (size == 0) {
                    A03();
                }
            }
            return zAddAll;
        }
        String[] strArr = A01;
        if (strArr[5].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[5] = "3Anz8TE5XMZeXm";
        strArr2[7] = "28afxSHAwq7bUv";
        return false;
    }

    @Override // java.util.List
    @ParametricNullness
    public final V get(int i) {
        A04();
        return A06().get(i);
    }

    @Override // java.util.List
    public final int indexOf(@CheckForNull Object obj) {
        A04();
        return A06().indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(@CheckForNull Object obj) {
        A04();
        return A06().lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator<V> listIterator() {
        A04();
        return new C14289z(this);
    }

    @Override // java.util.List
    public final ListIterator<V> listIterator(int i) {
        A04();
        return new C14289z(this, i);
    }

    @Override // java.util.List
    @ParametricNullness
    public final V remove(int i) {
        A04();
        V vRemove = A06().remove(i);
        AbstractC12954f.A01(this.A00);
        A05();
        return vRemove;
    }

    @Override // java.util.List
    @ParametricNullness
    public final V set(@ParametricNullness int i, V v) {
        A04();
        return A06().set(i, v);
    }

    @Override // java.util.List
    public final List<V> subList(int i, int i2) {
        A04();
        return this.A00.A0H(A01(), A06().subList(i, i2), A00() == null ? this : A00());
    }
}
