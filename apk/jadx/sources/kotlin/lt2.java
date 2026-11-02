package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class lt2 extends SuspendLambda implements Function2 {
    public Object a;
    public pt2 b;
    public j53 c;
    public int d;
    public final /* synthetic */ pt2 e;
    public final /* synthetic */ j53 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lt2(pt2 pt2Var, j53 j53Var, Continuation continuation) {
        super(2, continuation);
        this.e = pt2Var;
        this.f = j53Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new lt2(this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new lt2(this.e, this.f, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:50:0x00d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:? A[LOOP:0: B:34:0x00a5->B:52:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ce, code lost:
    
        if (r10.x(r9) == r0) goto L41;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.lt2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
