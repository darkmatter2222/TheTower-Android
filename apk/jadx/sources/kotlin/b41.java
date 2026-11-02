package kotlin;

import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.google.common.base.Splitter;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class b41 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ g41 b;
    public final /* synthetic */ WebResourceRequest c;
    public final /* synthetic */ Uri d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b41(Uri uri, WebResourceRequest webResourceRequest, g41 g41Var, Continuation continuation) {
        super(2, continuation);
        this.b = g41Var;
        this.c = webResourceRequest;
        this.d = uri;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        g41 g41Var = this.b;
        return new b41(this.d, this.c, g41Var, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((b41) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        try {
            if (i == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                p24 p24VarC = this.b.c();
                if (p24VarC == null) {
                    return null;
                }
                WebResourceRequest webResourceRequest = this.c;
                this.a = 1;
                obj = ((s24) p24VarC).a(webResourceRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
            }
            return (WebResourceResponse) obj;
        } catch (Exception e) {
            Splitter splitter = f01.a;
            f01.c("Failed to intercept request using WebViewFirebaseAnalyticsEventsHandler: " + this.d, e);
            return null;
        }
    }
}
