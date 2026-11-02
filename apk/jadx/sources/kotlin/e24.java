package kotlin;

import com.google.gson.JsonObject;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class e24 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ r31 b;
    public final /* synthetic */ JsonObject c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ f24 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e24(r31 r31Var, JsonObject jsonObject, boolean z, f24 f24Var, Continuation continuation) {
        super(2, continuation);
        this.b = r31Var;
        this.c = jsonObject;
        this.d = z;
        this.e = f24Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new e24(this.b, this.c, this.d, this.e, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((e24) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0048, code lost:
    
        if (r1.a(r5, r4) == r0) goto L19;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            p005kotlin.ResultKt.throwOnFailure(r5)
            goto L4b
        L12:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L1a:
            p005kotlin.ResultKt.throwOnFailure(r5)
            goto L30
        L1e:
            p005kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.r31 r5 = r4.b
            com.google.gson.JsonObject r1 = r4.c
            r4.a = r3
            java.lang.String r3 = "onAdVisibilityChanged"
            java.lang.Object r5 = r5.a(r1, r3, r4)
            if (r5 != r0) goto L30
            goto L4a
        L30:
            boolean r5 = r4.d
            if (r5 == 0) goto L4b
            ads_mobile_sdk.f24 r5 = r4.e
            ads_mobile_sdk.zy r1 = r5.c
            ads_mobile_sdk.yy r1 = r1.v
            ads_mobile_sdk.yy r3 = kotlin.yy.e
            if (r1 != r3) goto L4b
            ads_mobile_sdk.r31 r1 = r4.b
            java.lang.String r5 = r5.d
            r4.a = r2
            java.lang.Object r5 = r1.a(r5, r4)
            if (r5 != r0) goto L4b
        L4a:
            return r0
        L4b:
            kotlin.Unit r5 = p005kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.e24.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
