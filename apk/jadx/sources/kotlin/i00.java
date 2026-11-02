package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class i00 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ o00 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i00(o00 o00Var, Continuation continuation) {
        super(2, continuation);
        this.b = o00Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new i00(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new i00(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x005b, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r8.c, new kotlin.g00(r8, true, null, null), r7) == r0) goto L15;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L5e
        L12:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1a:
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L4b
        L1e:
            p005kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.o00 r8 = r7.b
            ads_mobile_sdk.ex0 r8 = r8.m
            r8.getClass()
            kotlin.time.Duration$Companion r1 = p005kotlin.time.Duration.INSTANCE
            kotlin.time.DurationUnit r1 = p005kotlin.time.DurationUnit.SECONDS
            java.lang.String r4 = "key"
            r5 = 60
            java.lang.String r6 = "gads:cld_fetch_delay_on_cache_hit"
            kotlin.time.Duration r1 = kotlin.wm2.a(r5, r1, r6, r4)
            ads_mobile_sdk.ur r4 = kotlin.yr.l
            java.lang.Object r8 = r8.a(r6, r1, r4)
            kotlin.time.Duration r8 = (p005kotlin.time.Duration) r8
            long r4 = r8.getRawValue()
            r7.a = r3
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.m4512delayVtjQ1oo(r4, r7)
            if (r8 != r0) goto L4b
            goto L5d
        L4b:
            ads_mobile_sdk.o00 r8 = r7.b
            r7.a = r2
            kotlin.coroutines.CoroutineContext r1 = r8.c
            ads_mobile_sdk.g00 r2 = new ads_mobile_sdk.g00
            r4 = 0
            r2.<init>(r8, r3, r4, r4)
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r1, r2, r7)
            if (r8 != r0) goto L5e
        L5d:
            return r0
        L5e:
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.i00.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
