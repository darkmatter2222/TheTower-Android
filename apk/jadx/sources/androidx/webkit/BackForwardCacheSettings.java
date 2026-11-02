package androidx.webkit;

/* JADX INFO: loaded from: classes2.dex */
public class BackForwardCacheSettings {
    private static final int DEFAULT_MAX_PAGES_IN_CACHE = 6;
    private static final long DEFAULT_TIMEOUT_IN_SECONDS = 600;
    private final int mMaxPagesInCache;
    private final long mTimeoutSeconds;

    public static final class Builder {
        private long mTimeoutInSeconds = BackForwardCacheSettings.DEFAULT_TIMEOUT_IN_SECONDS;
        private int mMaxPagesInCache = 6;

        public BackForwardCacheSettings build() {
            return new BackForwardCacheSettings(this.mTimeoutInSeconds, this.mMaxPagesInCache);
        }

        public Builder setMaxPagesInCache(int i) {
            this.mMaxPagesInCache = i;
            return this;
        }

        public Builder setTimeoutSeconds(long j) {
            this.mTimeoutInSeconds = j;
            return this;
        }
    }

    private BackForwardCacheSettings(long j, int i) {
        this.mTimeoutSeconds = j;
        this.mMaxPagesInCache = i;
    }

    public int getMaxPagesInCache() {
        return this.mMaxPagesInCache;
    }

    public long getTimeoutSeconds() {
        return this.mTimeoutSeconds;
    }
}
