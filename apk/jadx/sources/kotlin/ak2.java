package kotlin;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ak2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ long b;
    public final /* synthetic */ ek2 c;
    public final /* synthetic */ ko d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ak2(long j, ek2 ek2Var, ko koVar, Continuation continuation) {
        super(2, continuation);
        this.b = j;
        this.c = ek2Var;
        this.d = koVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ak2(this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ak2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00d7 A[Catch: all -> 0x0117, TryCatch #3 {all -> 0x0117, blocks: (B:25:0x00b1, B:27:0x00bd, B:30:0x00ee, B:32:0x010d, B:29:0x00d7), top: B:108:0x00b1 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0185 A[Catch: all -> 0x01c6, TryCatch #2 {all -> 0x01c6, blocks: (B:63:0x015f, B:65:0x016b, B:68:0x019c, B:70:0x01bb, B:67:0x0185), top: B:106:0x015f }] */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
    
        if (kotlin.ek2.a(r2, r16) == r0) goto L21;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instruction units count: 517
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ak2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
