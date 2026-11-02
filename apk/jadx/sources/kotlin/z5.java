package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class z5 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ long b;
    public final /* synthetic */ h6 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z5(long j, h6 h6Var, Continuation continuation) {
        super(2, continuation);
        this.b = j;
        this.c = h6Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new z5(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new z5(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0034, code lost:
    
        if (kotlin.h6.a(r7, r6) == r0) goto L15;
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
            int r1 = r6.a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L37
        L12:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1a:
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L2c
        L1e:
            p005kotlin.ResultKt.throwOnFailure(r7)
            long r4 = r6.b
            r6.a = r3
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.m4512delayVtjQ1oo(r4, r6)
            if (r7 != r0) goto L2c
            goto L36
        L2c:
            ads_mobile_sdk.h6 r7 = r6.c
            r6.a = r2
            java.lang.Object r7 = kotlin.h6.a(r7, r6)
            if (r7 != r0) goto L37
        L36:
            return r0
        L37:
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.z5.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
