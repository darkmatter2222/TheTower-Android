package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.MediationAdError;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class fo3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ jf a;
    public final /* synthetic */ io3 b;
    public final /* synthetic */ CancellableContinuation c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fo3(jf jfVar, io3 io3Var, CancellableContinuation cancellableContinuation, Continuation continuation) {
        super(2, continuation);
        this.a = jfVar;
        this.b = io3Var;
        this.c = cancellableContinuation;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new fo3(this.a, this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((fo3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        try {
            jf jfVar = this.a;
            if (jfVar instanceof qv1) {
                io3 io3Var = this.b;
                io3Var.l.a(io3Var.h, io3Var.f, jfVar, new do3(io3Var, atomicBoolean, this.c));
            } else if (jfVar instanceof u83) {
                io3 io3Var2 = this.b;
                io3Var2.m.a(io3Var2.h, io3Var2.f, jfVar, new do3(io3Var2, atomicBoolean, this.c));
            } else if (jfVar instanceof rc2) {
                rf rfVar = (rf) this.b.n.get();
                io3 io3Var3 = this.b;
                rfVar.a(io3Var3.h, io3Var3.f, this.a, new do3(io3Var3, atomicBoolean, this.c));
            }
        } catch (Throwable th) {
            if (atomicBoolean.getAndSet(true)) {
                return p005kotlin.Unit.INSTANCE;
            }
            CancellableContinuation cancellableContinuation = this.c;
            int value = kk1.INTERNAL_ERROR.d().getValue();
            String message = th.getMessage();
            if (message == null) {
                message = th.toString();
            }
            l01 l01Var = new l01(new MediationAdError(value, message, "com.google.android.libraries.ads.mobile.sdk"));
            p005kotlin.Result.Companion companion = p005kotlin.Result.INSTANCE;
            cancellableContinuation.resumeWith(p005kotlin.Result.m3022constructorimpl(l01Var));
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
