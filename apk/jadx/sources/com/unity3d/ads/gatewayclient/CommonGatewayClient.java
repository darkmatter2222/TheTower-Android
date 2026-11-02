package com.unity3d.ads.gatewayclient;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.ironsource.Ue;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.model.exception.NetworkTimeoutException;
import com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.HandleGatewayUniversalResponse;
import com.unity3d.ads.core.domain.HttpClientProvider;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import com.unity3d.services.core.network.model.HttpResponseKt;
import com.unity3d.services.core.network.model.RequestType;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.ErrorKt;
import gatewayprotocol.v1.ErrorOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import gatewayprotocol.v1.UniversalResponseKt;
import gatewayprotocol.v1.UniversalResponseOuterClass;
import java.util.List;
import java.util.Map;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.random.Random;
import p005kotlin.text.Charsets;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;
import p005kotlin.time.TimeMark;
import p005kotlin.time.TimeSource;

/* JADX INFO: compiled from: CommonGatewayClient.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0000\u0018\u0000 @2\u00020\u0001:\u0001@B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ.\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0096@¢\u0006\u0002\u0010\u0019J.\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@¢\u0006\u0002\u0010\u0019J&\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@¢\u0006\u0002\u0010!J:\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u00132\u0018\u0010$\u001a\u0014\u0012\u0004\u0012\u00020\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130&0%2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0014H\u0002J\"\u0010'\u001a\u0014\u0012\u0004\u0012\u00020\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130&0%2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010(\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J(\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010-\u001a\u00020.H\u0002J(\u0010/\u001a\u00020*2\u0006\u00100\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010-\u001a\u00020.H\u0002J\u0018\u00101\u001a\u00020\u00112\u0006\u00102\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J \u00103\u001a\u0002042\u0006\u00105\u001a\u0002042\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0002J \u00106\u001a\u0002042\u0006\u00105\u001a\u0002042\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0018\u00107\u001a\u0002042\u0006\u00108\u001a\u00020 2\u0006\u00109\u001a\u00020:H\u0002J \u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020 2\u0006\u0010>\u001a\u0002042\u0006\u0010?\u001a\u00020 H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006A"}, d2 = {"Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;", "Lcom/unity3d/ads/gatewayclient/GatewayClient;", "httpClientProvider", "Lcom/unity3d/ads/core/domain/HttpClientProvider;", "handleGatewayUniversalResponse", "Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "requestUrlFactory", "Lcom/unity3d/ads/gatewayclient/RequestUrlFactory;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "<init>", "(Lcom/unity3d/ads/core/domain/HttpClientProvider;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/gatewayclient/RequestUrlFactory;Lcom/unity3d/ads/core/log/Logger;)V", "request", "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;", "url", "", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;", "requestPolicy", "Lcom/unity3d/ads/gatewayclient/RequestPolicy;", "operationType", "Lcom/unity3d/ads/core/data/model/OperationType;", "(Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "executeWithRetry", "executeRequest", "Lcom/unity3d/services/core/network/model/HttpResponse;", "httpRequest", "Lcom/unity3d/services/core/network/model/HttpRequest;", "retryCount", "", "(Lcom/unity3d/services/core/network/model/HttpRequest;ILcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "buildHttpRequest", "gatewayUrl", "headers", "", "", "getHeaders", "getGatewayUrl", "sendNetworkErrorDiagnosticEvent", "", "e", "Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;", "startTime", "Lkotlin/time/TimeMark;", "sendNetworkSuccessDiagnosticEvent", "httpResponse", "getUniversalResponse", Ue.n, "calculateDelayTime", "", "currentDelay", "calculateExponentialBackoff", "calculateJitter", "retryWaitBase", "retryJitterPct", "", "shouldRetry", "", "responseCode", "duration", "maxDuration", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CommonGatewayClient implements GatewayClient {
    public static final int CODE_400 = 400;
    public static final int CODE_599 = 599;
    public static final int CODE_TOO_MANY_REQUESTS = 429;
    public static final String HEADER_CONTENT_TYPE = "Content-Type";
    public static final String HEADER_PROTOBUF = "application/x-protobuf";
    public static final String HEADER_RETRY_AFTER = "Retry-After";
    public static final String HEADER_RETRY_ATTEMPT = "X-RETRY-ATTEMPT";
    private final HandleGatewayUniversalResponse handleGatewayUniversalResponse;
    private final HttpClientProvider httpClientProvider;
    private final Logger logger;
    private final RequestUrlFactory requestUrlFactory;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;

    /* JADX INFO: compiled from: CommonGatewayClient.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OperationType.values().length];
            try {
                iArr[OperationType.INITIALIZATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OperationType.LOAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OperationType.LOAD_HEADER_BIDDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.gatewayclient.CommonGatewayClient$executeRequest$1, reason: invalid class name */
    /* JADX INFO: compiled from: CommonGatewayClient.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.gatewayclient.CommonGatewayClient", f = "CommonGatewayClient.kt", i = {0, 0, 0, 0, 1, 1, 1}, l = {121, 122}, m = "executeRequest", n = {"httpRequest", "operationType", "retryCount", "startTime", "operationType", "retryCount", "startTime"}, s = {"L$0", "L$1", "I$0", "J$0", "L$0", "I$0", "J$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CommonGatewayClient.this.executeRequest(null, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.gatewayclient.CommonGatewayClient$executeWithRetry$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonGatewayClient.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.gatewayclient.CommonGatewayClient", f = "CommonGatewayClient.kt", i = {0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2}, l = {78, 84, 108}, m = "executeWithRetry", n = {"request", "requestPolicy", "operationType", "gatewayUrl", "retryCount", "timer", "delayTime", "request", "requestPolicy", "operationType", "gatewayUrl", "retryCount", "timer", "delayTime"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0", "J$0", "J$1", "L$0", "L$1", "L$2", "L$3", "I$0", "J$0", "J$1"})
    static final class C40821 extends ContinuationImpl {
        int I$0;
        long J$0;
        long J$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C40821(Continuation<? super C40821> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CommonGatewayClient.this.executeWithRetry(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.gatewayclient.CommonGatewayClient$request$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonGatewayClient.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.gatewayclient.CommonGatewayClient", f = "CommonGatewayClient.kt", i = {0}, l = {62}, m = "request", n = {"requestPolicy"}, s = {"L$0"})
    static final class C40831 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C40831(Continuation<? super C40831> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CommonGatewayClient.this.request(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.gatewayclient.CommonGatewayClient$request$2, reason: invalid class name */
    /* JADX INFO: compiled from: CommonGatewayClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.gatewayclient.CommonGatewayClient$request$2", f = "CommonGatewayClient.kt", i = {}, l = {63}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super UniversalResponseOuterClass.UniversalResponse>, Object> {
        final /* synthetic */ OperationType $operationType;
        final /* synthetic */ UniversalRequestOuterClass.UniversalRequest $request;
        final /* synthetic */ RequestPolicy $requestPolicy;
        final /* synthetic */ String $url;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(OperationType operationType, String str, UniversalRequestOuterClass.UniversalRequest universalRequest, RequestPolicy requestPolicy, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$operationType = operationType;
            this.$url = str;
            this.$request = universalRequest;
            this.$requestPolicy = requestPolicy;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CommonGatewayClient.this.new AnonymousClass2(this.$operationType, this.$url, this.$request, this.$requestPolicy, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super UniversalResponseOuterClass.UniversalResponse> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws NetworkTimeoutException {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            CommonGatewayClient commonGatewayClient = CommonGatewayClient.this;
            this.label = 1;
            Object objExecuteWithRetry = commonGatewayClient.executeWithRetry(commonGatewayClient.requestUrlFactory.getRequestUrl(this.$operationType, this.$url), this.$request, this.$requestPolicy, this.$operationType, this);
            return objExecuteWithRetry == coroutine_suspended ? coroutine_suspended : objExecuteWithRetry;
        }
    }

    public CommonGatewayClient(HttpClientProvider httpClientProvider, HandleGatewayUniversalResponse handleGatewayUniversalResponse, SendDiagnosticEvent sendDiagnosticEvent, SessionRepository sessionRepository, RequestUrlFactory requestUrlFactory, Logger logger) {
        Intrinsics.checkNotNullParameter(httpClientProvider, "httpClientProvider");
        Intrinsics.checkNotNullParameter(handleGatewayUniversalResponse, "handleGatewayUniversalResponse");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(requestUrlFactory, "requestUrlFactory");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.httpClientProvider = httpClientProvider;
        this.handleGatewayUniversalResponse = handleGatewayUniversalResponse;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.sessionRepository = sessionRepository;
        this.requestUrlFactory = requestUrlFactory;
        this.logger = logger;
    }

    private final HttpRequest buildHttpRequest(String gatewayUrl, Map<String, ? extends List<String>> headers, RequestPolicy requestPolicy, UniversalRequestOuterClass.UniversalRequest request) {
        return new HttpRequest(gatewayUrl, null, RequestType.POST, request.toByteArray(), headers, null, null, null, null, null, requestPolicy.getConnectTimeout(), requestPolicy.getReadTimeout(), requestPolicy.getWriteTimeout(), requestPolicy.getOverallTimeout(), true, null, null, 0, 230370, null);
    }

    private final long calculateDelayTime(long currentDelay, RequestPolicy requestPolicy, int retryCount) {
        return Math.min(calculateExponentialBackoff(currentDelay, requestPolicy, retryCount) + calculateJitter(requestPolicy.getRetryWaitBase(), requestPolicy.getRetryJitterPct()), requestPolicy.getRetryMaxInterval());
    }

    private final long calculateExponentialBackoff(long currentDelay, RequestPolicy requestPolicy, int retryCount) {
        return retryCount == 0 ? currentDelay : (long) (currentDelay * requestPolicy.getRetryScalingFactor());
    }

    private final long calculateJitter(int retryWaitBase, float retryJitterPct) {
        if (retryJitterPct == 0.0f) {
            return 0L;
        }
        long j = (long) (retryWaitBase * retryJitterPct);
        return Random.INSTANCE.nextLong(-j, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.unity3d.ads.gatewayclient.CommonGatewayClient] */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.unity3d.services.core.network.model.HttpRequest, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17, types: [long] */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v3, types: [long] */
    /* JADX WARN: Type inference failed for: r12v5, types: [long] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.unity3d.ads.core.data.model.OperationType, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10, types: [int] */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5, types: [com.unity3d.ads.core.data.model.OperationType] */
    /* JADX WARN: Type inference failed for: r14v6, types: [com.unity3d.ads.core.data.model.OperationType] */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v25 */
    /* JADX WARN: Type inference failed for: r15v26 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6, types: [int] */
    /* JADX WARN: Type inference failed for: r15v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10, types: [com.unity3d.ads.core.data.model.OperationType] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.unity3d.services.core.network.model.HttpRequest] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v3 */
    public final Object executeRequest(HttpRequest httpRequest, int i, OperationType operationType, Continuation<? super HttpResponse> continuation) {
        AnonymousClass1 anonymousClass1;
        ?? r15;
        ?? r14;
        ?? r16;
        ?? r17;
        ?? r12;
        ?? r13;
        ?? r7;
        Object obj;
        int i2;
        long j;
        ?? r18;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object obj2 = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r1 = anonymousClass2.label;
        try {
            try {
                if (r1 != 0) {
                    if (r1 == 1) {
                        long j2 = anonymousClass2.J$0;
                        int i3 = anonymousClass2.I$0;
                        OperationType operationType2 = (OperationType) anonymousClass2.L$1;
                        HttpRequest httpRequest2 = (HttpRequest) anonymousClass2.L$0;
                        ResultKt.throwOnFailure(obj2);
                        r7 = operationType2;
                        obj = obj2;
                        i2 = i3;
                        j = j2;
                        r18 = httpRequest2;
                    } else {
                        if (r1 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        long j3 = anonymousClass2.J$0;
                        int i4 = anonymousClass2.I$0;
                        OperationType operationType3 = (OperationType) anonymousClass2.L$0;
                        ResultKt.throwOnFailure(obj2);
                        r1 = operationType3;
                        httpRequest = j3;
                        operationType = i4;
                    }
                    HttpResponse httpResponse = (HttpResponse) obj2;
                    sendNetworkSuccessDiagnosticEvent(httpResponse, operationType, r1, TimeSource.Monotonic.ValueTimeMark.m4483boximpl(httpRequest));
                    return httpResponse;
                }
                ResultKt.throwOnFailure(obj2);
                long jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
                try {
                    HttpClientProvider httpClientProvider = this.httpClientProvider;
                    anonymousClass2.L$0 = httpRequest;
                    anonymousClass2.L$1 = operationType;
                    anonymousClass2.I$0 = i;
                    anonymousClass2.J$0 = jM4482markNowz9LOYto;
                    anonymousClass2.label = 1;
                    Object objInvoke = httpClientProvider.invoke(anonymousClass2);
                    if (objInvoke != coroutine_suspended) {
                        r7 = operationType;
                        obj = objInvoke;
                        i2 = i;
                        j = jM4482markNowz9LOYto;
                        r18 = httpRequest;
                    }
                    return coroutine_suspended;
                } catch (UnityAdsNetworkException e) {
                    e = e;
                    r16 = i;
                    r13 = jM4482markNowz9LOYto;
                    r17 = operationType;
                    sendNetworkErrorDiagnosticEvent(e, r16, r17, TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r13));
                    return HttpResponseKt.toHttpResponse(e);
                } catch (TimeoutCancellationException e2) {
                    e = e2;
                    r15 = i;
                    r12 = jM4482markNowz9LOYto;
                    r14 = operationType;
                    sendNetworkErrorDiagnosticEvent(new NetworkTimeoutException("Gateway request was canceled due to exceeding timeout for operation", null, null, null, null, null, null, 126, null), r15, r14, TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r12));
                    throw e;
                }
                anonymousClass2.L$0 = r7;
                anonymousClass2.L$1 = null;
                anonymousClass2.I$0 = i2 == true ? 1 : 0;
                anonymousClass2.J$0 = j;
                anonymousClass2.label = 2;
                Object objExecute$default = HttpClient.DefaultImpls.execute$default((HttpClient) obj, r18, false, anonymousClass2, 2, null);
                if (objExecute$default != coroutine_suspended) {
                    boolean z = i2 == true ? 1 : 0;
                    obj2 = objExecute$default;
                    httpRequest = j;
                    operationType = z ? 1 : 0;
                    r1 = r7;
                    HttpResponse httpResponse2 = (HttpResponse) obj2;
                    sendNetworkSuccessDiagnosticEvent(httpResponse2, operationType, r1, TimeSource.Monotonic.ValueTimeMark.m4483boximpl(httpRequest));
                    return httpResponse2;
                }
                return coroutine_suspended;
            } catch (UnityAdsNetworkException e3) {
                e = e3;
                r13 = j;
                r17 = r7;
                r16 = i2;
                sendNetworkErrorDiagnosticEvent(e, r16, r17, TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r13));
                return HttpResponseKt.toHttpResponse(e);
            } catch (TimeoutCancellationException e4) {
                e = e4;
                r12 = j;
                r14 = r7;
                r15 = i2;
                sendNetworkErrorDiagnosticEvent(new NetworkTimeoutException("Gateway request was canceled due to exceeding timeout for operation", null, null, null, null, null, null, 126, null), r15, r14, TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r12));
                throw e;
            }
        } catch (UnityAdsNetworkException e5) {
            e = e5;
            r16 = operationType;
            r17 = r1;
            r13 = httpRequest;
        } catch (TimeoutCancellationException e6) {
            e = e6;
            r15 = operationType;
            r14 = r1;
            r12 = httpRequest;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:24:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:27:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:30:0x00ed A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:33:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:40:0x0122  */
    /* JADX WARN: Code duplicated, block: B:42:0x0125  */
    /* JADX WARN: Code duplicated, block: B:43:0x012a  */
    /* JADX WARN: Code duplicated, block: B:46:0x014a  */
    /* JADX WARN: Code duplicated, block: B:50:0x016d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x015f, code lost:
    
        if (kotlinx.coroutines.DelayKt.delay(r8, r2) == r3) goto L48;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x015f -> B:14:0x004c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object executeWithRetry(java.lang.String r30, gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest r31, com.unity3d.ads.gatewayclient.RequestPolicy r32, com.unity3d.ads.core.data.model.OperationType r33, p005kotlin.coroutines.Continuation<? super gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse> r34) throws com.unity3d.ads.core.data.model.exception.NetworkTimeoutException {
        /*
            Method dump skipped, instruction units count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.gatewayclient.CommonGatewayClient.executeWithRetry(java.lang.String, gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest, com.unity3d.ads.gatewayclient.RequestPolicy, com.unity3d.ads.core.data.model.OperationType, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final String getGatewayUrl(String url) {
        return !Intrinsics.areEqual(url, UnityAdsConstants.DefaultUrls.GATEWAY_URL) ? url : this.sessionRepository.getGatewayUrl();
    }

    private final Map<String, List<String>> getHeaders(int retryCount) {
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        mapCreateMapBuilder.put("Content-Type", CollectionsKt.listOf(HEADER_PROTOBUF));
        if (retryCount > 0) {
            mapCreateMapBuilder.put(HEADER_RETRY_ATTEMPT, CollectionsKt.listOf(String.valueOf(retryCount)));
        }
        return MapsKt.build(mapCreateMapBuilder);
    }

    private final UniversalResponseOuterClass.UniversalResponse getUniversalResponse(HttpResponse response, OperationType operationType) {
        try {
            Object body = response.getBody();
            if (body instanceof byte[]) {
                UniversalResponseOuterClass.UniversalResponse from = UniversalResponseOuterClass.UniversalResponse.parseFrom((byte[]) body);
                Intrinsics.checkNotNullExpressionValue(from, "parseFrom(...)");
                return from;
            }
            if (!(body instanceof String)) {
                throw new InvalidProtocolBufferException("Could not parse response from gateway service");
            }
            byte[] bytes = ((String) body).getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            UniversalResponseOuterClass.UniversalResponse from2 = UniversalResponseOuterClass.UniversalResponse.parseFrom(bytes);
            Intrinsics.checkNotNullExpressionValue(from2, "parseFrom(...)");
            return from2;
        } catch (InvalidProtocolBufferException e) {
            this.logger.debug("Failed to parse response from gateway service with exception: " + e.getLocalizedMessage());
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_network_parse_failure", (Double) null, MapsKt.mapOf(TuplesKt.to("operation", operationType.toString()), TuplesKt.to("reason", "protobuf_parsing"), TuplesKt.to("reason_debug", response.getBody().toString())), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 250, (Object) null);
            UniversalResponseKt.Dsl.Companion companion = UniversalResponseKt.Dsl.INSTANCE;
            UniversalResponseOuterClass.UniversalResponse.Builder builderNewBuilder = UniversalResponseOuterClass.UniversalResponse.newBuilder();
            Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
            UniversalResponseKt.Dsl dsl_create = companion._create(builderNewBuilder);
            ErrorKt.Dsl.Companion companion2 = ErrorKt.Dsl.INSTANCE;
            ErrorOuterClass.Error.Builder builderNewBuilder2 = ErrorOuterClass.Error.newBuilder();
            Intrinsics.checkNotNullExpressionValue(builderNewBuilder2, "newBuilder(...)");
            ErrorKt.Dsl dsl_create2 = companion2._create(builderNewBuilder2);
            dsl_create2.setErrorText("ERROR: Could not parse response from gateway service");
            dsl_create.setError(dsl_create2._build());
            return dsl_create._build();
        }
    }

    private final void sendNetworkErrorDiagnosticEvent(UnityAdsNetworkException e, int retryCount, OperationType operationType, TimeMark startTime) {
        if (operationType == OperationType.DIAGNOSTIC_EVENT) {
            return;
        }
        Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("operation", operationType.toString()), TuplesKt.to("retries", String.valueOf(retryCount)), TuplesKt.to("protocol", String.valueOf(e.getProtocol())), TuplesKt.to("network_client", String.valueOf(e.getClient())), TuplesKt.to("reason_code", String.valueOf(e.getCode())), TuplesKt.to("reason_debug", e.getMessage()));
        int i = WhenMappings.$EnumSwitchMapping$0[operationType.ordinal()];
        if (i == 1) {
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_INIT_REQUEST_FAILURE_TIME, Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), mapMutableMapOf, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 248, (Object) null);
        } else if (i == 2 || i == 3) {
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_LOAD_REQUEST_FAILURE_TIME, Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), mapMutableMapOf, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 248, (Object) null);
        } else {
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_network_failure_time", Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), mapMutableMapOf, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 248, (Object) null);
        }
    }

    private final void sendNetworkSuccessDiagnosticEvent(HttpResponse httpResponse, int retryCount, OperationType operationType, TimeMark startTime) {
        if (operationType == OperationType.DIAGNOSTIC_EVENT) {
            return;
        }
        Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("operation", operationType.toString()), TuplesKt.to("retries", String.valueOf(retryCount)), TuplesKt.to("protocol", httpResponse.getProtocol()), TuplesKt.to("network_client", httpResponse.getClient()), TuplesKt.to("reason_code", String.valueOf(httpResponse.getStatusCode())));
        int i = WhenMappings.$EnumSwitchMapping$0[operationType.ordinal()];
        if (i == 1) {
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_INIT_REQUEST_SUCCESS_TIME, Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), mapMutableMapOf, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 248, (Object) null);
        } else if (i == 2 || i == 3) {
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_LOAD_REQUEST_SUCCESS_TIME, Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), mapMutableMapOf, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 248, (Object) null);
        } else {
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_NETWORK, Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), mapMutableMapOf, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 248, (Object) null);
        }
    }

    private final boolean shouldRetry(int responseCode, long duration, int maxDuration) {
        return 400 <= responseCode && responseCode < 600 && duration < ((long) maxDuration);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    @Override // com.unity3d.ads.gatewayclient.GatewayClient
    public Object request(String str, UniversalRequestOuterClass.UniversalRequest universalRequest, RequestPolicy requestPolicy, OperationType operationType, Continuation<? super UniversalResponseOuterClass.UniversalResponse> continuation) throws NetworkTimeoutException {
        C40831 c40831;
        RequestPolicy requestPolicy2;
        if (continuation instanceof C40831) {
            c40831 = (C40831) continuation;
            if ((c40831.label & Integer.MIN_VALUE) != 0) {
                c40831.label -= Integer.MIN_VALUE;
            } else {
                c40831 = new C40831(continuation);
            }
        } else {
            c40831 = new C40831(continuation);
        }
        Object objM4523withTimeoutOrNullKLykuaI = c40831.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c40831.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objM4523withTimeoutOrNullKLykuaI);
            Duration.Companion companion = Duration.INSTANCE;
            long duration = DurationKt.toDuration(requestPolicy.getMaxDuration(), DurationUnit.MILLISECONDS);
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(operationType, str, universalRequest, requestPolicy, null);
            c40831.L$0 = requestPolicy;
            c40831.label = 1;
            objM4523withTimeoutOrNullKLykuaI = TimeoutKt.m4523withTimeoutOrNullKLykuaI(duration, anonymousClass2, c40831);
            if (objM4523withTimeoutOrNullKLykuaI == coroutine_suspended) {
                return coroutine_suspended;
            }
            requestPolicy2 = requestPolicy;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            requestPolicy2 = (RequestPolicy) c40831.L$0;
            ResultKt.throwOnFailure(objM4523withTimeoutOrNullKLykuaI);
        }
        UniversalResponseOuterClass.UniversalResponse universalResponse = (UniversalResponseOuterClass.UniversalResponse) objM4523withTimeoutOrNullKLykuaI;
        if (universalResponse != null) {
            return universalResponse;
        }
        throw new NetworkTimeoutException("Gateway request timed out after " + requestPolicy2.getMaxDuration() + "ms", null, null, null, null, null, null, 126, null);
    }
}
