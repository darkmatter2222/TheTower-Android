package com.unity3d.ads.core.domain;

import com.unity3d.ads.TokenConfiguration;
import com.unity3d.ads.core.configuration.MediationTraitsMetadataReader;
import com.unity3d.ads.core.data.manager.OfferwallManager;
import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.data.repository.TcfRepository;
import com.unity3d.ads.core.domain.coherence.CoherenceLibraryManager;
import gatewayprotocol.v1.HeaderBiddingTokenOuterClass;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidBuildHeaderBiddingToken.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u009f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0006\u0010\u001e\u001a\u00020\u001f\u0012\u0006\u0010 \u001a\u00020!\u0012\u0006\u0010\"\u001a\u00020#\u0012\u0006\u0010$\u001a\u00020%\u0012\u0006\u0010&\u001a\u00020'¢\u0006\u0004\b(\u0010)J \u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010/H\u0096B¢\u0006\u0002\u00100R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020'X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken;", "Lcom/unity3d/ads/core/domain/BuildHeaderBiddingToken;", "generateId", "Lcom/unity3d/ads/core/domain/GetByteStringId;", "getClientInfo", "Lcom/unity3d/ads/core/domain/GetClientInfo;", "getTimestamps", "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;", "getLimitedSessionToken", "Lcom/unity3d/ads/core/domain/GetLimitedSessionToken;", "getInitializationData", "Lcom/unity3d/ads/core/domain/GetInitializationData;", "getInitializationState", "Lcom/unity3d/ads/core/domain/GetInitializationState;", "awaitInitialization", "Lcom/unity3d/ads/core/domain/AwaitInitialization;", "deviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "campaignRepository", "Lcom/unity3d/ads/core/data/repository/CampaignRepository;", "tcfRepository", "Lcom/unity3d/ads/core/data/repository/TcfRepository;", "testDataInfo", "Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;", "offerwallManager", "Lcom/unity3d/ads/core/data/manager/OfferwallManager;", "mediationInfoConverter", "Lcom/unity3d/ads/core/domain/MediationInfoConverter;", "mediationTraitsMetadataReader", "Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;", "warmNonInitSignals", "Lcom/unity3d/ads/core/domain/WarmNonInitSignals;", "shouldUseFastInit", "Lcom/unity3d/ads/core/domain/ShouldUseFastInit;", "deviceInfoScope", "Lkotlinx/coroutines/CoroutineScope;", "coherenceLibraryManager", "Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;", "<init>", "(Lcom/unity3d/ads/core/domain/GetByteStringId;Lcom/unity3d/ads/core/domain/GetClientInfo;Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;Lcom/unity3d/ads/core/domain/GetLimitedSessionToken;Lcom/unity3d/ads/core/domain/GetInitializationData;Lcom/unity3d/ads/core/domain/GetInitializationState;Lcom/unity3d/ads/core/domain/AwaitInitialization;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignRepository;Lcom/unity3d/ads/core/data/repository/TcfRepository;Lcom/unity3d/ads/core/domain/AndroidTestDataInfo;Lcom/unity3d/ads/core/data/manager/OfferwallManager;Lcom/unity3d/ads/core/domain/MediationInfoConverter;Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;Lcom/unity3d/ads/core/domain/WarmNonInitSignals;Lcom/unity3d/ads/core/domain/ShouldUseFastInit;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;)V", "invoke", "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;", "tokenNumber", "", "tokenConfiguration", "Lcom/unity3d/ads/TokenConfiguration;", "(ILcom/unity3d/ads/TokenConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidBuildHeaderBiddingToken implements BuildHeaderBiddingToken {
    private final AwaitInitialization awaitInitialization;
    private final CampaignRepository campaignRepository;
    private final CoherenceLibraryManager coherenceLibraryManager;
    private final DeviceInfoRepository deviceInfoRepository;
    private final CoroutineScope deviceInfoScope;
    private final GetByteStringId generateId;
    private final GetClientInfo getClientInfo;
    private final GetInitializationData getInitializationData;
    private final GetInitializationState getInitializationState;
    private final GetLimitedSessionToken getLimitedSessionToken;
    private final GetSharedDataTimestamps getTimestamps;
    private final MediationInfoConverter mediationInfoConverter;
    private final MediationTraitsMetadataReader mediationTraitsMetadataReader;
    private final OfferwallManager offerwallManager;
    private final SessionRepository sessionRepository;
    private final ShouldUseFastInit shouldUseFastInit;
    private final TcfRepository tcfRepository;
    private final AndroidTestDataInfo testDataInfo;
    private final WarmNonInitSignals warmNonInitSignals;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidBuildHeaderBiddingToken$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidBuildHeaderBiddingToken.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidBuildHeaderBiddingToken$invoke$2", f = "AndroidBuildHeaderBiddingToken.kt", i = {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 6, 6, 7, 8}, l = {93, 101, 101, 102, 105, 115, 118, 120, 120}, m = "invokeSuspend", n = {"currentTokenCounters", "pendingClientInfo", "pendingDynamicDeviceInfo", "pendingStaticDeviceInfo", "$this$invokeSuspend_u24lambda_u2412", "startTime", "tokenTimeoutMs", "pendingDynamicDeviceInfo", "pendingStaticDeviceInfo", "$this$invokeSuspend_u24lambda_u2412", "startTime", "tokenTimeoutMs", "pendingDynamicDeviceInfo", "pendingStaticDeviceInfo", "$this$invokeSuspend_u24lambda_u2412", "startTime", "tokenTimeoutMs", "pendingStaticDeviceInfo", "$this$invokeSuspend_u24lambda_u2412", "startTime", "tokenTimeoutMs", "pendingStaticDeviceInfo", "$this$invokeSuspend_u24lambda_u2412", "pendingStaticDeviceInfo", "$this$invokeSuspend_u24lambda_u2412", "pendingStaticDeviceInfo", "$this$invokeSuspend_u24lambda_u2412", "$this$invokeSuspend_u24lambda_u2412", "$this$invokeSuspend_u24lambda_u2412"}, s = {"L$0", "L$1", "L$2", "L$3", "L$6", "J$0", "I$0", "L$0", "L$1", "L$4", "J$0", "I$0", "L$0", "L$1", "L$4", "J$0", "I$0", "L$0", "L$3", "J$0", "I$0", "L$0", "L$3", "L$0", "L$3", "L$0", "L$3", "L$2", "L$2"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HeaderBiddingTokenOuterClass.HeaderBiddingToken>, Object> {
        final /* synthetic */ TokenConfiguration $tokenConfiguration;
        final /* synthetic */ int $tokenNumber;
        int I$0;
        long J$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(int i, TokenConfiguration tokenConfiguration, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$tokenNumber = i;
            this.$tokenConfiguration = tokenConfiguration;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = AndroidBuildHeaderBiddingToken.this.new AnonymousClass2(this.$tokenNumber, this.$tokenConfiguration, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super HeaderBiddingTokenOuterClass.HeaderBiddingToken> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:106:0x045e  */
        /* JADX WARN: Code duplicated, block: B:109:0x0478  */
        /* JADX WARN: Code duplicated, block: B:112:0x0483  */
        /* JADX WARN: Code duplicated, block: B:115:0x0498  */
        /* JADX WARN: Code duplicated, block: B:119:0x04a0  */
        /* JADX WARN: Code duplicated, block: B:120:0x04a3  */
        /* JADX WARN: Code duplicated, block: B:124:0x04be  */
        /* JADX WARN: Code duplicated, block: B:127:0x04d1  */
        /* JADX WARN: Code duplicated, block: B:129:0x04de  */
        /* JADX WARN: Code duplicated, block: B:133:0x0505  */
        /* JADX WARN: Code duplicated, block: B:138:0x0522  */
        /* JADX WARN: Code duplicated, block: B:54:0x02d6  */
        /* JADX WARN: Code duplicated, block: B:57:0x02e5  */
        /* JADX WARN: Code duplicated, block: B:60:0x0315  */
        /* JADX WARN: Code duplicated, block: B:63:0x0334  */
        /* JADX WARN: Code duplicated, block: B:67:0x033f  */
        /* JADX WARN: Code duplicated, block: B:68:0x0345 A[PHI: r2 r4 r8 r10 r11 r12 r13 r14 r16
  0x0345: PHI (r2v7 int) = (r2v5 int), (r2v8 int) binds: [B:67:0x033f, B:65:0x033c] A[DONT_GENERATE, DONT_INLINE]
  0x0345: PHI (r4v4 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl) = (r4v2 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl), (r4v5 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl) binds: [B:67:0x033f, B:65:0x033c] A[DONT_GENERATE, DONT_INLINE]
  0x0345: PHI (r8v8 long) = (r8v6 long), (r8v9 long) binds: [B:67:0x033f, B:65:0x033c] A[DONT_GENERATE, DONT_INLINE]
  0x0345: PHI (r10v22 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl) = (r10v16 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl), (r10v23 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl) binds: [B:67:0x033f, B:65:0x033c] A[DONT_GENERATE, DONT_INLINE]
  0x0345: PHI (r11v39 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl) = (r11v34 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl), (r11v40 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl) binds: [B:67:0x033f, B:65:0x033c] A[DONT_GENERATE, DONT_INLINE]
  0x0345: PHI (r12v12 com.unity3d.ads.core.domain.AndroidBuildHeaderBiddingToken) = 
  (r12v8 com.unity3d.ads.core.domain.AndroidBuildHeaderBiddingToken)
  (r12v13 com.unity3d.ads.core.domain.AndroidBuildHeaderBiddingToken)
 binds: [B:67:0x033f, B:65:0x033c] A[DONT_GENERATE, DONT_INLINE]
  0x0345: PHI (r13v10 kotlinx.coroutines.Deferred) = (r13v5 kotlinx.coroutines.Deferred), (r13v11 kotlinx.coroutines.Deferred) binds: [B:67:0x033f, B:65:0x033c] A[DONT_GENERATE, DONT_INLINE]
  0x0345: PHI (r14v7 kotlinx.coroutines.Deferred) = (r14v3 kotlinx.coroutines.Deferred), (r14v8 kotlinx.coroutines.Deferred) binds: [B:67:0x033f, B:65:0x033c] A[DONT_GENERATE, DONT_INLINE]
  0x0345: PHI (r16v3 char) = (r16v1 char), (r16v4 char) binds: [B:67:0x033f, B:65:0x033c] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:72:0x036a A[PHI: r2 r3 r4 r8 r10 r11 r12 r13 r14 r16
  0x036a: PHI (r2v10 int) = (r2v8 int), (r2v11 int) binds: [B:65:0x033c, B:71:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x036a: PHI (r3v13 gatewayprotocol.v1.ClientInfoOuterClass$ClientInfo) = (r3v11 gatewayprotocol.v1.ClientInfoOuterClass$ClientInfo), (r3v18 gatewayprotocol.v1.ClientInfoOuterClass$ClientInfo) binds: [B:65:0x033c, B:71:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x036a: PHI (r4v8 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl) = (r4v5 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl), (r4v10 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl) binds: [B:65:0x033c, B:71:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x036a: PHI (r8v11 long) = (r8v9 long), (r8v12 long) binds: [B:65:0x033c, B:71:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x036a: PHI (r10v26 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl) = (r10v23 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl), (r10v27 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl) binds: [B:65:0x033c, B:71:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x036a: PHI (r11v43 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl) = (r11v40 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl), (r11v44 gatewayprotocol.v1.HeaderBiddingTokenKt$Dsl) binds: [B:65:0x033c, B:71:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x036a: PHI (r12v16 com.unity3d.ads.core.domain.AndroidBuildHeaderBiddingToken) = 
  (r12v13 com.unity3d.ads.core.domain.AndroidBuildHeaderBiddingToken)
  (r12v17 com.unity3d.ads.core.domain.AndroidBuildHeaderBiddingToken)
 binds: [B:65:0x033c, B:71:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x036a: PHI (r13v14 kotlinx.coroutines.Deferred) = (r13v11 kotlinx.coroutines.Deferred), (r13v15 kotlinx.coroutines.Deferred) binds: [B:65:0x033c, B:71:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x036a: PHI (r14v11 kotlinx.coroutines.Deferred) = (r14v8 kotlinx.coroutines.Deferred), (r14v12 kotlinx.coroutines.Deferred) binds: [B:65:0x033c, B:71:0x0368] A[DONT_GENERATE, DONT_INLINE]
  0x036a: PHI (r16v6 char) = (r16v4 char), (r16v7 char) binds: [B:65:0x033c, B:71:0x0368] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:74:0x036f  */
        /* JADX WARN: Code duplicated, block: B:77:0x038a  */
        /* JADX WARN: Code duplicated, block: B:80:0x038f  */
        /* JADX WARN: Code duplicated, block: B:81:0x0395  */
        /* JADX WARN: Code duplicated, block: B:82:0x0398  */
        /* JADX WARN: Code duplicated, block: B:86:0x03b6  */
        /* JADX WARN: Code duplicated, block: B:88:0x03d2  */
        /* JADX WARN: Code duplicated, block: B:91:0x03f8  */
        /* JADX WARN: Code duplicated, block: B:96:0x0425  */
        /* JADX WARN: Code duplicated, block: B:98:0x042f  */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x0364, code lost:
        
            if (r3 == r1) goto L123;
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r27) throws org.json.JSONException {
            /*
                Method dump skipped, instruction units count: 1366
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidBuildHeaderBiddingToken.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public AndroidBuildHeaderBiddingToken(GetByteStringId generateId, GetClientInfo getClientInfo, GetSharedDataTimestamps getTimestamps, GetLimitedSessionToken getLimitedSessionToken, GetInitializationData getInitializationData, GetInitializationState getInitializationState, AwaitInitialization awaitInitialization, DeviceInfoRepository deviceInfoRepository, SessionRepository sessionRepository, CampaignRepository campaignRepository, TcfRepository tcfRepository, AndroidTestDataInfo testDataInfo, OfferwallManager offerwallManager, MediationInfoConverter mediationInfoConverter, MediationTraitsMetadataReader mediationTraitsMetadataReader, WarmNonInitSignals warmNonInitSignals, ShouldUseFastInit shouldUseFastInit, CoroutineScope deviceInfoScope, CoherenceLibraryManager coherenceLibraryManager) {
        Intrinsics.checkNotNullParameter(generateId, "generateId");
        Intrinsics.checkNotNullParameter(getClientInfo, "getClientInfo");
        Intrinsics.checkNotNullParameter(getTimestamps, "getTimestamps");
        Intrinsics.checkNotNullParameter(getLimitedSessionToken, "getLimitedSessionToken");
        Intrinsics.checkNotNullParameter(getInitializationData, "getInitializationData");
        Intrinsics.checkNotNullParameter(getInitializationState, "getInitializationState");
        Intrinsics.checkNotNullParameter(awaitInitialization, "awaitInitialization");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(campaignRepository, "campaignRepository");
        Intrinsics.checkNotNullParameter(tcfRepository, "tcfRepository");
        Intrinsics.checkNotNullParameter(testDataInfo, "testDataInfo");
        Intrinsics.checkNotNullParameter(offerwallManager, "offerwallManager");
        Intrinsics.checkNotNullParameter(mediationInfoConverter, "mediationInfoConverter");
        Intrinsics.checkNotNullParameter(mediationTraitsMetadataReader, "mediationTraitsMetadataReader");
        Intrinsics.checkNotNullParameter(warmNonInitSignals, "warmNonInitSignals");
        Intrinsics.checkNotNullParameter(shouldUseFastInit, "shouldUseFastInit");
        Intrinsics.checkNotNullParameter(deviceInfoScope, "deviceInfoScope");
        Intrinsics.checkNotNullParameter(coherenceLibraryManager, "coherenceLibraryManager");
        this.generateId = generateId;
        this.getClientInfo = getClientInfo;
        this.getTimestamps = getTimestamps;
        this.getLimitedSessionToken = getLimitedSessionToken;
        this.getInitializationData = getInitializationData;
        this.getInitializationState = getInitializationState;
        this.awaitInitialization = awaitInitialization;
        this.deviceInfoRepository = deviceInfoRepository;
        this.sessionRepository = sessionRepository;
        this.campaignRepository = campaignRepository;
        this.tcfRepository = tcfRepository;
        this.testDataInfo = testDataInfo;
        this.offerwallManager = offerwallManager;
        this.mediationInfoConverter = mediationInfoConverter;
        this.mediationTraitsMetadataReader = mediationTraitsMetadataReader;
        this.warmNonInitSignals = warmNonInitSignals;
        this.shouldUseFastInit = shouldUseFastInit;
        this.deviceInfoScope = deviceInfoScope;
        this.coherenceLibraryManager = coherenceLibraryManager;
    }

    @Override // com.unity3d.ads.core.domain.BuildHeaderBiddingToken
    public Object invoke(int i, TokenConfiguration tokenConfiguration, Continuation<? super HeaderBiddingTokenOuterClass.HeaderBiddingToken> continuation) {
        return CoroutineScopeKt.coroutineScope(new AnonymousClass2(i, tokenConfiguration, null), continuation);
    }
}
