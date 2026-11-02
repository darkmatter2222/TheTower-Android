package com.unity3d.ads.core.domain.adload;

import com.ironsource.Hd;
import com.ironsource.Ue;
import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase;
import gatewayprotocol.v1.AdResponseOuterClass;
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

/* JADX INFO: compiled from: DisabledPreShowStrategy.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005JR\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\"\u0010\u0010\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0011H\u0096@¢\u0006\u0002\u0010\u0016J\u001e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\tH\u0096@¢\u0006\u0002\u0010\u001aJ\u0016\u0010\u001b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0096@¢\u0006\u0002\u0010\u001cJ\u0016\u0010\u001d\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0096@¢\u0006\u0002\u0010\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/unity3d/ads/core/domain/adload/DisabledPreShowStrategy;", "Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;", "getWebViewContainer", "Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;", "<init>", "(Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;)V", Hd.f, "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "url", "", Ue.n, "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;", "adScope", "Lkotlinx/coroutines/CoroutineScope;", "loadWebView", "Lkotlin/Function2;", "Lcom/unity3d/ads/adplayer/WebViewContainer;", "Lkotlin/coroutines/Continuation;", "Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;", "", "(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acquireForShow", "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;", "adPlayerScope", "(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onShowComplete", "(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onAdExpired", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DisabledPreShowStrategy implements PreShowWebViewStrategy {
    private final AndroidGetWebViewContainerUseCase getWebViewContainer;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.DisabledPreShowStrategy$acquireForShow$1, reason: invalid class name */
    /* JADX INFO: compiled from: DisabledPreShowStrategy.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.DisabledPreShowStrategy", f = "DisabledPreShowStrategy.kt", i = {}, l = {18}, m = "acquireForShow", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DisabledPreShowStrategy.this.acquireForShow(null, null, this);
        }
    }

    public DisabledPreShowStrategy(AndroidGetWebViewContainerUseCase getWebViewContainer) {
        Intrinsics.checkNotNullParameter(getWebViewContainer, "getWebViewContainer");
        this.getWebViewContainer = getWebViewContainer;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object acquireForShow(CoroutineScope coroutineScope, AdObject adObject, Continuation<? super WebViewContainerResult> continuation) {
        AnonymousClass1 anonymousClass1;
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
        Object objInvoke = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objInvoke);
            AndroidGetWebViewContainerUseCase androidGetWebViewContainerUseCase = this.getWebViewContainer;
            anonymousClass1.label = 1;
            objInvoke = androidGetWebViewContainerUseCase.invoke(coroutineScope, adObject, anonymousClass1);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objInvoke);
        }
        return new WebViewContainerResult.OnDemand((AndroidWebViewContainer) objInvoke);
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onAdExpired(AdObject adObject, Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onLoadSuccess(AdObject adObject, String str, AdResponseOuterClass.AdResponse adResponse, CoroutineScope coroutineScope, Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onShowComplete(AdObject adObject, Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }
}
