package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class yn2 extends SuspendLambda implements Function2 {
    public int a;
    public int b;
    public final /* synthetic */ do2 c;
    public final /* synthetic */ ao2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yn2(do2 do2Var, ao2 ao2Var, Continuation continuation) {
        super(2, continuation);
        this.c = do2Var;
        this.d = ao2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new yn2(this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new yn2(this.c, this.d, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0050  */
    /* JADX WARN: Code duplicated, block: B:17:0x0061 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x005f -> B:18:0x0062). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.b
            r2 = 1
            if (r1 == 0) goto L19
            if (r1 != r2) goto L11
            int r1 = r6.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L62
        L11:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L19:
            p005kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.do2 r7 = r6.c
            ads_mobile_sdk.sn2 r7 = r7.i
            if (r7 == 0) goto L23
            goto L73
        L23:
            ads_mobile_sdk.ao2 r7 = r6.d
            ads_mobile_sdk.qn2 r7 = r7.h
            ads_mobile_sdk.ex0 r7 = r7.a
            r7.getClass()
            kotlin.time.Duration$Companion r1 = p005kotlin.time.Duration.INSTANCE
            kotlin.time.DurationUnit r1 = p005kotlin.time.DurationUnit.MILLISECONDS
            java.lang.String r3 = "key"
            r4 = 3000(0xbb8, float:4.204E-42)
            java.lang.String r5 = "gads:picture_in_picture:close_button_delay_ms"
            kotlin.time.Duration r1 = kotlin.wm2.a(r4, r1, r5, r3)
            ads_mobile_sdk.sr r3 = kotlin.yr.j
            java.lang.Object r7 = r7.a(r5, r1, r3)
            kotlin.time.Duration r7 = (p005kotlin.time.Duration) r7
            long r3 = r7.getRawValue()
            long r3 = p005kotlin.time.Duration.m4381getInWholeSecondsimpl(r3)
            int r7 = (int) r3
            if (r7 <= 0) goto L73
            r1 = r7
        L4e:
            if (r1 <= 0) goto L65
            ads_mobile_sdk.do2 r7 = r6.c
            r7.b(r1)
            r6.a = r1
            r6.b = r2
            r3 = 1000(0x3e8, double:4.94E-321)
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.delay(r3, r6)
            if (r7 != r0) goto L62
            return r0
        L62:
            int r1 = r1 + (-1)
            goto L4e
        L65:
            ads_mobile_sdk.do2 r7 = r6.c
            ads_mobile_sdk.sn2 r0 = r7.j
            if (r0 == 0) goto L73
            r7.removeView(r0)
            r0 = 0
            r7.j = r0
            r7.k = r0
        L73:
            ads_mobile_sdk.do2 r7 = r6.c
            ads_mobile_sdk.xn2 r0 = new ads_mobile_sdk.xn2
            ads_mobile_sdk.ao2 r1 = r6.d
            r0.<init>(r1)
            r7.a(r0)
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.yn2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
