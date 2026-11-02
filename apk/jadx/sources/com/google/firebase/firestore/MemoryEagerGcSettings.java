package com.google.firebase.firestore;

/* JADX INFO: loaded from: classes4.dex */
public final class MemoryEagerGcSettings implements MemoryGarbageCollectorSettings {

    public static class Builder {
        private Builder() {
        }

        public MemoryEagerGcSettings build() {
            return new MemoryEagerGcSettings();
        }
    }

    private MemoryEagerGcSettings() {
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass();
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        return "MemoryEagerGcSettings{}";
    }
}
