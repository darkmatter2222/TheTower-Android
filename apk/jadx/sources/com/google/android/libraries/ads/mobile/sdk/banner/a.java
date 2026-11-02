package com.google.android.libraries.ads.mobile.sdk.banner;

import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends SuspendLambda implements Function2 {
    public final /* synthetic */ AdView a;
    public final /* synthetic */ BannerAd b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(AdView adView, BannerAd bannerAd, Continuation continuation) {
        super(2, continuation);
        this.a = adView;
        this.b = bannerAd;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new a(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new a(this.a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        AdView.a(this.a, this.b);
        return Unit.INSTANCE;
    }
}
