package kotlin;

import androidx.webkit.Profile;
import kotlinx.coroutines.BuildersKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class a14 extends SuspendLambda implements Function2 {
    public r14 a;
    public int b;
    public final /* synthetic */ r14 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a14(r14 r14Var, Continuation continuation) {
        super(2, continuation);
        this.c = r14Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new a14(this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new a14(this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        r14 r14Var;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        try {
            if (i == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                this.c.i.getClass();
                if (!rz3.a()) {
                    xs3.a("MultiProfile is not supported", null, 6);
                    return p005kotlin.Unit.INSTANCE;
                }
                String str = this.c.g() ? "GMA_WEBVIEW_PROFILE" : Profile.DEFAULT_PROFILE_NAME;
                r14 r14Var2 = this.c;
                CoroutineContext coroutineContext = r14Var2.d;
                z04 z04Var = new z04(this.c, str, null);
                this.a = r14Var2;
                this.b = 1;
                obj = BuildersKt.withContext(coroutineContext, z04Var, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                r14Var = r14Var2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                r14Var = this.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
            }
            r14Var.m = (Profile) obj;
        } catch (Throwable th) {
            xs3.a("Failed to initialize Profile: " + th.getMessage(), null, 6);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
