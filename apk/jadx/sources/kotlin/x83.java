package kotlin;

import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class x83 extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ b93 b;
    public final /* synthetic */ BaseRequest c;
    public final /* synthetic */ j53 d;
    public final /* synthetic */ AdSize e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x83(b93 b93Var, BaseRequest baseRequest, j53 j53Var, AdSize adSize, Continuation continuation) {
        super(1, continuation);
        this.b = b93Var;
        this.c = baseRequest;
        this.d = j53Var;
        this.e = adSize;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new x83(this.b, this.c, this.d, this.e, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((x83) create((Continuation) obj)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0139 A[LOOP:0: B:42:0x0133->B:44:0x0139, LOOP_END] */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x010f, code lost:
    
        if (r2 == r1) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0176, code lost:
    
        if (kotlinx.coroutines.AwaitKt.joinAll(r6, r19) == r1) goto L47;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.x83.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
