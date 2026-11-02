package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3d, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC12683d<K, V> extends AbstractC12954f<K, V> implements InterfaceC14119i<K, V> {
    public static final long serialVersionUID = 6588350623831699109L;

    public AbstractC12683d(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC12954f
    public final Collection<V> A0F(@ParametricNullness K k, Collection<V> collection) {
        return A0H(k, (List) collection, null);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC12954f
    public final <E> Collection<E> A0G(Collection<E> collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC14269x, com.facebook.ads.redexgen.X.InterfaceC1959Vi
    public Map<K, Collection<V>> A4i() {
        return super.A4i();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC12954f, com.facebook.ads.redexgen.X.InterfaceC1959Vi
    public boolean AIR(@ParametricNullness K k, @ParametricNullness V v) {
        return super.AIR(k, v);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC14269x
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }
}
