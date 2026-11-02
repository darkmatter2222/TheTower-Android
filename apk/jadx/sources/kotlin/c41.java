package kotlin;

import android.net.Uri;
import android.webkit.WebResourceRequest;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class c41 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ Uri b;
    public final /* synthetic */ g41 c;
    public final /* synthetic */ WebResourceRequest d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c41(Uri uri, WebResourceRequest webResourceRequest, g41 g41Var, Continuation continuation) {
        super(2, continuation);
        this.b = uri;
        this.c = g41Var;
        this.d = webResourceRequest;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new c41(this.b, this.d, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((c41) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0057, code lost:
    
        if (r7 == r0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0069, code lost:
    
        if (android.util.Log.isLoggable("GoogleMobileAdsNetwork", 2) != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b3, code lost:
    
        if (r7 == r0) goto L38;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            Method dump skipped, instruction units count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.c41.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
