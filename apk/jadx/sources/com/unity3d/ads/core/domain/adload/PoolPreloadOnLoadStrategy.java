package com.unity3d.ads.core.domain.adload;

import com.ironsource.Hd;
import com.ironsource.Ue;
import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.adplayer.webviewpool.PoolEntry;
import com.unity3d.ads.adplayer.webviewpool.PooledWebViewContainerFactory;
import com.unity3d.ads.adplayer.webviewpool.WebViewPool;
import com.unity3d.ads.core.data.model.AdObject;
import gatewayprotocol.v1.AdResponseOuterClass;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PoolPreloadOnLoadStrategy.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJR\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\"\u0010\u0014\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0015H\u0096@¢\u0006\u0002\u0010\u001aJ\u001e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\rH\u0096@¢\u0006\u0002\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;", "Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;", "pool", "Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;", "poolSize", "", "containerFactory", "Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;", "<init>", "(Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;ILcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;)V", Hd.f, "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "url", "", Ue.n, "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;", "adScope", "Lkotlinx/coroutines/CoroutineScope;", "loadWebView", "Lkotlin/Function2;", "Lcom/unity3d/ads/adplayer/WebViewContainer;", "Lkotlin/coroutines/Continuation;", "Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;", "", "(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acquireForShow", "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;", "adPlayerScope", "(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PoolPreloadOnLoadStrategy extends PoolAcquireAtShowStrategy {

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$acquireForShow$1, reason: invalid class name */
    /* JADX INFO: compiled from: PoolPreloadOnLoadStrategy.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy", f = "PoolPreloadOnLoadStrategy.kt", i = {0, 0, 1, 1}, l = {45, 46}, m = "acquireForShow", n = {"adPlayerScope", "adObject", "adPlayerScope", "adObject"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
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
            return PoolPreloadOnLoadStrategy.this.acquireForShow(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$onLoadSuccess$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PoolPreloadOnLoadStrategy.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy", f = "PoolPreloadOnLoadStrategy.kt", i = {0, 0, 0, 1, 1, 1}, l = {29, 31}, m = Hd.f, n = {"adObject", "adScope", "loadWebView", "adObject", "adScope", "loadWebView"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2"})
    static final class C40311 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C40311(Continuation<? super C40311> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PoolPreloadOnLoadStrategy.this.onLoadSuccess(null, null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$onLoadSuccess$2, reason: invalid class name */
    /* JADX INFO: compiled from: PoolPreloadOnLoadStrategy.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$onLoadSuccess$2", f = "PoolPreloadOnLoadStrategy.kt", i = {}, l = {35, 39, 40}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AndroidWebViewContainer $container;
        final /* synthetic */ PoolEntry $freshEntry;
        final /* synthetic */ Function2<WebViewContainer, Continuation<? super PreloadedWebView>, Object> $loadWebView;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(PoolEntry poolEntry, Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function2, AndroidWebViewContainer androidWebViewContainer, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$freshEntry = poolEntry;
            this.$loadWebView = function2;
            this.$container = androidWebViewContainer;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = PoolPreloadOnLoadStrategy.this.new AnonymousClass2(this.$freshEntry, this.$loadWebView, this.$container, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:31:0x006a  */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x007b, code lost:
        
            if (r6.this$0.getPool().enqueueRecycled(r6.$freshEntry, r6) == r0) goto L33;
         */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L25
                if (r1 == r4) goto L21
                if (r1 == r3) goto L1d
                if (r1 != r2) goto L15
                p005kotlin.ResultKt.throwOnFailure(r7)
                goto L7e
            L15:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1d:
                p005kotlin.ResultKt.throwOnFailure(r7)
                goto L6a
            L21:
                p005kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L42
                goto L3b
            L25:
                p005kotlin.ResultKt.throwOnFailure(r7)
                java.lang.Object r7 = r6.L$0
                kotlinx.coroutines.CoroutineScope r7 = (kotlinx.coroutines.CoroutineScope) r7
                kotlin.jvm.functions.Function2<com.unity3d.ads.adplayer.WebViewContainer, kotlin.coroutines.Continuation<? super com.unity3d.ads.core.domain.adload.PreloadedWebView>, java.lang.Object> r7 = r6.$loadWebView
                com.unity3d.ads.adplayer.AndroidWebViewContainer r1 = r6.$container
                kotlin.Result$Companion r5 = p005kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L42
                r6.label = r4     // Catch: java.lang.Throwable -> L42
                java.lang.Object r7 = r7.invoke(r1, r6)     // Catch: java.lang.Throwable -> L42
                if (r7 != r0) goto L3b
                goto L7d
            L3b:
                com.unity3d.ads.core.domain.adload.PreloadedWebView r7 = (com.unity3d.ads.core.domain.adload.PreloadedWebView) r7     // Catch: java.lang.Throwable -> L42
                java.lang.Object r7 = p005kotlin.Result.m3022constructorimpl(r7)     // Catch: java.lang.Throwable -> L42
                goto L4d
            L42:
                r7 = move-exception
                kotlin.Result$Companion r1 = p005kotlin.Result.INSTANCE
                java.lang.Object r7 = p005kotlin.ResultKt.createFailure(r7)
                java.lang.Object r7 = p005kotlin.Result.m3022constructorimpl(r7)
            L4d:
                boolean r1 = p005kotlin.Result.m3028isFailureimpl(r7)
                if (r1 == 0) goto L54
                r7 = 0
            L54:
                com.unity3d.ads.core.domain.adload.PreloadedWebView r7 = (com.unity3d.ads.core.domain.adload.PreloadedWebView) r7
                if (r7 == 0) goto L6a
                com.unity3d.ads.adplayer.AdPlayer r7 = r7.getAdPlayer()
                if (r7 == 0) goto L6a
                r1 = r6
                kotlin.coroutines.Continuation r1 = (p005kotlin.coroutines.Continuation) r1
                r6.label = r3
                java.lang.Object r7 = r7.destroy(r1)
                if (r7 != r0) goto L6a
                goto L7d
            L6a:
                com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy r7 = com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy.this
                com.unity3d.ads.adplayer.webviewpool.WebViewPool r7 = r7.getPool()
                com.unity3d.ads.adplayer.webviewpool.PoolEntry r1 = r6.$freshEntry
                r3 = r6
                kotlin.coroutines.Continuation r3 = (p005kotlin.coroutines.Continuation) r3
                r6.label = r2
                java.lang.Object r7 = r7.enqueueRecycled(r1, r3)
                if (r7 != r0) goto L7e
            L7d:
                return r0
            L7e:
                kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PoolPreloadOnLoadStrategy(WebViewPool pool, int i, PooledWebViewContainerFactory containerFactory) {
        super(pool, i, containerFactory);
        Intrinsics.checkNotNullParameter(pool, "pool");
        Intrinsics.checkNotNullParameter(containerFactory, "containerFactory");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy, com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object acquireForShow(CoroutineScope coroutineScope, AdObject adObject, Continuation<? super WebViewContainerResult> continuation) {
        AnonymousClass1 anonymousClass1;
        CoroutineScope coroutineScope2;
        AdObject adObject2;
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
        Object objAcquireForShow = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objAcquireForShow);
            WebViewPool pool = getPool();
            anonymousClass1.L$0 = coroutineScope;
            anonymousClass1.L$1 = adObject;
            anonymousClass1.label = 1;
            objAcquireForShow = pool.acquireForShow(anonymousClass1);
            if (objAcquireForShow != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            adObject = (AdObject) anonymousClass1.L$1;
            coroutineScope = (CoroutineScope) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objAcquireForShow);
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            adObject2 = (AdObject) anonymousClass1.L$1;
            coroutineScope2 = (CoroutineScope) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objAcquireForShow);
        }
        PoolEntry poolEntry = (PoolEntry) objAcquireForShow;
        getClaimedEntries().put(adObject2.getOpportunityId(), poolEntry);
        return new WebViewContainerResult.FromPool(getContainerFactory().create(poolEntry, coroutineScope2, adObject2));
        WebViewPool pool2 = getPool();
        anonymousClass1.L$0 = coroutineScope;
        anonymousClass1.L$1 = adObject;
        anonymousClass1.label = 2;
        objAcquireForShow = pool2.resetEntry((PoolEntry) objAcquireForShow, anonymousClass1);
        if (objAcquireForShow != coroutine_suspended) {
            AdObject adObject3 = adObject;
            coroutineScope2 = coroutineScope;
            adObject2 = adObject3;
            PoolEntry poolEntry2 = (PoolEntry) objAcquireForShow;
            getClaimedEntries().put(adObject2.getOpportunityId(), poolEntry2);
            return new WebViewContainerResult.FromPool(getContainerFactory().create(poolEntry2, coroutineScope2, adObject2));
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x008a  */
    /* JADX WARN: Code duplicated, block: B:28:0x008d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    @Override // com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy, com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onLoadSuccess(AdObject adObject, String str, AdResponseOuterClass.AdResponse adResponse, CoroutineScope coroutineScope, Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        C40311 c40311;
        AdObject adObject2;
        CoroutineScope coroutineScope2;
        Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function3;
        CoroutineScope coroutineScope3;
        AdObject adObject3;
        Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function4;
        PoolEntry poolEntry;
        if (continuation instanceof C40311) {
            c40311 = (C40311) continuation;
            if ((c40311.label & Integer.MIN_VALUE) != 0) {
                c40311.label -= Integer.MIN_VALUE;
            } else {
                c40311 = new C40311(continuation);
            }
        } else {
            c40311 = new C40311(continuation);
        }
        Object objAcquireFreshEntry = c40311.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c40311.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objAcquireFreshEntry);
            WebViewPool pool = getPool();
            int poolSize = getPoolSize();
            c40311.L$0 = adObject;
            c40311.L$1 = coroutineScope;
            c40311.L$2 = function2;
            c40311.label = 1;
            if (pool.initialize(poolSize, c40311) != coroutine_suspended) {
                adObject2 = adObject;
                coroutineScope2 = coroutineScope;
                function3 = function2;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function5 = (Function2) c40311.L$2;
            coroutineScope2 = (CoroutineScope) c40311.L$1;
            adObject2 = (AdObject) c40311.L$0;
            ResultKt.throwOnFailure(objAcquireFreshEntry);
            function3 = function5;
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            function4 = (Function2) c40311.L$2;
            coroutineScope3 = (CoroutineScope) c40311.L$1;
            adObject3 = (AdObject) c40311.L$0;
            ResultKt.throwOnFailure(objAcquireFreshEntry);
        }
        poolEntry = (PoolEntry) objAcquireFreshEntry;
        if (poolEntry == null) {
            return Unit.INSTANCE;
        }
        BuildersKt__Builders_commonKt.launch$default(coroutineScope3, null, null, new AnonymousClass2(poolEntry, function4, getContainerFactory().create(poolEntry, coroutineScope3, adObject3), null), 3, null);
        return Unit.INSTANCE;
        WebViewPool pool2 = getPool();
        c40311.L$0 = adObject2;
        c40311.L$1 = coroutineScope2;
        c40311.L$2 = function3;
        c40311.label = 2;
        objAcquireFreshEntry = pool2.acquireFreshEntry(c40311);
        if (objAcquireFreshEntry != coroutine_suspended) {
            coroutineScope3 = coroutineScope2;
            adObject3 = adObject2;
            function4 = function3;
            poolEntry = (PoolEntry) objAcquireFreshEntry;
            if (poolEntry == null) {
                return Unit.INSTANCE;
            }
            BuildersKt__Builders_commonKt.launch$default(coroutineScope3, null, null, new AnonymousClass2(poolEntry, function4, getContainerFactory().create(poolEntry, coroutineScope3, adObject3), null), 3, null);
            return Unit.INSTANCE;
        }
        return coroutine_suspended;
    }
}
