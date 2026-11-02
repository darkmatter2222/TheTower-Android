package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class xu0 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ bv0 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xu0(bv0 bv0Var, Continuation continuation) {
        super(2, continuation);
        this.b = bv0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new xu0(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new xu0(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0046, code lost:
    
        if (r5 == r0) goto L17;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            p005kotlin.ResultKt.throwOnFailure(r5)
            goto L49
        L12:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L1a:
            p005kotlin.ResultKt.throwOnFailure(r5)
            goto L31
        L1e:
            p005kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.bv0 r5 = r4.b
            ads_mobile_sdk.vf2 r5 = r5.r
            r4.a = r3
            r5.getClass()
            java.lang.Object r5 = kotlin.vf2.c(r5, r4)
            if (r5 != r0) goto L31
            goto L48
        L31:
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 != 0) goto L53
            ads_mobile_sdk.bv0 r5 = r4.b
            ads_mobile_sdk.vf2 r5 = r5.r
            r4.a = r2
            r5.getClass()
            java.lang.Object r5 = kotlin.vf2.a(r5, r4)
            if (r5 != r0) goto L49
        L48:
            return r0
        L49:
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto L52
            goto L53
        L52:
            r3 = 0
        L53:
            java.lang.Boolean r5 = p005kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.xu0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
