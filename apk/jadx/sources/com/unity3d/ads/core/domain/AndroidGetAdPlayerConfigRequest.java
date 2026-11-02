package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.core.data.model.LoadConfigurationInternal;
import gatewayprotocol.v1.AdFormatOuterClass;
import gatewayprotocol.v1.AdPlayerConfigRequestKt;
import gatewayprotocol.v1.AdPlayerConfigRequestOuterClass;
import gatewayprotocol.v1.UniversalRequestKt;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.MutablePropertyReference0Impl;

/* JADX INFO: compiled from: AndroidGetAdPlayerConfigRequest.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J:\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096B¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerConfigRequest;", "Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;", "getUniversalRequestForPayLoad", "Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;", "mediationInfoConverter", "Lcom/unity3d/ads/core/domain/MediationInfoConverter;", "<init>", "(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/MediationInfoConverter;)V", "invoke", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;", "placement", "", "opportunityId", "Lcom/google/protobuf/ByteString;", "configToken", "adFormat", "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;", "loadConfiguration", "Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;", "(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidGetAdPlayerConfigRequest implements GetAdPlayerConfigRequest {
    private final GetUniversalRequestForPayLoad getUniversalRequestForPayLoad;
    private final MediationInfoConverter mediationInfoConverter;

    public AndroidGetAdPlayerConfigRequest(GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, MediationInfoConverter mediationInfoConverter) {
        Intrinsics.checkNotNullParameter(getUniversalRequestForPayLoad, "getUniversalRequestForPayLoad");
        Intrinsics.checkNotNullParameter(mediationInfoConverter, "mediationInfoConverter");
        this.getUniversalRequestForPayLoad = getUniversalRequestForPayLoad;
        this.mediationInfoConverter = mediationInfoConverter;
    }

    @Override // com.unity3d.ads.core.domain.GetAdPlayerConfigRequest
    public Object invoke(String str, ByteString byteString, ByteString byteString2, AdFormatOuterClass.AdFormat adFormat, LoadConfigurationInternal loadConfigurationInternal, Continuation<? super UniversalRequestOuterClass.UniversalRequest> continuation) {
        AdPlayerConfigRequestKt.Dsl.Companion companion = AdPlayerConfigRequestKt.Dsl.INSTANCE;
        AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest.Builder builderNewBuilder = AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        final AdPlayerConfigRequestKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setConfigurationToken(byteString2);
        dsl_create.setPlacementId(str);
        dsl_create.setImpressionOpportunityId(byteString);
        if (adFormat != null) {
            dsl_create.setAdFormat(adFormat);
        }
        if (loadConfigurationInternal != null) {
            String mediationAdUnitId = loadConfigurationInternal.getMediationAdUnitId();
            if (mediationAdUnitId != null) {
                new MutablePropertyReference0Impl(dsl_create) { // from class: com.unity3d.ads.core.domain.AndroidGetAdPlayerConfigRequest$invoke$request$1$2$2
                    @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                    public Object get() {
                        return ((AdPlayerConfigRequestKt.Dsl) this.receiver).getMediationAdUnitId();
                    }

                    @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                    public void set(Object obj) {
                        ((AdPlayerConfigRequestKt.Dsl) this.receiver).setMediationAdUnitId((String) obj);
                    }
                }.set(mediationAdUnitId);
            }
            MediationInfo mediationInfo = loadConfigurationInternal.getMediationInfo();
            if (mediationInfo != null) {
                dsl_create.setMediationInfo(this.mediationInfoConverter.invoke(mediationInfo));
            }
            dsl_create.putAllExtras(dsl_create.getExtrasMap(), loadConfigurationInternal.getExtras());
        }
        AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest adPlayerConfigRequest_build = dsl_create._build();
        UniversalRequestKt universalRequestKt = UniversalRequestKt.INSTANCE;
        UniversalRequestKt.PayloadKt.Dsl.Companion companion2 = UniversalRequestKt.PayloadKt.Dsl.INSTANCE;
        UniversalRequestOuterClass.UniversalRequest.Payload.Builder builderNewBuilder2 = UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder2, "newBuilder(...)");
        UniversalRequestKt.PayloadKt.Dsl dsl_create2 = companion2._create(builderNewBuilder2);
        dsl_create2.setAdPlayerConfigRequest(adPlayerConfigRequest_build);
        return this.getUniversalRequestForPayLoad.invoke(dsl_create2._build(), continuation);
    }
}
