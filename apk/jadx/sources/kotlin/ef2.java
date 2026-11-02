package kotlin;

import android.view.View;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function3;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ef2 extends SuspendLambda implements Function3 {
    public /* synthetic */ k9 a;
    public final /* synthetic */ vf2 b;
    public final /* synthetic */ View c;
    public final /* synthetic */ tx0 d;
    public final /* synthetic */ String e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ef2(vf2 vf2Var, View view, tx0 tx0Var, String str, Continuation continuation) {
        super(3, continuation);
        this.b = vf2Var;
        this.c = view;
        this.d = tx0Var;
        this.e = str;
    }

    @Override // p005kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        ef2 ef2Var = new ef2(this.b, this.c, this.d, this.e, (Continuation) obj3);
        ef2Var.a = (k9) obj2;
        return ef2Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        k9 adSession = this.a;
        kd2 kd2Var = this.b.f;
        View friendlyObstructionView = this.c;
        tx0 purpose = this.d;
        String str = this.e;
        kd2Var.getClass();
        Intrinsics.checkNotNullParameter(adSession, "adSession");
        Intrinsics.checkNotNullParameter(friendlyObstructionView, "friendlyObstructionView");
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        return p005kotlin.Unit.INSTANCE;
    }
}
