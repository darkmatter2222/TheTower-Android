package com.unity3d.ads.core.domain.work;

import com.google.protobuf.kotlin.DslList;
import com.unity3d.ads.core.data.repository.SessionRepository;
import gatewayprotocol.v1.DiagnosticEventKt;
import gatewayprotocol.v1.DiagnosticEventRequestKt;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.UniversalRequestKt;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import java.util.ArrayList;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DiagnosticEventRequestWorkModifier.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0011\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/unity3d/ads/core/domain/work/DiagnosticEventRequestWorkModifier;", "", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "<init>", "(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V", "invoke", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;", "universalRequest", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DiagnosticEventRequestWorkModifier {
    private final SessionRepository sessionRepository;

    public DiagnosticEventRequestWorkModifier(SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.sessionRepository = sessionRepository;
    }

    public final UniversalRequestOuterClass.UniversalRequest invoke(UniversalRequestOuterClass.UniversalRequest universalRequest) {
        Intrinsics.checkNotNullParameter(universalRequest, "universalRequest");
        UniversalRequestKt.Dsl.Companion companion = UniversalRequestKt.Dsl.INSTANCE;
        UniversalRequestOuterClass.UniversalRequest.Builder builder = universalRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        UniversalRequestKt.Dsl dsl_create = companion._create(builder);
        UniversalRequestOuterClass.UniversalRequest.Payload payload = dsl_create.getPayload();
        UniversalRequestKt.PayloadKt.Dsl.Companion companion2 = UniversalRequestKt.PayloadKt.Dsl.INSTANCE;
        UniversalRequestOuterClass.UniversalRequest.Payload.Builder builder2 = payload.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder2, "toBuilder(...)");
        UniversalRequestKt.PayloadKt.Dsl dsl_create2 = companion2._create(builder2);
        DiagnosticEventRequestOuterClass.DiagnosticEventRequest diagnosticEventRequest = dsl_create2.getDiagnosticEventRequest();
        DiagnosticEventRequestKt.Dsl.Companion companion3 = DiagnosticEventRequestKt.Dsl.INSTANCE;
        DiagnosticEventRequestOuterClass.DiagnosticEventRequest.Builder builder3 = diagnosticEventRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder3, "toBuilder(...)");
        DiagnosticEventRequestKt.Dsl dsl_create3 = companion3._create(builder3);
        DslList<DiagnosticEventRequestOuterClass.DiagnosticEvent> batch = dsl_create3.getBatch();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(batch, 10));
        for (DiagnosticEventRequestOuterClass.DiagnosticEvent diagnosticEvent : batch) {
            DiagnosticEventKt.Dsl.Companion companion4 = DiagnosticEventKt.Dsl.INSTANCE;
            DiagnosticEventRequestOuterClass.DiagnosticEvent.Builder builder4 = diagnosticEvent.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder4, "toBuilder(...)");
            DiagnosticEventKt.Dsl dsl_create4 = companion4._create(builder4);
            dsl_create4.putStringTags(dsl_create4.getStringTagsMap(), "same_session", String.valueOf(Intrinsics.areEqual(universalRequest.getSharedData().getSessionToken(), this.sessionRepository.getSessionToken())));
            arrayList.add(dsl_create4._build());
        }
        dsl_create3.clearBatch(dsl_create3.getBatch());
        dsl_create3.addAllBatch(dsl_create3.getBatch(), arrayList);
        dsl_create2.setDiagnosticEventRequest(dsl_create3._build());
        dsl_create.setPayload(dsl_create2._build());
        return dsl_create._build();
    }
}
