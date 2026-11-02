package com.unity3d.ads.core.domain;

import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.RequestPolicyKt;
import gatewayprotocol.v1.RequestRetryPolicyKt;
import gatewayprotocol.v1.RequestTimeoutPolicyKt;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: AndroidGetSafeguardedInitializationPolicy.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0096\u0002¨\u0006\u0007"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidGetSafeguardedInitializationPolicy;", "Lcom/unity3d/ads/core/domain/GetSafeguardedInitializationPolicy;", "<init>", "()V", "invoke", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;", "requestPolicy", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidGetSafeguardedInitializationPolicy implements GetSafeguardedInitializationPolicy {
    @Override // com.unity3d.ads.core.domain.GetSafeguardedInitializationPolicy
    public NativeConfigurationOuterClass.RequestPolicy invoke(NativeConfigurationOuterClass.RequestPolicy requestPolicy) {
        Intrinsics.checkNotNullParameter(requestPolicy, "requestPolicy");
        RequestPolicyKt.Dsl.Companion companion = RequestPolicyKt.Dsl.INSTANCE;
        NativeConfigurationOuterClass.RequestPolicy.Builder builder = requestPolicy.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        RequestPolicyKt.Dsl dsl_create = companion._create(builder);
        NativeConfigurationOuterClass.RequestRetryPolicy retryPolicy = dsl_create.getRetryPolicy();
        RequestRetryPolicyKt.Dsl.Companion companion2 = RequestRetryPolicyKt.Dsl.INSTANCE;
        NativeConfigurationOuterClass.RequestRetryPolicy.Builder builder2 = retryPolicy.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder2, "toBuilder(...)");
        RequestRetryPolicyKt.Dsl dsl_create2 = companion2._create(builder2);
        dsl_create2.setMaxDuration(RangesKt.coerceAtLeast(dsl_create2.getMaxDuration(), 5000));
        dsl_create2.setRetryWaitBase(RangesKt.coerceAtLeast(dsl_create2.getRetryWaitBase(), 0));
        dsl_create2.setRetryMaxInterval(RangesKt.coerceAtLeast(dsl_create2.getRetryMaxInterval(), 0));
        dsl_create2.setRetryScalingFactor(RangesKt.coerceAtLeast(dsl_create2.getRetryScalingFactor(), 0.1f));
        dsl_create2.setRetryJitterPct(RangesKt.coerceIn(dsl_create2.getRetryJitterPct(), 0.0f, 100.0f));
        dsl_create.setRetryPolicy(dsl_create2._build());
        NativeConfigurationOuterClass.RequestTimeoutPolicy timeoutPolicy = dsl_create.getTimeoutPolicy();
        RequestTimeoutPolicyKt.Dsl.Companion companion3 = RequestTimeoutPolicyKt.Dsl.INSTANCE;
        NativeConfigurationOuterClass.RequestTimeoutPolicy.Builder builder3 = timeoutPolicy.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder3, "toBuilder(...)");
        RequestTimeoutPolicyKt.Dsl dsl_create3 = companion3._create(builder3);
        dsl_create3.setConnectTimeoutMs(RangesKt.coerceAtLeast(dsl_create3.getConnectTimeoutMs(), 1000));
        dsl_create3.setReadTimeoutMs(RangesKt.coerceAtLeast(dsl_create3.getReadTimeoutMs(), 1000));
        dsl_create3.setWriteTimeoutMs(RangesKt.coerceAtLeast(dsl_create3.getWriteTimeoutMs(), 1000));
        dsl_create3.setOverallTimeoutMs(RangesKt.coerceAtLeast(dsl_create3.getOverallTimeoutMs(), 1000));
        dsl_create.setTimeoutPolicy(dsl_create3._build());
        return dsl_create._build();
    }
}
