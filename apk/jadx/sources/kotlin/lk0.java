package kotlin;

import android.app.AlertDialog;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class lk0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ AlertDialog.Builder a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lk0(AlertDialog.Builder builder, Continuation continuation) {
        super(2, continuation);
        this.a = builder;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new lk0(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new lk0(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.a.create().show();
        return p005kotlin.Unit.INSTANCE;
    }
}
