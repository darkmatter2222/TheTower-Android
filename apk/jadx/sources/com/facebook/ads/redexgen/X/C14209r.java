package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.io.Serializable;
import java.util.Comparator;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9r, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public final class C14209r<T> extends AbstractC1954Vc<T> implements Serializable {
    public static String[] A01 = {"jd2PMHFgk9oEsejcFA9BYpKwKpyOBexR", "QbwI2JA6APUsTj6Dqo1mljZEoQOnJDXi", "AXwPVw2hlqSpQqyx9v5FRClAk5JCVrJ", "oQTazoGa0vbPVcLrsjRMYdrxJP6IEsEe", "DVrB9FvE4PmZ9s3CKt8nFWblxgn2Z7ld", "8pYI9EB1vAvb2sOZQU", "ZPwPbhtz1P5eIwzCtREeErAPmYe1vJS2", "MXOVmtMTVjaNmkCD8DzkKZRqLhEQhhDs"};
    public static final long serialVersionUID = 0;
    public final Comparator<T> A00;

    public C14209r(Comparator<T> comparator) {
        this.A00 = (Comparator) AbstractC1995Wu.A04(comparator);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1954Vc, java.util.Comparator
    public final int compare(@ParametricNullness T t, @ParametricNullness T t2) {
        return this.A00.compare(t, t2);
    }

    @Override // java.util.Comparator
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C14209r)) {
            return false;
        }
        Comparator<T> comparator = this.A00;
        Comparator<T> comparator2 = ((C14209r) obj).A00;
        if (A01[6].charAt(24) == 'i') {
            throw new RuntimeException();
        }
        A01[5] = "9yqbsg4KPpWiq9";
        return comparator.equals(comparator2);
    }

    public final int hashCode() {
        return this.A00.hashCode();
    }

    public final String toString() {
        return this.A00.toString();
    }
}
