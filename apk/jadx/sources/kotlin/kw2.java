package kotlin;

import android.os.Process;
import android.webkit.CookieManager;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class kw2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ow2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kw2(ow2 ow2Var, Continuation continuation) {
        super(2, continuation);
        this.a = ow2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new kw2(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new kw2(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        this.a.h.getClass();
        int iMyUid = Process.myUid();
        CookieManager cookieManager = (iMyUid == 0 || iMyUid == 1000 || iMyUid == 1001 || iMyUid == 1002 || iMyUid == 1027) ? null : CookieManager.getInstance();
        return Boxing.boxBoolean(cookieManager != null && cookieManager.acceptThirdPartyCookies(this.a.a));
    }
}
