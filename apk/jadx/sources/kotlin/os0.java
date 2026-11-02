package kotlin;

import android.os.Bundle;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class os0 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ qs0 b;
    public final /* synthetic */ is0 c;
    public final /* synthetic */ Bundle d;
    public final /* synthetic */ String e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public os0(qs0 qs0Var, is0 is0Var, Bundle bundle, String str, Continuation continuation) {
        super(2, continuation);
        this.b = qs0Var;
        this.c = is0Var;
        this.d = bundle;
        this.e = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new os0(this.b, this.c, this.d, this.e, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((os0) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ls0 ls0Var = this.b.a;
            is0 is0Var = this.c;
            Bundle bundle = this.d;
            String str = this.e;
            this.a = 1;
            ls0Var.getClass();
            if (ls0.a(ls0Var, is0Var, bundle, str) == coroutine_suspended) {
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
