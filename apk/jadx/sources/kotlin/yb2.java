package kotlin;

import android.database.sqlite.SQLiteDatabase;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class yb2 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ ac2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yb2(ac2 ac2Var, Continuation continuation) {
        super(2, continuation);
        this.b = ac2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        yb2 yb2Var = new yb2(this.b, continuation);
        yb2Var.a = obj;
        return yb2Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        yb2 yb2Var = new yb2(this.b, (Continuation) obj2);
        yb2Var.a = (SQLiteDatabase) obj;
        return yb2Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ac2.a(this.b, (SQLiteDatabase) this.a);
        return p005kotlin.Unit.INSTANCE;
    }
}
