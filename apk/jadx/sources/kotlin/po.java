package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class po extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ cz2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public po(cz2 cz2Var, Continuation continuation) {
        super(2, continuation);
        this.b = cz2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        po poVar = new po(this.b, continuation);
        poVar.a = obj;
        return poVar;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        po poVar = new po(this.b, (Continuation) obj2);
        poVar.a = (ck1) obj;
        return poVar.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        return new k33((ck1) this.a, this.b.a().c(), this.b.a());
    }
}
