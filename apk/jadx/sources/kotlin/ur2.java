package kotlin;

import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ur2 extends SuspendLambda implements Function2 {
    public Mutex a;
    public pt2 b;
    public j53 c;
    public String d;
    public int e;
    public final /* synthetic */ pt2 f;
    public final /* synthetic */ j53 g;
    public final /* synthetic */ String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ur2(j53 j53Var, pt2 pt2Var, String str, Continuation continuation) {
        super(2, continuation);
        this.f = pt2Var;
        this.g = j53Var;
        this.h = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ur2(this.g, this.f, this.h, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ur2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0065, code lost:
    
        if (r8 == r0) goto L23;
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
            int r1 = r7.e
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L27
            if (r1 == r3) goto L1b
            if (r1 != r2) goto L13
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L68
        L13:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1b:
            java.lang.String r1 = r7.d
            ads_mobile_sdk.j53 r3 = r7.c
            ads_mobile_sdk.pt2 r5 = r7.b
            kotlinx.coroutines.sync.Mutex r6 = r7.a
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L44
        L27:
            p005kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.pt2 r5 = r7.f
            kotlinx.coroutines.sync.Mutex r6 = r5.q
            ads_mobile_sdk.j53 r8 = r7.g
            java.lang.String r1 = r7.h
            r7.a = r6
            r7.b = r5
            r7.c = r8
            r7.d = r1
            r7.e = r3
            java.lang.Object r3 = r6.lock(r4, r7)
            if (r3 != r0) goto L43
            goto L67
        L43:
            r3 = r8
        L44:
            java.util.LinkedHashMap r8 = r5.a(r3)     // Catch: java.lang.Throwable -> L7a
            if (r8 == 0) goto L51
            java.lang.Object r8 = r8.get(r1)     // Catch: java.lang.Throwable -> L7a
            ads_mobile_sdk.h6 r8 = (kotlin.h6) r8     // Catch: java.lang.Throwable -> L7a
            goto L52
        L51:
            r8 = r4
        L52:
            r6.unlock(r4)
            if (r8 == 0) goto L79
            r7.a = r4
            r7.b = r4
            r7.c = r4
            r7.d = r4
            r7.e = r2
            java.lang.Object r8 = r8.v(r7)
            if (r8 != r0) goto L68
        L67:
            return r0
        L68:
            ads_mobile_sdk.yt2 r8 = (kotlin.yt2) r8
            if (r8 == 0) goto L79
            ads_mobile_sdk.xt2 r8 = r8.a
            if (r8 == 0) goto L79
            ads_mobile_sdk.zh1 r8 = r8.a
            if (r8 == 0) goto L79
            com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r8 = r8.getResponseInfo()
            return r8
        L79:
            return r4
        L7a:
            r8 = move-exception
            r6.unlock(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ur2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
