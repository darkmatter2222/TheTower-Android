package kotlin;

import android.view.WindowManager;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ys1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ WindowManager a;
    public final /* synthetic */ r31 b;
    public final /* synthetic */ WindowManager.LayoutParams c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ys1(WindowManager windowManager, r31 r31Var, WindowManager.LayoutParams layoutParams, Continuation continuation) {
        super(2, continuation);
        this.a = windowManager;
        this.b = r31Var;
        this.c = layoutParams;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ys1(this.a, this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ys1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.a.updateViewLayout(this.b, this.c);
        return p005kotlin.Unit.INSTANCE;
    }
}
