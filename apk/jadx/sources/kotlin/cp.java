package kotlin;

import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class cp implements xd {
    public final g33 a;
    public final Mutex b;
    public Boolean c;

    public cp(CoroutineScope uiScope, g33 refreshListener) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(refreshListener, "refreshListener");
        this.a = refreshListener;
        this.b = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008d, code lost:
    
        if (r4.a(false, r0) == r1) goto L46;
     */
    @Override // kotlin.xd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(boolean r8, p005kotlin.coroutines.Continuation r9) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r9 instanceof kotlin.bp
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.bp r0 = (kotlin.bp) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.bp r0 = new ads_mobile_sdk.bp
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L52
            if (r2 == r5) goto L47
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            boolean r8 = r0.c
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.cp r0 = r0.a
            goto L41
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3b:
            boolean r8 = r0.c
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.cp r0 = r0.a
        L41:
            p005kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L45
            goto L92
        L45:
            r8 = move-exception
            goto La0
        L47:
            boolean r8 = r0.c
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.cp r5 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r9)
            r9 = r2
            goto L67
        L52:
            p005kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r7.b
            r0.a = r7
            r0.b = r9
            r0.c = r8
            r0.f = r5
            java.lang.Object r2 = r9.lock(r6, r0)
            if (r2 != r1) goto L66
            goto L8f
        L66:
            r5 = r7
        L67:
            java.lang.Boolean r2 = r5.c     // Catch: java.lang.Throwable -> L9e
            if (r2 == 0) goto L90
            r2 = 0
            if (r8 == 0) goto L7f
            ads_mobile_sdk.g33 r3 = r5.a     // Catch: java.lang.Throwable -> L9e
            r0.a = r5     // Catch: java.lang.Throwable -> L9e
            r0.b = r9     // Catch: java.lang.Throwable -> L9e
            r0.c = r8     // Catch: java.lang.Throwable -> L9e
            r0.f = r4     // Catch: java.lang.Throwable -> L9e
            java.lang.Object r0 = r3.c(r2, r0)     // Catch: java.lang.Throwable -> L9e
            if (r0 != r1) goto L90
            goto L8f
        L7f:
            ads_mobile_sdk.g33 r4 = r5.a     // Catch: java.lang.Throwable -> L9e
            r0.a = r5     // Catch: java.lang.Throwable -> L9e
            r0.b = r9     // Catch: java.lang.Throwable -> L9e
            r0.c = r8     // Catch: java.lang.Throwable -> L9e
            r0.f = r3     // Catch: java.lang.Throwable -> L9e
            java.lang.Object r0 = r4.a(r2, r0)     // Catch: java.lang.Throwable -> L9e
            if (r0 != r1) goto L90
        L8f:
            return r1
        L90:
            r1 = r9
            r0 = r5
        L92:
            java.lang.Boolean r8 = p005kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r8)     // Catch: java.lang.Throwable -> L45
            r0.c = r8     // Catch: java.lang.Throwable -> L45
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L45
            r1.unlock(r6)
            return r8
        L9e:
            r8 = move-exception
            r1 = r9
        La0:
            r1.unlock(r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.cp.b(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
