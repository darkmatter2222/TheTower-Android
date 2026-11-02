package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.repository.AdRevenueRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HandleAdRevenueEvent.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ&\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086B¢\u0006\u0002\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;", "", "adRevenueRepository", "Lcom/unity3d/ads/core/data/repository/AdRevenueRepository;", "deviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "getAdRevenueEventData", "Lcom/unity3d/ads/core/domain/events/GetAdRevenueEventData;", "<init>", "(Lcom/unity3d/ads/core/data/repository/AdRevenueRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/events/GetAdRevenueEventData;)V", "invoke", "", "data", "Lcom/unity3d/ads/core/data/model/AdRevenueData;", "mediationProvider", "Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;", "origin", "Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;", "(Lcom/unity3d/ads/core/data/model/AdRevenueData;Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;Lcom/unity3d/ads/core/data/model/AdRevenueOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HandleAdRevenueEvent {
    private final AdRevenueRepository adRevenueRepository;
    private final DeviceInfoRepository deviceInfoRepository;
    private final GetAdRevenueEventData getAdRevenueEventData;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.events.HandleAdRevenueEvent$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: HandleAdRevenueEvent.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.events.HandleAdRevenueEvent", f = "HandleAdRevenueEvent.kt", i = {0, 0, 0, 0}, l = {26, 32}, m = "invoke", n = {"data", "mediationProvider", "origin", "$this$invoke_u24lambda_u240"}, s = {"L$0", "L$1", "L$2", "L$4"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return HandleAdRevenueEvent.this.invoke(null, null, null, this);
        }
    }

    public HandleAdRevenueEvent(AdRevenueRepository adRevenueRepository, DeviceInfoRepository deviceInfoRepository, GetAdRevenueEventData getAdRevenueEventData) {
        Intrinsics.checkNotNullParameter(adRevenueRepository, "adRevenueRepository");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(getAdRevenueEventData, "getAdRevenueEventData");
        this.adRevenueRepository = adRevenueRepository;
        this.deviceInfoRepository = deviceInfoRepository;
        this.getAdRevenueEventData = getAdRevenueEventData;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c1, code lost:
    
        if (r9.emit(r8, r0) == r1) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(com.unity3d.ads.core.data.model.AdRevenueData r8, gatewayprotocol.v1.ClientInfoOuterClass.MediationProvider r9, com.unity3d.ads.core.data.model.AdRevenueOrigin r10, p005kotlin.coroutines.Continuation<? super p005kotlin.Unit> r11) {
        /*
            r7 = this;
            boolean r0 = r11 instanceof com.unity3d.ads.core.domain.events.HandleAdRevenueEvent.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r11
            com.unity3d.ads.core.domain.events.HandleAdRevenueEvent$invoke$1 r0 = (com.unity3d.ads.core.domain.events.HandleAdRevenueEvent.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            com.unity3d.ads.core.domain.events.HandleAdRevenueEvent$invoke$1 r0 = new com.unity3d.ads.core.domain.events.HandleAdRevenueEvent$invoke$1
            r0.<init>(r11)
        L19:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L56
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto Lc4
        L2e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L36:
            java.lang.Object r8 = r0.L$5
            gatewayprotocol.v1.AdRevenueEventRequestKt$Dsl r8 = (gatewayprotocol.v1.AdRevenueEventRequestKt.Dsl) r8
            java.lang.Object r9 = r0.L$4
            gatewayprotocol.v1.AdRevenueEventRequestKt$Dsl r9 = (gatewayprotocol.v1.AdRevenueEventRequestKt.Dsl) r9
            java.lang.Object r10 = r0.L$3
            gatewayprotocol.v1.AdRevenueEventRequestKt$Dsl r10 = (gatewayprotocol.v1.AdRevenueEventRequestKt.Dsl) r10
            java.lang.Object r2 = r0.L$2
            com.unity3d.ads.core.data.model.AdRevenueOrigin r2 = (com.unity3d.ads.core.data.model.AdRevenueOrigin) r2
            java.lang.Object r4 = r0.L$1
            gatewayprotocol.v1.ClientInfoOuterClass$MediationProvider r4 = (gatewayprotocol.v1.ClientInfoOuterClass.MediationProvider) r4
            java.lang.Object r5 = r0.L$0
            com.unity3d.ads.core.data.model.AdRevenueData r5 = (com.unity3d.ads.core.data.model.AdRevenueData) r5
            p005kotlin.ResultKt.throwOnFailure(r11)
            r6 = r11
            r11 = r10
            r10 = r2
            r2 = r6
            goto L83
        L56:
            p005kotlin.ResultKt.throwOnFailure(r11)
            gatewayprotocol.v1.AdRevenueEventRequestKt$Dsl$Companion r11 = gatewayprotocol.v1.AdRevenueEventRequestKt.Dsl.INSTANCE
            gatewayprotocol.v1.AdRevenueEventRequestOuterClass$AdRevenueEventRequest$Builder r2 = gatewayprotocol.v1.AdRevenueEventRequestOuterClass.AdRevenueEventRequest.newBuilder()
            java.lang.String r5 = "newBuilder(...)"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r5)
            gatewayprotocol.v1.AdRevenueEventRequestKt$Dsl r11 = r11._create(r2)
            com.unity3d.ads.core.data.repository.DeviceInfoRepository r2 = r7.deviceInfoRepository
            r0.L$0 = r8
            r0.L$1 = r9
            r0.L$2 = r10
            r0.L$3 = r11
            r0.L$4 = r11
            r0.L$5 = r11
            r0.label = r4
            java.lang.Object r2 = r2.staticDeviceInfo(r0)
            if (r2 != r1) goto L7f
            goto Lc3
        L7f:
            r5 = r8
            r4 = r9
            r8 = r11
            r9 = r8
        L83:
            gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo r2 = (gatewayprotocol.v1.StaticDeviceInfoOuterClass.StaticDeviceInfo) r2
            r8.setStaticDeviceInfo(r2)
            com.unity3d.ads.core.data.repository.DeviceInfoRepository r8 = r7.deviceInfoRepository
            gatewayprotocol.v1.DynamicDeviceInfoOuterClass$DynamicDeviceInfo r8 = r8.getDynamicDeviceInfo()
            r9.setDynamicDeviceInfo(r8)
            r9.setMediationProvider(r4)
            gatewayprotocol.v1.AdRevenueEventRequestOuterClass$AdRevenueOrigin r8 = com.unity3d.ads.core.domain.events.HandleAdRevenueEventKt.access$toProto(r10)
            r9.setAdRevenueOrigin(r8)
            com.unity3d.ads.core.domain.events.GetAdRevenueEventData r8 = r7.getAdRevenueEventData
            gatewayprotocol.v1.AdRevenueEventRequestOuterClass$AdRevenueData r8 = r8.invoke(r5)
            r9.setAdRevenueData(r8)
            gatewayprotocol.v1.AdRevenueEventRequestOuterClass$AdRevenueEventRequest r8 = r11._build()
            com.unity3d.ads.core.data.repository.AdRevenueRepository r9 = r7.adRevenueRepository
            kotlinx.coroutines.flow.MutableSharedFlow r9 = r9.getAdRevenueEvents()
            r10 = 0
            r0.L$0 = r10
            r0.L$1 = r10
            r0.L$2 = r10
            r0.L$3 = r10
            r0.L$4 = r10
            r0.L$5 = r10
            r0.label = r3
            java.lang.Object r8 = r9.emit(r8, r0)
            if (r8 != r1) goto Lc4
        Lc3:
            return r1
        Lc4:
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.events.HandleAdRevenueEvent.invoke(com.unity3d.ads.core.data.model.AdRevenueData, gatewayprotocol.v1.ClientInfoOuterClass$MediationProvider, com.unity3d.ads.core.data.model.AdRevenueOrigin, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
