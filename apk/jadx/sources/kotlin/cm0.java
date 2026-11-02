package kotlin;

import java.util.List;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class cm0 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ fm0 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cm0(fm0 fm0Var, Continuation continuation) {
        super(2, continuation);
        this.b = fm0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new cm0(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new cm0(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List<p005kotlin.Pair> list;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            fm0 fm0Var = this.b;
            this.a = 1;
            synchronized (fm0Var) {
                list = CollectionsKt.toList(fm0Var.r);
                fm0Var.r.clear();
                fm0Var.s.set(false);
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            }
            for (p005kotlin.Pair pair : list) {
                String str = (String) pair.component1();
                String str2 = (String) pair.component2();
                m21 m21Var = o21.f;
                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(get$context()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.INSTANCE).minusKey(Job.INSTANCE)), null, null, new pl0(null, fm0Var, str, str2), 3, null);
            }
            if (p005kotlin.Unit.INSTANCE == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
