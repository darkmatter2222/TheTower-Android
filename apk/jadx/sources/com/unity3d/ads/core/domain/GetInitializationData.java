package com.unity3d.ads.core.domain;

import gatewayprotocol.v1.InitializationDataOuterClass;
import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: GetInitializationData.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H¦B¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/unity3d/ads/core/domain/GetInitializationData;", "", "invoke", "Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface GetInitializationData {
    Object invoke(Continuation<? super InitializationDataOuterClass.InitializationData> continuation);
}
