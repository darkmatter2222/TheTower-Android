package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import com.google.errorprone.annotations.DoNotMock;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@DoNotMock
@ElementTypesAreNonnullByDefault
public interface InterfaceC1959Vi<K, V> {
    Map<K, Collection<V>> A4i();

    boolean AIR(@ParametricNullness K k, @ParametricNullness V v);

    void clear();

    int size();

    Collection<V> values();
}
