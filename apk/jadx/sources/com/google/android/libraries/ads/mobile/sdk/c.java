package com.google.android.libraries.ads.mobile.sdk;

import java.util.List;
import java.util.Set;
import kotlin.a01;
import kotlin.hf;
import kotlin.vf0;
import kotlin.zz0;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.collections.SetsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final class c extends SuspendLambda implements Function2 {
    public int a;

    public c(Continuation continuation) {
        super(2, continuation);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new c(continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new c((Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        a01.a.getClass();
        hf hfVar = (hf) ((vf0) zz0.a()).f1.get();
        this.a = 1;
        List list = hf.A;
        Set setEmptySet = SetsKt.emptySet();
        hfVar.getClass();
        Object objA = hf.a(hfVar, setEmptySet, this);
        return objA == coroutine_suspended ? coroutine_suspended : objA;
    }
}
