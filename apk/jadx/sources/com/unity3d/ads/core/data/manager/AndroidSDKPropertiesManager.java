package com.unity3d.ads.core.data.manager;

import com.unity3d.services.core.device.Device;
import com.unity3d.services.core.properties.SdkProperties;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidSDKPropertiesManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\t\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\u0005H\u0016¨\u0006\u000b"}, d2 = {"Lcom/unity3d/ads/core/data/manager/AndroidSDKPropertiesManager;", "Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;", "<init>", "()V", "setInitializeState", "", "initializeState", "Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;", "getCurrentInitializationState", "setInitializationTime", "setInitializationTimeSinceEpoch", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidSDKPropertiesManager implements SDKPropertiesManager {
    @Override // com.unity3d.ads.core.data.manager.SDKPropertiesManager
    public SdkProperties.InitializationState getCurrentInitializationState() {
        SdkProperties.InitializationState currentInitializationState = SdkProperties.getCurrentInitializationState();
        Intrinsics.checkNotNullExpressionValue(currentInitializationState, "getCurrentInitializationState(...)");
        return currentInitializationState;
    }

    @Override // com.unity3d.ads.core.data.manager.SDKPropertiesManager
    public void setInitializationTime() {
        SdkProperties.setInitializationTime(Device.getElapsedRealtime());
    }

    @Override // com.unity3d.ads.core.data.manager.SDKPropertiesManager
    public void setInitializationTimeSinceEpoch() {
        SdkProperties.setInitializationTimeSinceEpoch(System.currentTimeMillis());
    }

    @Override // com.unity3d.ads.core.data.manager.SDKPropertiesManager
    public void setInitializeState(SdkProperties.InitializationState initializeState) {
        Intrinsics.checkNotNullParameter(initializeState, "initializeState");
        SdkProperties.setInitializeState(initializeState);
    }
}
