package com.google.android.libraries.ads.mobile.sdk.common;

import com.ironsource.C3635i2;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u001b\u0010\u001cB\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\u001b\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J&\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u0007¨\u0006\u001e"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;", "", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;", "component1", "()Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;", "", "component2", "()Ljava/lang/Integer;", "request", "bufferSize", "copy", "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Ljava/lang/Integer;)Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", C3635i2.d, "", "equals", "(Ljava/lang/Object;)Z", "a", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;", "getRequest", "b", "Ljava/lang/Integer;", "getBufferSize", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Ljava/lang/Integer;)V", "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class PreloadConfiguration {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final AdRequest request;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Integer bufferSize;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PreloadConfiguration(AdRequest request) {
        this(request, null);
        Intrinsics.checkNotNullParameter(request, "request");
    }

    public PreloadConfiguration(AdRequest request, Integer num) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.request = request;
        this.bufferSize = num;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final AdRequest getRequest() {
        return this.request;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getBufferSize() {
        return this.bufferSize;
    }

    public final PreloadConfiguration copy(AdRequest request, Integer bufferSize) {
        Intrinsics.checkNotNullParameter(request, "request");
        return new PreloadConfiguration(request, bufferSize);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PreloadConfiguration)) {
            return false;
        }
        PreloadConfiguration preloadConfiguration = (PreloadConfiguration) other;
        return Intrinsics.areEqual(this.request, preloadConfiguration.request) && Intrinsics.areEqual(this.bufferSize, preloadConfiguration.bufferSize);
    }

    public final Integer getBufferSize() {
        return this.bufferSize;
    }

    public final AdRequest getRequest() {
        return this.request;
    }

    public int hashCode() {
        int iHashCode = this.request.hashCode() * 31;
        Integer num = this.bufferSize;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public String toString() {
        return "PreloadConfiguration(request=" + this.request + ", bufferSize=" + this.bufferSize + ")";
    }
}
