package com.google.android.libraries.ads.mobile.sdk.initialization;

import com.google.android.libraries.ads.mobile.sdk.common.AdFormat;
import java.util.Set;
import p005kotlin.Metadata;
import p005kotlin.collections.SetsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0019R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u00028\u0006¢\u0006\f\n\u0004\b\n\u0010\u0005\u001a\u0004\b\u000b\u0010\u0007R\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u0005\u001a\u0004\b\u000e\u0010\u0007R\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0005\u001a\u0004\b\u0011\u0010\u0007R\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;", "", "", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;", "b", "Ljava/util/Set;", "getAllowedAdFormats", "()Ljava/util/Set;", "allowedAdFormats", "", "c", "getAllowedAdUnitIds", "allowedAdUnitIds", "d", "getAllowedAdapterClasses", "allowedAdapterClasses", "e", "getExcludedAdapterClasses", "excludedAdapterClasses", "", "f", "J", "getInitializationTimeoutMs", "()J", "initializationTimeoutMs", "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class AdapterInitializationConfig {
    private final long a;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Set allowedAdFormats;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final Set allowedAdUnitIds;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final Set allowedAdapterClasses;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final Set excludedAdapterClasses;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final long initializationTimeoutMs;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\t\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\r\u001a\u00020\u00002\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006¢\u0006\u0004\b\r\u0010\nJ\u001b\u0010\u000f\u001a\u00020\u00002\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006¢\u0006\u0004\b\u000f\u0010\nJ\u001b\u0010\u0010\u001a\u00020\u00002\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006¢\u0006\u0004\b\u0010\u0010\nJ\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;", "", "", "timeout", "setInitializationTimeoutMs", "(J)Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;", "", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;", "formats", "setAllowedAdFormats", "(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;", "", "adUnitIds", "setAllowedAdUnitIds", "adapterClasses", "setAllowedAdapterClasses", "setExcludedAdapterClasses", "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;", "build", "()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;", "<init>", "()V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private long a = Duration.INSTANCE.m4458getZEROUwyO8pc();
        private Set b = SetsKt.emptySet();
        private Set c = SetsKt.emptySet();
        private Set d = SetsKt.emptySet();
        private Set e = SetsKt.emptySet();

        public final AdapterInitializationConfig build() {
            return new AdapterInitializationConfig(this.a, this.b, this.c, this.d, this.e, 0);
        }

        public final Builder setAllowedAdFormats(Set<? extends AdFormat> formats) {
            Intrinsics.checkNotNullParameter(formats, "formats");
            this.b = formats;
            return this;
        }

        public final Builder setAllowedAdUnitIds(Set<String> adUnitIds) {
            Intrinsics.checkNotNullParameter(adUnitIds, "adUnitIds");
            this.c = adUnitIds;
            return this;
        }

        public final Builder setAllowedAdapterClasses(Set<String> adapterClasses) {
            Intrinsics.checkNotNullParameter(adapterClasses, "adapterClasses");
            this.d = adapterClasses;
            return this;
        }

        public final Builder setExcludedAdapterClasses(Set<String> adapterClasses) {
            Intrinsics.checkNotNullParameter(adapterClasses, "adapterClasses");
            this.e = adapterClasses;
            return this;
        }

        public final Builder setInitializationTimeoutMs(long timeout) {
            Duration.Companion companion = Duration.INSTANCE;
            this.a = DurationKt.toDuration(timeout, DurationUnit.MILLISECONDS);
            return this;
        }
    }

    private AdapterInitializationConfig(long j, Set set, Set set2, Set set3, Set set4) {
        this.a = j;
        this.allowedAdFormats = set;
        this.allowedAdUnitIds = set2;
        this.allowedAdapterClasses = set3;
        this.excludedAdapterClasses = set4;
        this.initializationTimeoutMs = Duration.m4378getInWholeMillisecondsimpl(j);
    }

    public /* synthetic */ AdapterInitializationConfig(long j, Set set, Set set2, Set set3, Set set4, int i) {
        this(j, set, set2, set3, set4);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final long getA() {
        return this.a;
    }

    public final Set<AdFormat> getAllowedAdFormats() {
        return this.allowedAdFormats;
    }

    public final Set<String> getAllowedAdUnitIds() {
        return this.allowedAdUnitIds;
    }

    public final Set<String> getAllowedAdapterClasses() {
        return this.allowedAdapterClasses;
    }

    public final Set<String> getExcludedAdapterClasses() {
        return this.excludedAdapterClasses;
    }

    public final long getInitializationTimeoutMs() {
        return this.initializationTimeoutMs;
    }
}
