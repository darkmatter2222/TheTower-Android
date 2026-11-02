package com.google.android.libraries.ads.mobile.sdk;

import com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback;
import kotlin.eh3;
import kotlin.ws3;
import kotlin.yg3;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends SuspendLambda implements Function1 {
    public final /* synthetic */ eh3 a;
    public final /* synthetic */ SignalGenerationCallback b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(eh3 eh3Var, SignalGenerationCallback signalGenerationCallback, Continuation continuation) {
        super(1, continuation);
        this.a = eh3Var;
        this.b = signalGenerationCallback;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new b(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new b(this.a, this.b, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        eh3 eh3Var = this.a;
        SignalGenerationCallback signalGenerationCallback = this.b;
        eh3Var.getClass();
        Intrinsics.checkNotNullParameter(signalGenerationCallback, "signalGenerationCallback");
        CoroutineScope coroutineScope = eh3Var.a;
        yg3 block = new yg3(eh3Var, signalGenerationCallback, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return Unit.INSTANCE;
    }
}
