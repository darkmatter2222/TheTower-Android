package kotlin;

import android.webkit.WebResourceRequest;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class e41 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ g41 b;
    public final /* synthetic */ WebResourceRequest c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e41(g41 g41Var, WebResourceRequest webResourceRequest, Continuation continuation) {
        super(2, continuation);
        this.b = g41Var;
        this.c = webResourceRequest;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new e41(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new e41(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s93 s93Var = this.b.u;
            if (s93Var != null) {
                String string = this.c.getUrl().toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                this.a = 1;
                if (s93Var.b(string, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
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
