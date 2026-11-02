package kotlin;

import java.util.ListIterator;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class zt2 extends SuspendLambda implements Function2 {
    public Mutex a;
    public yt2 b;
    public au2 c;
    public int d;
    public final /* synthetic */ au2 e;
    public final /* synthetic */ yt2 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zt2(au2 au2Var, yt2 yt2Var, Continuation continuation) {
        super(2, continuation);
        this.e = au2Var;
        this.f = yt2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zt2(this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new zt2(this.e, this.f, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Mutex mutex;
        yt2 yt2Var;
        au2 au2Var;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.d;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            au2 au2Var2 = this.e;
            mutex = au2Var2.b;
            yt2Var = this.f;
            this.a = mutex;
            this.b = yt2Var;
            this.c = au2Var2;
            this.d = 1;
            if (mutex.lock(null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            au2Var = au2Var2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            au2Var = this.c;
            yt2Var = this.b;
            mutex = this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (yt2Var.a.a.d() == st2.ECPM) {
                ListIterator listIterator = au2Var.a.listIterator();
                Intrinsics.checkNotNullExpressionValue(listIterator, "listIterator(...)");
                while (listIterator.hasNext()) {
                    yt2 yt2Var2 = (yt2) listIterator.next();
                    if (yt2Var2.a.a.d() == st2.ECPM) {
                        double dE = yt2Var2.a.a.e();
                        double dE2 = yt2Var.a.a.e();
                        if (dE < dE2 || (dE == dE2 && Duration.m4366compareToLRDsOJo(yt2Var2.b, yt2Var.b) > 0)) {
                            listIterator.set(yt2Var);
                            yt2Var = yt2Var2;
                        }
                    }
                }
            }
            au2Var.a.add(yt2Var);
            return Boxing.boxBoolean(true);
        } finally {
            mutex.unlock(null);
        }
    }
}
