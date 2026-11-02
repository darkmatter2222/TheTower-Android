package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import kotlinx.coroutines.BuildersKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function3;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jx2 extends SuspendLambda implements Function3 {
    public int a;
    public /* synthetic */ Throwable b;
    public final /* synthetic */ px2 c;
    public final /* synthetic */ CoroutineContext d;
    public final /* synthetic */ ei1 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jx2(px2 px2Var, CoroutineContext coroutineContext, ei1 ei1Var, Continuation continuation) {
        super(3, continuation);
        this.c = px2Var;
        this.d = coroutineContext;
        this.e = ei1Var;
    }

    @Override // p005kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        jx2 jx2Var = new jx2(this.c, this.d, this.e, (Continuation) obj3);
        jx2Var.b = (Throwable) obj2;
        return jx2Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Throwable th = this.b;
            px2 px2Var = this.c;
            j01 error = new j01(th, null, null, 6);
            px2Var.getClass();
            Intrinsics.checkNotNullParameter(error, "error");
            LoadAdError loadAdError = new LoadAdError(error.a().d(), h01.a(error), null);
            CoroutineContext coroutineContext = this.d;
            ix2 ix2Var = new ix2(loadAdError, this.e, null);
            this.a = 1;
            if (BuildersKt.withContext(coroutineContext, ix2Var, this) == coroutine_suspended) {
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
