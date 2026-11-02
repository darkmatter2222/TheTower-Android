package kotlin;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.common.base.Splitter;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class vy2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ ck1 b;
    public final /* synthetic */ wy2 c;
    public final /* synthetic */ ck1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vy2(ck1 ck1Var, wy2 wy2Var, ck1 ck1Var2, Continuation continuation) {
        super(2, continuation);
        this.b = ck1Var;
        this.c = wy2Var;
        this.d = ck1Var2;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new vy2(this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((vy2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        g33 g33VarN;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ck1 ck1Var = this.b;
            if (ck1Var != null && (g33VarN = ck1Var.n()) != null) {
                g33VarN.f();
            }
            wy2 wy2Var = this.c;
            this.a = 1;
            obj = wy2Var.d(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        o53 o53Var = (o53) obj;
        o53Var.removeAllViews();
        o53Var.a(this.d.m());
        View viewO = this.d.o();
        ViewParent parent = viewO.getParent();
        if (parent instanceof ViewGroup) {
            String adapterClassName = ((ck1) this.c.e().a()).getResponseInfo().getAdapterClassName();
            Splitter splitter = f01.a;
            f01.c("Banner view provided from " + adapterClassName + " already has a parent view. Removing its old parent.", null);
            ((ViewGroup) parent).removeView(viewO);
        }
        o53Var.addView(viewO);
        return p005kotlin.Unit.INSTANCE;
    }
}
