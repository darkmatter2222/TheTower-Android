package kotlin;

import android.webkit.WebView;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ye2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ ze2 a;
    public final /* synthetic */ WebView b;
    public final /* synthetic */ boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ye2(ze2 ze2Var, WebView webView, boolean z, Continuation continuation) {
        super(1, continuation);
        this.a = ze2Var;
        this.b = webView;
        this.c = z;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new ye2(this.a, this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((ye2) create((Continuation) obj)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        kd2 kd2Var = this.a.c;
        WebView webView = this.b;
        boolean z = this.c;
        kd2Var.getClass();
        Intrinsics.checkNotNullParameter(webView, "webView");
        return (aq1) kd2Var.f.a("CreateJavaScriptSessionService", new wc2(kd2Var, webView, z));
    }
}
