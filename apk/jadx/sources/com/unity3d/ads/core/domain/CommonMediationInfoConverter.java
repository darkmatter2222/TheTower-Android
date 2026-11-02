package com.unity3d.ads.core.domain;

import com.unity3d.ads.MediationInfo;
import gatewayprotocol.v1.ClientInfoOuterClass;
import gatewayprotocol.v1.MediationInfoKt;
import gatewayprotocol.v1.MediationInfoOuterClass;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CommonMediationInfoConverter.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0011\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/unity3d/ads/core/domain/CommonMediationInfoConverter;", "Lcom/unity3d/ads/core/domain/MediationInfoConverter;", "mediationProviderParser", "Lcom/unity3d/ads/core/domain/MediationProviderParser;", "<init>", "(Lcom/unity3d/ads/core/domain/MediationProviderParser;)V", "invoke", "Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;", "mediationInfoData", "Lcom/unity3d/ads/MediationInfo;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CommonMediationInfoConverter implements MediationInfoConverter {
    private final MediationProviderParser mediationProviderParser;

    public CommonMediationInfoConverter(MediationProviderParser mediationProviderParser) {
        Intrinsics.checkNotNullParameter(mediationProviderParser, "mediationProviderParser");
        this.mediationProviderParser = mediationProviderParser;
    }

    @Override // com.unity3d.ads.core.domain.MediationInfoConverter
    public MediationInfoOuterClass.MediationInfo invoke(MediationInfo mediationInfoData) {
        Intrinsics.checkNotNullParameter(mediationInfoData, "mediationInfoData");
        ClientInfoOuterClass.MediationProvider mediationProviderInvoke = this.mediationProviderParser.invoke(mediationInfoData.getName());
        MediationInfoKt.Dsl.Companion companion = MediationInfoKt.Dsl.INSTANCE;
        MediationInfoOuterClass.MediationInfo.Builder builderNewBuilder = MediationInfoOuterClass.MediationInfo.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        MediationInfoKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setProvider(mediationProviderInvoke);
        if (mediationProviderInvoke == ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_CUSTOM) {
            dsl_create.setCustomName(mediationInfoData.getName());
        }
        dsl_create.setVersion(mediationInfoData.getVersion());
        dsl_create.setAdapterVersion(mediationInfoData.getAdapterVersion());
        return dsl_create._build();
    }
}
