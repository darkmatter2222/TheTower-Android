package kotlin;

import android.view.View;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class up3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ View a;
    public final /* synthetic */ vp3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public up3(View view, vp3 vp3Var, Continuation continuation) {
        super(2, continuation);
        this.a = view;
        this.b = vp3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new up3(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new up3(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        View view = this.a;
        if (view != null) {
            this.b.i.b(view);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
