package com.unity3d.ads.core.domain.adload;

import com.google.protobuf.ByteString;
import com.ironsource.Hd;
import com.ironsource.Ue;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.fh;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.TimeMark;

/* JADX INFO: compiled from: EagerPreloadOnLoadStrategy.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJR\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\"\u0010\u0019\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u001b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001aH\u0096@¢\u0006\u0002\u0010\u001fJ\u001e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u0012H\u0096@¢\u0006\u0002\u0010#J\u0016\u0010$\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0096@¢\u0006\u0002\u0010%J\u0016\u0010&\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0096@¢\u0006\u0002\u0010%J4\u0010'\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00142\u0006\u0010+\u001a\u00020\u00142\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;", "Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;", "getWebViewContainer", "Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "<init>", "(Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;)V", "deferreds", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/google/protobuf/ByteString;", "Lkotlinx/coroutines/CompletableDeferred;", "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;", Hd.f, "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "url", "", Ue.n, "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;", "adScope", "Lkotlinx/coroutines/CoroutineScope;", "loadWebView", "Lkotlin/Function2;", "Lcom/unity3d/ads/adplayer/WebViewContainer;", "Lkotlin/coroutines/Continuation;", "Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;", "", "(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acquireForShow", "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;", "adPlayerScope", "(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onShowComplete", "(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onAdExpired", "reportPreloadFailure", "startMark", "Lkotlin/time/TimeMark;", "reason", "debug", "cause", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EagerPreloadOnLoadStrategy implements PreShowWebViewStrategy {
    private final ConcurrentHashMap<ByteString, CompletableDeferred<WebViewContainerResult.FullyPreloaded>> deferreds;
    private final AndroidGetWebViewContainerUseCase getWebViewContainer;
    private final Logger logger;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$acquireForShow$1, reason: invalid class name */
    /* JADX INFO: compiled from: EagerPreloadOnLoadStrategy.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy", f = "EagerPreloadOnLoadStrategy.kt", i = {1, 1, 1}, l = {fh.h1, 109, 117}, m = "acquireForShow", n = {"adPlayerScope", "adObject", "deferred"}, s = {"L$0", "L$1", "L$2"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EagerPreloadOnLoadStrategy.this.acquireForShow(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onLoadSuccess$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: EagerPreloadOnLoadStrategy.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy", f = "EagerPreloadOnLoadStrategy.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2}, l = {59, 73, 79, 89}, m = Hd.f, n = {"adObject", "loadWebView", "deferred", "startMark", "adObject", "deferred", "container", "startMark", "adObject", "t", "startMark"}, s = {"L$0", "L$1", "L$2", "J$0", "L$0", "L$1", "L$2", "J$0", "L$0", "L$1", "J$0"})
    static final class C40291 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C40291(Continuation<? super C40291> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EagerPreloadOnLoadStrategy.this.onLoadSuccess(null, null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onLoadSuccess$4, reason: invalid class name */
    /* JADX INFO: compiled from: EagerPreloadOnLoadStrategy.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onLoadSuccess$4", f = "EagerPreloadOnLoadStrategy.kt", i = {}, l = {89}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AndroidWebViewContainer $container;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(AndroidWebViewContainer androidWebViewContainer, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$container = androidWebViewContainer;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass4(this.$container, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (this.$container.destroy(this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onShowComplete$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: EagerPreloadOnLoadStrategy.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy", f = "EagerPreloadOnLoadStrategy.kt", i = {}, l = {124, 124}, m = "onShowComplete", n = {}, s = {})
    static final class C40301 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C40301(Continuation<? super C40301> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EagerPreloadOnLoadStrategy.this.onShowComplete(null, this);
        }
    }

    public EagerPreloadOnLoadStrategy(AndroidGetWebViewContainerUseCase getWebViewContainer, SendDiagnosticEvent sendDiagnosticEvent, Logger logger) {
        Intrinsics.checkNotNullParameter(getWebViewContainer, "getWebViewContainer");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.getWebViewContainer = getWebViewContainer;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.logger = logger;
        this.deferreds = new ConcurrentHashMap<>();
    }

    private final void reportPreloadFailure(AdObject adObject, TimeMark startMark, String reason, String debug, Throwable cause) {
        this.logger.error("Eager WebView preload failed (" + reason + "): " + debug, cause);
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_eager_preshow_preload_failure_time", Double.valueOf(TimeExtensionsKt.elapsedMillis(startMark)), MapsKt.mapOf(TuplesKt.to("reason", reason), TuplesKt.to("reason_debug", debug)), (Map) null, adObject, (Integer) null, (ByteString) null, (MediationInfo) null, 232, (Object) null);
    }

    static /* synthetic */ void reportPreloadFailure$default(EagerPreloadOnLoadStrategy eagerPreloadOnLoadStrategy, AdObject adObject, TimeMark timeMark, String str, String str2, Throwable th, int i, Object obj) {
        if ((i & 16) != 0) {
            th = null;
        }
        eagerPreloadOnLoadStrategy.reportPreloadFailure(adObject, timeMark, str, str2, th);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x008e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0091  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0069, code lost:
    
        if (r11 == r1) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x009f, code lost:
    
        if (r11 == r1) goto L40;
     */
    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object acquireForShow(kotlinx.coroutines.CoroutineScope r9, com.unity3d.ads.core.data.model.AdObject r10, p005kotlin.coroutines.Continuation<? super com.unity3d.ads.core.domain.adload.WebViewContainerResult> r11) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r11 instanceof com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r11
            com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$acquireForShow$1 r0 = (com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$acquireForShow$1 r0 = new com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$acquireForShow$1
            r0.<init>(r11)
        L19:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L50
            if (r2 == r5) goto L4c
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L32
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto La2
        L32:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3a:
            java.lang.Object r9 = r0.L$2
            kotlinx.coroutines.CompletableDeferred r9 = (kotlinx.coroutines.CompletableDeferred) r9
            java.lang.Object r10 = r0.L$1
            com.unity3d.ads.core.data.model.AdObject r10 = (com.unity3d.ads.core.data.model.AdObject) r10
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.CoroutineScope r2 = (kotlinx.coroutines.CoroutineScope) r2
            p005kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L4a
            goto L87
        L4a:
            r10 = move-exception
            goto Lae
        L4c:
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto L6c
        L50:
            p005kotlin.ResultKt.throwOnFailure(r11)
            java.util.concurrent.ConcurrentHashMap<com.google.protobuf.ByteString, kotlinx.coroutines.CompletableDeferred<com.unity3d.ads.core.domain.adload.WebViewContainerResult$FullyPreloaded>> r11 = r8.deferreds
            com.google.protobuf.ByteString r2 = r10.getOpportunityId()
            java.lang.Object r11 = r11.remove(r2)
            kotlinx.coroutines.CompletableDeferred r11 = (kotlinx.coroutines.CompletableDeferred) r11
            if (r11 != 0) goto L74
            com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase r11 = r8.getWebViewContainer
            r0.label = r5
            java.lang.Object r11 = r11.invoke(r9, r10, r0)
            if (r11 != r1) goto L6c
            goto La1
        L6c:
            com.unity3d.ads.adplayer.AndroidWebViewContainer r11 = (com.unity3d.ads.adplayer.AndroidWebViewContainer) r11
            com.unity3d.ads.core.domain.adload.WebViewContainerResult$OnDemand r9 = new com.unity3d.ads.core.domain.adload.WebViewContainerResult$OnDemand
            r9.<init>(r11)
            return r9
        L74:
            r0.L$0 = r9     // Catch: java.lang.Throwable -> Lac
            r0.L$1 = r10     // Catch: java.lang.Throwable -> Lac
            r0.L$2 = r11     // Catch: java.lang.Throwable -> Lac
            r0.label = r4     // Catch: java.lang.Throwable -> Lac
            java.lang.Object r2 = r11.await(r0)     // Catch: java.lang.Throwable -> Lac
            if (r2 != r1) goto L83
            goto La1
        L83:
            r7 = r2
            r2 = r9
            r9 = r11
            r11 = r7
        L87:
            com.unity3d.ads.core.domain.adload.WebViewContainerResult$FullyPreloaded r11 = (com.unity3d.ads.core.domain.adload.WebViewContainerResult.FullyPreloaded) r11     // Catch: java.lang.Throwable -> L4a
            r9.complete(r6)
            if (r11 == 0) goto L91
            com.unity3d.ads.core.domain.adload.WebViewContainerResult r11 = (com.unity3d.ads.core.domain.adload.WebViewContainerResult) r11
            return r11
        L91:
            com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase r9 = r8.getWebViewContainer
            r0.L$0 = r6
            r0.L$1 = r6
            r0.L$2 = r6
            r0.label = r3
            java.lang.Object r11 = r9.invoke(r2, r10, r0)
            if (r11 != r1) goto La2
        La1:
            return r1
        La2:
            com.unity3d.ads.adplayer.AndroidWebViewContainer r11 = (com.unity3d.ads.adplayer.AndroidWebViewContainer) r11
            com.unity3d.ads.core.domain.adload.WebViewContainerResult$OnDemand r9 = new com.unity3d.ads.core.domain.adload.WebViewContainerResult$OnDemand
            r9.<init>(r11)
            com.unity3d.ads.core.domain.adload.WebViewContainerResult r9 = (com.unity3d.ads.core.domain.adload.WebViewContainerResult) r9
            return r9
        Lac:
            r10 = move-exception
            r9 = r11
        Lae:
            r9.complete(r6)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.acquireForShow(kotlinx.coroutines.CoroutineScope, com.unity3d.ads.core.data.model.AdObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onAdExpired(AdObject adObject, Continuation<? super Unit> continuation) {
        Object objOnShowComplete = onShowComplete(adObject, continuation);
        return objOnShowComplete == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objOnShowComplete : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:54:0x0109  */
    /* JADX WARN: Code duplicated, block: B:56:0x010b  */
    /* JADX WARN: Code duplicated, block: B:60:0x0129  */
    /* JADX WARN: Code duplicated, block: B:68:0x014b  */
    /* JADX WARN: Code duplicated, block: B:71:0x016a  */
    /* JADX WARN: Code duplicated, block: B:74:0x0171  */
    /* JADX WARN: Code duplicated, block: B:76:0x017b  */
    /* JADX WARN: Code duplicated, block: B:79:0x0193  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:81:0x0195  */
    /* JADX WARN: Code duplicated, block: B:83:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:88:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:90:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:91:0x020a  */
    /* JADX WARN: Code duplicated, block: B:93:0x0216  */
    /* JADX WARN: Code duplicated, block: B:96:0x0238  */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01c8, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r0, r1, r3) == r4) goto L85;
     */
    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object onLoadSuccess(com.unity3d.ads.core.data.model.AdObject r25, java.lang.String r26, gatewayprotocol.v1.AdResponseOuterClass.AdResponse r27, kotlinx.coroutines.CoroutineScope r28, p005kotlin.jvm.functions.Function2<? super com.unity3d.ads.adplayer.WebViewContainer, ? super p005kotlin.coroutines.Continuation<? super com.unity3d.ads.core.domain.adload.PreloadedWebView>, ? extends java.lang.Object> r29, p005kotlin.coroutines.Continuation<? super p005kotlin.Unit> r30) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.onLoadSuccess(com.unity3d.ads.core.data.model.AdObject, java.lang.String, gatewayprotocol.v1.AdResponseOuterClass$AdResponse, kotlinx.coroutines.CoroutineScope, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006d, code lost:
    
        if (r6.destroy(r0) == r1) goto L31;
     */
    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object onShowComplete(com.unity3d.ads.core.data.model.AdObject r6, p005kotlin.coroutines.Continuation<? super p005kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.C40301
            if (r0 == 0) goto L14
            r0 = r7
            com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onShowComplete$1 r0 = (com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.C40301) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onShowComplete$1 r0 = new com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onShowComplete$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L70
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L5d
        L39:
            p005kotlin.ResultKt.throwOnFailure(r7)
            java.util.concurrent.ConcurrentHashMap<com.google.protobuf.ByteString, kotlinx.coroutines.CompletableDeferred<com.unity3d.ads.core.domain.adload.WebViewContainerResult$FullyPreloaded>> r7 = r5.deferreds
            com.google.protobuf.ByteString r6 = r6.getOpportunityId()
            java.lang.Object r6 = r7.remove(r6)
            kotlinx.coroutines.CompletableDeferred r6 = (kotlinx.coroutines.CompletableDeferred) r6
            if (r6 != 0) goto L4d
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        L4d:
            r7 = 0
            boolean r7 = r6.complete(r7)
            if (r7 != 0) goto L73
            r0.label = r4
            java.lang.Object r7 = r6.await(r0)
            if (r7 != r1) goto L5d
            goto L6f
        L5d:
            com.unity3d.ads.core.domain.adload.WebViewContainerResult$FullyPreloaded r7 = (com.unity3d.ads.core.domain.adload.WebViewContainerResult.FullyPreloaded) r7
            if (r7 == 0) goto L73
            com.unity3d.ads.adplayer.AndroidWebViewContainer r6 = r7.getContainer()
            if (r6 == 0) goto L73
            r0.label = r3
            java.lang.Object r6 = r6.destroy(r0)
            if (r6 != r1) goto L70
        L6f:
            return r1
        L70:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        L73:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.onShowComplete(com.unity3d.ads.core.data.model.AdObject, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
