package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.util.Comparator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC1974Vy {
    public static final AbstractC1974Vy A00 = new AbstractC1974Vy() { // from class: com.facebook.ads.redexgen.X.9q
        private final AbstractC1974Vy A00(int i) {
            if (i < 0) {
                return AbstractC1974Vy.A02;
            }
            return i > 0 ? AbstractC1974Vy.A01 : AbstractC1974Vy.A00;
        }

        @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
        public final int A05() {
            return 0;
        }

        @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
        public final AbstractC1974Vy A06(int i, int i2) {
            return A00(Integer.compare(i, i2));
        }

        @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
        public final AbstractC1974Vy A07(long j, long j2) {
            return A00(Long.compare(j, j2));
        }

        @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
        public final <T> AbstractC1974Vy A08(@ParametricNullness T t, @ParametricNullness T t2, Comparator<T> comparator) {
            return A00(comparator.compare(t, t2));
        }

        @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
        public final AbstractC1974Vy A09(boolean z, boolean z2) {
            return A00(Boolean.compare(z, z2));
        }

        @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
        public final AbstractC1974Vy A0A(boolean z, boolean z2) {
            return A00(Boolean.compare(z2, z));
        }
    };
    public static final AbstractC1974Vy A01;
    public static final AbstractC1974Vy A02;

    static {
        final int i = -1;
        A02 = new AbstractC1974Vy(i) { // from class: com.facebook.ads.redexgen.X.9p
            public final int A00;

            {
                super();
                this.A00 = i;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
            public final int A05() {
                return this.A00;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
            public final AbstractC1974Vy A06(int i2, int i3) {
                return this;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
            public final AbstractC1974Vy A07(long j, long j2) {
                return this;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
            public final <T> AbstractC1974Vy A08(@ParametricNullness T t, @ParametricNullness T t2, Comparator<T> comparator) {
                return this;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
            public final AbstractC1974Vy A09(boolean z, boolean z2) {
                return this;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
            public final AbstractC1974Vy A0A(boolean z, boolean z2) {
                return this;
            }
        };
        final int i2 = 1;
        A01 = new AbstractC1974Vy(i2) { // from class: com.facebook.ads.redexgen.X.9p
            public final int A00;

            {
                super();
                this.A00 = i2;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
            public final int A05() {
                return this.A00;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
            public final AbstractC1974Vy A06(int i3, int i4) {
                return this;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
            public final AbstractC1974Vy A07(long j, long j2) {
                return this;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
            public final <T> AbstractC1974Vy A08(@ParametricNullness T t, @ParametricNullness T t2, Comparator<T> comparator) {
                return this;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
            public final AbstractC1974Vy A09(boolean z, boolean z2) {
                return this;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1974Vy
            public final AbstractC1974Vy A0A(boolean z, boolean z2) {
                return this;
            }
        };
    }

    public AbstractC1974Vy() {
    }

    public static AbstractC1974Vy A01() {
        return A00;
    }

    public abstract int A05();

    public abstract AbstractC1974Vy A06(int i, int i2);

    public abstract AbstractC1974Vy A07(long j, long j2);

    public abstract <T> AbstractC1974Vy A08(@ParametricNullness T t, @ParametricNullness T t2, Comparator<T> comparator);

    public abstract AbstractC1974Vy A09(boolean z, boolean z2);

    public abstract AbstractC1974Vy A0A(boolean z, boolean z2);
}
