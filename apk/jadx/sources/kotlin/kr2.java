package kotlin;

import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class kr2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ long b;
    public final /* synthetic */ pt2 c;
    public final /* synthetic */ String d;
    public final /* synthetic */ j53 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kr2(long j, pt2 pt2Var, String str, j53 j53Var, Continuation continuation) {
        super(2, continuation);
        this.b = j;
        this.c = pt2Var;
        this.d = str;
        this.e = j53Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new kr2(this.b, this.c, this.d, this.e, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((kr2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            long j = this.b;
            this.a = 1;
            if (DelayKt.m4512delayVtjQ1oo(j, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        this.c.p.a(bu2.HELD_TOO_LONG_AFTER_POLL, this.d, this.e, "Ad held without presentation for longer than the " + Duration.m4407toStringimpl(this.b) + " limit.");
        return p005kotlin.Unit.INSTANCE;
    }
}
