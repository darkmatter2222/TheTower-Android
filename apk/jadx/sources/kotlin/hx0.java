package kotlin;

import com.ironsource.C3510b4;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hx0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ix0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hx0(ix0 ix0Var, Continuation continuation) {
        super(2, continuation);
        this.a = ix0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new hx0(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new hx0(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ix0 ix0Var = this.a;
        gx0 gx0Var = ix0Var.m;
        if (gx0Var != null) {
            int i = ix0Var.j;
            if1 if1Var = (if1) gx0Var;
            ex0 ex0Var = if1Var.i;
            if (i == ((Number) ex0Var.a("gads:inspector:flick_count", by0.a(ex0Var, "gads:inspector:flick_count", C3510b4.i.W, 2), yr.f)).intValue()) {
                CoroutineScope coroutineScope = if1Var.d;
                oe1 block = new oe1(if1Var, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
