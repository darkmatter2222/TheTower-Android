package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class my0 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ yy0 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public my0(yy0 yy0Var, Continuation continuation) {
        super(2, continuation);
        this.b = yy0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new my0(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new my0(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x007a, code lost:
    
        if (r9.c(r8) == r0) goto L24;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.a
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L25
            if (r1 == r4) goto L21
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L15
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L7d
        L15:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1d:
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L72
        L21:
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L52
        L25:
            p005kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.yy0 r9 = r8.b
            ads_mobile_sdk.ex0 r9 = r9.e
            r9.getClass()
            kotlin.time.Duration$Companion r1 = p005kotlin.time.Duration.INSTANCE
            kotlin.time.DurationUnit r1 = p005kotlin.time.DurationUnit.MILLISECONDS
            java.lang.String r5 = "key"
            r6 = 3000(0xbb8, float:4.204E-42)
            java.lang.String r7 = "gads:timeout_for_show_call_succeed:ms"
            kotlin.time.Duration r1 = kotlin.wm2.a(r6, r1, r7, r5)
            ads_mobile_sdk.sr r5 = kotlin.yr.j
            java.lang.Object r9 = r9.a(r7, r1, r5)
            kotlin.time.Duration r9 = (p005kotlin.time.Duration) r9
            long r5 = r9.getRawValue()
            r8.a = r4
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.m4512delayVtjQ1oo(r5, r8)
            if (r9 != r0) goto L52
            goto L7c
        L52:
            ads_mobile_sdk.yy0 r9 = r8.b
            java.util.concurrent.atomic.AtomicBoolean r9 = r9.m
            boolean r9 = r9.get()
            if (r9 == 0) goto L5f
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE
            return r9
        L5f:
            com.google.common.base.Splitter r9 = kotlin.f01.a
            java.lang.String r9 = "Full screen Activity took too long to start."
            r1 = 0
            kotlin.f01.c(r9, r1)
            ads_mobile_sdk.yy0 r9 = r8.b
            r8.a = r3
            java.lang.Object r9 = r9.e(r8)
            if (r9 != r0) goto L72
            goto L7c
        L72:
            ads_mobile_sdk.yy0 r9 = r8.b
            r8.a = r2
            java.lang.Object r9 = r9.c(r8)
            if (r9 != r0) goto L7d
        L7c:
            return r0
        L7d:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.my0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
