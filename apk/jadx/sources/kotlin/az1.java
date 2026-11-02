package kotlin;

import android.app.Activity;
import android.view.ViewGroup;
import android.view.Window;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class az1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ bz1 b;
    public final /* synthetic */ ViewGroup c;
    public final /* synthetic */ n53 d;
    public final /* synthetic */ Activity e;
    public final /* synthetic */ Window f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public az1(bz1 bz1Var, ViewGroup viewGroup, n53 n53Var, Activity activity, Window window, Continuation continuation) {
        super(2, continuation);
        this.b = bz1Var;
        this.c = viewGroup;
        this.d = n53Var;
        this.e = activity;
        this.f = window;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new az1(this.b, this.c, this.d, this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((az1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            bz1 bz1Var = this.b;
            ViewGroup viewGroup = this.c;
            n53 n53Var = this.d;
            Activity activity = this.e;
            Window window = this.f;
            Intrinsics.checkNotNullExpressionValue(window, "$window");
            bz1 bz1Var2 = this.b;
            r31 r31Var = bz1Var2.h;
            h41 h41Var = bz1Var2.g;
            this.a = 1;
            if (bz1Var.a(viewGroup, n53Var, activity, window, r31Var, h41Var, this) == coroutine_suspended) {
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
