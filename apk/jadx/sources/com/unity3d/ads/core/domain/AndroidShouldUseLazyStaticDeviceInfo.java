package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.configuration.MediationTraitsMetadataReader;
import org.json.JSONException;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidShouldUseLazyStaticDeviceInfo.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0007H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidShouldUseLazyStaticDeviceInfo;", "Lcom/unity3d/ads/core/domain/ShouldUseLazyStaticDeviceInfo;", "mediationTraitsMetadataReader", "Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;", "<init>", "(Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;)V", "invoke", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidShouldUseLazyStaticDeviceInfo implements ShouldUseLazyStaticDeviceInfo {
    private final MediationTraitsMetadataReader mediationTraitsMetadataReader;

    public AndroidShouldUseLazyStaticDeviceInfo(MediationTraitsMetadataReader mediationTraitsMetadataReader) {
        Intrinsics.checkNotNullParameter(mediationTraitsMetadataReader, "mediationTraitsMetadataReader");
        this.mediationTraitsMetadataReader = mediationTraitsMetadataReader;
    }

    @Override // com.unity3d.ads.core.domain.ShouldUseLazyStaticDeviceInfo
    public boolean invoke() throws JSONException {
        Boolean booleanTrait = this.mediationTraitsMetadataReader.getBooleanTrait(MediationTraitsMetadataReader.LAZY_STATIC_DEVICE_INFO);
        if (booleanTrait != null) {
            return booleanTrait.booleanValue();
        }
        return false;
    }
}
