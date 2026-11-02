package kotlin;

import android.view.GestureDetector;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class cn3 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ dn3 b;
    public final /* synthetic */ h41 c;
    public final /* synthetic */ om3 d;
    public final /* synthetic */ zn1 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cn3(dn3 dn3Var, h41 h41Var, om3 om3Var, zn1 zn1Var, Continuation continuation) {
        super(2, continuation);
        this.b = dn3Var;
        this.c = h41Var;
        this.d = om3Var;
        this.e = zn1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new cn3(this.b, this.c, this.d, this.e, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((cn3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [T, android.view.GestureDetector] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            dn3 dn3Var = this.b;
            h41 h41Var = this.c;
            i2 i2Var = dn3Var.f;
            tk0 tk0Var = (tk0) ((xi0) this.d).e0.get();
            this.a = 1;
            dn3Var.getClass();
            if (at0.a(dn3Var, h41Var, i2Var, tk0Var, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        rm3 rm3Var = this.e.p;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (((rv0) rm3Var).e.getCustomClickSwipeGestureDirection() != null) {
            objectRef.element = new GestureDetector(this.c.getContext(), new fn3(rm3Var));
        }
        this.c.c = new bn3(objectRef, rm3Var);
        return p005kotlin.Unit.INSTANCE;
    }
}
