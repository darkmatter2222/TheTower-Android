package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class kj1 extends bs implements hj1 {
    public final int e;
    public final bb2 f;
    public final ex0 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kj1(String requestId, int i, ks3 traceMetaSet, ej1 internalAdRequestEventEmitter, bb2 networkRequester, ex0 flags) {
        super(requestId, i, traceMetaSet, internalAdRequestEventEmitter);
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        Intrinsics.checkNotNullParameter(networkRequester, "networkRequester");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.e = i;
        this.f = networkRequester;
        this.g = flags;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a5, code lost:
    
        if (r9 == r1) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.kj1 r8, p005kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof kotlin.ij1
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.ij1 r0 = (kotlin.ij1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.ij1 r0 = new ads_mobile_sdk.ij1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3b
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            p005kotlin.ResultKt.throwOnFailure(r9)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            goto La8
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L35:
            ads_mobile_sdk.kj1 r8 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L72
        L3b:
            p005kotlin.ResultKt.throwOnFailure(r9)
            r0.a = r8
            r0.d = r4
            r8.getClass()
            ads_mobile_sdk.rr3 r9 = kotlin.hs3.a()
            ads_mobile_sdk.ks3 r2 = r8.c
            java.lang.String r5 = "<set-?>"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r5)
            r9.a = r2
            ads_mobile_sdk.ks3 r9 = r8.c
            ads_mobile_sdk.tn1 r9 = r9.b
            java.lang.String r2 = r8.a
            r9.a = r2
            int r2 = r8.b
            r9.c = r2
            ads_mobile_sdk.ej1 r9 = r8.d
            java.lang.Object r9 = r9.c(r0)
            java.lang.Object r2 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r9 != r2) goto L6d
            kotlin.Unit r9 = (p005kotlin.Unit) r9
            goto L6f
        L6d:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE
        L6f:
            if (r9 != r1) goto L72
            goto La7
        L72:
            ads_mobile_sdk.ex0 r9 = r8.g     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            r9.getClass()     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            java.lang.String r2 = "gads:load_timeout:milliseconds"
            kotlin.time.Duration$Companion r5 = p005kotlin.time.Duration.INSTANCE     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            kotlin.time.DurationUnit r5 = p005kotlin.time.DurationUnit.MINUTES     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            r6 = 5
            long r5 = p005kotlin.time.DurationKt.toDuration(r6, r5)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            java.lang.String r7 = "key"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r7)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            kotlin.time.Duration r5 = p005kotlin.time.Duration.m4365boximpl(r5)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            ads_mobile_sdk.sr r6 = kotlin.yr.j     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            java.lang.Object r9 = r9.a(r2, r5, r6)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            kotlin.time.Duration r9 = (p005kotlin.time.Duration) r9     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            long r5 = r9.getRawValue()     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            ads_mobile_sdk.jj1 r9 = new ads_mobile_sdk.jj1     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            r2 = 0
            r9.<init>(r8, r2)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            r0.a = r2     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            r0.d = r3     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            java.lang.Object r9 = kotlinx.coroutines.TimeoutKt.m4522withTimeoutKLykuaI(r5, r9, r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            if (r9 != r1) goto La8
        La7:
            return r1
        La8:
            ads_mobile_sdk.v01 r9 = (kotlin.v01) r9     // Catch: kotlinx.coroutines.TimeoutCancellationException -> Lab
            return r9
        Lab:
            r8 = move-exception
            ads_mobile_sdk.r01 r9 = new ads_mobile_sdk.r01
            r9.<init>(r8, r4)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.kj1.a(ads_mobile_sdk.kj1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final int a() {
        return this.e;
    }

    public final Object a(vk2 vk2Var) {
        return a(this, vk2Var);
    }
}
