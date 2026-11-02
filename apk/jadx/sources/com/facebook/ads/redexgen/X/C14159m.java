package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.io.Serializable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9m, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public class C14159m<K, V> extends W9<K, V> implements Serializable {
    public static final long serialVersionUID = 0;

    @ParametricNullness
    public final K A00;

    @ParametricNullness
    public final V A01;

    public C14159m(@ParametricNullness K k, @ParametricNullness V v) {
        this.A00 = k;
        this.A01 = v;
    }

    @Override // com.facebook.ads.redexgen.X.W9, java.util.Map.Entry
    @ParametricNullness
    public final K getKey() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.W9, java.util.Map.Entry
    @ParametricNullness
    public final V getValue() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.W9, java.util.Map.Entry
    @ParametricNullness
    public final V setValue(@ParametricNullness V v) {
        throw new UnsupportedOperationException();
    }
}
