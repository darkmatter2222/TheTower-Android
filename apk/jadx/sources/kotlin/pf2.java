package kotlin;

import android.view.View;
import java.util.List;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function3;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pf2 extends SuspendLambda implements Function3 {
    public /* synthetic */ k9 a;
    public final /* synthetic */ vf2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pf2(vf2 vf2Var, Continuation continuation) {
        super(3, continuation);
        this.b = vf2Var;
    }

    @Override // p005kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        pf2 pf2Var = new pf2(this.b, (Continuation) obj3);
        pf2Var.a = (k9) obj2;
        return pf2Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        k9 k9Var = this.a;
        List list = this.b.n;
        Intrinsics.checkNotNullExpressionValue(list, "access$getOmidRegisteredViews$p(...)");
        CollectionsKt.removeLastOrNull(list);
        List list2 = this.b.n;
        Intrinsics.checkNotNullExpressionValue(list2, "access$getOmidRegisteredViews$p(...)");
        View view = (View) CollectionsKt.lastOrNull(list2);
        if (view != null) {
            this.b.f.a(k9Var, view);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
