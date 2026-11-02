package com.appsflyer.internal;

import com.appsflyer.internal.platform_extension.Plugin;
import com.appsflyer.internal.platform_extension.PluginInfo;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.Map;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class AFi1gSDK implements AFi1lSDK {
    private PluginInfo getMediationNetwork = new PluginInfo(Plugin.NATIVE, "6.17.3", null, 4, null);

    @Override // com.appsflyer.internal.AFi1lSDK
    public final Map<String, Object> AFAdRevenueData() {
        Map<String, Object> mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("platform", this.getMediationNetwork.getPlugin().getPluginName()), TuplesKt.to("version", this.getMediationNetwork.getVersion()));
        if (!this.getMediationNetwork.getAdditionalParams().isEmpty()) {
            mapMutableMapOf.put(HandleInvocationsFromAdViewer.KEY_EXTRAS, this.getMediationNetwork.getAdditionalParams());
        }
        return mapMutableMapOf;
    }

    @Override // com.appsflyer.internal.AFi1lSDK
    public final void getMediationNetwork(PluginInfo pluginInfo) {
        Intrinsics.checkNotNullParameter(pluginInfo, "");
        this.getMediationNetwork = pluginInfo;
    }
}
