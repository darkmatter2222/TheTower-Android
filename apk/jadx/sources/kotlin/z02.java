package kotlin;

import com.google.gson.JsonObject;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class z02 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ g12 b;
    public final /* synthetic */ JsonObject c;
    public final /* synthetic */ eo2 d;
    public final /* synthetic */ s02 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z02(eo2 eo2Var, s02 s02Var, g12 g12Var, JsonObject jsonObject, Continuation continuation) {
        super(2, continuation);
        this.b = g12Var;
        this.c = jsonObject;
        this.d = eo2Var;
        this.e = s02Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new z02(this.d, this.e, this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((z02) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ae, code lost:
    
        if (kotlin.g12.a(r3, r1, r13, r12) == r0) goto L33;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r12.a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1f
            if (r1 == r3) goto L1b
            if (r1 != r2) goto L13
            p005kotlin.ResultKt.throwOnFailure(r13)
            goto Lb4
        L13:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L1b:
            p005kotlin.ResultKt.throwOnFailure(r13)
            goto L34
        L1f:
            p005kotlin.ResultKt.throwOnFailure(r13)
            ads_mobile_sdk.g12 r13 = r12.b
            ads_mobile_sdk.v42 r13 = r13.c
            com.google.gson.JsonObject r1 = r12.c
            ads_mobile_sdk.eo2 r4 = r12.d
            r12.a = r3
            java.lang.Object r13 = r13.a(r1, r4, r12)
            if (r13 != r0) goto L34
            goto Lb0
        L34:
            ads_mobile_sdk.r31 r13 = (kotlin.r31) r13
            if (r13 == 0) goto Lb4
            ads_mobile_sdk.s02 r1 = r12.e
            ads_mobile_sdk.g12 r3 = r12.b
            com.google.gson.JsonObject r4 = r12.c
            r1.j = r13
            r1.k = r13
            ads_mobile_sdk.q41 r5 = r13.d()
            r1.l = r5
            ads_mobile_sdk.q41 r5 = r13.d()
            r1.m = r5
            ads_mobile_sdk.ex0 r5 = r3.f
            r5.getClass()
            java.lang.String r6 = "gads:immersive_video_ads:enabled"
            java.lang.String r7 = "key"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r7)
            java.lang.Boolean r8 = java.lang.Boolean.TRUE
            ads_mobile_sdk.ir r9 = kotlin.yr.b
            java.lang.Object r5 = r5.a(r6, r8, r9)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto Lb4
            ads_mobile_sdk.ds1 r5 = kotlin.ds1.a
            java.lang.String r5 = "video"
            r6 = 0
            com.google.gson.JsonObject r4 = kotlin.ds1.a(r4, r5, r6)
            if (r4 == 0) goto Lb4
            java.lang.String r5 = "flags"
            com.google.gson.JsonArray r4 = kotlin.ds1.e(r4, r5)
            if (r4 == 0) goto Lb4
            int r5 = r4.size()
            r6 = 0
        L82:
            if (r6 >= r5) goto Lb4
            ads_mobile_sdk.ds1 r8 = kotlin.ds1.a
            com.google.gson.JsonObject r8 = kotlin.ds1.a(r4, r6)
            if (r8 != 0) goto L8d
            goto Lb1
        L8d:
            java.lang.String r9 = ""
            java.lang.String r10 = kotlin.ds1.a(r8, r7, r9)
            java.lang.String r11 = "afma_video_player_type"
            boolean r10 = p005kotlin.jvm.internal.Intrinsics.areEqual(r10, r11)
            if (r10 == 0) goto Lb1
            java.lang.String r4 = "value"
            java.lang.String r4 = kotlin.ds1.a(r8, r4, r9)     // Catch: java.lang.NumberFormatException -> Lb4
            int r4 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.NumberFormatException -> Lb4
            r5 = 3
            if (r4 != r5) goto Lb4
            r12.a = r2
            java.lang.Object r13 = kotlin.g12.a(r3, r1, r13, r12)
            if (r13 != r0) goto Lb4
        Lb0:
            return r0
        Lb1:
            int r6 = r6 + 1
            goto L82
        Lb4:
            kotlin.Unit r13 = p005kotlin.Unit.INSTANCE
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.z02.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
