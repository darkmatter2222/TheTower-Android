package kotlin;

import com.applovin.impl.sdk.utils.JsonUtils;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class fe1 extends SuspendLambda implements Function2 {
    public Mutex a;
    public if1 b;
    public int c;
    public final /* synthetic */ if1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fe1(if1 if1Var, Continuation continuation) {
        super(2, continuation);
        this.d = if1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new fe1(this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new fe1(this.d, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        if1 if1Var;
        Mutex mutex;
        Mutex mutex2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        try {
            if (i == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                if1Var = this.d;
                Mutex mutex3 = if1Var.x;
                this.a = mutex3;
                this.b = if1Var;
                this.c = 1;
                if (mutex3.lock(null, this) != coroutine_suspended) {
                    mutex = mutex3;
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = this.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit;
                } catch (Throwable th) {
                    th = th;
                    mutex = mutex2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            if1Var = this.b;
            Mutex mutex4 = this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex4;
            Long lBoxLong = Boxing.boxLong(Long.MAX_VALUE);
            this.a = mutex;
            this.b = null;
            this.c = 2;
            if (if1.a(if1Var, null, null, null, JsonUtils.EMPTY_JSON, lBoxLong, null, null, null, null, this, 487) != coroutine_suspended) {
                mutex2 = mutex;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                return unit2;
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            th = th2;
            mutex.unlock(null);
            throw th;
        }
    }
}
