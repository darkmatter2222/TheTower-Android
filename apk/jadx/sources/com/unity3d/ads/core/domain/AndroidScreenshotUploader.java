package com.unity3d.ads.core.domain;

import android.util.Base64;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.RequestType;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidScreenshotUploader.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\b\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ&\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH\u0086B¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;", "", "ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "httpClientProvider", "Lcom/unity3d/ads/core/domain/HttpClientProvider;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/HttpClientProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;)V", "invoke", "", "id", "", "bytes", "", "contentType", "(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidScreenshotUploader {
    public static final String CONTENT_TYPE_HEADER = "Content-Type";
    public static final String SCREENSHOT_PATH = "adviewer/screenshots";
    public static final String SESSION_TOKEN_HEADER = "uads_session_token";
    private static final int UPLOAD_TIMEOUT_MS = 10000;
    private final HttpClientProvider httpClientProvider;
    private final CoroutineDispatcher ioDispatcher;
    private final Logger logger;
    private final SessionRepository sessionRepository;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidScreenshotUploader$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidScreenshotUploader.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidScreenshotUploader$invoke$2", f = "AndroidScreenshotUploader.kt", i = {0}, l = {50, 50}, m = "invokeSuspend", n = {"request"}, s = {"L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Object>, Object> {
        final /* synthetic */ byte[] $bytes;
        final /* synthetic */ String $contentType;
        final /* synthetic */ String $id;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, byte[] bArr, String str2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$id = str;
            this.$bytes = bArr;
            this.$contentType = str2;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidScreenshotUploader.this.new AnonymousClass2(this.$id, this.$bytes, this.$contentType, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Object> continuation) {
            return invoke2(coroutineScope, (Continuation<Object>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<Object> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objInvoke;
            HttpRequest httpRequest;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    HttpRequest httpRequest2 = new HttpRequest(AndroidScreenshotUploader.this.sessionRepository.getGatewayUrl(), "adviewer/screenshots/" + this.$id, RequestType.POST, this.$bytes, MapsKt.mapOf(TuplesKt.to("Content-Type", CollectionsKt.listOf(this.$contentType)), TuplesKt.to("uads_session_token", CollectionsKt.listOf(Base64.encodeToString(AndroidScreenshotUploader.this.sessionRepository.getSessionToken().toByteArray(), 2)))), null, null, this.$contentType, null, null, 10000, 10000, 10000, 0, false, null, null, 0, 254816, null);
                    this.L$0 = httpRequest2;
                    this.label = 1;
                    objInvoke = AndroidScreenshotUploader.this.httpClientProvider.invoke(this);
                    if (objInvoke != coroutine_suspended) {
                        httpRequest = httpRequest2;
                    }
                }
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                HttpRequest httpRequest3 = (HttpRequest) this.L$0;
                ResultKt.throwOnFailure(obj);
                httpRequest = httpRequest3;
                objInvoke = obj;
                this.L$0 = null;
                this.label = 2;
                Object objExecute$default = HttpClient.DefaultImpls.execute$default((HttpClient) objInvoke, httpRequest, false, this, 2, null);
                return objExecute$default == coroutine_suspended ? coroutine_suspended : objExecute$default;
            } catch (Exception e) {
                AndroidScreenshotUploader.this.logger.error("Screenshot upload failed for " + this.$id, e);
                return Unit.INSTANCE;
            }
        }
    }

    public AndroidScreenshotUploader(CoroutineDispatcher ioDispatcher, HttpClientProvider httpClientProvider, SessionRepository sessionRepository, Logger logger) {
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(httpClientProvider, "httpClientProvider");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.ioDispatcher = ioDispatcher;
        this.httpClientProvider = httpClientProvider;
        this.sessionRepository = sessionRepository;
        this.logger = logger;
    }

    public final Object invoke(String str, byte[] bArr, String str2, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.ioDispatcher, new AnonymousClass2(str, bArr, str2, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }
}
