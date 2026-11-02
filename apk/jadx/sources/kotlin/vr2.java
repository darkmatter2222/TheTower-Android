package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class vr2 extends SuspendLambda implements Function2 {
    public Mutex a;
    public pt2 b;
    public String c;
    public int d;
    public final /* synthetic */ pt2 e;
    public final /* synthetic */ String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vr2(pt2 pt2Var, String str, Continuation continuation) {
        super(2, continuation);
        this.e = pt2Var;
        this.f = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new vr2(this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new vr2(this.e, this.f, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
    
        if (r7 == r0) goto L19;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.d
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L25
            if (r1 == r3) goto L1b
            if (r1 != r2) goto L13
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L5a
        L13:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1b:
            java.lang.String r1 = r6.c
            ads_mobile_sdk.pt2 r3 = r6.b
            kotlinx.coroutines.sync.Mutex r5 = r6.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L3e
        L25:
            p005kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.pt2 r7 = r6.e
            kotlinx.coroutines.sync.Mutex r5 = r7.q
            java.lang.String r1 = r6.f
            r6.a = r5
            r6.b = r7
            r6.c = r1
            r6.d = r3
            java.lang.Object r3 = r5.lock(r4, r6)
            if (r3 != r0) goto L3d
            goto L59
        L3d:
            r3 = r7
        L3e:
            java.util.LinkedHashMap r7 = r3.z     // Catch: java.lang.Throwable -> L72
            java.lang.Object r7 = r7.get(r1)     // Catch: java.lang.Throwable -> L72
            ads_mobile_sdk.h6 r7 = (kotlin.h6) r7     // Catch: java.lang.Throwable -> L72
            r5.unlock(r4)
            if (r7 == 0) goto L67
            r6.a = r4
            r6.b = r4
            r6.c = r4
            r6.d = r2
            java.lang.Object r7 = r7.w(r6)
            if (r7 != r0) goto L5a
        L59:
            return r0
        L5a:
            ads_mobile_sdk.yt2 r7 = (kotlin.yt2) r7
            if (r7 == 0) goto L67
            ads_mobile_sdk.xt2 r7 = r7.a
            if (r7 == 0) goto L67
            ads_mobile_sdk.zh1 r7 = r7.a
            r4 = r7
            ads_mobile_sdk.sj1 r4 = (kotlin.sj1) r4
        L67:
            ads_mobile_sdk.pt2 r7 = r6.e
            java.lang.String r0 = r6.f
            ads_mobile_sdk.j53 r1 = kotlin.j53.e
            ads_mobile_sdk.zh1 r7 = kotlin.pt2.a(r7, r4, r0, r1)
            return r7
        L72:
            r7 = move-exception
            r5.unlock(r4)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.vr2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
