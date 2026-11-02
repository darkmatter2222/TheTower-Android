package kotlin;

import android.view.View;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public final class uf2 extends SuspendLambda implements Function3 {
    public /* synthetic */ k9 a;
    public final /* synthetic */ vf2 b;
    public final /* synthetic */ View c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uf2(vf2 vf2Var, View view, Continuation continuation) {
        super(3, continuation);
        this.b = vf2Var;
        this.c = view;
    }

    @Override // p005kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        uf2 uf2Var = new uf2(this.b, this.c, (Continuation) obj3);
        uf2Var.a = (k9) obj2;
        return uf2Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.b.f.a(this.a, this.c);
        this.b.n.add(this.c);
        return p005kotlin.Unit.INSTANCE;
    }
}
