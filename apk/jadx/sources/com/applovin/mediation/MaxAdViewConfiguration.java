package com.applovin.mediation;

import com.applovin.impl.mediation.MaxAdViewConfigurationImpl;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes2.dex */
public interface MaxAdViewConfiguration {

    public enum AdaptiveType {
        NONE("none"),
        ANCHORED("anchored"),
        INLINE(TJAdUnitConstants.String.INLINE);

        private final String a;

        AdaptiveType(String str) {
            this.a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.a;
        }
    }

    public interface Builder {
        MaxAdViewConfiguration build();

        Builder setAdaptiveType(AdaptiveType adaptiveType);

        Builder setAdaptiveWidth(int i);

        Builder setInlineMaximumHeight(int i);
    }

    static Builder builder() {
        return new MaxAdViewConfigurationImpl.BuilderImpl();
    }

    AdaptiveType getAdaptiveType();

    int getAdaptiveWidth();

    int getInlineMaximumHeight();
}
