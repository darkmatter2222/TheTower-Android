package kotlin;

import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class gw2 extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ CoroutineScope b;
    public final /* synthetic */ Function0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gw2(CoroutineScope coroutineScope, Function0 function0, Continuation continuation) {
        super(1, continuation);
        this.b = coroutineScope;
        this.c = function0;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new gw2(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new gw2(this.b, this.c, (Continuation) obj).invokeSuspend(p005kotlin.Unit.INSTANCE);
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
        Deferred deferredAsync$default = BuildersKt__Builders_commonKt.async$default(this.b, null, null, new fw2(this.c, null), 3, null);
        this.a = 1;
        Object objAwait = deferredAsync$default.await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
