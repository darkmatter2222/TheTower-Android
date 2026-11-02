package com.unity3d.services.core.di;

import com.unity3d.ads.core.configuration.AndroidManifestStringPropertyReader;
import com.unity3d.ads.core.data.model.GatewayUrl;
import com.unity3d.services.UnityAdsConstants;
import p005kotlin.Metadata;

/* JADX INFO: compiled from: ServiceProvider.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"provideGatewayUrl", "Lcom/unity3d/ads/core/data/model/GatewayUrl;", "reader", "Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;", "(Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;)Ljava/lang/String;", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ServiceProviderKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:10:0x0016  */
    public static final String provideGatewayUrl(AndroidManifestStringPropertyReader androidManifestStringPropertyReader) {
        String propertyByName = androidManifestStringPropertyReader.getPropertyByName("GatewayUrl");
        if (propertyByName == null) {
            propertyByName = UnityAdsConstants.DefaultUrls.GATEWAY_URL;
        } else {
            if (propertyByName.length() <= 0) {
                propertyByName = null;
            }
            if (propertyByName == null) {
                propertyByName = UnityAdsConstants.DefaultUrls.GATEWAY_URL;
            }
        }
        return GatewayUrl.m2752constructorimpl(propertyByName);
    }
}
