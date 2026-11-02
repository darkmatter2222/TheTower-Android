package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.AdObjectState;
import com.unity3d.ads.core.data.model.AdRefreshState;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: AndroidAdRefresh.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/unity3d/ads/core/data/model/AdObjectState;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidAdRefresh$invoke$3$1$1$1", f = "AndroidAdRefresh.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class AndroidAdRefresh$invoke$3$1$1$1 extends SuspendLambda implements Function2<AdObjectState, Continuation<? super Unit>, Object> {
    final /* synthetic */ AdObject $adObject;
    final /* synthetic */ Deferred<Result<Unit>> $refreshTask;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidAdRefresh$invoke$3$1$1$1(Deferred<Result<Unit>> deferred, AdObject adObject, Continuation<? super AndroidAdRefresh$invoke$3$1$1$1> continuation) {
        super(2, continuation);
        this.$refreshTask = deferred;
        this.$adObject = adObject;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AndroidAdRefresh$invoke$3$1$1$1(this.$refreshTask, this.$adObject, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(AdObjectState adObjectState, Continuation<? super Unit> continuation) {
        return ((AndroidAdRefresh$invoke$3$1$1$1) create(adObjectState, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        Job.DefaultImpls.cancel$default((Job) this.$refreshTask, (CancellationException) null, 1, (Object) null);
        AdObject.WebViewLessLoadingRequiredData webViewLessLoadingRequiredData = this.$adObject.getWebViewLessLoadingRequiredData();
        if (webViewLessLoadingRequiredData != null) {
            webViewLessLoadingRequiredData.setAdRefreshState(AdRefreshState.REUSE_DURING_RELOAD);
        }
        return Unit.INSTANCE;
    }
}
