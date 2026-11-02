package kotlin;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class mt2 extends SuspendLambda implements Function2 {
    public Object a;
    public pt2 b;
    public j53 c;
    public String d;
    public int e;
    public final /* synthetic */ pt2 f;
    public final /* synthetic */ String g;
    public final /* synthetic */ j53 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mt2(j53 j53Var, pt2 pt2Var, String str, Continuation continuation) {
        super(2, continuation);
        this.f = pt2Var;
        this.g = str;
        this.h = j53Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new mt2(this.h, this.f, this.g, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((mt2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a2, code lost:
    
        if (r1.x(r9) == r0) goto L30;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.e
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L36
            if (r1 == r4) goto L28
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L17
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto La6
        L17:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L1f:
            java.lang.Object r1 = r9.a
            ads_mobile_sdk.pt2 r1 = (kotlin.pt2) r1
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto L9a
        L28:
            java.lang.String r1 = r9.d
            ads_mobile_sdk.j53 r6 = r9.c
            ads_mobile_sdk.pt2 r7 = r9.b
            java.lang.Object r8 = r9.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            p005kotlin.ResultKt.throwOnFailure(r10)
            goto L74
        L36:
            p005kotlin.ResultKt.throwOnFailure(r10)
            ads_mobile_sdk.pt2 r10 = r9.f
            ads_mobile_sdk.ex0 r10 = r10.g
            boolean r10 = r10.u0()
            if (r10 == 0) goto L5b
            ads_mobile_sdk.pt2 r10 = r9.f
            ads_mobile_sdk.k6 r10 = r10.p
            java.lang.String r1 = r9.g
            ads_mobile_sdk.j53 r6 = r9.h
            r10.getClass()
            java.lang.String r7 = "preloadId"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r7)
            java.lang.String r7 = "requestType"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r7)
            r10.b(r6, r1)
        L5b:
            ads_mobile_sdk.pt2 r7 = r9.f
            kotlinx.coroutines.sync.Mutex r8 = r7.q
            ads_mobile_sdk.j53 r6 = r9.h
            java.lang.String r1 = r9.g
            r9.a = r8
            r9.b = r7
            r9.c = r6
            r9.d = r1
            r9.e = r4
            java.lang.Object r10 = r8.lock(r5, r9)
            if (r10 != r0) goto L74
            goto La4
        L74:
            java.util.LinkedHashMap r10 = r7.a(r6)     // Catch: java.lang.Throwable -> Lab
            if (r10 == 0) goto L81
            java.lang.Object r10 = r10.remove(r1)     // Catch: java.lang.Throwable -> Lab
            ads_mobile_sdk.h6 r10 = (kotlin.h6) r10     // Catch: java.lang.Throwable -> Lab
            goto L82
        L81:
            r10 = r5
        L82:
            r8.unlock(r5)
            if (r10 == 0) goto La5
            ads_mobile_sdk.pt2 r1 = r9.f
            r9.a = r1
            r9.b = r5
            r9.c = r5
            r9.d = r5
            r9.e = r3
            java.lang.Object r10 = r10.z(r9)
            if (r10 != r0) goto L9a
            goto La4
        L9a:
            r9.a = r5
            r9.e = r2
            java.lang.Object r10 = r1.x(r9)
            if (r10 != r0) goto La6
        La4:
            return r0
        La5:
            r4 = 0
        La6:
            java.lang.Boolean r10 = p005kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r10
        Lab:
            r10 = move-exception
            r8.unlock(r5)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.mt2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
