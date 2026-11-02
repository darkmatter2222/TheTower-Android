package kotlin;

import java.util.List;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class xk2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ al2 b;
    public final /* synthetic */ List c;
    public final /* synthetic */ ec3 d;
    public final /* synthetic */ i2 e;
    public final /* synthetic */ int f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xk2(al2 al2Var, List list, ec3 ec3Var, i2 i2Var, int i, String str, Continuation continuation) {
        super(2, continuation);
        this.b = al2Var;
        this.c = list;
        this.d = ec3Var;
        this.e = i2Var;
        this.f = i;
        this.g = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new xk2(this.b, this.c, this.d, this.e, this.f, this.g, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((xk2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            du1 du1Var = this.b.h;
            List list = this.c;
            ec3 ec3Var = this.d;
            i2 i2Var = this.e;
            Integer numBoxInt = Boxing.boxInt(this.f);
            String str = this.g;
            Duration durationM4365boximpl = Duration.m4365boximpl(Duration.INSTANCE.m4458getZEROUwyO8pc());
            this.a = 1;
            objA = du1Var.a(list, ec3Var, i2Var, (4080 & 8) != 0 ? null : numBoxInt, (4080 & 16) != 0 ? null : str, (4080 & 32) != 0 ? null : durationM4365boximpl, (4080 & 64) != 0 ? "" : null, (4080 & 128) != 0 ? null : null, (4080 & 256) != 0 ? null : null, (4080 & 512) != 0 ? null : null, (4080 & 1024) != 0 ? null : null, (4080 & 2048) != 0 ? null : null, this);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
            objA = obj;
        }
        List list2 = (List) objA;
        i2 i2Var2 = this.e;
        if (i2Var2 != null) {
            c63.a(this.b.i, list2, i2Var2, this.d.b.b, null, null, 56);
        } else {
            this.b.i.a(list2);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
