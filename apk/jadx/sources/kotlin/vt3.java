package kotlin;

import android.os.IInterface;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vt3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ wt3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vt3(wt3 wt3Var, Continuation continuation) {
        super(2, continuation);
        this.a = wt3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new vt3(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new vt3(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        try {
            IInterface service = this.a.d.getService();
            Intrinsics.checkNotNullExpressionValue(service, "getService(...)");
            String packageName = this.a.b.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
            ((m81) ((o81) service)).a(new dl0(packageName), this.a);
        } catch (Throwable th) {
            wt3 wt3Var = this.a;
            j01 j01Var = new j01(th, null, null, 6);
            int i = wt3.i;
            if (!wt3Var.f.getAndSet(true)) {
                wt3Var.h.complete(j01Var);
            }
            ((as3) this.a.c).a("Throwable caught getting trustless token", th);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
