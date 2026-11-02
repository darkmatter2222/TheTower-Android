package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.core.data.datasource.LifecycleDataSource;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.LoadConfigurationInternal;
import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import com.unity3d.ads.core.data.repository.MediationRepository;
import com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.LinkedHashMap;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: AndroidSendDiagnosticEvent.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJt\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00132\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002¢\u0006\u0002\u0010\u001dJt\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00132\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002¢\u0006\u0002\u0010\u001fJ\u0081\u0001\u0010 \u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001e2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00132\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002¢\u0006\u0002\u0010\"R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidSendDiagnosticEvent;", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "diagnosticEventRepository", "Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;", "getDiagnosticEventRequest", "Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;", "lifecycleDataSource", "Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;", "mediationRepository", "Lcom/unity3d/ads/core/data/repository/MediationRepository;", "<init>", "(Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;Lcom/unity3d/ads/core/data/repository/MediationRepository;)V", "invoke", "", "event", "", "value", "", "tags", "", "intTags", "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "tokenNumber", "errorToken", "Lcom/google/protobuf/ByteString;", "mediationInfo", "Lcom/unity3d/ads/MediationInfo;", "(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;)V", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;", "(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;)V", "sendEvent", "customEventName", "(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;)V", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidSendDiagnosticEvent implements SendDiagnosticEvent {
    private final DiagnosticEventRepository diagnosticEventRepository;
    private final GetDiagnosticEventRequest getDiagnosticEventRequest;
    private final LifecycleDataSource lifecycleDataSource;
    private final MediationRepository mediationRepository;

    public AndroidSendDiagnosticEvent(DiagnosticEventRepository diagnosticEventRepository, GetDiagnosticEventRequest getDiagnosticEventRequest, LifecycleDataSource lifecycleDataSource, MediationRepository mediationRepository) {
        Intrinsics.checkNotNullParameter(diagnosticEventRepository, "diagnosticEventRepository");
        Intrinsics.checkNotNullParameter(getDiagnosticEventRequest, "getDiagnosticEventRequest");
        Intrinsics.checkNotNullParameter(lifecycleDataSource, "lifecycleDataSource");
        Intrinsics.checkNotNullParameter(mediationRepository, "mediationRepository");
        this.diagnosticEventRepository = diagnosticEventRepository;
        this.getDiagnosticEventRequest = getDiagnosticEventRequest;
        this.lifecycleDataSource = lifecycleDataSource;
        this.mediationRepository = mediationRepository;
    }

    private final void sendEvent(DiagnosticEventRequestOuterClass.DiagnosticEventType event, String customEventName, Double value, Map<String, String> tags, Map<String, Integer> intTags, AdObject adObject, Integer tokenNumber, ByteString errorToken, MediationInfo mediationInfo) {
        LinkedHashMap linkedHashMap;
        MediationInfo mediationInfo2;
        String name;
        String version;
        String adapterVersion;
        UnityAdsLoadOptions loadOptions;
        LoadConfigurationInternal loadConfigurationInternal;
        Boolean boolValueOf = adObject != null ? Boolean.valueOf(adObject.isHeaderBidding()) : null;
        ByteString opportunityId = adObject != null ? adObject.getOpportunityId() : null;
        String placementId = adObject != null ? adObject.getPlacementId() : null;
        DiagnosticEventRequestOuterClass.DiagnosticAdType adType = adObject != null ? adObject.getAdType() : null;
        if (tags == null || (linkedHashMap = MapsKt.toMutableMap(tags)) == null) {
            linkedHashMap = new LinkedHashMap();
        }
        Map<String, String> map = linkedHashMap;
        if (adObject != null && adObject.isOfferwallAd()) {
            map.put("offerwall", "true");
        }
        if ((adObject != null ? adObject.getWebViewLessLoadingRequiredData() : null) != null) {
            map.put("webviewless", "true");
        }
        map.put("app_active", String.valueOf(this.lifecycleDataSource.appIsForeground()));
        if (mediationInfo == null) {
            mediationInfo2 = (adObject == null || (loadOptions = adObject.getLoadOptions()) == null || (loadConfigurationInternal = loadOptions.loadConfiguration) == null) ? null : loadConfigurationInternal.getMediationInfo();
        } else {
            mediationInfo2 = mediationInfo;
        }
        if (mediationInfo2 == null || (name = mediationInfo2.getName()) == null) {
            name = this.mediationRepository.getName();
        }
        if (name != null) {
            if (StringsKt.isBlank(name)) {
                name = null;
            }
            if (name != null) {
                map.put("mediation_provider", name);
            }
        }
        if (mediationInfo2 == null || (version = mediationInfo2.getVersion()) == null) {
            version = this.mediationRepository.getVersion();
        }
        if (version != null) {
            if (StringsKt.isBlank(version)) {
                version = null;
            }
            if (version != null) {
                map.put("mediation_version", version);
            }
        }
        if (mediationInfo2 == null || (adapterVersion = mediationInfo2.getAdapterVersion()) == null) {
            adapterVersion = this.mediationRepository.getAdapterVersion();
        }
        if (adapterVersion != null) {
            String str = StringsKt.isBlank(adapterVersion) ? null : adapterVersion;
            if (str != null) {
                map.put("mediation_adapter_version", str);
            }
        }
        this.diagnosticEventRepository.addDiagnosticEvent(this.getDiagnosticEventRequest.invoke(event, customEventName, map, intTags, value, boolValueOf, opportunityId, placementId, adType, tokenNumber, errorToken));
    }

    static /* synthetic */ void sendEvent$default(AndroidSendDiagnosticEvent androidSendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType, String str, Double d, Map map, Map map2, AdObject adObject, Integer num, ByteString byteString, MediationInfo mediationInfo, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 256) != 0) {
            mediationInfo = null;
        }
        androidSendDiagnosticEvent.sendEvent(diagnosticEventType, str, d, map, map2, adObject, num, byteString, mediationInfo);
    }

    @Override // com.unity3d.ads.core.domain.SendDiagnosticEvent
    public void invoke(DiagnosticEventRequestOuterClass.DiagnosticEventType event, Double value, Map<String, String> tags, Map<String, Integer> intTags, AdObject adObject, Integer tokenNumber, ByteString errorToken, MediationInfo mediationInfo) {
        Intrinsics.checkNotNullParameter(event, "event");
        sendEvent$default(this, event, null, value, tags, intTags, adObject, tokenNumber, errorToken, mediationInfo, 2, null);
    }

    @Override // com.unity3d.ads.core.domain.SendDiagnosticEvent
    public void invoke(String event, Double value, Map<String, String> tags, Map<String, Integer> intTags, AdObject adObject, Integer tokenNumber, ByteString errorToken, MediationInfo mediationInfo) {
        Intrinsics.checkNotNullParameter(event, "event");
        sendEvent(DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_CUSTOM, event, value, tags, intTags, adObject, tokenNumber, errorToken, mediationInfo);
    }
}
