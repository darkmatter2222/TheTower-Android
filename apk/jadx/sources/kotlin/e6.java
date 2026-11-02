package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class e6 extends SuspendLambda implements Function2 {
    public Object a;
    public Object b;
    public Mutex c;
    public h6 d;
    public int e;
    public final /* synthetic */ h6 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e6(h6 h6Var, Continuation continuation) {
        super(2, continuation);
        this.f = h6Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new e6(this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new e6(this.f, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0087  */
    /* JADX WARN: Code duplicated, block: B:27:0x009b  */
    /* JADX WARN: Code duplicated, block: B:28:0x009c  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b8, code lost:
    
        if (r11.a(r1, r3) == r0) goto L32;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r10.e
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r1 == 0) goto L42
            if (r1 == r5) goto L36
            if (r1 == r4) goto L32
            if (r1 == r3) goto L22
            if (r1 != r2) goto L1a
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto Lbb
        L1a:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L22:
            ads_mobile_sdk.h6 r1 = r10.d
            kotlinx.coroutines.sync.Mutex r3 = r10.c
            java.lang.Object r4 = r10.b
            kotlin.jvm.internal.Ref$BooleanRef r4 = (kotlin.jvm.internal.Ref.BooleanRef) r4
            java.lang.Object r7 = r10.a
            kotlin.jvm.internal.Ref$IntRef r7 = (kotlin.jvm.internal.Ref.IntRef) r7
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto L88
        L32:
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto L68
        L36:
            java.lang.Object r1 = r10.b
            ads_mobile_sdk.h6 r1 = (kotlin.h6) r1
            java.lang.Object r7 = r10.a
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            p005kotlin.ResultKt.throwOnFailure(r11)
            goto L56
        L42:
            p005kotlin.ResultKt.throwOnFailure(r11)
            ads_mobile_sdk.h6 r1 = r10.f
            kotlinx.coroutines.sync.Mutex r7 = r1.u
            r10.a = r7
            r10.b = r1
            r10.e = r5
            java.lang.Object r11 = r7.lock(r6, r10)
            if (r11 != r0) goto L56
            goto Lba
        L56:
            long r8 = r1.x     // Catch: java.lang.Throwable -> Lc3
            r7.unlock(r6)
            r10.a = r6
            r10.b = r6
            r10.e = r4
            java.lang.Object r11 = kotlinx.coroutines.DelayKt.m4512delayVtjQ1oo(r8, r10)
            if (r11 != r0) goto L68
            goto Lba
        L68:
            kotlin.jvm.internal.Ref$IntRef r7 = new kotlin.jvm.internal.Ref$IntRef
            r7.<init>()
            kotlin.jvm.internal.Ref$BooleanRef r4 = new kotlin.jvm.internal.Ref$BooleanRef
            r4.<init>()
            ads_mobile_sdk.h6 r1 = r10.f
            kotlinx.coroutines.sync.Mutex r11 = r1.u
            r10.a = r7
            r10.b = r4
            r10.c = r11
            r10.d = r1
            r10.e = r3
            java.lang.Object r3 = r11.lock(r6, r10)
            if (r3 != r0) goto L87
            goto Lba
        L87:
            r3 = r11
        L88:
            kotlinx.coroutines.CompletableJob r11 = r1.G     // Catch: java.lang.Throwable -> Lbe
            r11.complete()     // Catch: java.lang.Throwable -> Lbe
            java.util.Queue r11 = r1.C     // Catch: java.lang.Throwable -> Lbe
            int r11 = r11.size()     // Catch: java.lang.Throwable -> Lbe
            r7.element = r11     // Catch: java.lang.Throwable -> Lbe
            ads_mobile_sdk.w4 r11 = r1.v     // Catch: java.lang.Throwable -> Lbe
            ads_mobile_sdk.w4 r1 = kotlin.w4.ACTIVE     // Catch: java.lang.Throwable -> Lbe
            if (r11 != r1) goto L9c
            goto L9d
        L9c:
            r5 = 0
        L9d:
            r4.element = r5     // Catch: java.lang.Throwable -> Lbe
            kotlin.Unit r11 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lbe
            r3.unlock(r6)
            ads_mobile_sdk.h6 r11 = r10.f
            int r1 = r7.element
            boolean r3 = r4.element
            r10.a = r6
            r10.b = r6
            r10.c = r6
            r10.d = r6
            r10.e = r2
            kotlin.Unit r11 = r11.a(r1, r3)
            if (r11 != r0) goto Lbb
        Lba:
            return r0
        Lbb:
            kotlin.Unit r11 = p005kotlin.Unit.INSTANCE
            return r11
        Lbe:
            r11 = move-exception
            r3.unlock(r6)
            throw r11
        Lc3:
            r11 = move-exception
            r7.unlock(r6)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.e6.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
