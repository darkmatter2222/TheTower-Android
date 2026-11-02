package com.google.android.libraries.ads.mobile.sdk.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.common.BaseSignalRequestBuilder;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\b'\u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0019\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00028\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0017¢\u0006\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;", com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;", "", "adUnitId", "setAdUnitId", "(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;", "", "placementId", "setPlacementId", "(J)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;", "signalType", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public abstract class BaseSignalRequestBuilder<T extends BaseSignalRequestBuilder<T>> extends BaseRequestBuilder<T> {
    private final String m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseSignalRequestBuilder(String signalType, String str) {
        super(str);
        Intrinsics.checkNotNullParameter(signalType, "signalType");
        this.m = signalType;
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    protected final String getM() {
        return this.m;
    }

    public final T setAdUnitId(String adUnitId) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        a(adUnitId);
        return (T) self();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
    public T setPlacementId(long placementId) {
        return (T) self();
    }
}
