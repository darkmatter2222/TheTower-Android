package com.google.firebase.firestore;

/* JADX INFO: loaded from: classes4.dex */
public final class MemoryCacheSettings implements LocalCacheSettings {
    private MemoryGarbageCollectorSettings gcSettings;

    public static class Builder {
        private MemoryGarbageCollectorSettings gcSettings;

        private Builder() {
            this.gcSettings = MemoryEagerGcSettings.newBuilder().build();
        }

        public MemoryCacheSettings build() {
            return new MemoryCacheSettings(this.gcSettings);
        }

        public Builder setGcSettings(MemoryGarbageCollectorSettings memoryGarbageCollectorSettings) {
            this.gcSettings = memoryGarbageCollectorSettings;
            return this;
        }
    }

    private MemoryCacheSettings(MemoryGarbageCollectorSettings memoryGarbageCollectorSettings) {
        this.gcSettings = memoryGarbageCollectorSettings;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return getGarbageCollectorSettings().equals(((MemoryCacheSettings) obj).getGarbageCollectorSettings());
    }

    public MemoryGarbageCollectorSettings getGarbageCollectorSettings() {
        return this.gcSettings;
    }

    public int hashCode() {
        return this.gcSettings.hashCode();
    }

    public String toString() {
        return "MemoryCacheSettings{gcSettings=" + getGarbageCollectorSettings() + "}";
    }
}
