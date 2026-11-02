package com.facebook.ads.redexgen.X;

import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9S, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C9S<E> extends W6<E> implements Set<E> {
    public C9S(Set<E> set, InterfaceC1994Wt<? super E> interfaceC1994Wt) {
        super(set, interfaceC1994Wt);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
        return VX.A09(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return VX.A00(this);
    }
}
