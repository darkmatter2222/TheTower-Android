package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class zo2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ ap2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zo2(ap2 ap2Var, Continuation continuation) {
        super(2, continuation);
        this.b = ap2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zo2(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new zo2(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
    
        if (kotlin.ap2.a(r7, r6) == r0) goto L15;
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
            goto L3b
        L12:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1a:
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L30
        L1e:
            p005kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.ap2 r7 = r6.b
            ads_mobile_sdk.i2 r7 = r7.a
            long r4 = r7.C0
            r6.a = r3
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.m4512delayVtjQ1oo(r4, r6)
            if (r7 != r0) goto L30
            goto L3a
        L30:
            ads_mobile_sdk.ap2 r7 = r6.b
            r6.a = r2
            java.lang.Object r7 = kotlin.ap2.a(r7, r6)
            if (r7 != r0) goto L3b
        L3a:
            return r0
        L3b:
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.zo2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
