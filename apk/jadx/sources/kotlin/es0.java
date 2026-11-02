package kotlin;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class es0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ gs0 a;
    public final /* synthetic */ String b;
    public final /* synthetic */ boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public es0(gs0 gs0Var, String str, boolean z, Continuation continuation) {
        super(2, continuation);
        this.a = gs0Var;
        this.b = str;
        this.c = z;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new es0(this.a, this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((es0) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        ls0 ls0Var = this.a.b;
        String adUnitId = this.b;
        boolean z = this.c;
        ls0Var.getClass();
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        try {
            if (ls0Var.e.getValue() != null) {
                Class.forName(ls0Var.d.Q()).getMethod(z ? "beginAdUnitExposure" : "endAdUnitExposure", String.class).invoke(ls0Var.e.getValue(), adUnitId);
            }
        } catch (Exception e) {
            ((as3) ls0Var.b).a("FirebaseAnalyticsAdapter.invokeMethod AdUnitExposure", (Throwable) e);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
