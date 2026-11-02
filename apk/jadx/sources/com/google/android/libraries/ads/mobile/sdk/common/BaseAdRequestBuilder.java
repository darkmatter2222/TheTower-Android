package com.google.android.libraries.ads.mobile.sdk.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.common.BaseAdRequestBuilder;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b'\u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0012\u0004\u0012\u00028\u00000\u0002¨\u0006\u0003"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;", com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public abstract class BaseAdRequestBuilder<T extends BaseAdRequestBuilder<T>> extends BaseRequestBuilder<T> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseAdRequestBuilder(String adUnitId) {
        super(adUnitId);
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
    }
}
