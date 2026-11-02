package com.unity3d.ads.core.domain.capability;

import gatewayprotocol.v1.InitializationRequestOuterClass;
import java.util.List;
import p005kotlin.Metadata;

/* JADX INFO: compiled from: CapabilitiesChecker.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J\u000f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H¦\u0002¨\u0006\u0005"}, d2 = {"Lcom/unity3d/ads/core/domain/capability/CapabilitiesChecker;", "", "invoke", "", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface CapabilitiesChecker {
    List<InitializationRequestOuterClass.QuickCapabilities.Android.Capability> invoke();
}
