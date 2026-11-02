package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class ed2 extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ kd2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ed2(kd2 kd2Var, Continuation continuation) {
        super(1, continuation);
        this.b = kd2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new ed2(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new ed2(this.b, (Continuation) obj).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r1, r3, r5) == r0) goto L17;
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
            goto L45
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1a:
            p005kotlin.ResultKt.throwOnFailure(r6)
            goto L32
        L1e:
            p005kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.bu r6 = kotlin.au.a
            ads_mobile_sdk.bu r6 = kotlin.au.a
            ads_mobile_sdk.bu r1 = kotlin.bu.ROBOLECTRIC_TEST
            if (r6 == r1) goto L4c
            r5.a = r3
            java.lang.Object r6 = kotlinx.coroutines.YieldKt.yield(r5)
            if (r6 != r0) goto L32
            goto L44
        L32:
            ads_mobile_sdk.kd2 r6 = r5.b
            kotlin.coroutines.CoroutineContext r1 = r6.d
            ads_mobile_sdk.dd2 r3 = new ads_mobile_sdk.dd2
            r4 = 0
            r3.<init>(r6, r4)
            r5.a = r2
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r1, r3, r5)
            if (r6 != r0) goto L45
        L44:
            return r0
        L45:
            ads_mobile_sdk.kd2 r6 = r5.b
            kotlinx.coroutines.CompletableJob r6 = r6.i
            r6.complete()
        L4c:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ed2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
