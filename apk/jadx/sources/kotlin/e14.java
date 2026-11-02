package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class e14 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ r14 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e14(r14 r14Var, Continuation continuation) {
        super(2, continuation);
        this.b = r14Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new e14(this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new e14(this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006a, code lost:
    
        if (r8 == r0) goto L18;
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
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L6d
        L12:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1a:
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L2c
        L1e:
            p005kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.r14 r8 = r7.b
            r7.a = r3
            java.lang.Object r8 = kotlin.r14.c(r8, r7)
            if (r8 != r0) goto L2c
            goto L6c
        L2c:
            ads_mobile_sdk.r14 r8 = r7.b
            r7.a = r2
            ads_mobile_sdk.ex0 r1 = r8.c
            r1.getClass()
            r4 = 3
            java.lang.String[] r4 = new java.lang.String[r4]
            r5 = 0
            java.lang.String r6 = "https://pagead2.googlesyndication.com/omsdk/releases/live/omsdk-v1.js"
            r4[r5] = r6
            java.lang.String r5 = "https://pagead2.googlesyndication.com/omsdk/releases/live/omid_session_bin.js"
            r4[r3] = r5
            java.lang.String r3 = "https://www.googletagservices.com/activeview/js/current/lidar.js?cache=r20110914"
            r4[r2] = r3
            java.util.List r2 = p005kotlin.collections.CollectionsKt.listOf(r4)
            java.lang.String r3 = "key"
            java.lang.String r4 = "gads:webview_prefetch_resources_url_list"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r3)
            java.lang.String r3 = "defaultValue"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r3)
            ads_mobile_sdk.qr r3 = kotlin.yr.g
            java.lang.Object r1 = r1.a(r4, r2, r3)
            java.util.List r1 = (java.util.List) r1
            java.lang.Object r8 = kotlin.r14.a(r8, r1, r7)
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r8 != r1) goto L68
            goto L6a
        L68:
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE
        L6a:
            if (r8 != r0) goto L6d
        L6c:
            return r0
        L6d:
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.e14.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
