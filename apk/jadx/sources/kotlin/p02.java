package kotlin;

import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class p02 {
    public final Mutex a = MutexKt.Mutex(false);
    public Object b;

    public p02(Object obj) {
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ct3 ct3Var, dt3 dt3Var, Continuation continuation) throws Throwable {
        n02 n02Var;
        Mutex mutex;
        Function1 function1;
        p02 p02Var;
        Function1 function2;
        Mutex mutex2;
        p02 p02Var2;
        if (continuation instanceof n02) {
            n02Var = (n02) continuation;
            int i = n02Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                n02Var.g = i - Integer.MIN_VALUE;
            } else {
                n02Var = new n02(this, continuation);
            }
        } else {
            n02Var = new n02(this, continuation);
        }
        Object obj = n02Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = n02Var.g;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = this.a;
                n02Var.a = this;
                n02Var.b = ct3Var;
                n02Var.c = dt3Var;
                n02Var.d = mutex;
                n02Var.g = 1;
                if (mutex.lock(null, n02Var) != coroutine_suspended) {
                    function1 = ct3Var;
                    p02Var = this;
                    function2 = dt3Var;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p02Var = (p02) n02Var.c;
                mutex2 = (Mutex) n02Var.b;
                p02Var2 = n02Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    p02Var.b = obj;
                    p02Var = p02Var2;
                    Object obj2 = p02Var.b;
                    Intrinsics.checkNotNull(obj2);
                    mutex2.unlock(null);
                    return obj2;
                } catch (Throwable th) {
                    th = th;
                    mutex = mutex2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = n02Var.d;
            Function1 function3 = (Function1) n02Var.c;
            function1 = (Function1) n02Var.b;
            p02 p02Var3 = n02Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            p02Var = p02Var3;
            function2 = function3;
            Object obj3 = p02Var.b;
            if (obj3 != null) {
                Intrinsics.checkNotNull(obj3);
                if (!((Boolean) function1.invoke(obj3)).booleanValue()) {
                    mutex2 = mutex;
                }
                Object obj4 = p02Var.b;
                Intrinsics.checkNotNull(obj4);
                mutex2.unlock(null);
                return obj4;
            }
            n02Var.a = p02Var;
            n02Var.b = mutex;
            n02Var.c = p02Var;
            n02Var.d = null;
            n02Var.g = 2;
            Object objInvoke = function2.invoke(n02Var);
            if (objInvoke != coroutine_suspended) {
                Mutex mutex4 = mutex;
                obj = objInvoke;
                mutex2 = mutex4;
                p02Var2 = p02Var;
                p02Var.b = obj;
                p02Var = p02Var2;
                Object obj5 = p02Var.b;
                Intrinsics.checkNotNull(obj5);
                mutex2.unlock(null);
                return obj5;
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            th = th2;
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Object obj, Continuation continuation) {
        o02 o02Var;
        Mutex mutex;
        p02 p02Var;
        if (continuation instanceof o02) {
            o02Var = (o02) continuation;
            int i = o02Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                o02Var.f = i - Integer.MIN_VALUE;
            } else {
                o02Var = new o02(this, continuation);
            }
        } else {
            o02Var = new o02(this, continuation);
        }
        Object obj2 = o02Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = o02Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj2);
            mutex = this.a;
            o02Var.a = this;
            o02Var.b = obj;
            o02Var.c = mutex;
            o02Var.f = 1;
            if (mutex.lock(null, o02Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            p02Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = o02Var.c;
            Object obj3 = o02Var.b;
            p02Var = o02Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj2);
            mutex = mutex2;
            obj = obj3;
        }
        try {
            p02Var.b = obj;
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) {
        m02 m02Var;
        p02 p02Var;
        Mutex mutex;
        if (continuation instanceof m02) {
            m02Var = (m02) continuation;
            int i = m02Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                m02Var.e = i - Integer.MIN_VALUE;
            } else {
                m02Var = new m02(this, continuation);
            }
        } else {
            m02Var = new m02(this, continuation);
        }
        Object obj = m02Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = m02Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.a;
            m02Var.a = this;
            m02Var.b = mutex2;
            m02Var.e = 1;
            if (mutex2.lock(null, m02Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            p02Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = m02Var.b;
            p02Var = m02Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            return p02Var.b;
        } finally {
            mutex.unlock(null);
        }
    }
}
