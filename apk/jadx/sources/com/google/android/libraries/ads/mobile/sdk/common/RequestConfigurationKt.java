package com.google.android.libraries.ads.mobile.sdk.common;

import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0007"}, d2 = {"requestConfiguration", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;", "block", "Lkotlin/Function1;", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;", "", "Lkotlin/ExtensionFunctionType;", "ads-mobile-sdk_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class RequestConfigurationKt {
    public static final RequestConfiguration requestConfiguration(Function1<? super RequestConfiguration.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        RequestConfiguration.Builder builder = new RequestConfiguration.Builder();
        block.invoke(builder);
        return builder.build();
    }
}
