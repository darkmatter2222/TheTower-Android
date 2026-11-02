package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import javax.annotation.CheckForNull;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4P, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public final class C4P<E> extends AbstractC14139k<E> {
    public final transient E A00;

    public C4P(E e) {
        this.A00 = (E) AbstractC1995Wu.A04(e);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
    public final int A0I(Object[] objArr, int i) {
        objArr[i] = this.A00;
        return i + 1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC14139k, com.facebook.ads.redexgen.X.AbstractC1970Vt
    public final AbstractC14149l<E> A0J() {
        return AbstractC14149l.A04(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
    public final boolean A0K() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: A0N, reason: merged with bridge method [inline-methods] */
    public final VV<E> iterator() {
        return AbstractC1964Vn.A03(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        return this.A00.equals(obj);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC14139k, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.A00.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return AbstractJsonLexerKt.BEGIN_LIST + this.A00.toString() + AbstractJsonLexerKt.END_LIST;
    }
}
