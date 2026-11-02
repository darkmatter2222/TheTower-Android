package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class q5 extends SuspendLambda implements Function2 {
    public Ref.IntRef a;
    public Ref.BooleanRef b;
    public Mutex c;
    public h6 d;
    public int e;
    public final /* synthetic */ h6 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q5(h6 h6Var, Continuation continuation) {
        super(2, continuation);
        this.f = h6Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new q5(this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new q5(this.f, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0076  */
    /* JADX WARN: Code duplicated, block: B:22:0x0077  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0093, code lost:
    
        if (r9.a(r1, r3) == r0) goto L26;
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
            int r1 = r8.e
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L2f
            if (r1 == r4) goto L2b
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L17
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L96
        L17:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1f:
            ads_mobile_sdk.h6 r1 = r8.d
            kotlinx.coroutines.sync.Mutex r3 = r8.c
            kotlin.jvm.internal.Ref$BooleanRef r6 = r8.b
            kotlin.jvm.internal.Ref$IntRef r7 = r8.a
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L63
        L2b:
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L43
        L2f:
            p005kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.h6 r9 = r8.f
            ads_mobile_sdk.ex0 r9 = r9.g
            long r6 = r9.p0()
            r8.e = r4
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.m4512delayVtjQ1oo(r6, r8)
            if (r9 != r0) goto L43
            goto L95
        L43:
            kotlin.jvm.internal.Ref$IntRef r7 = new kotlin.jvm.internal.Ref$IntRef
            r7.<init>()
            kotlin.jvm.internal.Ref$BooleanRef r6 = new kotlin.jvm.internal.Ref$BooleanRef
            r6.<init>()
            ads_mobile_sdk.h6 r1 = r8.f
            kotlinx.coroutines.sync.Mutex r9 = r1.u
            r8.a = r7
            r8.b = r6
            r8.c = r9
            r8.d = r1
            r8.e = r3
            java.lang.Object r3 = r9.lock(r5, r8)
            if (r3 != r0) goto L62
            goto L95
        L62:
            r3 = r9
        L63:
            kotlinx.coroutines.CompletableJob r9 = r1.F     // Catch: java.lang.Throwable -> L99
            r9.complete()     // Catch: java.lang.Throwable -> L99
            java.util.Queue r9 = r1.C     // Catch: java.lang.Throwable -> L99
            int r9 = r9.size()     // Catch: java.lang.Throwable -> L99
            r7.element = r9     // Catch: java.lang.Throwable -> L99
            ads_mobile_sdk.w4 r9 = r1.v     // Catch: java.lang.Throwable -> L99
            ads_mobile_sdk.w4 r1 = kotlin.w4.ACTIVE     // Catch: java.lang.Throwable -> L99
            if (r9 != r1) goto L77
            goto L78
        L77:
            r4 = 0
        L78:
            r6.element = r4     // Catch: java.lang.Throwable -> L99
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L99
            r3.unlock(r5)
            ads_mobile_sdk.h6 r9 = r8.f
            int r1 = r7.element
            boolean r3 = r6.element
            r8.a = r5
            r8.b = r5
            r8.c = r5
            r8.d = r5
            r8.e = r2
            kotlin.Unit r9 = r9.a(r1, r3)
            if (r9 != r0) goto L96
        L95:
            return r0
        L96:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE
            return r9
        L99:
            r9 = move-exception
            r3.unlock(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.q5.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
