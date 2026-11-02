package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ic0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ r31 a;
    public final /* synthetic */ boolean b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ic0(r31 r31Var, boolean z, Continuation continuation) {
        super(2, continuation);
        this.a = r31Var;
        this.b = z;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ic0(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ic0(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ay0 ay0Var = this.a.p;
        if (ay0Var != null) {
            yy0 yy0Var = (yy0) ay0Var;
            if ((!this.b || yy0Var.h()) && !yy0Var.f()) {
                dy dyVar = yy0Var.s;
                if (dyVar != null) {
                    dyVar.setVisibility(0);
                }
                yy0Var.u = false;
            } else {
                dy dyVar2 = yy0Var.s;
                if (dyVar2 != null) {
                    dyVar2.setVisibility(8);
                }
                yy0Var.u = true;
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
