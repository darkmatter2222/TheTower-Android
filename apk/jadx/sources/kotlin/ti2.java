package kotlin;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.Job;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ti2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ vi2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ti2(vi2 vi2Var, Continuation continuation) {
        super(2, continuation);
        this.a = vi2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ti2(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ti2(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        List list = this.a.g;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("renderingJobs");
            list = null;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Job) it.next()).cancel(new CancellationException("Best possible ad config has been rendered, cancelling inflight renderers."));
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
