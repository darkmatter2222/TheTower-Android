package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.adplayer.probe.WebViewProbe;
import com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource;
import com.unity3d.ads.core.data.manager.OptimisticInitializationManager;
import com.unity3d.ads.core.data.manager.SDKPropertiesManager;
import com.unity3d.ads.core.data.manager.StorageManager;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.InitializationState;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.model.exception.InitializationException;
import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.events.EventObservers;
import com.unity3d.ads.core.domain.om.InitializeOMSDK;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.ads.gatewayclient.GatewayClient;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.fh;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import p005kotlin.KotlinVersion;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.TimeMark;
import p005kotlin.time.TimeSource;

/* JADX INFO: compiled from: AndroidInitializeBoldSDK.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\b\u0000\u0018\u0000 W2\u00020\u0001:\u0001WBÏ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0006\u0010\u001e\u001a\u00020\u001f\u0012\u0006\u0010 \u001a\u00020!\u0012\u0006\u0010\"\u001a\u00020#\u0012\u0006\u0010$\u001a\u00020%\u0012\u0006\u0010&\u001a\u00020'\u0012\u0006\u0010(\u001a\u00020)\u0012\u0006\u0010*\u001a\u00020+\u0012\u0006\u0010,\u001a\u00020-\u0012\u0006\u0010.\u001a\u00020/\u0012\u0006\u00100\u001a\u000201\u0012\u0006\u00102\u001a\u000203¢\u0006\u0004\b4\u00105J \u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u00010=H\u0096B¢\u0006\u0002\u0010>J\b\u0010?\u001a\u000209H\u0002J\b\u0010@\u001a\u000209H\u0002J\u001e\u0010A\u001a\u0002092\u0006\u0010:\u001a\u00020;2\u0006\u0010B\u001a\u00020CH\u0082@¢\u0006\u0002\u0010DJ\b\u0010E\u001a\u00020;H\u0002J.\u0010F\u001a\u0002092\u0006\u0010<\u001a\u00020=2\u0006\u0010G\u001a\u00020=2\u0006\u0010:\u001a\u00020;2\u0006\u0010B\u001a\u00020CH\u0082@¢\u0006\u0002\u0010HJ4\u0010I\u001a\u0002092\u0006\u0010J\u001a\u00020;2\u001c\u0010K\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002090M\u0012\u0006\u0012\u0004\u0018\u00010N0LH\u0082@¢\u0006\u0002\u0010OJ(\u0010P\u001a\u0002092\u0006\u0010<\u001a\u00020=2\u0006\u0010Q\u001a\u00020R2\u0006\u0010:\u001a\u00020;2\u0006\u0010B\u001a\u00020CH\u0002J0\u0010S\u001a\u000e\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020;0T2\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010R2\u0006\u0010:\u001a\u00020;2\u0006\u0010B\u001a\u00020CH\u0002J\b\u0010U\u001a\u000209H\u0002J\b\u0010V\u001a\u000209H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020'X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u000201X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u000203X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000207X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006X"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;", "Lcom/unity3d/ads/core/domain/InitializeBoldSDK;", "defaultDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "initializeOM", "Lcom/unity3d/ads/core/domain/om/InitializeOMSDK;", "getInitializeRequest", "Lcom/unity3d/ads/core/domain/GetInitializationRequest;", "getRequestPolicy", "Lcom/unity3d/ads/core/domain/GetRequestPolicy;", "cleanAssets", "Lcom/unity3d/ads/core/domain/CleanAssets;", "handleGatewayInitializationResponse", "Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;", "deliverModuleConfigs", "Lcom/unity3d/ads/core/domain/DeliverModuleConfigs;", "gatewayClient", "Lcom/unity3d/ads/gatewayclient/GatewayClient;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "eventObservers", "Lcom/unity3d/ads/core/domain/events/EventObservers;", "triggerInitializeListener", "Lcom/unity3d/ads/core/domain/TriggerInitializeListener;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "diagnosticEventRepository", "Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;", "storageManager", "Lcom/unity3d/ads/core/data/manager/StorageManager;", "sdkPropertiesManager", "Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;", "getGameId", "Lcom/unity3d/ads/core/domain/GetGameId;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "handleFocusCounters", "Lcom/unity3d/ads/core/domain/AndroidHandleFocusCounters;", "optimisticInitializationManager", "Lcom/unity3d/ads/core/data/manager/OptimisticInitializationManager;", "getIsModulesInitEnabled", "Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;", "webViewProbe", "Lcom/unity3d/ads/adplayer/probe/WebViewProbe;", "staticDeviceInfoDataSource", "Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;", "deviceInfoScope", "Lkotlinx/coroutines/CoroutineScope;", "warmNonInitSignals", "Lcom/unity3d/ads/core/domain/WarmNonInitSignals;", "shouldUseFastInit", "Lcom/unity3d/ads/core/domain/ShouldUseFastInit;", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/om/InitializeOMSDK;Lcom/unity3d/ads/core/domain/GetInitializationRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/CleanAssets;Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;Lcom/unity3d/ads/core/domain/DeliverModuleConfigs;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/events/EventObservers;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/manager/StorageManager;Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;Lcom/unity3d/ads/core/domain/GetGameId;Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/ads/core/domain/AndroidHandleFocusCounters;Lcom/unity3d/ads/core/data/manager/OptimisticInitializationManager;Lcom/unity3d/ads/core/domain/GetIsModulesInitEnabled;Lcom/unity3d/ads/adplayer/probe/WebViewProbe;Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/domain/WarmNonInitSignals;Lcom/unity3d/ads/core/domain/ShouldUseFastInit;)V", "warmStarted", "Ljava/util/concurrent/atomic/AtomicBoolean;", "invoke", "", "source", "", "publicApiEntry", "Lkotlin/time/TimeMark;", "(Ljava/lang/String;Lkotlin/time/TimeMark;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "warmStaticDeviceInfo", "checkCanInitialize", "initializationStart", "isRetry", "", "(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getInitLog", "initializationSuccess", "useCaseEntry", "(Lkotlin/time/TimeMark;Lkotlin/time/TimeMark;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tailStep", "name", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "initializationFailure", "e", "Lcom/unity3d/ads/core/data/model/exception/InitializationException;", "getTags", "", "setupDiagnosticEvents", "logNewPrivacyWasNotUsedIfNeeded", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidInitializeBoldSDK implements InitializeBoldSDK {
    public static final String MSG_GATEWAY_DENIED = "Gateway communication failure";
    public static final String MSG_NETWORK = "Network";
    public static final String MSG_TIMEOUT = "Timeout";
    public static final String MSG_UNKNOWN = "Initialization failure";
    private final CleanAssets cleanAssets;
    private final CoroutineDispatcher defaultDispatcher;
    private final DeliverModuleConfigs deliverModuleConfigs;
    private final CoroutineScope deviceInfoScope;
    private final DiagnosticEventRepository diagnosticEventRepository;
    private final EventObservers eventObservers;
    private final GatewayClient gatewayClient;
    private final GetGameId getGameId;
    private final GetInitializationRequest getInitializeRequest;
    private final GetIsModulesInitEnabled getIsModulesInitEnabled;
    private final GetRequestPolicy getRequestPolicy;
    private final AndroidHandleFocusCounters handleFocusCounters;
    private final HandleGatewayInitializationResponse handleGatewayInitializationResponse;
    private final InitializeOMSDK initializeOM;
    private final Logger logger;
    private final OptimisticInitializationManager optimisticInitializationManager;
    private final SDKPropertiesManager sdkPropertiesManager;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private final ShouldUseFastInit shouldUseFastInit;
    private final StaticDeviceInfoDataSource staticDeviceInfoDataSource;
    private final StorageManager storageManager;
    private final TriggerInitializeListener triggerInitializeListener;
    private final WarmNonInitSignals warmNonInitSignals;
    private final AtomicBoolean warmStarted;
    private final WebViewProbe webViewProbe;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$initializationSuccess$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidInitializeBoldSDK.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK", f = "AndroidInitializeBoldSDK.kt", i = {0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3}, l = {191, 192, 193, 194}, m = "initializationSuccess", n = {"publicApiEntry", "source", "isRetry", "publicApiEntry", "source", "isRetry", "publicApiEntry", "source", "isRetry", "publicApiEntry", "source", "isRetry"}, s = {"L$0", "L$1", "Z$0", "L$0", "L$1", "Z$0", "L$0", "L$1", "Z$0", "L$0", "L$1", "Z$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidInitializeBoldSDK.this.initializationSuccess(null, null, null, false, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$initializationSuccess$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidInitializeBoldSDK.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$initializationSuccess$2", f = "AndroidInitializeBoldSDK.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(1, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return AndroidInitializeBoldSDK.this.new AnonymousClass2(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AndroidInitializeBoldSDK.this.storageManager.hasInitialized();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$initializationSuccess$3, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidInitializeBoldSDK.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$initializationSuccess$3", f = "AndroidInitializeBoldSDK.kt", i = {}, l = {193}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(1, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return AndroidInitializeBoldSDK.this.new AnonymousClass3(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (AndroidInitializeBoldSDK.this.sessionRepository.persistNativeConfiguration(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$initializationSuccess$4, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidInitializeBoldSDK.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$initializationSuccess$4", f = "AndroidInitializeBoldSDK.kt", i = {}, l = {194}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass4 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass4(Continuation<? super AnonymousClass4> continuation) {
            super(1, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return AndroidInitializeBoldSDK.this.new AnonymousClass4(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (AndroidInitializeBoldSDK.this.cleanAssets.invoke(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidInitializeBoldSDK.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2", f = "AndroidInitializeBoldSDK.kt", i = {0, 0, 0, 1, 1, 1}, l = {82, 85, 111}, m = "invokeSuspend", n = {"latencyOrigin", "useCaseEntry", "isRetry", "latencyOrigin", "useCaseEntry", "isRetry"}, s = {"L$0", "J$0", "I$0", "L$0", "J$0", "I$0"})
    static final class C40182 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ TimeMark $publicApiEntry;
        final /* synthetic */ String $source;
        int I$0;
        long J$0;
        Object L$0;
        int label;
        final /* synthetic */ AndroidInitializeBoldSDK this$0;

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: AndroidInitializeBoldSDK.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2$1", f = "AndroidInitializeBoldSDK.kt", i = {1}, l = {86, 93, fh.R0, 100}, m = "invokeSuspend", n = {"payloadStartTime"}, s = {"J$0"})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ boolean $isRetry;
            final /* synthetic */ String $source;
            long J$0;
            int label;
            final /* synthetic */ AndroidInitializeBoldSDK this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(AndroidInitializeBoldSDK androidInitializeBoldSDK, String str, boolean z, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = androidInitializeBoldSDK;
                this.$source = str;
                this.$isRetry = z;
            }

            @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$source, this.$isRetry, continuation);
            }

            @Override // p005kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Code duplicated, block: B:27:0x00cd A[PHI: r2
  0x00cd: PHI (r2v21 java.lang.Object) = (r2v20 java.lang.Object), (r2v25 java.lang.Object) binds: [B:25:0x00ca, B:11:0x0023] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code restructure failed: missing block: B:28:0x00de, code lost:
            
                if (r4.invoke((gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse) r2, r21) == r1) goto L29;
             */
            @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r22) throws com.unity3d.ads.core.data.model.exception.InitializationException {
                /*
                    Method dump skipped, instruction units count: 228
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.C40182.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C40182(TimeMark timeMark, AndroidInitializeBoldSDK androidInitializeBoldSDK, String str, Continuation<? super C40182> continuation) {
            super(2, continuation);
            this.$publicApiEntry = timeMark;
            this.this$0 = androidInitializeBoldSDK;
            this.$source = str;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C40182(this.$publicApiEntry, this.this$0, this.$source, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C40182) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:33:0x00b0  */
        /* JADX WARN: Code duplicated, block: B:34:0x00b2  */
        /* JADX WARN: Code duplicated, block: B:44:0x00d0  */
        /* JADX WARN: Code duplicated, block: B:47:0x00df  */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00be, code lost:
        
            if (r7.initializationSuccess(r8, r9, r10, r11, r18) == r0) goto L37;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v3, types: [kotlin.time.TimeMark] */
        /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r8v2 */
        /* JADX WARN: Type inference failed for: r8v3, types: [kotlin.time.TimeMark] */
        /* JADX WARN: Type inference failed for: r8v6 */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r19) {
            /*
                Method dump skipped, instruction units count: 230
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.C40182.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$tailStep$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidInitializeBoldSDK.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK", f = "AndroidInitializeBoldSDK.kt", i = {0}, l = {213}, m = "tailStep", n = {"name"}, s = {"L$0"})
    static final class C40191 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C40191(Continuation<? super C40191> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidInitializeBoldSDK.this.tailStep(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$warmStaticDeviceInfo$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidInitializeBoldSDK.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$warmStaticDeviceInfo$1", f = "AndroidInitializeBoldSDK.kt", i = {0}, l = {123}, m = "invokeSuspend", n = {"startTime"}, s = {"J$0"})
    static final class C40201 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        long J$0;
        int label;

        C40201(Continuation<? super C40201> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidInitializeBoldSDK.this.new C40201(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C40201) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Throwable th;
            long j;
            Object objM3022constructorimpl;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    long jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
                    AndroidInitializeBoldSDK androidInitializeBoldSDK = AndroidInitializeBoldSDK.this;
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        C40201 c40201 = this;
                        StaticDeviceInfoDataSource staticDeviceInfoDataSource = androidInitializeBoldSDK.staticDeviceInfoDataSource;
                        List<String> additionalStorePackagesList = androidInitializeBoldSDK.sessionRepository.getNativeConfiguration().getAdditionalStorePackagesList();
                        Intrinsics.checkNotNullExpressionValue(additionalStorePackagesList, "getAdditionalStorePackagesList(...)");
                        this.J$0 = jM4482markNowz9LOYto;
                        this.label = 1;
                        obj = staticDeviceInfoDataSource.fetch(additionalStorePackagesList, this);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        j = jM4482markNowz9LOYto;
                    } catch (Throwable th2) {
                        th = th2;
                        j = jM4482markNowz9LOYto;
                        Result.Companion companion2 = Result.INSTANCE;
                        objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    j = this.J$0;
                    try {
                        ResultKt.throwOnFailure(obj);
                    } catch (Throwable th3) {
                        th = th3;
                        Result.Companion companion3 = Result.INSTANCE;
                        objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
                    }
                }
                objM3022constructorimpl = Result.m3022constructorimpl(obj);
                if (Result.m3028isFailureimpl(objM3022constructorimpl)) {
                    AndroidInitializeBoldSDK.this.warmStarted.set(false);
                    return Unit.INSTANCE;
                }
                SendDiagnosticEvent.DefaultImpls.invoke$default(AndroidInitializeBoldSDK.this.sendDiagnosticEvent, "native_static_device_info_build_time", Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(j))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 252, (Object) null);
                return Unit.INSTANCE;
            } catch (CancellationException e) {
                throw e;
            }
        }
    }

    public AndroidInitializeBoldSDK(CoroutineDispatcher defaultDispatcher, InitializeOMSDK initializeOM, GetInitializationRequest getInitializeRequest, GetRequestPolicy getRequestPolicy, CleanAssets cleanAssets, HandleGatewayInitializationResponse handleGatewayInitializationResponse, DeliverModuleConfigs deliverModuleConfigs, GatewayClient gatewayClient, SessionRepository sessionRepository, EventObservers eventObservers, TriggerInitializeListener triggerInitializeListener, SendDiagnosticEvent sendDiagnosticEvent, DiagnosticEventRepository diagnosticEventRepository, StorageManager storageManager, SDKPropertiesManager sdkPropertiesManager, GetGameId getGameId, Logger logger, AndroidHandleFocusCounters handleFocusCounters, OptimisticInitializationManager optimisticInitializationManager, GetIsModulesInitEnabled getIsModulesInitEnabled, WebViewProbe webViewProbe, StaticDeviceInfoDataSource staticDeviceInfoDataSource, CoroutineScope deviceInfoScope, WarmNonInitSignals warmNonInitSignals, ShouldUseFastInit shouldUseFastInit) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(initializeOM, "initializeOM");
        Intrinsics.checkNotNullParameter(getInitializeRequest, "getInitializeRequest");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(cleanAssets, "cleanAssets");
        Intrinsics.checkNotNullParameter(handleGatewayInitializationResponse, "handleGatewayInitializationResponse");
        Intrinsics.checkNotNullParameter(deliverModuleConfigs, "deliverModuleConfigs");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(eventObservers, "eventObservers");
        Intrinsics.checkNotNullParameter(triggerInitializeListener, "triggerInitializeListener");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(diagnosticEventRepository, "diagnosticEventRepository");
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(sdkPropertiesManager, "sdkPropertiesManager");
        Intrinsics.checkNotNullParameter(getGameId, "getGameId");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(handleFocusCounters, "handleFocusCounters");
        Intrinsics.checkNotNullParameter(optimisticInitializationManager, "optimisticInitializationManager");
        Intrinsics.checkNotNullParameter(getIsModulesInitEnabled, "getIsModulesInitEnabled");
        Intrinsics.checkNotNullParameter(webViewProbe, "webViewProbe");
        Intrinsics.checkNotNullParameter(staticDeviceInfoDataSource, "staticDeviceInfoDataSource");
        Intrinsics.checkNotNullParameter(deviceInfoScope, "deviceInfoScope");
        Intrinsics.checkNotNullParameter(warmNonInitSignals, "warmNonInitSignals");
        Intrinsics.checkNotNullParameter(shouldUseFastInit, "shouldUseFastInit");
        this.defaultDispatcher = defaultDispatcher;
        this.initializeOM = initializeOM;
        this.getInitializeRequest = getInitializeRequest;
        this.getRequestPolicy = getRequestPolicy;
        this.cleanAssets = cleanAssets;
        this.handleGatewayInitializationResponse = handleGatewayInitializationResponse;
        this.deliverModuleConfigs = deliverModuleConfigs;
        this.gatewayClient = gatewayClient;
        this.sessionRepository = sessionRepository;
        this.eventObservers = eventObservers;
        this.triggerInitializeListener = triggerInitializeListener;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.diagnosticEventRepository = diagnosticEventRepository;
        this.storageManager = storageManager;
        this.sdkPropertiesManager = sdkPropertiesManager;
        this.getGameId = getGameId;
        this.logger = logger;
        this.handleFocusCounters = handleFocusCounters;
        this.optimisticInitializationManager = optimisticInitializationManager;
        this.getIsModulesInitEnabled = getIsModulesInitEnabled;
        this.webViewProbe = webViewProbe;
        this.staticDeviceInfoDataSource = staticDeviceInfoDataSource;
        this.deviceInfoScope = deviceInfoScope;
        this.warmNonInitSignals = warmNonInitSignals;
        this.shouldUseFastInit = shouldUseFastInit;
        this.warmStarted = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkCanInitialize() throws InitializationException {
        if (this.sessionRepository.getShouldInitialize()) {
            if (this.getGameId.invoke() == null) {
                throw new InitializationException("gameId is null.", null, "invalid_game_id", AbstractJsonLexerKt.NULL, null, null, 50, null);
            }
        } else {
            InitializationException initializationError = this.sessionRepository.getInitializationError();
            if (initializationError == null) {
                throw new InitializationException(MSG_GATEWAY_DENIED, null, "gateway", "!sessionRepository.shouldInitialize", null, null, 50, null);
            }
        }
    }

    private final String getInitLog() {
        return "Initializing SDK 4.21.0 42100 with game id " + this.getGameId.invoke() + " in " + (this.sessionRepository.isTestModeEnabled() ? "test" : "production") + " mode, session " + ProtobufExtensionsKt.toUUID(this.sessionRepository.getSessionId());
    }

    private final Map<String, String> getTags(InitializationException e, String source, boolean isRetry) {
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        mapCreateMapBuilder.put("operation", OperationType.INITIALIZATION.toString());
        if (e != null) {
        }
        mapCreateMapBuilder.put("source", source);
        mapCreateMapBuilder.put("is_retry", String.valueOf(isRetry));
        mapCreateMapBuilder.put("new_api", String.valueOf(this.sessionRepository.getInitializationConfiguration() != null));
        mapCreateMapBuilder.put("modules_init_enabled", String.valueOf(this.getIsModulesInitEnabled.invoke()));
        if (e != null && e.getReasonDebug() != null) {
            mapCreateMapBuilder.put("reason_debug", e.getReasonDebug());
        }
        return MapsKt.build(mapCreateMapBuilder);
    }

    static /* synthetic */ Map getTags$default(AndroidInitializeBoldSDK androidInitializeBoldSDK, InitializationException initializationException, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            initializationException = null;
        }
        return androidInitializeBoldSDK.getTags(initializationException, str, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initializationFailure(TimeMark publicApiEntry, InitializationException e, String source, boolean isRetry) {
        this.logger.error("Initialization failed: " + e.getMessage(), e);
        this.sessionRepository.setInitializationState(InitializationState.FAILED);
        this.sessionRepository.setInitializationError(e);
        this.optimisticInitializationManager.onInitializationFinished(false);
        double dElapsedMillis = TimeExtensionsKt.elapsedMillis(publicApiEntry);
        this.triggerInitializeListener.error(e);
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_INITIALIZATION_FAILURE_TIME, Double.valueOf(dElapsedMillis), getTags(e, source, isRetry), (Map) null, (AdObject) null, (Integer) null, e.getErrorToken(), (MediationInfo) null, 184, (Object) null);
        this.deliverModuleConfigs.notifyFailure(e.getMessage());
        setupDiagnosticEvents();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object initializationStart(String str, boolean z, Continuation<? super Unit> continuation) {
        this.logger.info(getInitLog());
        logNewPrivacyWasNotUsedIfNeeded();
        this.sdkPropertiesManager.setInitializationTime();
        this.sdkPropertiesManager.setInitializationTimeSinceEpoch();
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_INITIALIZATION_STARTED, (Double) null, MapsKt.plus(getTags$default(this, null, str, z, 1, null), MapsKt.mapOf(TuplesKt.to("kotlin_version", KotlinVersion.CURRENT.toString()))), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 250, (Object) null);
        this.sessionRepository.setInitializationState(InitializationState.INITIALIZING);
        Object objInvoke = this.eventObservers.invoke(continuation);
        return objInvoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:42:0x0116  */
    /* JADX WARN: Code duplicated, block: B:43:0x0117 A[Catch: all -> 0x0184, PHI: r3 r4 r5
  0x0117: PHI (r3v16 kotlin.time.TimeMark) = (r3v5 kotlin.time.TimeMark), (r3v17 kotlin.time.TimeMark) binds: [B:24:0x0073, B:41:0x0114] A[DONT_GENERATE, DONT_INLINE]
  0x0117: PHI (r4v16 ??) = (r4v29 ??), (r4v30 ??) binds: [B:24:0x0073, B:41:0x0114] A[DONT_GENERATE, DONT_INLINE]
  0x0117: PHI (r5v20 ??) = (r5v7 ??), (r5v30 ??) binds: [B:24:0x0073, B:41:0x0114] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0184, blocks: (B:49:0x0147, B:51:0x015a, B:46:0x012f, B:43:0x0117, B:40:0x00ff, B:37:0x00f4), top: B:66:0x00f4 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x012e  */
    /* JADX WARN: Code duplicated, block: B:46:0x012f A[Catch: all -> 0x0184, PHI: r3 r4 r5
  0x012f: PHI (r3v15 kotlin.time.TimeMark) = (r3v7 kotlin.time.TimeMark), (r3v16 kotlin.time.TimeMark) binds: [B:21:0x005f, B:44:0x012c] A[DONT_GENERATE, DONT_INLINE]
  0x012f: PHI (r4v15 ??) = (r4v31 ??), (r4v32 ??) binds: [B:21:0x005f, B:44:0x012c] A[DONT_GENERATE, DONT_INLINE]
  0x012f: PHI (r5v19 ??) = (r5v10 ??), (r5v31 ??) binds: [B:21:0x005f, B:44:0x012c] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0184, blocks: (B:49:0x0147, B:51:0x015a, B:46:0x012f, B:43:0x0117, B:40:0x00ff, B:37:0x00f4), top: B:66:0x00f4 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0144, code lost:
    
        if (tailStep("clean_assets", r6, r0) == r7) goto L48;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x008f: MOVE (r24 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:29:0x008f */
    /* JADX WARN: Type inference failed for: r25v0, types: [com.unity3d.ads.core.domain.AndroidInitializeBoldSDK] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v19, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v20, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v21, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object initializationSuccess(p005kotlin.time.TimeMark r26, p005kotlin.time.TimeMark r27, java.lang.String r28, boolean r29, p005kotlin.coroutines.Continuation<? super p005kotlin.Unit> r30) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.initializationSuccess(kotlin.time.TimeMark, kotlin.time.TimeMark, java.lang.String, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void logNewPrivacyWasNotUsedIfNeeded() {
        if (this.sessionRepository.getInitializationConfiguration() != null && UnityAds.getUserConsent() == null && UnityAds.getUserOptOut() == null && UnityAds.getNonBehavioral() == null) {
            this.logger.info("The new UnityAds SDK initialization was used without the new privacy APIs. Use the new privacy APIs to update privacy consent handling.");
        }
    }

    private final void setupDiagnosticEvents() {
        NativeConfigurationOuterClass.DiagnosticEventsConfiguration diagnosticEvents = this.sessionRepository.getNativeConfiguration().getDiagnosticEvents();
        DiagnosticEventRepository diagnosticEventRepository = this.diagnosticEventRepository;
        Intrinsics.checkNotNull(diagnosticEvents);
        diagnosticEventRepository.configure(diagnosticEvents);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object tailStep(String str, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Unit> continuation) {
        C40191 c40191;
        Object objM3022constructorimpl;
        if (continuation instanceof C40191) {
            c40191 = (C40191) continuation;
            if ((c40191.label & Integer.MIN_VALUE) != 0) {
                c40191.label -= Integer.MIN_VALUE;
            } else {
                c40191 = new C40191(continuation);
            }
        } else {
            c40191 = new C40191(continuation);
        }
        Object obj = c40191.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c40191.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Result.Companion companion = Result.INSTANCE;
                c40191.L$0 = str;
                c40191.label = 1;
                if (function1.invoke(c40191) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = (String) c40191.L$0;
                ResultKt.throwOnFailure(obj);
            }
            objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
        if (thM3025exceptionOrNullimpl != null) {
            this.logger.error("Initialization tail step " + str + " failed", thM3025exceptionOrNullimpl);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void warmStaticDeviceInfo() {
        if (this.warmStarted.compareAndSet(false, true)) {
            BuildersKt__Builders_commonKt.launch$default(this.deviceInfoScope, null, null, new C40201(null), 3, null);
        }
    }

    @Override // com.unity3d.ads.core.domain.InitializeBoldSDK
    public Object invoke(String str, TimeMark timeMark, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.defaultDispatcher, new C40182(timeMark, this, str, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }
}
