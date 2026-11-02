package com.unity3d.ads.core.domain.adload;

import com.ironsource.Hd;
import com.ironsource.Ue;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import gatewayprotocol.v1.AdResponseOuterClass;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: PreShowWebViewStrategy.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b`\u0018\u00002\u00020\u0001JR\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\"\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\rH¦@¢\u0006\u0002\u0010\u0011J\u001e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0005H¦@¢\u0006\u0002\u0010\u0015J\u0016\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H¦@¢\u0006\u0002\u0010\u0017J\u0016\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H¦@¢\u0006\u0002\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;", "", Hd.f, "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "url", "", Ue.n, "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;", "adScope", "Lkotlinx/coroutines/CoroutineScope;", "loadWebView", "Lkotlin/Function2;", "Lcom/unity3d/ads/adplayer/WebViewContainer;", "Lkotlin/coroutines/Continuation;", "Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;", "(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acquireForShow", "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;", "adPlayerScope", "(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onShowComplete", "(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onAdExpired", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface PreShowWebViewStrategy {
    Object acquireForShow(CoroutineScope coroutineScope, AdObject adObject, Continuation<? super WebViewContainerResult> continuation);

    Object onAdExpired(AdObject adObject, Continuation<? super Unit> continuation);

    Object onLoadSuccess(AdObject adObject, String str, AdResponseOuterClass.AdResponse adResponse, CoroutineScope coroutineScope, Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function2, Continuation<? super Unit> continuation);

    Object onShowComplete(AdObject adObject, Continuation<? super Unit> continuation);
}
