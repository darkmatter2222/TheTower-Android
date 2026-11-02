package com.unity3d.coherence;

/* JADX INFO: loaded from: classes5.dex */
public final class CommonAttributesConfig {
    private final int eventId;
    private final int productId;

    public static final class Builder {
        private int productId = 0;
        private int eventId = 0;

        public CommonAttributesConfig build() {
            return new CommonAttributesConfig(this.productId, this.eventId);
        }

        public Builder setEventId(int i) {
            this.eventId = i;
            return this;
        }

        public Builder setProductId(int i) {
            this.productId = i;
            return this;
        }
    }

    private CommonAttributesConfig(int i, int i2) {
        this.productId = i;
        this.eventId = i2;
    }

    int getEventId() {
        return this.eventId;
    }

    int getProductId() {
        return this.productId;
    }
}
