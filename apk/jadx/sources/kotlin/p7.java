package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class p7 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ long b;
    public final /* synthetic */ q7 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p7(long j, q7 q7Var, Continuation continuation) {
        super(2, continuation);
        this.b = j;
        this.c = q7Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new p7(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new p7(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    /* JADX WARN: Code duplicated, block: B:16:0x0038  */
    /* JADX WARN: Code duplicated, block: B:19:0x004e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0056 -> B:13:0x0025). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.a
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L22
            if (r1 == r4) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            goto L22
        L12:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1a:
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L4e
        L1e:
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L38
        L22:
            p005kotlin.ResultKt.throwOnFailure(r8)
        L25:
            kotlin.time.Duration$Companion r8 = p005kotlin.time.Duration.INSTANCE
            long r5 = r7.b
            kotlin.time.DurationUnit r8 = p005kotlin.time.DurationUnit.MILLISECONDS
            long r5 = p005kotlin.time.DurationKt.toDuration(r5, r8)
            r7.a = r4
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.m4512delayVtjQ1oo(r5, r7)
            if (r8 != r0) goto L38
            goto L58
        L38:
            ads_mobile_sdk.q7 r8 = r7.c
            ads_mobile_sdk.ux r8 = r8.b
            r8.getClass()
            long r5 = java.lang.System.currentTimeMillis()
            ads_mobile_sdk.q7 r8 = r7.c
            r7.a = r3
            java.lang.Object r8 = r8.a(r5, r7)
            if (r8 != r0) goto L4e
            goto L58
        L4e:
            ads_mobile_sdk.q7 r8 = r7.c
            r7.a = r2
            java.lang.Object r8 = r8.c(r7)
            if (r8 != r0) goto L25
        L58:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.p7.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
