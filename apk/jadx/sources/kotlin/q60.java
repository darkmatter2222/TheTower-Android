package kotlin;

import java.util.List;
import java.util.Map;
import org.chromium.net.UrlResponseInfo;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class q60 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ f81 b;
    public final /* synthetic */ UrlResponseInfo c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q60(f81 f81Var, UrlResponseInfo urlResponseInfo, Continuation continuation) {
        super(2, continuation);
        this.b = f81Var;
        this.c = urlResponseInfo;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new q60(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new q60(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            g9 g9Var = this.b.f;
            if (g9Var != null) {
                Map<String, List<String>> allHeaders = this.c.getAllHeaders();
                Intrinsics.checkNotNullExpressionValue(allHeaders, "getAllHeaders(...)");
                this.a = 1;
                if (((ej1) g9Var).a(allHeaders, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
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
