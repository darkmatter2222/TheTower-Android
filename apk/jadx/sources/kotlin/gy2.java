package kotlin;

import android.view.ViewGroup;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gy2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ wy2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gy2(wy2 wy2Var, Continuation continuation) {
        super(2, continuation);
        this.a = wy2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new gy2(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new gy2(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        wy2 wy2Var = this.a;
        wy2Var.z = wy2Var.a(this.a.n, wy2Var.t.getAdSize());
        wy2 wy2Var2 = this.a;
        ViewGroup viewGroup = wy2Var2.B;
        if (viewGroup != null) {
            o53 o53Var = wy2Var2.z;
            if (o53Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("_adFrame");
                o53Var = null;
            }
            viewGroup.addView(o53Var);
        }
        this.a.B = null;
        return p005kotlin.Unit.INSTANCE;
    }
}
