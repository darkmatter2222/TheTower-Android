package kotlin;

import android.os.Binder;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class tt3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ wt3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tt3(wt3 wt3Var, Continuation continuation) {
        super(2, continuation);
        this.a = wt3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new tt3(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new tt3(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        wt3 wt3Var = this.a;
        wt3Var.g.set(true);
        if (wt3Var.d.isConnected() || wt3Var.d.isConnecting()) {
            wt3Var.d.disconnect();
        }
        Binder.flushPendingCommands();
        return p005kotlin.Unit.INSTANCE;
    }
}
