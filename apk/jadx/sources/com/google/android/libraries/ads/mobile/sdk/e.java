package com.google.android.libraries.ads.mobile.sdk;

import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig;
import com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener;
import kotlin.a01;
import kotlin.hf;
import kotlin.vf0;
import kotlin.zz0;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public final class e extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ AdapterInitializationConfig b;
    public final /* synthetic */ OnAdapterInitializationCompleteListener c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(AdapterInitializationConfig adapterInitializationConfig, OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener, Continuation continuation) {
        super(1, continuation);
        this.b = adapterInitializationConfig;
        this.c = onAdapterInitializationCompleteListener;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new e(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new e(this.b, this.c, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            a01.a.getClass();
            hf hfVar = (hf) ((vf0) zz0.a()).f1.get();
            AdapterInitializationConfig adapterInitializationConfig = this.b;
            OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener = this.c;
            this.a = 1;
            hfVar.getClass();
            if (hf.a(hfVar, adapterInitializationConfig, onAdapterInitializationCompleteListener, this) == coroutine_suspended) {
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
