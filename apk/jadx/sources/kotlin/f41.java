package kotlin;

import android.webkit.WebResourceRequest;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class f41 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ g41 b;
    public final /* synthetic */ WebResourceRequest c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f41(g41 g41Var, WebResourceRequest webResourceRequest, Continuation continuation) {
        super(2, continuation);
        this.b = g41Var;
        this.c = webResourceRequest;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new f41(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new f41(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0056, code lost:
    
        if (r6.o(r5) == r0) goto L19;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L59
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1a:
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L3f
        L1e:
            p005kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.g41 r6 = r5.b
            ads_mobile_sdk.s93 r6 = r6.u
            if (r6 == 0) goto L3f
            android.webkit.WebResourceRequest r1 = r5.c
            android.net.Uri r1 = r1.getUrl()
            java.lang.String r1 = r1.toString()
            java.lang.String r4 = "toString(...)"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r4)
            r5.a = r3
            java.lang.Object r6 = kotlin.s93.a(r6, r1, r5)
            if (r6 != r0) goto L3f
            goto L58
        L3f:
            ads_mobile_sdk.g41 r6 = r5.b
            ads_mobile_sdk.tn3 r1 = r6.p
            kotlin.reflect.KProperty[] r3 = kotlin.g41.w
            r4 = 4
            r3 = r3[r4]
            java.lang.Object r6 = r1.getValue(r6, r3)
            ads_mobile_sdk.ai1 r6 = (kotlin.ai1) r6
            if (r6 == 0) goto L59
            r5.a = r2
            java.lang.Object r6 = r6.o(r5)
            if (r6 != r0) goto L59
        L58:
            return r0
        L59:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.f41.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
