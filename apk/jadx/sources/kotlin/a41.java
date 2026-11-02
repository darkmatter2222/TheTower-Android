package kotlin;

import android.net.Uri;
import android.webkit.WebResourceRequest;
import java.util.Map;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a41 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ g41 b;
    public final /* synthetic */ Uri c;
    public final /* synthetic */ WebResourceRequest d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a41(Uri uri, WebResourceRequest webResourceRequest, g41 g41Var, Continuation continuation) {
        super(2, continuation);
        this.b = g41Var;
        this.c = uri;
        this.d = webResourceRequest;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new a41(this.c, this.d, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((a41) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s93 s93Var = this.b.u;
            if (s93Var != null) {
                String string = this.c.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                w90 w90Var = w90.AD_RESOURCE_CREATIVE;
                Map<String, String> requestHeaders = this.d.getRequestHeaders();
                if (requestHeaders == null) {
                    requestHeaders = MapsKt.emptyMap();
                }
                this.a = 1;
                if (s93.a(s93Var, string, w90Var, requestHeaders, this) == coroutine_suspended) {
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
