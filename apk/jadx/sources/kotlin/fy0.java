package kotlin;

import androidx.activity.ComponentActivity;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class fy0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ComponentActivity a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fy0(ComponentActivity componentActivity, Continuation continuation) {
        super(2, continuation);
        this.a = componentActivity;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new fy0(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new fy0(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.a.finish();
        return p005kotlin.Unit.INSTANCE;
    }
}
