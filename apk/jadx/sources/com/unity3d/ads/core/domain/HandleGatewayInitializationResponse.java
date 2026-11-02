package com.unity3d.ads.core.domain;

import com.ironsource.Ue;
import gatewayprotocol.v1.UniversalResponseOuterClass;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: HandleGatewayInitializationResponse.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H¦B¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;", "", "invoke", "", Ue.n, "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;", "(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface HandleGatewayInitializationResponse {
    Object invoke(UniversalResponseOuterClass.UniversalResponse universalResponse, Continuation<? super Unit> continuation);
}
