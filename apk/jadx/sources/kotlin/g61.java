package kotlin;

import android.app.Activity;
import android.content.Context;
import android.view.WindowManager;
import android.widget.FrameLayout;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class g61 extends SuspendLambda implements Function2 {
    public final /* synthetic */ r31 a;
    public final /* synthetic */ h61 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g61(r31 r31Var, h61 h61Var, Continuation continuation) {
        super(2, continuation);
        this.a = r31Var;
        this.b = h61Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new g61(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new g61(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FrameLayout frameLayoutC;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.a.setVisibility(8);
        WindowManager windowManager = (WindowManager) this.b.b.a.get();
        o32 o32Var = (o32) ((j12) this.b.c.get()).c.get();
        Context context = (o32Var == null || (frameLayoutC = ((p32) o32Var).c()) == null) ? null : frameLayoutC.getContext();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        WindowManager windowManager2 = activity != null ? (WindowManager) activity.getSystemService(WindowManager.class) : null;
        if (this.a.getWindowToken() != null) {
            if (windowManager != null) {
                windowManager.removeView(this.a);
            }
            if (windowManager2 != null) {
                windowManager2.removeView(this.a);
            }
        } else {
            xs3.a("Failed to remove validator from WindowManager", null, 6);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
