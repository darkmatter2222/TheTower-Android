package kotlin;

import androidx.webkit.WebViewCompat;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class el1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ r31 a;
    public final /* synthetic */ Executor b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public el1(r31 r31Var, Executor executor, Continuation continuation) {
        super(2, continuation);
        this.a = r31Var;
        this.b = executor;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new el1(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new el1(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        AtomicBoolean atomicBoolean = az3.a;
        r31 webView = this.a;
        Executor executor = this.b;
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter("https://googlemobileads.com/warmup", "url");
        Intrinsics.checkNotNullParameter(executor, "executor");
        boolean z = false;
        if (az3.e.get()) {
            try {
                WebViewCompat.prerenderUrlAsync(webView, "https://googlemobileads.com/warmup", null, executor, new xy3());
                z = true;
            } catch (Exception unused) {
                az3.e.set(false);
            }
        }
        return Boxing.boxBoolean(z);
    }
}
