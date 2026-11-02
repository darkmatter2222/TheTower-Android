package kotlin;

import android.app.Activity;
import android.net.Uri;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class yl1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ cm1 b;
    public final /* synthetic */ Activity c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yl1(cm1 cm1Var, Activity activity, String str, Continuation continuation) {
        super(2, continuation);
        this.b = cm1Var;
        this.c = activity;
        this.d = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new yl1(this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((yl1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            this.b.o.a(this.c, r.RESUMED);
            Object obj2 = this.b.n.get();
            Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
            ok0 ok0Var = (ok0) obj2;
            String str = this.d;
            this.a = 1;
            Uri uri = ok0.q;
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            ok0Var.getClass();
            if (ok0.a(ok0Var, str, null, null, ks3Var, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
