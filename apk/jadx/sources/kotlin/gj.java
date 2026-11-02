package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class gj extends SuspendLambda implements Function2 {
    public Mutex a;
    public sj b;
    public int c;
    public final /* synthetic */ sj d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gj(sj sjVar, Continuation continuation) {
        super(2, continuation);
        this.d = sjVar;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new gj(this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new gj(this.d, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Mutex mutex;
        sj sjVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            sj sjVar2 = this.d;
            mutex = sjVar2.w;
            this.a = mutex;
            this.b = sjVar2;
            this.c = 1;
            if (mutex.lock(null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            sjVar = sjVar2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sjVar = this.b;
            mutex = this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            Duration.Companion companion = Duration.INSTANCE;
            sjVar.f.getClass();
            sjVar.x = DurationKt.toDuration(System.currentTimeMillis(), DurationUnit.MILLISECONDS);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            mutex.unlock(null);
            sj sjVar3 = this.d;
            if (sjVar3.s != aj.NO_ANR) {
                sjVar3.y.mo4525trySendJP2dKIU(unit);
            }
            return unit;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }
}
