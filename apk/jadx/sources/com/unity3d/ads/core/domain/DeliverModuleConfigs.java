package com.unity3d.ads.core.domain;

import gatewayprotocol.v1.InitializationResponseOuterClass;
import p005kotlin.Metadata;

/* JADX INFO: compiled from: DeliverModuleConfigs.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b`\u0018\u00002\u00020\u0001J\u0011\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H¦\u0002J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, d2 = {"Lcom/unity3d/ads/core/domain/DeliverModuleConfigs;", "", "invoke", "", "initResponse", "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;", "notifyFailure", "reason", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface DeliverModuleConfigs {
    void invoke(InitializationResponseOuterClass.InitializationResponse initResponse);

    void notifyFailure(String reason);
}
