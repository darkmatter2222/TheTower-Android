package kotlin;

import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.CompletableJob;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class z60 extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ k70 c;
    public final /* synthetic */ Long d;
    public final /* synthetic */ AtomicReference e;
    public final /* synthetic */ CompletableJob f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z60(boolean z, k70 k70Var, Long l, AtomicReference atomicReference, CompletableJob completableJob, Continuation continuation) {
        super(1, continuation);
        this.b = z;
        this.c = k70Var;
        this.d = l;
        this.e = atomicReference;
        this.f = completableJob;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new z60(this.b, this.c, this.d, this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((z60) create((Continuation) obj)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0091, code lost:
    
        if (r11 == r1) goto L33;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.z60.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
