package com.unity3d.ads.core.domain;

import android.content.Context;
import com.google.android.gms.net.CronetProviderInstaller;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.protobuf.ByteString;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.core.configuration.MediationTraitsMetadataReader;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.services.core.di.ServiceProvider;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.network.core.CronetClient;
import com.unity3d.services.core.network.core.CronetEngineBuilderFactory;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.util.Locale;
import java.util.Map;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.OkHttpClient;
import org.chromium.net.CronetEngine;
import org.json.JSONException;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.DebugProbesKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationUnit;
import p005kotlin.time.TimeSource;

/* JADX INFO: compiled from: AndroidHttpClientProvider.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0014\u001a\u00020\u0013H\u0096B¢\u0006\u0002\u0010\u0015J\u000e\u0010\u0016\u001a\u00020\u0013H\u0082@¢\u0006\u0002\u0010\u0015J&\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0019H\u0082@¢\u0006\u0002\u0010\u001aJ\u0006\u0010\u001b\u001a\u00020\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;", "Lcom/unity3d/ads/core/domain/HttpClientProvider;", "dispatchers", "Lcom/unity3d/services/core/domain/ISDKDispatchers;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "context", "Landroid/content/Context;", "cronetEngineBuilderFactory", "Lcom/unity3d/services/core/network/core/CronetEngineBuilderFactory;", "mediationTraitsMetadataReader", "Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;", "isCronetFallbackAvailable", "Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable;", "<init>", "(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;Lcom/unity3d/services/core/network/core/CronetEngineBuilderFactory;Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;Lcom/unity3d/ads/core/domain/IsCronetFallbackAvailable;)V", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "cachedClient", "Lcom/unity3d/services/core/network/core/HttpClient;", "invoke", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createHttpClient", "buildNetworkClient", "selectedHttpClient", "Lcom/unity3d/ads/core/domain/HttpClientSelection;", "(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/HttpClientSelection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getOkHttp3Client", "Lcom/unity3d/services/core/network/core/OkHttp3Client;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidHttpClientProvider implements HttpClientProvider {
    private HttpClient cachedClient;
    private final Context context;
    private final CronetEngineBuilderFactory cronetEngineBuilderFactory;
    private final ISDKDispatchers dispatchers;
    private final IsCronetFallbackAvailable isCronetFallbackAvailable;
    private final MediationTraitsMetadataReader mediationTraitsMetadataReader;
    private final Mutex mutex;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHttpClientProvider$createHttpClient$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidHttpClientProvider.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHttpClientProvider", f = "AndroidHttpClientProvider.kt", i = {0, 0}, l = {85}, m = "createHttpClient", n = {"selectedHttpClient", "startTime"}, s = {"L$0", "J$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        long J$0;
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
            return AndroidHttpClientProvider.this.createHttpClient(this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidHttpClientProvider$invoke$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidHttpClientProvider.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHttpClientProvider", f = "AndroidHttpClientProvider.kt", i = {0, 1}, l = {145, 58}, m = "invoke", n = {"$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$0"})
    static final class C40171 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C40171(Continuation<? super C40171> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidHttpClientProvider.this.invoke(this);
        }
    }

    public AndroidHttpClientProvider(ISDKDispatchers dispatchers, SendDiagnosticEvent sendDiagnosticEvent, Context context, CronetEngineBuilderFactory cronetEngineBuilderFactory, MediationTraitsMetadataReader mediationTraitsMetadataReader, IsCronetFallbackAvailable isCronetFallbackAvailable) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cronetEngineBuilderFactory, "cronetEngineBuilderFactory");
        Intrinsics.checkNotNullParameter(mediationTraitsMetadataReader, "mediationTraitsMetadataReader");
        Intrinsics.checkNotNullParameter(isCronetFallbackAvailable, "isCronetFallbackAvailable");
        this.dispatchers = dispatchers;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.context = context;
        this.cronetEngineBuilderFactory = cronetEngineBuilderFactory;
        this.mediationTraitsMetadataReader = mediationTraitsMetadataReader;
        this.isCronetFallbackAvailable = isCronetFallbackAvailable;
        this.mutex = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object buildNetworkClient(final Context context, final ISDKDispatchers iSDKDispatchers, final HttpClientSelection httpClientSelection, Continuation<? super HttpClient> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        CronetProviderInstaller.installProvider(context).addOnCompleteListener(ExecutorsKt.asExecutor(iSDKDispatchers.getIo()), new OnCompleteListener() { // from class: com.unity3d.ads.core.domain.AndroidHttpClientProvider$buildNetworkClient$2$1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task<Void> it) {
                String message;
                Intrinsics.checkNotNullParameter(it, "it");
                String str = "Errored without message.";
                if (!it.isSuccessful()) {
                    SendDiagnosticEvent sendDiagnosticEvent = this.this$0.sendDiagnosticEvent;
                    Exception exception = it.getException();
                    if (exception != null && (message = exception.getMessage()) != null) {
                        str = message;
                    }
                    SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_cronet_install_error", (Double) null, MapsKt.mapOf(TuplesKt.to("reason", str)), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 250, (Object) null);
                    CancellableContinuation<HttpClient> cancellableContinuation = cancellableContinuationImpl2;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m3022constructorimpl(this.this$0.getOkHttp3Client()));
                    return;
                }
                try {
                    CronetEngine.Builder builderCreateCronetEngineBuilder = this.this$0.cronetEngineBuilderFactory.createCronetEngineBuilder(context);
                    if (httpClientSelection == HttpClientSelection.CRONET_WITH_QUIC) {
                        builderCreateCronetEngineBuilder.enableQuic(true);
                        builderCreateCronetEngineBuilder.addQuicHint(ServiceProvider.GATEWAY_HOST, 443, 443);
                        builderCreateCronetEngineBuilder.addQuicHint(ServiceProvider.CDN_CREATIVES_HOST, 443, 443);
                    }
                    CronetEngine cronetEngineBuild = builderCreateCronetEngineBuilder.build();
                    CancellableContinuation<HttpClient> cancellableContinuation2 = cancellableContinuationImpl2;
                    Result.Companion companion2 = Result.INSTANCE;
                    Intrinsics.checkNotNull(cronetEngineBuild);
                    cancellableContinuation2.resumeWith(Result.m3022constructorimpl(new CronetClient(cronetEngineBuild, iSDKDispatchers)));
                } catch (Throwable th) {
                    SendDiagnosticEvent sendDiagnosticEvent2 = this.this$0.sendDiagnosticEvent;
                    String message2 = th.getMessage();
                    SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent2, "native_cronet_engine_error", (Double) null, MapsKt.mapOf(TuplesKt.to("reason", message2 != null ? message2 : "Errored without message.")), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 250, (Object) null);
                    CancellableContinuation<HttpClient> cancellableContinuation3 = cancellableContinuationImpl2;
                    Result.Companion companion3 = Result.INSTANCE;
                    cancellableContinuation3.resumeWith(Result.m3022constructorimpl(this.this$0.getOkHttp3Client()));
                }
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:25:0x007a  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object createHttpClient(Continuation<? super HttpClient> continuation) throws JSONException {
        AnonymousClass1 anonymousClass1;
        Object objM3022constructorimpl;
        HttpClientSelection httpClientSelection;
        long jLongValue;
        HttpClientSelection httpClientSelection2;
        long j;
        String str;
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
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String stringTrait = this.mediationTraitsMetadataReader.getStringTrait(MediationTraitsMetadataReader.USE_HTTP_CLIENT);
            if (stringTrait != null) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    AndroidHttpClientProvider androidHttpClientProvider = this;
                    String upperCase = stringTrait.toUpperCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                    objM3022constructorimpl = Result.m3022constructorimpl(HttpClientSelection.valueOf(upperCase));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m3028isFailureimpl(objM3022constructorimpl)) {
                    objM3022constructorimpl = null;
                }
                httpClientSelection = (HttpClientSelection) objM3022constructorimpl;
                if (httpClientSelection == null) {
                    httpClientSelection = HttpClientSelection.CRONET_WITHOUT_QUIC;
                }
            } else {
                httpClientSelection = HttpClientSelection.CRONET_WITHOUT_QUIC;
            }
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_cronet_fallback_available", (Double) null, MapsKt.mapOf(TuplesKt.to("available", String.valueOf(this.isCronetFallbackAvailable.invoke()))), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 250, (Object) null);
            Long longTrait = this.mediationTraitsMetadataReader.getLongTrait(MediationTraitsMetadataReader.HTTP_CLIENT_FETCH_TIMEOUT_MS);
            if (longTrait == null) {
                jLongValue = 500;
            } else {
                if (longTrait.longValue() <= 0) {
                    longTrait = null;
                }
                if (longTrait != null) {
                    jLongValue = longTrait.longValue();
                } else {
                    jLongValue = 500;
                }
            }
            long jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
            AndroidHttpClientProvider$createHttpClient$client$1 androidHttpClientProvider$createHttpClient$client$1 = new AndroidHttpClientProvider$createHttpClient$client$1(httpClientSelection, this, null);
            anonymousClass1.L$0 = httpClientSelection;
            anonymousClass1.J$0 = jM4482markNowz9LOYto;
            anonymousClass1.label = 1;
            Object objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(jLongValue, androidHttpClientProvider$createHttpClient$client$1, anonymousClass1);
            if (objWithTimeoutOrNull == coroutine_suspended) {
                return coroutine_suspended;
            }
            httpClientSelection2 = httpClientSelection;
            obj = objWithTimeoutOrNull;
            j = jM4482markNowz9LOYto;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = anonymousClass1.J$0;
            httpClientSelection2 = (HttpClientSelection) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
        }
        HttpClient httpClient = (HttpClient) obj;
        double dM4403toDoubleimpl = Duration.m4403toDoubleimpl(TimeSource.Monotonic.ValueTimeMark.m4487elapsedNowUwyO8pc(j), DurationUnit.MILLISECONDS);
        if (StringsKt.contains$default((CharSequence) httpClientSelection2.name(), (CharSequence) "CRONET", false, 2, (Object) null)) {
            if (httpClient == null) {
                str = "native_cronet_timeout";
            } else {
                str = httpClient instanceof CronetClient ? "native_cronet_success_time" : "native_cronet_failure_time";
            }
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, str, Boxing.boxDouble(dM4403toDoubleimpl), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 252, (Object) null);
        }
        return httpClient == null ? getOkHttp3Client() : httpClient;
    }

    public final OkHttp3Client getOkHttp3Client() {
        return new OkHttp3Client(this.dispatchers, new OkHttpClient());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.domain.HttpClientProvider
    public Object invoke(Continuation<? super HttpClient> continuation) throws Throwable {
        C40171 c40171;
        Mutex mutex;
        Mutex mutex2;
        Throwable th;
        if (continuation instanceof C40171) {
            c40171 = (C40171) continuation;
            if ((c40171.label & Integer.MIN_VALUE) != 0) {
                c40171.label -= Integer.MIN_VALUE;
            } else {
                c40171 = new C40171(continuation);
            }
        } else {
            c40171 = new C40171(continuation);
        }
        Object obj = c40171.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c40171.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                mutex = this.mutex;
                c40171.L$0 = mutex;
                c40171.label = 1;
                if (mutex.lock(null, c40171) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) c40171.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    HttpClient httpClient = (HttpClient) obj;
                    this.cachedClient = httpClient;
                    mutex2.unlock(null);
                    return httpClient;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = (Mutex) c40171.L$0;
            ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            HttpClient httpClient2 = this.cachedClient;
            if (httpClient2 != null) {
                mutex.unlock(null);
                return httpClient2;
            }
            c40171.L$0 = mutex;
            c40171.label = 2;
            Object objCreateHttpClient = createHttpClient(c40171);
            if (objCreateHttpClient != coroutine_suspended) {
                mutex2 = mutex;
                obj = objCreateHttpClient;
                HttpClient httpClient3 = (HttpClient) obj;
                this.cachedClient = httpClient3;
                mutex2.unlock(null);
                return httpClient3;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            mutex2 = mutex;
            th = th3;
            mutex2.unlock(null);
            throw th;
        }
    }
}
