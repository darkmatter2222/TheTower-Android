package kotlin;

import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugProbesKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h40 extends SuspendLambda implements Function2 {
    public Function2 a;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ f40 d;
    public final /* synthetic */ Function2 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h40(f40 f40Var, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.d = f40Var;
        this.e = function2;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        h40 h40Var = new h40(this.d, this.e, continuation);
        h40Var.c = obj;
        return h40Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((h40) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Mutex mutex;
        Function2 function2;
        Mutex mutex2;
        Throwable th;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        try {
            if (i == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                CoroutineScopeKt.ensureActive((CoroutineScope) this.c);
                mutex = this.d.a;
                function2 = this.e;
                this.c = mutex;
                this.a = function2;
                this.b = 1;
                g40 g40Var = g40.a;
                if ((!(g40Var instanceof BaseContinuationImpl) ? IntrinsicsKt.wrapWithContinuationImpl(g40Var, mutex, this) : ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(g40Var, 2)).invoke(mutex, this)) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    Continuation continuationIntercepted = IntrinsicsKt.intercepted(this);
                    p005kotlin.Result.Companion companion = p005kotlin.Result.INSTANCE;
                    continuationIntercepted.resumeWith(p005kotlin.Result.m3022constructorimpl(p005kotlin.Unit.INSTANCE));
                }
                Object coroutine_suspended2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (coroutine_suspended2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(this);
                }
                if (coroutine_suspended2 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    coroutine_suspended2 = p005kotlin.Unit.INSTANCE;
                }
                if (coroutine_suspended2 != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) this.c;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    Mutex.DefaultImpls.unlock$default(mutex2, null, 1, null);
                    return obj;
                } catch (Throwable th2) {
                    th = th2;
                    Mutex.DefaultImpls.unlock$default(mutex2, null, 1, null);
                    throw th;
                }
            }
            function2 = this.a;
            Mutex mutex3 = (Mutex) this.c;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            this.c = mutex;
            this.a = null;
            this.b = 2;
            Object objCoroutineScope = CoroutineScopeKt.coroutineScope(function2, this);
            if (objCoroutineScope != coroutine_suspended) {
                mutex2 = mutex;
                obj = objCoroutineScope;
                Mutex.DefaultImpls.unlock$default(mutex2, null, 1, null);
                return obj;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            mutex2 = mutex;
            th = th3;
            Mutex.DefaultImpls.unlock$default(mutex2, null, 1, null);
            throw th;
        }
    }
}
