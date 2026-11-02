package kotlin;

import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;
import org.chromium.net.CronetEngine;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class h70 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ long b;
    public final /* synthetic */ k70 c;
    public final /* synthetic */ f81 d;
    public final /* synthetic */ CronetEngine e;
    public final /* synthetic */ boolean f;
    public final /* synthetic */ boolean g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h70(long j, k70 k70Var, f81 f81Var, CronetEngine cronetEngine, boolean z, boolean z2, Continuation continuation) {
        super(2, continuation);
        this.b = j;
        this.c = k70Var;
        this.d = f81Var;
        this.e = cronetEngine;
        this.f = z;
        this.g = z2;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new h70(this.b, this.c, this.d, this.e, this.f, this.g, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((h70) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
            return obj;
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        long j = this.b;
        g70 g70Var = new g70(this.c, this.d, this.e, this.f, this.g, null);
        this.a = 1;
        Object objWithTimeout = TimeoutKt.withTimeout(j, g70Var, this);
        return objWithTimeout == coroutine_suspended ? coroutine_suspended : objWithTimeout;
    }
}
