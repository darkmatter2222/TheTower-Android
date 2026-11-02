package kotlin;

import android.webkit.WebSettings;
import com.ironsource.C3510b4;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xs1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ r31 a;
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ at1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xs1(r31 r31Var, int i, int i2, at1 at1Var, Continuation continuation) {
        super(2, continuation);
        this.a = r31Var;
        this.b = i;
        this.c = i2;
        this.d = at1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new xs1(this.a, this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((xs1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.a.a(new v14(u14.FIXED_RECTANGLE, this.b, this.c, 8));
        WebSettings settings = this.a.getSettings();
        ex0 ex0Var = this.d.a;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:use_wide_viewport:enabled", C3510b4.i.W);
        Boolean bool = Boolean.FALSE;
        ir irVar = yr.b;
        settings.setUseWideViewPort(((Boolean) ex0Var.a("gads:use_wide_viewport:enabled", bool, irVar)).booleanValue());
        WebSettings settings2 = this.a.getSettings();
        ex0 ex0Var2 = this.d.a;
        ex0Var2.getClass();
        Intrinsics.checkNotNullParameter("gads:load_with_overview_mode:enabled", C3510b4.i.W);
        settings2.setLoadWithOverviewMode(((Boolean) ex0Var2.a("gads:load_with_overview_mode:enabled", bool, irVar)).booleanValue());
        return p005kotlin.Unit.INSTANCE;
    }
}
