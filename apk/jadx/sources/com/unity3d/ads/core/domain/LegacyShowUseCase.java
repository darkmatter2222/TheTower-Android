package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.ironsource.C3510b4;
import com.tapjoy.TJAdUnitConstants;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.adplayer.model.ShowStatus;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.Listeners;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.model.ShowEvent;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.core.extensions.ShowStatusExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.services.UnityAdsConstants;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.OperativeEventErrorDataKt;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import java.util.Map;
import java.util.UUID;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.Pair;
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
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.functions.Function3;
import p005kotlin.jvm.functions.Function6;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;
import p005kotlin.time.TimeMark;

/* JADX INFO: compiled from: LegacyShowUseCase.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\b\b\u0000\u0018\u0000 F2\u00020\u0001:\u0001FBG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J*\u0010\u001f\u001a\u00020 2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010!\u001a\u00020\"H\u0086B¢\u0006\u0002\u0010#J\u001e\u0010$\u001a\u00020 2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\"J \u0010'\u001a\u00020 2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\"H\u0002J&\u0010(\u001a\u00020 2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u001aH\u0082@¢\u0006\u0002\u0010,J\u0010\u0010-\u001a\u00020 2\u0006\u0010%\u001a\u00020&H\u0002J \u0010.\u001a\u00020 2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\"H\u0002J \u0010/\u001a\u00020 2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\"H\u0002J\u0012\u00100\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u001a\u00101\u001a\u00020 2\u0006\u00102\u001a\u00020\u001c2\b\u00103\u001a\u0004\u0018\u00010\u001eH\u0002JJ\u00104\u001a\u00020 2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u00105\u001a\u0002062\u0006\u0010!\u001a\u00020\"2\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u001c2\b\u00103\u001a\u0004\u0018\u00010\u001eH\u0002Jo\u00109\u001a:\b\u0001\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00020 0<\u0012\u0006\u0012\u0004\u0018\u00010\u00010:2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u00102\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\"2\b\u00103\u001a\u0004\u0018\u00010\u001eH\u0002¢\u0006\u0002\u0010=J?\u0010>\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c0?2\u0006\u0010@\u001a\u00020\u001c2\b\u0010A\u001a\u0004\u0018\u00010\u00162\b\u0010B\u001a\u0004\u0018\u00010\u001c2\b\u00103\u001a\u0004\u0018\u00010\u001eH\u0002¢\u0006\u0002\u0010CJ\u0010\u0010D\u001a\u00020\u001a2\u0006\u00102\u001a\u00020\u001cH\u0002J\b\u0010E\u001a\u00020\u001cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006G"}, d2 = {"Lcom/unity3d/ads/core/domain/LegacyShowUseCase;", "", "show", "Lcom/unity3d/ads/core/domain/Show;", "adRepository", "Lcom/unity3d/ads/core/data/repository/AdRepository;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "getOperativeEventApi", "Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;", "getInitializationState", "Lcom/unity3d/ads/core/domain/GetInitializationState;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "safeCallbackInvoke", "Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "<init>", "(Lcom/unity3d/ads/core/domain/Show;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/GetInitializationState;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;Lcom/unity3d/ads/core/log/Logger;)V", "startedCount", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "timeoutCancellationRequested", "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "placement", "", "unityAdsShowOptions", "Lcom/unity3d/ads/UnityAdsShowOptions;", "invoke", "", "listeners", "Lcom/unity3d/ads/core/data/model/Listeners;", "(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/core/data/model/Listeners;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showReceivedReward", "startTime", "Lkotlin/time/TimeMark;", "bannerLeftApplication", "sendOperativeError", "operativeEvent", "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;", "operativeMessage", "(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelTimeout", "showStarted", "showClicked", "getOpportunityId", "showStart", "opportunityId", "showOptions", "showCompleted", "status", "Lcom/unity3d/ads/adplayer/model/ShowStatus;", "reason", "reasonDebug", "showError", "Lkotlin/Function6;", "Lcom/unity3d/ads/UnityAds$UnityAdsShowError;", "Lkotlin/coroutines/Continuation;", "(Lkotlin/time/TimeMark;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/Listeners;Lcom/unity3d/ads/UnityAdsShowOptions;)Lkotlin/jvm/functions/Function6;", "getTags", "", "diagnosticReason", "code", "debugMessage", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;)Ljava/util/Map;", "getTmpAdObject", "getAdInfoString", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LegacyShowUseCase {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String KEY_OBJECT_ID = "objectId";
    public static final String MESSAGE_AD_OBJECT_EXPIRED = "The ad has expired";
    public static final String MESSAGE_AD_PLAYER_UNAVAILABLE = "Ad player is unavailable.";
    public static final String MESSAGE_ALREADY_SHOWING = "Can't show a new ad unit when ad unit is already open";
    public static final String MESSAGE_NO_AD_OBJECT = "No ad object found for opportunity id: ";
    public static final String MESSAGE_OPPORTUNITY_ID = "No valid opportunity id provided";
    public static final String MESSAGE_OPT_TIMEOUT = "timeout";
    public static final String MESSAGE_PLACEMENT_NOT_LOADED = "Placement %s must be Loaded before calling Show";
    public static final String MESSAGE_TIMEOUT = "[UnityAds] Timeout while trying to show ";
    public static final String MSG_OPPORTUNITY_AND_PLACEMENT_NOT_MATCHING = "[UnityAds] Object ID and Placement ID provided does not match previously loaded ad";
    public static final int NATIVE_START_SIGNAL_COUNT = 2;
    private static volatile boolean isFullscreenAdShowing;
    private AdObject adObject;
    private final AdRepository adRepository;
    private final GetInitializationState getInitializationState;
    private final GetOperativeEventApi getOperativeEventApi;
    private final Logger logger;
    private String placement;
    private final SafeCallbackInvoke safeCallbackInvoke;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private final Show show;
    private final MutableStateFlow<Integer> startedCount;
    private final MutableStateFlow<Boolean> timeoutCancellationRequested;
    private UnityAdsShowOptions unityAdsShowOptions;

    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/unity3d/ads/core/domain/LegacyShowUseCase$Companion;", "", "<init>", "()V", "KEY_OBJECT_ID", "", "MESSAGE_PLACEMENT_NOT_LOADED", "MESSAGE_OPPORTUNITY_ID", "MESSAGE_NO_AD_OBJECT", "MESSAGE_ALREADY_SHOWING", "MESSAGE_TIMEOUT", "MESSAGE_AD_OBJECT_EXPIRED", "MSG_OPPORTUNITY_AND_PLACEMENT_NOT_MATCHING", "MESSAGE_OPT_TIMEOUT", "MESSAGE_AD_PLAYER_UNAVAILABLE", "NATIVE_START_SIGNAL_COUNT", "", "isFullscreenAdShowing", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase", f = "LegacyShowUseCase.kt", i = {5, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 10}, l = {119, 124, 130, 135, 143, 148, 154, 161, 166, 182, 220}, m = "invoke", n = {"opportunityIdByteString", "placement", "unityAdsShowOptions", "listeners", "reportShowError", "adObject", "nativeStartMode", "displayReadyEventSent", "startTime", C3510b4.w, "useTimeout", "timeoutMillis", C3510b4.w}, s = {"L$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "J$0", "I$0", "I$1", "J$1", "I$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        int I$1;
        long J$0;
        long J$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyShowUseCase.this.invoke(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\n"}, d2 = {"<anonymous>", "", TJAdUnitConstants.String.CLOSE, "Lkotlin/Function0;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$2", f = "LegacyShowUseCase.kt", i = {0, 1, 2}, l = {202, 208, 209}, m = "invokeSuspend", n = {TJAdUnitConstants.String.CLOSE, TJAdUnitConstants.String.CLOSE, TJAdUnitConstants.String.CLOSE}, s = {"L$0", "L$0", "L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<Function0<? extends Unit>, Continuation<? super Unit>, Object> {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ NativeConfigurationOuterClass.NativeStartMode $nativeStartMode;
        final /* synthetic */ String $placement;
        final /* synthetic */ Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> $reportShowError;
        final /* synthetic */ boolean $useTimeout;
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ LegacyShowUseCase this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(NativeConfigurationOuterClass.NativeStartMode nativeStartMode, LegacyShowUseCase legacyShowUseCase, AdObject adObject, boolean z, Function6<? super String, ? super UnityAds.UnityAdsShowError, ? super String, ? super Integer, ? super String, ? super Continuation<? super Unit>, ? extends Object> function6, String str, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$nativeStartMode = nativeStartMode;
            this.this$0 = legacyShowUseCase;
            this.$adObject = adObject;
            this.$useTimeout = z;
            this.$reportShowError = function6;
            this.$placement = str;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$nativeStartMode, this.this$0, this.$adObject, this.$useTimeout, this.$reportShowError, this.$placement, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Function0<? extends Unit> function0, Continuation<? super Unit> continuation) {
            return invoke2((Function0<Unit>) function0, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Function0<Unit> function0, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(function0, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:35:0x00c5  */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Function0 function0;
            Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> function6;
            UnityAds.UnityAdsShowError unityAdsShowError;
            String str;
            Function0 function1;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                function0 = (Function0) this.L$0;
                if (((Number) this.this$0.startedCount.getValue()).intValue() >= ((this.$nativeStartMode == NativeConfigurationOuterClass.NativeStartMode.NATIVE_START_MODE_ON_SHOW || this.$nativeStartMode == NativeConfigurationOuterClass.NativeStartMode.NATIVE_START_MODE_ON_DISPLAY) ? 2 : 1) || ((Boolean) this.this$0.timeoutCancellationRequested.getValue()).booleanValue()) {
                    return Unit.INSTANCE;
                }
                this.L$0 = function0;
                this.label = 1;
                if (this.this$0.sendOperativeError(OperativeEventRequestOuterClass.OperativeEventErrorType.OPERATIVE_EVENT_ERROR_TYPE_TIMEOUT, "timeout", this.$adObject, this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                function0 = (Function0) this.L$0;
                ResultKt.throwOnFailure(obj);
            } else {
                if (i == 2) {
                    function0 = (Function0) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    function6 = this.$reportShowError;
                    unityAdsShowError = UnityAds.UnityAdsShowError.TIMEOUT;
                    str = LegacyShowUseCase.MESSAGE_TIMEOUT + this.$placement;
                    this.L$0 = function0;
                    this.label = 3;
                    if (function6.invoke("timeout", unityAdsShowError, str, null, null, this) != coroutine_suspended) {
                        function1 = function0;
                    }
                    return coroutine_suspended;
                }
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function0) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            function1.invoke();
            return Unit.INSTANCE;
            if (this.$useTimeout) {
                this.L$0 = function0;
                this.label = 2;
                if (this.this$0.show.terminate(this.$adObject, this) != coroutine_suspended) {
                    function6 = this.$reportShowError;
                    unityAdsShowError = UnityAds.UnityAdsShowError.TIMEOUT;
                    str = LegacyShowUseCase.MESSAGE_TIMEOUT + this.$placement;
                    this.L$0 = function0;
                    this.label = 3;
                    if (function6.invoke("timeout", unityAdsShowError, str, null, null, this) != coroutine_suspended) {
                        function1 = function0;
                        function1.invoke();
                    }
                }
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$3, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/unity3d/ads/core/data/model/ShowEvent;", "it", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$3", f = "LegacyShowUseCase.kt", i = {}, l = {215}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ShowEvent>, Throwable, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $isBanner;
        final /* synthetic */ Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> $reportShowError;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(Function6<? super String, ? super UnityAds.UnityAdsShowError, ? super String, ? super Integer, ? super String, ? super Continuation<? super Unit>, ? extends Object> function6, boolean z, Continuation<? super AnonymousClass3> continuation) {
            super(3, continuation);
            this.$reportShowError = function6;
            this.$isBanner = z;
        }

        @Override // p005kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector<? super ShowEvent> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$reportShowError, this.$isBanner, continuation);
            anonymousClass3.L$0 = th;
            return anonymousClass3.invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AnonymousClass3 anonymousClass3;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Throwable th = (Throwable) this.L$0;
                Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> function6 = this.$reportShowError;
                UnityAds.UnityAdsShowError unityAdsShowError = UnityAds.UnityAdsShowError.INTERNAL_ERROR;
                String shortenedStackTrace$default = ExceptionExtensionsKt.getShortenedStackTrace$default(th, 0, 1, null);
                this.label = 1;
                anonymousClass3 = this;
                if (function6.invoke("uncaught_exception", unityAdsShowError, UnityAdsConstants.Messages.MSG_INTERNAL_ERROR, null, shortenedStackTrace$default, anonymousClass3) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                anonymousClass3 = this;
            }
            if (!anonymousClass3.$isBanner) {
                Companion companion = LegacyShowUseCase.INSTANCE;
                LegacyShowUseCase.isFullscreenAdShowing = false;
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$4, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class AnonymousClass4<T> implements FlowCollector {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ Ref.BooleanRef $displayReadyEventSent;
        final /* synthetic */ boolean $isBanner;
        final /* synthetic */ Listeners $listeners;
        final /* synthetic */ NativeConfigurationOuterClass.NativeStartMode $nativeStartMode;
        final /* synthetic */ String $placement;
        final /* synthetic */ Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> $reportShowError;
        final /* synthetic */ long $startTime;
        final /* synthetic */ UnityAdsShowOptions $unityAdsShowOptions;
        final /* synthetic */ LegacyShowUseCase this$0;

        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass4(Ref.BooleanRef booleanRef, boolean z, NativeConfigurationOuterClass.NativeStartMode nativeStartMode, LegacyShowUseCase legacyShowUseCase, AdObject adObject, long j, String str, Listeners listeners, UnityAdsShowOptions unityAdsShowOptions, Function6<? super String, ? super UnityAds.UnityAdsShowError, ? super String, ? super Integer, ? super String, ? super Continuation<? super Unit>, ? extends Object> function6) {
            this.$displayReadyEventSent = booleanRef;
            this.$isBanner = z;
            this.$nativeStartMode = nativeStartMode;
            this.this$0 = legacyShowUseCase;
            this.$adObject = adObject;
            this.$startTime = j;
            this.$placement = str;
            this.$listeners = listeners;
            this.$unityAdsShowOptions = unityAdsShowOptions;
            this.$reportShowError = function6;
        }

        /* JADX WARN: Code duplicated, block: B:46:0x00cc A[Catch: all -> 0x004a, TryCatch #0 {all -> 0x004a, blocks: (B:17:0x0045, B:22:0x0051, B:66:0x0194, B:25:0x0058, B:44:0x009f, B:46:0x00cc, B:48:0x00d2, B:28:0x005f, B:30:0x0063, B:32:0x0069, B:34:0x006d, B:36:0x0073, B:41:0x007e, B:49:0x00e3, B:51:0x00e7, B:52:0x00f8, B:54:0x00fc, B:55:0x0129, B:57:0x012d, B:58:0x013e, B:60:0x0142, B:62:0x0154, B:63:0x017c, B:69:0x01c3, B:71:0x01c7, B:72:0x01d3, B:74:0x01d7, B:75:0x01e7, B:76:0x01ec), top: B:82:0x002e }] */
        /* JADX WARN: Code duplicated, block: B:48:0x00d2 A[Catch: all -> 0x004a, TryCatch #0 {all -> 0x004a, blocks: (B:17:0x0045, B:22:0x0051, B:66:0x0194, B:25:0x0058, B:44:0x009f, B:46:0x00cc, B:48:0x00d2, B:28:0x005f, B:30:0x0063, B:32:0x0069, B:34:0x006d, B:36:0x0073, B:41:0x007e, B:49:0x00e3, B:51:0x00e7, B:52:0x00f8, B:54:0x00fc, B:55:0x0129, B:57:0x012d, B:58:0x013e, B:60:0x0142, B:62:0x0154, B:63:0x017c, B:69:0x01c3, B:71:0x01c7, B:72:0x01d3, B:74:0x01d7, B:75:0x01e7, B:76:0x01ec), top: B:82:0x002e }] */
        /* JADX WARN: Code duplicated, block: B:68:0x01c2  */
        /* JADX WARN: Code duplicated, block: B:7:0x001a  */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0202, code lost:
        
            if (r4.invoke("uncaught_exception", r6, com.unity3d.services.UnityAdsConstants.Messages.MSG_INTERNAL_ERROR, null, r9, r10) == r3) goto L79;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(com.unity3d.ads.core.data.model.ShowEvent r27, p005kotlin.coroutines.Continuation<? super p005kotlin.Unit> r28) {
            /*
                Method dump skipped, instruction units count: 520
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase.AnonymousClass4.emit(com.unity3d.ads.core.data.model.ShowEvent, kotlin.coroutines.Continuation):java.lang.Object");
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return emit((ShowEvent) obj, (Continuation<? super Unit>) continuation);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showError$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0003H\n"}, d2 = {"<anonymous>", "", "diagnosticReason", "", "reason", "Lcom/unity3d/ads/UnityAds$UnityAdsShowError;", TJAdUnitConstants.String.MESSAGE, "code", "", "debugMessage"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$showError$1", f = "LegacyShowUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C40211 extends SuspendLambda implements Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> {
        final /* synthetic */ Listeners $listeners;
        final /* synthetic */ String $opportunityId;
        final /* synthetic */ String $placement;
        final /* synthetic */ UnityAdsShowOptions $showOptions;
        final /* synthetic */ TimeMark $startTime;
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        /* synthetic */ Object L$3;
        /* synthetic */ Object L$4;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C40211(String str, TimeMark timeMark, UnityAdsShowOptions unityAdsShowOptions, Listeners listeners, String str2, Continuation<? super C40211> continuation) {
            super(6, continuation);
            this.$opportunityId = str;
            this.$startTime = timeMark;
            this.$showOptions = unityAdsShowOptions;
            this.$listeners = listeners;
            this.$placement = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(Listeners listeners, String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2) {
            listeners.onError(str, unityAdsShowError, str2);
            return Unit.INSTANCE;
        }

        @Override // p005kotlin.jvm.functions.Function6
        public final Object invoke(String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2, Integer num, String str3, Continuation<? super Unit> continuation) {
            C40211 c40211 = LegacyShowUseCase.this.new C40211(this.$opportunityId, this.$startTime, this.$showOptions, this.$listeners, this.$placement, continuation);
            c40211.L$0 = str;
            c40211.L$1 = unityAdsShowError;
            c40211.L$2 = str2;
            c40211.L$3 = num;
            c40211.L$4 = str3;
            return c40211.invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String str = (String) this.L$0;
            final UnityAds.UnityAdsShowError unityAdsShowError = (UnityAds.UnityAdsShowError) this.L$1;
            final String str2 = (String) this.L$2;
            Integer num = (Integer) this.L$3;
            String str3 = (String) this.L$4;
            Logger.DefaultImpls.error$default(LegacyShowUseCase.this.logger, "Failed to show ad " + LegacyShowUseCase.this.getAdInfoString() + ", error: " + str2, null, 2, null);
            AdObject tmpAdObject = LegacyShowUseCase.this.adObject;
            if (tmpAdObject == null) {
                tmpAdObject = LegacyShowUseCase.this.getTmpAdObject(this.$opportunityId);
            }
            SendDiagnosticEvent.DefaultImpls.invoke$default(LegacyShowUseCase.this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_SHOW_FAILURE_TIME, Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(this.$startTime)), LegacyShowUseCase.this.getTags(str, num, str3, this.$showOptions), (Map) null, tmpAdObject, (Integer) null, (ByteString) null, (MediationInfo) null, 232, (Object) null);
            SafeCallbackInvoke safeCallbackInvoke = LegacyShowUseCase.this.safeCallbackInvoke;
            final Listeners listeners = this.$listeners;
            final String str4 = this.$placement;
            safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$showError$1$$ExternalSyntheticLambda0
                @Override // p005kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return LegacyShowUseCase.C40211.invokeSuspend$lambda$0(listeners, str4, unityAdsShowError, str2);
                }
            });
            return Unit.INSTANCE;
        }
    }

    public LegacyShowUseCase(Show show, AdRepository adRepository, SendDiagnosticEvent sendDiagnosticEvent, GetOperativeEventApi getOperativeEventApi, GetInitializationState getInitializationState, SessionRepository sessionRepository, SafeCallbackInvoke safeCallbackInvoke, Logger logger) {
        Intrinsics.checkNotNullParameter(show, "show");
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(getOperativeEventApi, "getOperativeEventApi");
        Intrinsics.checkNotNullParameter(getInitializationState, "getInitializationState");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(safeCallbackInvoke, "safeCallbackInvoke");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.show = show;
        this.adRepository = adRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.getOperativeEventApi = getOperativeEventApi;
        this.getInitializationState = getInitializationState;
        this.sessionRepository = sessionRepository;
        this.safeCallbackInvoke = safeCallbackInvoke;
        this.logger = logger;
        this.startedCount = StateFlowKt.MutableStateFlow(0);
        this.timeoutCancellationRequested = StateFlowKt.MutableStateFlow(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void bannerLeftApplication(TimeMark startTime, final String placement, final Listeners listeners) {
        this.logger.info("Left app while showing ad " + getAdInfoString());
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_SHOW_LEFT_APP, Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), (Map) null, (Map) null, this.adObject, (Integer) null, (ByteString) null, (MediationInfo) null, 236, (Object) null);
        this.safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$$ExternalSyntheticLambda2
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LegacyShowUseCase.bannerLeftApplication$lambda$4(listeners, placement);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit bannerLeftApplication$lambda$4(Listeners listeners, String str) {
        listeners.onLeftApplication(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancelTimeout(TimeMark startTime) {
        this.timeoutCancellationRequested.setValue(true);
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_cancel_timeout", Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), (Map) null, (Map) null, this.adObject, (Integer) null, (ByteString) null, (MediationInfo) null, 236, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getAdInfoString() {
        ByteString opportunityId;
        StringBuilder sb = new StringBuilder("for placement ");
        AdObject adObject = this.adObject;
        UUID uuid = null;
        StringBuilder sbAppend = sb.append(adObject != null ? adObject.getPlacementId() : null).append(" with instance id ");
        AdObject adObject2 = this.adObject;
        if (adObject2 != null && (opportunityId = adObject2.getOpportunityId()) != null) {
            uuid = ProtobufExtensionsKt.toUUID(opportunityId);
        }
        return sbAppend.append(uuid).toString();
    }

    private final String getOpportunityId(UnityAdsShowOptions unityAdsShowOptions) throws IllegalArgumentException {
        Object objOpt;
        String string;
        JSONObject data = unityAdsShowOptions.getData();
        if (data == null || (objOpt = data.opt("objectId")) == null || (string = objOpt.toString()) == null) {
            return null;
        }
        return UUID.fromString(string).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, String> getTags(String diagnosticReason, Integer code, String debugMessage, UnityAdsShowOptions showOptions) {
        Pair[] pairArr = new Pair[3];
        pairArr[0] = TuplesKt.to("operation", OperationType.SHOW.toString());
        pairArr[1] = TuplesKt.to("reason", diagnosticReason);
        pairArr[2] = TuplesKt.to("new_api", String.valueOf((showOptions != null ? showOptions.showConfiguration : null) != null));
        Map<String, String> mapMutableMapOf = MapsKt.mutableMapOf(pairArr);
        if (code != null) {
            mapMutableMapOf.put("reason_code", String.valueOf(code.intValue()));
        }
        if (debugMessage != null) {
            mapMutableMapOf.put("reason_debug", debugMessage);
        }
        return mapMutableMapOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AdObject getTmpAdObject(String opportunityId) {
        UUID uuidFromString = UUID.fromString(opportunityId);
        Intrinsics.checkNotNullExpressionValue(uuidFromString, "fromString(...)");
        AdObject ad = this.adRepository.getAd(ProtobufExtensionsKt.toByteString(uuidFromString));
        if (ad != null) {
            return ad;
        }
        SendDiagnosticEvent.Companion companion = SendDiagnosticEvent.INSTANCE;
        UUID uuidFromString2 = UUID.fromString(opportunityId);
        Intrinsics.checkNotNullExpressionValue(uuidFromString2, "fromString(...)");
        ByteString byteString = ProtobufExtensionsKt.toByteString(uuidFromString2);
        String str = this.placement;
        if (str == null) {
            str = "";
        }
        return SendDiagnosticEvent.Companion.getTmpAdObjectForEventSending$default(companion, byteString, str, false, null, null, 28, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object sendOperativeError(OperativeEventRequestOuterClass.OperativeEventErrorType operativeEventErrorType, String str, AdObject adObject, Continuation<? super Unit> continuation) {
        OperativeEventErrorDataKt.Dsl.Companion companion = OperativeEventErrorDataKt.Dsl.INSTANCE;
        OperativeEventRequestOuterClass.OperativeEventErrorData.Builder builderNewBuilder = OperativeEventRequestOuterClass.OperativeEventErrorData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        OperativeEventErrorDataKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setErrorType(operativeEventErrorType);
        dsl_create.setMessage(str);
        OperativeEventRequestOuterClass.OperativeEventErrorData operativeEventErrorData_build = dsl_create._build();
        GetOperativeEventApi getOperativeEventApi = this.getOperativeEventApi;
        OperativeEventRequestOuterClass.OperativeEventType operativeEventType = OperativeEventRequestOuterClass.OperativeEventType.OPERATIVE_EVENT_TYPE_SHOW_ERROR;
        ByteString byteString = operativeEventErrorData_build.toByteString();
        Intrinsics.checkNotNullExpressionValue(byteString, "toByteString(...)");
        Object objInvoke = getOperativeEventApi.invoke(operativeEventType, adObject, byteString, continuation);
        return objInvoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showClicked(TimeMark startTime, final String placement, final Listeners listeners) {
        this.logger.info("Clicked on ad " + getAdInfoString());
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_SHOW_CLICKED, Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), (Map) null, (Map) null, this.adObject, (Integer) null, (ByteString) null, (MediationInfo) null, 236, (Object) null);
        this.safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LegacyShowUseCase.showClicked$lambda$7(listeners, placement);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showClicked$lambda$7(Listeners listeners, String str) {
        listeners.onClick(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showCompleted(TimeMark startTime, final String placement, final ShowStatus status, final Listeners listeners, String reason, String reasonDebug, UnityAdsShowOptions showOptions) {
        this.logger.info("Finished showing ad " + getAdInfoString());
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        if (reason != null) {
        }
        if (reasonDebug != null) {
        }
        TuplesKt.to("new_api", String.valueOf((showOptions != null ? showOptions.showConfiguration : null) != null));
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_SHOW_SUCCESS_TIME, Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), MapsKt.build(mapCreateMapBuilder), (Map) null, this.adObject, (Integer) null, (ByteString) null, (MediationInfo) null, 232, (Object) null);
        this.safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$$ExternalSyntheticLambda3
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LegacyShowUseCase.showCompleted$lambda$12(listeners, placement, status, this);
            }
        });
    }

    static /* synthetic */ void showCompleted$default(LegacyShowUseCase legacyShowUseCase, TimeMark timeMark, String str, ShowStatus showStatus, Listeners listeners, String str2, String str3, UnityAdsShowOptions unityAdsShowOptions, int i, Object obj) {
        if ((i & 16) != 0) {
            str2 = null;
        }
        if ((i & 32) != 0) {
            str3 = null;
        }
        legacyShowUseCase.showCompleted(timeMark, str, showStatus, listeners, str2, str3, unityAdsShowOptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showCompleted$lambda$12(Listeners listeners, String str, ShowStatus showStatus, LegacyShowUseCase legacyShowUseCase) {
        NativeConfigurationOuterClass.ShowCompletionState defaultShowCompletionState = legacyShowUseCase.sessionRepository.getNativeConfiguration().getDefaultShowCompletionState();
        Intrinsics.checkNotNullExpressionValue(defaultShowCompletionState, "getDefaultShowCompletionState(...)");
        listeners.onComplete(str, ShowStatusExtensionsKt.toUnityAdsShowCompletionState(showStatus, defaultShowCompletionState));
        return Unit.INSTANCE;
    }

    private final Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> showError(TimeMark startTime, String placement, String opportunityId, Listeners listeners, UnityAdsShowOptions showOptions) {
        return new C40211(opportunityId, startTime, showOptions, listeners, placement, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showReceivedReward$lambda$3(Listeners listeners, String str) {
        listeners.onRewarded(str);
        return Unit.INSTANCE;
    }

    private final void showStart(String opportunityId, UnityAdsShowOptions showOptions) {
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_SHOW_STARTED, (Double) null, MapsKt.mapOf(TuplesKt.to("new_api", String.valueOf((showOptions != null ? showOptions.showConfiguration : null) != null))), (Map) null, getTmpAdObject(opportunityId), (Integer) null, (ByteString) null, (MediationInfo) null, 234, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showStarted(TimeMark startTime, final String placement, final Listeners listeners) {
        MutableStateFlow<Integer> mutableStateFlow = this.startedCount;
        mutableStateFlow.setValue(Integer.valueOf(mutableStateFlow.getValue().intValue() + 1));
        if (this.startedCount.getValue().intValue() >= 2) {
            return;
        }
        this.logger.info("Started showing ad " + getAdInfoString());
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_SHOW_WV_STARTED, Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), (Map) null, (Map) null, this.adObject, (Integer) null, (ByteString) null, (MediationInfo) null, 236, (Object) null);
        this.safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$$ExternalSyntheticLambda1
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LegacyShowUseCase.showStarted$lambda$6(listeners, placement);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showStarted$lambda$6(Listeners listeners, String str) {
        listeners.onStart(str);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:150:0x0380  */
    /* JADX WARN: Code duplicated, block: B:155:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:156:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:159:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:160:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:163:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:164:0x03e9  */
    /* JADX WARN: Code duplicated, block: B:168:0x0414  */
    /* JADX WARN: Code duplicated, block: B:170:0x0417  */
    /* JADX WARN: Code duplicated, block: B:175:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0289, code lost:
    
        if (r3.invoke("ad_player_scope_not_active", r5, com.unity3d.ads.core.domain.LegacyShowUseCase.MESSAGE_AD_PLAYER_UNAVAILABLE, null, null, r9) == r12) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x02ac, code lost:
    
        if (r3.invoke("already_showing", r5, com.unity3d.ads.core.domain.LegacyShowUseCase.MESSAGE_ALREADY_SHOWING, null, null, r9) == r12) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x02dd, code lost:
    
        if (r3.invoke("placement_validation", r5, com.unity3d.ads.core.domain.LegacyShowUseCase.MSG_OPPORTUNITY_AND_PLACEMENT_NOT_MATCHING, null, null, r9) == r12) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0187, code lost:
    
        if (r3.invoke("not_initialized", r0, com.unity3d.ads.core.data.model.LoadResult.MSG_NOT_INITIALIZED, null, null, r9) == r12) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01a0, code lost:
    
        if (r3.invoke("placement_null", r5, com.unity3d.ads.core.data.model.LoadResult.MSG_PLACEMENT_NULL, null, null, r9) == r12) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01cf, code lost:
    
        if (r3.invoke("no_opportunity_id", r5, com.unity3d.ads.core.domain.LegacyShowUseCase.MESSAGE_OPPORTUNITY_ID, null, r8, r9) == r12) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01fa, code lost:
    
        if (r3.invoke("placement_not_loaded", r5, r6, null, null, r9) == r12) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0233, code lost:
    
        if (r3.invoke("ad_object_not_found", r5, r6, null, null, r9) == r12) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0257, code lost:
    
        if (r3.invoke("ad_object_expired", r5, com.unity3d.ads.core.domain.LegacyShowUseCase.MESSAGE_AD_OBJECT_EXPIRED, null, null, r9) == r12) goto L59;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v5, types: [int] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v20 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.String r33, com.unity3d.ads.UnityAdsShowOptions r34, com.unity3d.ads.core.data.model.Listeners r35, p005kotlin.coroutines.Continuation<? super p005kotlin.Unit> r36) {
        /*
            Method dump skipped, instruction units count: 1082
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase.invoke(java.lang.String, com.unity3d.ads.UnityAdsShowOptions, com.unity3d.ads.core.data.model.Listeners, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void showReceivedReward(TimeMark startTime, final String placement, final Listeners listeners) {
        Intrinsics.checkNotNullParameter(startTime, "startTime");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        this.logger.info("Rewarding ad " + getAdInfoString());
        MutableStateFlow<Integer> mutableStateFlow = this.startedCount;
        mutableStateFlow.setValue(Integer.valueOf(Math.max(mutableStateFlow.getValue().intValue(), 2)));
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_SHOW_REWARDED, Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), (Map) null, (Map) null, this.adObject, (Integer) null, (ByteString) null, (MediationInfo) null, 236, (Object) null);
        this.safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$$ExternalSyntheticLambda4
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LegacyShowUseCase.showReceivedReward$lambda$3(listeners, placement);
            }
        });
    }
}
