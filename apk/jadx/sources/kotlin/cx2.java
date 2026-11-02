package kotlin;

import kotlinx.coroutines.flow.FlowCollector;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public final class cx2 extends SuspendLambda implements Function3 {
    public int a;
    public /* synthetic */ FlowCollector b;
    public /* synthetic */ Throwable c;
    public final /* synthetic */ px2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cx2(px2 px2Var, Continuation continuation) {
        super(3, continuation);
        this.d = px2Var;
    }

    @Override // p005kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        cx2 cx2Var = new cx2(this.d, (Continuation) obj3);
        cx2Var.b = (FlowCollector) obj;
        cx2Var.c = (Throwable) obj2;
        return cx2Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0071, code lost:
    
        if (r3.emit(r1, r7) == r0) goto L16;
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
            if (r1 == 0) goto L22
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L74
        L12:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1a:
            java.lang.Throwable r1 = r7.c
            kotlinx.coroutines.flow.FlowCollector r3 = r7.b
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L40
        L22:
            p005kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.flow.FlowCollector r8 = r7.b
            java.lang.Throwable r1 = r7.c
            com.google.common.base.Splitter r4 = kotlin.f01.a
            java.lang.String r4 = "Ad failed to load"
            kotlin.f01.b(r4, r1)
            ads_mobile_sdk.px2 r4 = r7.d
            r7.b = r8
            r7.c = r1
            r7.a = r3
            java.lang.Object r3 = r4.c(r7)
            if (r3 != r0) goto L3f
            goto L73
        L3f:
            r3 = r8
        L40:
            ads_mobile_sdk.px2 r8 = r7.d
            ads_mobile_sdk.j01 r4 = new ads_mobile_sdk.j01
            r5 = 6
            r6 = 0
            r4.<init>(r1, r6, r6, r5)
            r8.getClass()
            java.lang.String r8 = "error"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r8)
            com.google.android.libraries.ads.mobile.sdk.common.LoadAdError r8 = new com.google.android.libraries.ads.mobile.sdk.common.LoadAdError
            ads_mobile_sdk.kk1 r1 = r4.a()
            com.google.android.libraries.ads.mobile.sdk.common.LoadAdError$ErrorCode r1 = r1.d()
            java.lang.String r4 = kotlin.h01.a(r4)
            r8.<init>(r1, r4, r6)
            ads_mobile_sdk.qx2 r1 = new ads_mobile_sdk.qx2
            r1.<init>(r8)
            r7.b = r6
            r7.c = r6
            r7.a = r2
            java.lang.Object r8 = r3.emit(r1, r7)
            if (r8 != r0) goto L74
        L73:
            return r0
        L74:
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.cx2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
