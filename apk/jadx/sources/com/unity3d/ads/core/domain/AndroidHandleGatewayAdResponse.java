package com.unity3d.ads.core.domain;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.protobuf.ByteString;
import com.ironsource.Ue;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.AdPlayerScope;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.adplayer.model.LoadEvent;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.WebViewConfiguration;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy;
import com.unity3d.ads.core.domain.adload.PreloadedWebView;
import com.unity3d.ads.core.domain.adload.WebViewLessLoadStrategy;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import gatewayprotocol.v1.AdResponseOuterClass;
import gatewayprotocol.v1.AllowedPiiOuterClass;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationUnit;
import p005kotlin.time.TimeSource;
import p005kotlin.time.TimedValue;

/* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000¼\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u007f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0006\u0010\u001e\u001a\u00020\u001f¢\u0006\u0004\b \u0010!JN\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000201H\u0096B¢\u0006\u0002\u00103J&\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020-2\u0006\u00109\u001a\u00020:H\u0082@¢\u0006\u0002\u0010;J0\u0010<\u001a\u0002052\u0006\u0010=\u001a\u00020>2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\b\u0010?\u001a\u0004\u0018\u00010@H\u0082@¢\u0006\u0002\u0010AR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006B"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse;", "Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;", "adRepository", "Lcom/unity3d/ads/core/data/repository/AdRepository;", "getWebViewContainerUseCase", "Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;", "getWebViewBridge", "Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;", "deviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "getHandleInvocationsFromAdViewer", "Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;", "campaignRepository", "Lcom/unity3d/ads/core/data/repository/CampaignRepository;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "getOperativeEventApi", "Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;", "getLatestWebViewConfiguration", "Lcom/unity3d/ads/core/domain/GetLatestWebViewConfiguration;", "adPlayerScope", "Lcom/unity3d/ads/adplayer/AdPlayerScope;", "getAdPlayer", "Lcom/unity3d/ads/core/domain/GetAdPlayer;", "cacheWebViewAssets", "Lcom/unity3d/ads/core/domain/CacheWebViewAssets;", "webViewLessLoadStrategy", "Lcom/unity3d/ads/core/domain/adload/WebViewLessLoadStrategy;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "preShowStrategy", "Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;", "<init>", "(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/repository/CampaignRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/GetLatestWebViewConfiguration;Lcom/unity3d/ads/adplayer/AdPlayerScope;Lcom/unity3d/ads/core/domain/GetAdPlayer;Lcom/unity3d/ads/core/domain/CacheWebViewAssets;Lcom/unity3d/ads/core/domain/adload/WebViewLessLoadStrategy;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;)V", "invoke", "Lcom/unity3d/ads/core/data/model/LoadResult;", HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "Lcom/unity3d/ads/UnityAdsLoadOptions;", "opportunityId", "Lcom/google/protobuf/ByteString;", Ue.n, "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;", "context", "Landroid/content/Context;", "placementId", "", "adType", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;", HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING, "", "forceWebViewLoad", "(Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadUrl", "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "webViewUrl", "webviewContainer", "Lcom/unity3d/ads/adplayer/WebViewContainer;", "(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cleanup", "t", "", "adPlayer", "Lcom/unity3d/ads/adplayer/AdPlayer;", "(Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AdPlayer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidHandleGatewayAdResponse implements HandleGatewayAdResponse {
    private final AdPlayerScope adPlayerScope;
    private final AdRepository adRepository;
    private final CacheWebViewAssets cacheWebViewAssets;
    private final CampaignRepository campaignRepository;
    private final DeviceInfoRepository deviceInfoRepository;
    private final GetAdPlayer getAdPlayer;
    private final HandleInvocationsFromAdViewer getHandleInvocationsFromAdViewer;
    private final GetLatestWebViewConfiguration getLatestWebViewConfiguration;
    private final GetOperativeEventApi getOperativeEventApi;
    private final GetWebViewBridgeUseCase getWebViewBridge;
    private final AndroidGetWebViewContainerUseCase getWebViewContainerUseCase;
    private final PreShowWebViewStrategy preShowStrategy;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private final WebViewLessLoadStrategy webViewLessLoadStrategy;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$cleanup$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse", f = "AndroidHandleGatewayAdResponse.kt", i = {0}, l = {371, 377}, m = "cleanup", n = {"adPlayer"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidHandleGatewayAdResponse.this.cleanup(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse", f = "AndroidHandleGatewayAdResponse.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 8, 9}, l = {110, 138, 152, ModuleDescriptor.MODULE_VERSION, 229, 287, 288, 300, 331, 337}, m = "invoke", n = {HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "opportunityId", Ue.n, "placementId", "adType", "adPlayer", "preShowAdObject", HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING, "forceWebViewLoad", HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "opportunityId", Ue.n, "placementId", "adType", "adPlayer", "preShowAdObject", "webviewConfiguration", "adScope", "tmpAdObject", HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING, "forceWebViewLoad", "mark$iv$iv", HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "opportunityId", Ue.n, "placementId", "adType", "adPlayer", "preShowAdObject", "webviewConfiguration", "adScope", "tmpAdObject", HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING, "forceWebViewLoad", "diskWarmSuccess", "opportunityId", Ue.n, "adType", "adPlayer", "preShowAdObject", "adScope", "webViewUrl", HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "opportunityId", Ue.n, "placementId", "adType", "adPlayer", "preShowAdObject", "webviewConfiguration", "adScope", "tmpAdObject", "webViewUrl", "base64ImpressionConfiguration", "forceWebViewLoad", "diskWarmSuccess", "mark$iv$iv", HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "opportunityId", Ue.n, "placementId", "adPlayer", "preShowAdObject", "webviewConfiguration", "adScope", "tmpAdObject", "adObjectWithPlayer", "diskWarmSuccess", "loadAdViewerStartedTime", HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "opportunityId", Ue.n, "placementId", "adPlayer", "preShowAdObject", "webviewConfiguration", "adScope", "tmpAdObject", "adObjectWithPlayer", "diskWarmSuccess", "loadAdViewerStartedTime", "opportunityId", Ue.n, "adPlayer", "preShowAdObject", "loadEvent", "t", "t"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "Z$0", "Z$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "Z$0", "Z$1", "J$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "Z$0", "Z$1", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "L$10", "L$11", "Z$0", "I$0", "J$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "I$0", "J$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "I$0", "J$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$0"})
    static final class C40151 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$10;
        Object L$11;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        Object L$9;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        C40151(Continuation<? super C40151> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidHandleGatewayAdResponse.this.invoke(null, null, null, null, null, null, false, false, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$2", f = "AndroidHandleGatewayAdResponse.kt", i = {}, l = {218}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ CoroutineScope $adScope;
        final /* synthetic */ AdObject $eagerAdObject;
        final /* synthetic */ Function2<WebViewContainer, Continuation<? super PreloadedWebView>, Object> $loadWebView;
        final /* synthetic */ AdResponseOuterClass.AdResponse $response;
        final /* synthetic */ String $webViewUrl;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(AdObject adObject, String str, AdResponseOuterClass.AdResponse adResponse, CoroutineScope coroutineScope, Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$eagerAdObject = adObject;
            this.$webViewUrl = str;
            this.$response = adResponse;
            this.$adScope = coroutineScope;
            this.$loadWebView = function2;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidHandleGatewayAdResponse.this.new AnonymousClass2(this.$eagerAdObject, this.$webViewUrl, this.$response, this.$adScope, this.$loadWebView, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (AndroidHandleGatewayAdResponse.this.preShowStrategy.onLoadSuccess(this.$eagerAdObject, this.$webViewUrl, this.$response, this.$adScope, this.$loadWebView, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$3, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$3", f = "AndroidHandleGatewayAdResponse.kt", i = {}, l = {295}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<AllowedPiiOuterClass.AllowedPii, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<AdPlayer> $adPlayer;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(Ref.ObjectRef<AdPlayer> objectRef, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$adPlayer = objectRef;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$adPlayer, continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(AllowedPiiOuterClass.AllowedPii allowedPii, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(allowedPii, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                AllowedPiiOuterClass.AllowedPii allowedPii = (AllowedPiiOuterClass.AllowedPii) this.L$0;
                AdPlayer adPlayer = this.$adPlayer.element;
                byte[] byteArray = allowedPii.toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                this.label = 1;
                if (adPlayer.onAllowedPiiChange(byteArray, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$4, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$4", f = "AndroidHandleGatewayAdResponse.kt", i = {}, l = {301, 302}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<AdPlayer> $adPlayer;
        final /* synthetic */ LoadEvent $loadEvent;
        final /* synthetic */ ByteString $opportunityId;
        final /* synthetic */ AdResponseOuterClass.AdResponse $response;
        final /* synthetic */ AdObject $tmpAdObject;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(AdObject adObject, LoadEvent loadEvent, ByteString byteString, AdResponseOuterClass.AdResponse adResponse, Ref.ObjectRef<AdPlayer> objectRef, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$tmpAdObject = adObject;
            this.$loadEvent = loadEvent;
            this.$opportunityId = byteString;
            this.$response = adResponse;
            this.$adPlayer = objectRef;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidHandleGatewayAdResponse.this.new AnonymousClass4(this.$tmpAdObject, this.$loadEvent, this.$opportunityId, this.$response, this.$adPlayer, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x005b, code lost:
        
            if (r9.this$0.cleanup(new java.lang.Error(((com.unity3d.ads.adplayer.model.LoadEvent.Error) r9.$loadEvent).getMessage()), r9.$opportunityId, r9.$response, r9.$adPlayer.element, r9) == r0) goto L15;
         */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                p005kotlin.ResultKt.throwOnFailure(r10)
                goto L5e
            L12:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L1a:
                p005kotlin.ResultKt.throwOnFailure(r10)
                goto L35
            L1e:
                p005kotlin.ResultKt.throwOnFailure(r10)
                com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse r10 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.this
                com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy r10 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.access$getPreShowStrategy$p(r10)
                com.unity3d.ads.core.data.model.AdObject r1 = r9.$tmpAdObject
                r4 = r9
                kotlin.coroutines.Continuation r4 = (p005kotlin.coroutines.Continuation) r4
                r9.label = r3
                java.lang.Object r10 = r10.onShowComplete(r1, r4)
                if (r10 != r0) goto L35
                goto L5d
            L35:
                com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse r3 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.this
                java.lang.Error r10 = new java.lang.Error
                com.unity3d.ads.adplayer.model.LoadEvent r1 = r9.$loadEvent
                com.unity3d.ads.adplayer.model.LoadEvent$Error r1 = (com.unity3d.ads.adplayer.model.LoadEvent.Error) r1
                java.lang.String r1 = r1.getMessage()
                r10.<init>(r1)
                r4 = r10
                java.lang.Throwable r4 = (java.lang.Throwable) r4
                com.google.protobuf.ByteString r5 = r9.$opportunityId
                gatewayprotocol.v1.AdResponseOuterClass$AdResponse r6 = r9.$response
                kotlin.jvm.internal.Ref$ObjectRef<com.unity3d.ads.adplayer.AdPlayer> r10 = r9.$adPlayer
                T r10 = r10.element
                r7 = r10
                com.unity3d.ads.adplayer.AdPlayer r7 = (com.unity3d.ads.adplayer.AdPlayer) r7
                r8 = r9
                kotlin.coroutines.Continuation r8 = (p005kotlin.coroutines.Continuation) r8
                r9.label = r2
                java.lang.Object r10 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.access$cleanup(r3, r4, r5, r6, r7, r8)
                if (r10 != r0) goto L5e
            L5d:
                return r0
            L5e:
                kotlin.Unit r10 = p005kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass4.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$5, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$5", f = "AndroidHandleGatewayAdResponse.kt", i = {}, l = {320}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ WebViewConfiguration $webviewConfiguration;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(WebViewConfiguration webViewConfiguration, Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
            this.$webviewConfiguration = webViewConfiguration;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidHandleGatewayAdResponse.this.new AnonymousClass5(this.$webviewConfiguration, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass5) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (AndroidHandleGatewayAdResponse.this.cacheWebViewAssets.invoke(this.$webviewConfiguration, true, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$6, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$6", f = "AndroidHandleGatewayAdResponse.kt", i = {}, l = {332, 333}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass6 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<AdPlayer> $adPlayer;
        final /* synthetic */ ByteString $opportunityId;
        final /* synthetic */ Ref.ObjectRef<AdObject> $preShowAdObject;
        final /* synthetic */ AdResponseOuterClass.AdResponse $response;
        final /* synthetic */ CancellationException $t;
        int label;
        final /* synthetic */ AndroidHandleGatewayAdResponse this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass6(Ref.ObjectRef<AdObject> objectRef, AndroidHandleGatewayAdResponse androidHandleGatewayAdResponse, CancellationException cancellationException, ByteString byteString, AdResponseOuterClass.AdResponse adResponse, Ref.ObjectRef<AdPlayer> objectRef2, Continuation<? super AnonymousClass6> continuation) {
            super(2, continuation);
            this.$preShowAdObject = objectRef;
            this.this$0 = androidHandleGatewayAdResponse;
            this.$t = cancellationException;
            this.$opportunityId = byteString;
            this.$response = adResponse;
            this.$adPlayer = objectRef2;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass6(this.$preShowAdObject, this.this$0, this.$t, this.$opportunityId, this.$response, this.$adPlayer, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass6) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
        
            if (r9.this$0.cleanup(r9.$t, r9.$opportunityId, r9.$response, r9.$adPlayer.element, r9) == r0) goto L17;
         */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                p005kotlin.ResultKt.throwOnFailure(r10)
                goto L56
            L12:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L1a:
                p005kotlin.ResultKt.throwOnFailure(r10)
                goto L38
            L1e:
                p005kotlin.ResultKt.throwOnFailure(r10)
                kotlin.jvm.internal.Ref$ObjectRef<com.unity3d.ads.core.data.model.AdObject> r10 = r9.$preShowAdObject
                T r10 = r10.element
                com.unity3d.ads.core.data.model.AdObject r10 = (com.unity3d.ads.core.data.model.AdObject) r10
                if (r10 == 0) goto L38
                com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse r1 = r9.this$0
                com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy r1 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.access$getPreShowStrategy$p(r1)
                r9.label = r3
                java.lang.Object r10 = r1.onShowComplete(r10, r9)
                if (r10 != r0) goto L38
                goto L55
            L38:
                com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse r3 = r9.this$0
                java.util.concurrent.CancellationException r10 = r9.$t
                r4 = r10
                java.lang.Throwable r4 = (java.lang.Throwable) r4
                com.google.protobuf.ByteString r5 = r9.$opportunityId
                gatewayprotocol.v1.AdResponseOuterClass$AdResponse r6 = r9.$response
                kotlin.jvm.internal.Ref$ObjectRef<com.unity3d.ads.adplayer.AdPlayer> r10 = r9.$adPlayer
                T r10 = r10.element
                r7 = r10
                com.unity3d.ads.adplayer.AdPlayer r7 = (com.unity3d.ads.adplayer.AdPlayer) r7
                r8 = r9
                kotlin.coroutines.Continuation r8 = (p005kotlin.coroutines.Continuation) r8
                r9.label = r2
                java.lang.Object r10 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.access$cleanup(r3, r4, r5, r6, r7, r8)
                if (r10 != r0) goto L56
            L55:
                return r0
            L56:
                kotlin.Unit r10 = p005kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass6.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$7, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$7", f = "AndroidHandleGatewayAdResponse.kt", i = {}, l = {338, 339}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass7 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<AdPlayer> $adPlayer;
        final /* synthetic */ ByteString $opportunityId;
        final /* synthetic */ Ref.ObjectRef<AdObject> $preShowAdObject;
        final /* synthetic */ AdResponseOuterClass.AdResponse $response;
        final /* synthetic */ Throwable $t;
        int label;
        final /* synthetic */ AndroidHandleGatewayAdResponse this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass7(Ref.ObjectRef<AdObject> objectRef, AndroidHandleGatewayAdResponse androidHandleGatewayAdResponse, Throwable th, ByteString byteString, AdResponseOuterClass.AdResponse adResponse, Ref.ObjectRef<AdPlayer> objectRef2, Continuation<? super AnonymousClass7> continuation) {
            super(2, continuation);
            this.$preShowAdObject = objectRef;
            this.this$0 = androidHandleGatewayAdResponse;
            this.$t = th;
            this.$opportunityId = byteString;
            this.$response = adResponse;
            this.$adPlayer = objectRef2;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass7(this.$preShowAdObject, this.this$0, this.$t, this.$opportunityId, this.$response, this.$adPlayer, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass7) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
        
            if (r9.this$0.cleanup(r9.$t, r9.$opportunityId, r9.$response, r9.$adPlayer.element, r9) == r0) goto L17;
         */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                p005kotlin.ResultKt.throwOnFailure(r10)
                goto L53
            L12:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L1a:
                p005kotlin.ResultKt.throwOnFailure(r10)
                goto L38
            L1e:
                p005kotlin.ResultKt.throwOnFailure(r10)
                kotlin.jvm.internal.Ref$ObjectRef<com.unity3d.ads.core.data.model.AdObject> r10 = r9.$preShowAdObject
                T r10 = r10.element
                com.unity3d.ads.core.data.model.AdObject r10 = (com.unity3d.ads.core.data.model.AdObject) r10
                if (r10 == 0) goto L38
                com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse r1 = r9.this$0
                com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy r1 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.access$getPreShowStrategy$p(r1)
                r9.label = r3
                java.lang.Object r10 = r1.onShowComplete(r10, r9)
                if (r10 != r0) goto L38
                goto L52
            L38:
                com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse r3 = r9.this$0
                java.lang.Throwable r4 = r9.$t
                com.google.protobuf.ByteString r5 = r9.$opportunityId
                gatewayprotocol.v1.AdResponseOuterClass$AdResponse r6 = r9.$response
                kotlin.jvm.internal.Ref$ObjectRef<com.unity3d.ads.adplayer.AdPlayer> r10 = r9.$adPlayer
                T r10 = r10.element
                r7 = r10
                com.unity3d.ads.adplayer.AdPlayer r7 = (com.unity3d.ads.adplayer.AdPlayer) r7
                r8 = r9
                kotlin.coroutines.Continuation r8 = (p005kotlin.coroutines.Continuation) r8
                r9.label = r2
                java.lang.Object r10 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.access$cleanup(r3, r4, r5, r6, r7, r8)
                if (r10 != r0) goto L53
            L52:
                return r0
            L53:
                kotlin.Unit r10 = p005kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass7.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$loadUrl$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidHandleGatewayAdResponse.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse", f = "AndroidHandleGatewayAdResponse.kt", i = {0, 0}, l = {347}, m = "loadUrl", n = {"adObject", "mark$iv$iv"}, s = {"L$0", "J$0"})
    static final class C40161 extends ContinuationImpl {
        long J$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C40161(Continuation<? super C40161> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidHandleGatewayAdResponse.this.loadUrl(null, null, null, this);
        }
    }

    public AndroidHandleGatewayAdResponse(AdRepository adRepository, AndroidGetWebViewContainerUseCase getWebViewContainerUseCase, GetWebViewBridgeUseCase getWebViewBridge, DeviceInfoRepository deviceInfoRepository, HandleInvocationsFromAdViewer getHandleInvocationsFromAdViewer, CampaignRepository campaignRepository, SendDiagnosticEvent sendDiagnosticEvent, GetOperativeEventApi getOperativeEventApi, GetLatestWebViewConfiguration getLatestWebViewConfiguration, AdPlayerScope adPlayerScope, GetAdPlayer getAdPlayer, CacheWebViewAssets cacheWebViewAssets, WebViewLessLoadStrategy webViewLessLoadStrategy, SessionRepository sessionRepository, PreShowWebViewStrategy preShowStrategy) {
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(getWebViewContainerUseCase, "getWebViewContainerUseCase");
        Intrinsics.checkNotNullParameter(getWebViewBridge, "getWebViewBridge");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(getHandleInvocationsFromAdViewer, "getHandleInvocationsFromAdViewer");
        Intrinsics.checkNotNullParameter(campaignRepository, "campaignRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(getOperativeEventApi, "getOperativeEventApi");
        Intrinsics.checkNotNullParameter(getLatestWebViewConfiguration, "getLatestWebViewConfiguration");
        Intrinsics.checkNotNullParameter(adPlayerScope, "adPlayerScope");
        Intrinsics.checkNotNullParameter(getAdPlayer, "getAdPlayer");
        Intrinsics.checkNotNullParameter(cacheWebViewAssets, "cacheWebViewAssets");
        Intrinsics.checkNotNullParameter(webViewLessLoadStrategy, "webViewLessLoadStrategy");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(preShowStrategy, "preShowStrategy");
        this.adRepository = adRepository;
        this.getWebViewContainerUseCase = getWebViewContainerUseCase;
        this.getWebViewBridge = getWebViewBridge;
        this.deviceInfoRepository = deviceInfoRepository;
        this.getHandleInvocationsFromAdViewer = getHandleInvocationsFromAdViewer;
        this.campaignRepository = campaignRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.getOperativeEventApi = getOperativeEventApi;
        this.getLatestWebViewConfiguration = getLatestWebViewConfiguration;
        this.adPlayerScope = adPlayerScope;
        this.getAdPlayer = getAdPlayer;
        this.cacheWebViewAssets = cacheWebViewAssets;
        this.webViewLessLoadStrategy = webViewLessLoadStrategy;
        this.sessionRepository = sessionRepository;
        this.preShowStrategy = preShowStrategy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a8, code lost:
    
        if (r14.destroy(r9) == r1) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object cleanup(java.lang.Throwable r14, com.google.protobuf.ByteString r15, gatewayprotocol.v1.AdResponseOuterClass.AdResponse r16, com.unity3d.ads.adplayer.AdPlayer r17, p005kotlin.coroutines.Continuation<? super p005kotlin.Unit> r18) {
        /*
            r13 = this;
            r0 = r18
            boolean r1 = r0 instanceof com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass1
            if (r1 == 0) goto L16
            r1 = r0
            com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$cleanup$1 r1 = (com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.AnonymousClass1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r2 & r3
            if (r2 == 0) goto L16
            int r0 = r1.label
            int r0 = r0 - r3
            r1.label = r0
            goto L1b
        L16:
            com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$cleanup$1 r1 = new com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$cleanup$1
            r1.<init>(r0)
        L1b:
            r9 = r1
            java.lang.Object r0 = r9.result
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r9.label
            r12 = 2
            r3 = 1
            if (r2 == 0) goto L41
            if (r2 == r3) goto L39
            if (r2 != r12) goto L31
            p005kotlin.ResultKt.throwOnFailure(r0)
            goto Lab
        L31:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L39:
            java.lang.Object r14 = r9.L$0
            com.unity3d.ads.adplayer.AdPlayer r14 = (com.unity3d.ads.adplayer.AdPlayer) r14
            p005kotlin.ResultKt.throwOnFailure(r0)
            goto L9d
        L41:
            p005kotlin.ResultKt.throwOnFailure(r0)
            gatewayprotocol.v1.OperativeEventErrorDataKt$Dsl$Companion r0 = gatewayprotocol.v1.OperativeEventErrorDataKt.Dsl.INSTANCE
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventErrorData$Builder r2 = gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventErrorData.newBuilder()
            java.lang.String r4 = "newBuilder(...)"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r4)
            gatewayprotocol.v1.OperativeEventErrorDataKt$Dsl r0 = r0._create(r2)
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventErrorType r2 = gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventErrorType.OPERATIVE_EVENT_ERROR_TYPE_UNSPECIFIED
            r0.setErrorType(r2)
            java.lang.Throwable r2 = r14.getCause()
            if (r2 == 0) goto L64
            java.lang.String r2 = r2.getMessage()
            if (r2 != 0) goto L6c
        L64:
            java.lang.String r2 = r14.getMessage()
            if (r2 != 0) goto L6c
            java.lang.String r2 = ""
        L6c:
            r0.setMessage(r2)
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventErrorData r14 = r0._build()
            com.unity3d.ads.core.domain.events.GetOperativeEventApi r2 = r13.getOperativeEventApi
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventType r0 = gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventType.OPERATIVE_EVENT_TYPE_LOAD_ERROR
            com.google.protobuf.ByteString r5 = r16.getTrackingToken()
            java.lang.String r4 = "getTrackingToken(...)"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r4)
            com.google.protobuf.ByteString r6 = r14.toByteString()
            java.lang.String r14 = "toByteString(...)"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r14)
            r14 = r17
            r9.L$0 = r14
            r9.label = r3
            r7 = 0
            r8 = 0
            r10 = 48
            r11 = 0
            r4 = r15
            r3 = r0
            java.lang.Object r15 = com.unity3d.ads.core.domain.events.GetOperativeEventApi.invoke$default(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            if (r15 != r1) goto L9d
            goto Laa
        L9d:
            if (r14 == 0) goto Lae
            r15 = 0
            r9.L$0 = r15
            r9.label = r12
            java.lang.Object r14 = r14.destroy(r9)
            if (r14 != r1) goto Lab
        Laa:
            return r1
        Lab:
            kotlin.Unit r14 = p005kotlin.Unit.INSTANCE
            return r14
        Lae:
            kotlin.Unit r14 = p005kotlin.Unit.INSTANCE
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.cleanup(java.lang.Throwable, com.google.protobuf.ByteString, gatewayprotocol.v1.AdResponseOuterClass$AdResponse, com.unity3d.ads.adplayer.AdPlayer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object loadUrl(AdObject adObject, String str, WebViewContainer webViewContainer, Continuation<? super Unit> continuation) {
        C40161 c40161;
        Throwable th;
        AdObject adObject2;
        long j;
        Object objM3022constructorimpl;
        if (continuation instanceof C40161) {
            c40161 = (C40161) continuation;
            if ((c40161.label & Integer.MIN_VALUE) != 0) {
                c40161.label -= Integer.MIN_VALUE;
            } else {
                c40161 = new C40161(continuation);
            }
        } else {
            c40161 = new C40161(continuation);
        }
        Object obj = c40161.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c40161.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            long jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
            try {
                Result.Companion companion = Result.INSTANCE;
                AndroidHandleGatewayAdResponse androidHandleGatewayAdResponse = this;
                c40161.L$0 = adObject;
                c40161.J$0 = jM4482markNowz9LOYto;
                c40161.label = 1;
                if (webViewContainer.loadUrl(str, c40161) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                adObject2 = adObject;
                j = jM4482markNowz9LOYto;
            } catch (Throwable th2) {
                th = th2;
                adObject2 = adObject;
                j = jM4482markNowz9LOYto;
                Result.Companion companion2 = Result.INSTANCE;
                objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = c40161.J$0;
            adObject2 = (AdObject) c40161.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Throwable th3) {
                th = th3;
                Result.Companion companion3 = Result.INSTANCE;
                objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
            }
        }
        objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
        AdObject adObject3 = adObject2;
        TimedValue timedValue = new TimedValue(Result.m3021boximpl(objM3022constructorimpl), TimeSource.Monotonic.ValueTimeMark.m4487elapsedNowUwyO8pc(j), null);
        Object value = ((Result) timedValue.component1()).getValue();
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, Result.m3029isSuccessimpl(value) ? DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_LOAD_FILE_SUCCESS_TIME : DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_LOAD_FILE_FAILURE_TIME, Boxing.boxDouble(Duration.m4403toDoubleimpl(timedValue.getDuration(), DurationUnit.MILLISECONDS)), (Map) null, (Map) null, adObject3, (Integer) null, (ByteString) null, (MediationInfo) null, 236, (Object) null);
        ResultKt.throwOnFailure(value);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Not initialized variable reg: 12, insn: 0x00fa: MOVE (r5 I:??[OBJECT, ARRAY]) = (r12 I:??[OBJECT, ARRAY]), block:B:30:0x00f7 */
    /* JADX WARN: Not initialized variable reg: 12, insn: 0x0102: MOVE (r5 I:??[OBJECT, ARRAY]) = (r12 I:??[OBJECT, ARRAY]), block:B:32:0x0100 */
    /* JADX WARN: Not initialized variable reg: 14, insn: 0x00fb: MOVE (r9 I:??[OBJECT, ARRAY]) = (r14 I:??[OBJECT, ARRAY]), block:B:30:0x00f7 */
    /* JADX WARN: Not initialized variable reg: 14, insn: 0x0103: MOVE (r9 I:??[OBJECT, ARRAY]) = (r14 I:??[OBJECT, ARRAY]), block:B:32:0x0100 */
    /* JADX WARN: Not initialized variable reg: 15, insn: 0x00fc: MOVE (r8 I:??[OBJECT, ARRAY]) = (r15 I:??[OBJECT, ARRAY]), block:B:30:0x00f7 */
    /* JADX WARN: Not initialized variable reg: 15, insn: 0x0104: MOVE (r8 I:??[OBJECT, ARRAY]) = (r15 I:??[OBJECT, ARRAY]), block:B:32:0x0100 */
    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 35441. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // com.unity3d.ads.core.domain.HandleGatewayAdResponse
    public java.lang.Object invoke(com.unity3d.ads.UnityAdsLoadOptions r48, com.google.protobuf.ByteString r49, gatewayprotocol.v1.AdResponseOuterClass.AdResponse r50, android.content.Context r51, java.lang.String r52, gatewayprotocol.v1.DiagnosticEventRequestOuterClass.DiagnosticAdType r53, boolean r54, boolean r55, p005kotlin.coroutines.Continuation<? super com.unity3d.ads.core.data.model.LoadResult> r56) {
        /*
            Method dump skipped, instruction units count: 3544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.invoke(com.unity3d.ads.UnityAdsLoadOptions, com.google.protobuf.ByteString, gatewayprotocol.v1.AdResponseOuterClass$AdResponse, android.content.Context, java.lang.String, gatewayprotocol.v1.DiagnosticEventRequestOuterClass$DiagnosticAdType, boolean, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
