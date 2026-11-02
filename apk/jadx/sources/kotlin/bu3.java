package kotlin;

import com.ironsource.C3510b4;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class bu3 extends ou {
    public final g30 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bu3(g30 consentManager, ex0 flags, f0 activityTracker, g83 rootTraceCreator, tx clock, CoroutineScope backgroundScope) {
        super(clock, backgroundScope, rootTraceCreator, flags, activityTracker);
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.l = consentManager;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.TRUSTLESS_TOKEN;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0099  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0064, code lost:
    
        if (r8 == r1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0084, code lost:
    
        if (r8 == r1) goto L30;
     */
    @Override // kotlin.rh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object s(p005kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof kotlin.zt3
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.zt3 r0 = (kotlin.zt3) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.zt3 r0 = new ads_mobile_sdk.zt3
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.a
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L87
        L2c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L34:
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L67
        L38:
            p005kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.ex0 r8 = r7.f
            ads_mobile_sdk.x00 r8 = r8.r
            r8.getClass()
            java.lang.String r2 = "key"
            java.lang.String r5 = "gads:trustless_token_caching_in_signal_source_enabled"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r2)
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r6 = kotlin.yr.b
            java.lang.Object r8 = r8.a(r5, r2, r6)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L79
            ads_mobile_sdk.g30 r8 = r7.l
            r0.c = r4
            r8.getClass()
            java.lang.Object r8 = kotlin.g30.j(r8, r0)
            if (r8 != r1) goto L67
            goto L86
        L67:
            ads_mobile_sdk.v01 r8 = (kotlin.v01) r8
            if (r8 == 0) goto L99
            boolean r0 = r8 instanceof kotlin.i01
            if (r0 == 0) goto L72
            ads_mobile_sdk.i01 r8 = (kotlin.i01) r8
            return r8
        L72:
            ads_mobile_sdk.q01 r8 = (kotlin.q01) r8
            java.lang.Object r8 = r8.b
            java.lang.String r8 = (java.lang.String) r8
            goto L9a
        L79:
            ads_mobile_sdk.g30 r8 = r7.l
            r0.c = r3
            r8.getClass()
            java.lang.Object r8 = kotlin.g30.k(r8, r0)
            if (r8 != r1) goto L87
        L86:
            return r1
        L87:
            ads_mobile_sdk.v01 r8 = (kotlin.v01) r8
            if (r8 == 0) goto L99
            boolean r0 = r8 instanceof kotlin.i01
            if (r0 == 0) goto L92
            ads_mobile_sdk.i01 r8 = (kotlin.i01) r8
            return r8
        L92:
            ads_mobile_sdk.q01 r8 = (kotlin.q01) r8
            java.lang.Object r8 = r8.b
            java.lang.String r8 = (java.lang.String) r8
            goto L9a
        L99:
            r8 = 0
        L9a:
            ads_mobile_sdk.q01 r0 = new ads_mobile_sdk.q01
            ads_mobile_sdk.yt3 r1 = new ads_mobile_sdk.yt3
            r1.<init>(r8)
            r0.<init>(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.bu3.s(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.ou
    public final Object v(Continuation continuation) {
        au3 au3Var;
        bu3 bu3Var;
        if (continuation instanceof au3) {
            au3Var = (au3) continuation;
            int i = au3Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                au3Var.d = i - Integer.MIN_VALUE;
            } else {
                au3Var = new au3(this, continuation);
            }
        } else {
            au3Var = new au3(this, continuation);
        }
        Object objM = au3Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = au3Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objM);
            x00 x00Var = this.f.r;
            x00Var.getClass();
            Intrinsics.checkNotNullParameter("gads:trustless_token_caching_in_signal_source_enabled", C3510b4.i.W);
            if (((Boolean) x00Var.a("gads:trustless_token_caching_in_signal_source_enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                g30 g30Var = this.l;
                au3Var.a = this;
                au3Var.d = 1;
                g30Var.getClass();
                objM = g30.m(g30Var, au3Var);
                if (objM != coroutine_suspended) {
                    bu3Var = this;
                }
            }
            return null;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objM);
            return objM;
        }
        bu3Var = au3Var.a;
        p005kotlin.ResultKt.throwOnFailure(objM);
        if (((Boolean) objM).booleanValue()) {
            au3Var.a = null;
            au3Var.d = 2;
            bu3Var.getClass();
            Object objB = ou.b(bu3Var, au3Var);
            return objB == coroutine_suspended ? coroutine_suspended : objB;
        }
        return null;
    }
}
