package kotlin;

import java.util.List;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class r33 extends SuspendLambda implements Function2 {
    public du1 a;
    public List b;
    public ec3 c;
    public i2 d;
    public Integer e;
    public int f;
    public final /* synthetic */ v33 g;
    public final /* synthetic */ List h;
    public final /* synthetic */ i2 i;
    public final /* synthetic */ long j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r33(v33 v33Var, List list, i2 i2Var, long j, Continuation continuation) {
        super(2, continuation);
        this.g = v33Var;
        this.h = list;
        this.i = i2Var;
        this.j = j;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new r33(this.g, this.h, this.i, this.j, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((r33) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a1, code lost:
    
        if (r0 == r15) goto L20;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.r33.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
