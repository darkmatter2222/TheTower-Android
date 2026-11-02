package com.unity3d.ads.core.domain.adload;

import com.google.protobuf.ByteString;
import com.ironsource.Hd;
import com.ironsource.Ue;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.adplayer.webviewpool.PoolEntry;
import com.unity3d.ads.adplayer.webviewpool.PooledWebViewContainerFactory;
import com.unity3d.ads.adplayer.webviewpool.WebViewPool;
import com.unity3d.ads.core.data.model.AdObject;
import gatewayprotocol.v1.AdResponseOuterClass;
import java.util.concurrent.ConcurrentHashMap;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PoolAcquireAtShowStrategy.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0010\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJR\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\"\u0010 \u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0#\u0012\u0006\u0012\u0004\u0018\u00010%0!H\u0096@¢\u0006\u0002\u0010&J\u001e\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0096@¢\u0006\u0002\u0010*J\u0016\u0010+\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0096@¢\u0006\u0002\u0010,J\u0016\u0010-\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0096@¢\u0006\u0002\u0010,R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0006\u001a\u00020\u0007X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006."}, d2 = {"Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;", "Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;", "pool", "Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;", "poolSize", "", "containerFactory", "Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;", "<init>", "(Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;ILcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;)V", "getPool", "()Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;", "getPoolSize", "()I", "getContainerFactory", "()Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;", "claimedEntries", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/google/protobuf/ByteString;", "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;", "getClaimedEntries", "()Ljava/util/concurrent/ConcurrentHashMap;", Hd.f, "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "url", "", Ue.n, "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;", "adScope", "Lkotlinx/coroutines/CoroutineScope;", "loadWebView", "Lkotlin/Function2;", "Lcom/unity3d/ads/adplayer/WebViewContainer;", "Lkotlin/coroutines/Continuation;", "Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;", "", "(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acquireForShow", "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;", "adPlayerScope", "(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onShowComplete", "(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onAdExpired", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class PoolAcquireAtShowStrategy implements PreShowWebViewStrategy {
    private final ConcurrentHashMap<ByteString, PoolEntry> claimedEntries;
    private final PooledWebViewContainerFactory containerFactory;
    private final WebViewPool pool;
    private final int poolSize;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy$acquireForShow$1, reason: invalid class name */
    /* JADX INFO: compiled from: PoolAcquireAtShowStrategy.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy", f = "PoolAcquireAtShowStrategy.kt", i = {0, 0, 0}, l = {29}, m = "acquireForShow$suspendImpl", n = {"$this", "adPlayerScope", "adObject"}, s = {"L$0", "L$1", "L$2"})
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
            return PoolAcquireAtShowStrategy.acquireForShow$suspendImpl(PoolAcquireAtShowStrategy.this, null, null, this);
        }
    }

    public PoolAcquireAtShowStrategy(WebViewPool pool, int i, PooledWebViewContainerFactory containerFactory) {
        Intrinsics.checkNotNullParameter(pool, "pool");
        Intrinsics.checkNotNullParameter(containerFactory, "containerFactory");
        this.pool = pool;
        this.poolSize = i;
        this.containerFactory = containerFactory;
        this.claimedEntries = new ConcurrentHashMap<>();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    static /* synthetic */ Object acquireForShow$suspendImpl(PoolAcquireAtShowStrategy poolAcquireAtShowStrategy, CoroutineScope coroutineScope, AdObject adObject, Continuation<? super WebViewContainerResult> continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = poolAcquireAtShowStrategy.new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = poolAcquireAtShowStrategy.new AnonymousClass1(continuation);
        }
        Object objAcquireForShow = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objAcquireForShow);
            WebViewPool webViewPool = poolAcquireAtShowStrategy.pool;
            anonymousClass1.L$0 = poolAcquireAtShowStrategy;
            anonymousClass1.L$1 = coroutineScope;
            anonymousClass1.L$2 = adObject;
            anonymousClass1.label = 1;
            objAcquireForShow = webViewPool.acquireForShow(anonymousClass1);
            if (objAcquireForShow == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            adObject = (AdObject) anonymousClass1.L$2;
            coroutineScope = (CoroutineScope) anonymousClass1.L$1;
            poolAcquireAtShowStrategy = (PoolAcquireAtShowStrategy) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objAcquireForShow);
        }
        PoolEntry poolEntry = (PoolEntry) objAcquireForShow;
        poolAcquireAtShowStrategy.claimedEntries.put(adObject.getOpportunityId(), poolEntry);
        return new WebViewContainerResult.FromPool(poolAcquireAtShowStrategy.containerFactory.create(poolEntry, coroutineScope, adObject));
    }

    static /* synthetic */ Object onAdExpired$suspendImpl(PoolAcquireAtShowStrategy poolAcquireAtShowStrategy, AdObject adObject, Continuation<? super Unit> continuation) {
        Object objOnShowComplete = poolAcquireAtShowStrategy.onShowComplete(adObject, continuation);
        return objOnShowComplete == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objOnShowComplete : Unit.INSTANCE;
    }

    static /* synthetic */ Object onLoadSuccess$suspendImpl(PoolAcquireAtShowStrategy poolAcquireAtShowStrategy, AdObject adObject, String str, AdResponseOuterClass.AdResponse adResponse, CoroutineScope coroutineScope, Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object objInitialize = poolAcquireAtShowStrategy.pool.initialize(poolAcquireAtShowStrategy.poolSize, continuation);
        return objInitialize == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInitialize : Unit.INSTANCE;
    }

    static /* synthetic */ Object onShowComplete$suspendImpl(PoolAcquireAtShowStrategy poolAcquireAtShowStrategy, AdObject adObject, Continuation<? super Unit> continuation) {
        Object objRelease;
        PoolEntry poolEntryRemove = poolAcquireAtShowStrategy.claimedEntries.remove(adObject.getOpportunityId());
        return (poolEntryRemove == null || (objRelease = poolAcquireAtShowStrategy.pool.release(poolEntryRemove, continuation)) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? Unit.INSTANCE : objRelease;
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object acquireForShow(CoroutineScope coroutineScope, AdObject adObject, Continuation<? super WebViewContainerResult> continuation) {
        return acquireForShow$suspendImpl(this, coroutineScope, adObject, continuation);
    }

    protected final ConcurrentHashMap<ByteString, PoolEntry> getClaimedEntries() {
        return this.claimedEntries;
    }

    protected final PooledWebViewContainerFactory getContainerFactory() {
        return this.containerFactory;
    }

    protected final WebViewPool getPool() {
        return this.pool;
    }

    protected final int getPoolSize() {
        return this.poolSize;
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onAdExpired(AdObject adObject, Continuation<? super Unit> continuation) {
        return onAdExpired$suspendImpl(this, adObject, continuation);
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onLoadSuccess(AdObject adObject, String str, AdResponseOuterClass.AdResponse adResponse, CoroutineScope coroutineScope, Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        return onLoadSuccess$suspendImpl(this, adObject, str, adResponse, coroutineScope, function2, continuation);
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onShowComplete(AdObject adObject, Continuation<? super Unit> continuation) {
        return onShowComplete$suspendImpl(this, adObject, continuation);
    }
}
