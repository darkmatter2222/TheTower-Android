package kotlin;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class og2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ViewParent a;
    public final /* synthetic */ pg2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public og2(ViewParent viewParent, pg2 pg2Var, Continuation continuation) {
        super(2, continuation);
        this.a = viewParent;
        this.b = pg2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new og2(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new og2(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ((ViewGroup) this.a).removeView(this.b.g());
        Context contextG = this.b.P.g();
        if (contextG == null) {
            contextG = this.b.a;
        }
        return Boxing.boxBoolean(this.b.a(contextG));
    }
}
