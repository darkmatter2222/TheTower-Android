package com.google.android.libraries.ads.mobile.sdk.banner;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadResult;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends SuspendLambda implements Function2 {
    public final /* synthetic */ AdView a;
    public final /* synthetic */ AdLoadResult b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(AdView adView, AdLoadResult adLoadResult, Continuation continuation) {
        super(2, continuation);
        this.a = adView;
        this.b = adLoadResult;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new b(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new b(this.a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        AdView.a(this.a, (BannerAd) ((AdLoadResult.Success) this.b).getAd());
        return Unit.INSTANCE;
    }
}
