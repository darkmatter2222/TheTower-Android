package kotlin;

import androidx.datastore.core.DataStore;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class t22 extends nc1 {
    public final ks1 c;
    public final Mutex d;
    public k22 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t22(ks1 dataStore) {
        super(s11.CUI_NAME_SDKINIT_INIT_NATIVE_AD_SETTINGS, false);
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        this.c = dataStore;
        this.d = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, Continuation continuation, boolean z) {
        r22 r22Var;
        t22 t22Var;
        k22 k22Var;
        t22 t22Var2;
        Mutex mutex;
        if (continuation instanceof r22) {
            r22Var = (r22) continuation;
            int i = r22Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                r22Var.f = i - Integer.MIN_VALUE;
            } else {
                r22Var = new r22(this, continuation);
            }
        } else {
            r22Var = new r22(this, continuation);
        }
        Object objUpdateData = r22Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = r22Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            DataStore dataStore = (DataStore) this.c.get();
            s22 s22Var = new s22(str, null, z);
            r22Var.a = this;
            r22Var.f = 1;
            objUpdateData = dataStore.updateData(s22Var, r22Var);
            if (objUpdateData != coroutine_suspended) {
                t22Var = this;
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            t22Var = r22Var.a;
            p005kotlin.ResultKt.throwOnFailure(objUpdateData);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = r22Var.c;
            k22Var = r22Var.b;
            t22Var2 = r22Var.a;
            p005kotlin.ResultKt.throwOnFailure(objUpdateData);
        }
        try {
            t22Var2.e = k22Var;
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
        k22Var = (k22) objUpdateData;
        Mutex mutex2 = t22Var.d;
        r22Var.a = t22Var;
        r22Var.b = k22Var;
        r22Var.c = mutex2;
        r22Var.f = 2;
        if (mutex2.lock(null, r22Var) != coroutine_suspended) {
            t22Var2 = t22Var;
            mutex = mutex2;
            t22Var2.e = k22Var;
            return p005kotlin.Unit.INSTANCE;
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(String str, Continuation continuation) {
        n22 n22Var;
        if (continuation instanceof n22) {
            n22Var = (n22) continuation;
            int i = n22Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                n22Var.d = i - Integer.MIN_VALUE;
            } else {
                n22Var = new n22(this, continuation);
            }
        } else {
            n22Var = new n22(this, continuation);
        }
        Object objW = n22Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = n22Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objW);
            n22Var.a = str;
            n22Var.d = 1;
            objW = w(n22Var);
            if (objW == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = n22Var.a;
            p005kotlin.ResultKt.throwOnFailure(objW);
        }
        return ((k22) objW).v().get(str);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(long j, Continuation continuation) {
        p22 p22Var;
        t22 t22Var;
        k22 k22Var;
        t22 t22Var2;
        Mutex mutex;
        if (continuation instanceof p22) {
            p22Var = (p22) continuation;
            int i = p22Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                p22Var.f = i - Integer.MIN_VALUE;
            } else {
                p22Var = new p22(this, continuation);
            }
        } else {
            p22Var = new p22(this, continuation);
        }
        Object objUpdateData = p22Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = p22Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            DataStore dataStore = (DataStore) this.c.get();
            q22 q22Var = new q22(j, null);
            p22Var.a = this;
            p22Var.f = 1;
            objUpdateData = dataStore.updateData(q22Var, p22Var);
            if (objUpdateData != coroutine_suspended) {
                t22Var = this;
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            t22Var = p22Var.a;
            p005kotlin.ResultKt.throwOnFailure(objUpdateData);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = p22Var.c;
            k22Var = p22Var.b;
            t22Var2 = p22Var.a;
            p005kotlin.ResultKt.throwOnFailure(objUpdateData);
        }
        try {
            t22Var2.e = k22Var;
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
        k22Var = (k22) objUpdateData;
        Mutex mutex2 = t22Var.d;
        p22Var.a = t22Var;
        p22Var.b = k22Var;
        p22Var.c = mutex2;
        p22Var.f = 2;
        if (mutex2.lock(null, p22Var) != coroutine_suspended) {
            t22Var2 = t22Var;
            mutex = mutex2;
            t22Var2.e = k22Var;
            return p005kotlin.Unit.INSTANCE;
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0080 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x0031, B:28:0x007c, B:30:0x0080, B:31:0x0089), top: B:38:0x0031 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.nc1
    public final Object u(Continuation continuation) throws Throwable {
        o22 o22Var;
        Mutex mutex;
        t22 t22Var;
        Mutex mutex2;
        t22 t22Var2;
        k22 k22VarX;
        if (continuation instanceof o22) {
            o22Var = (o22) continuation;
            int i = o22Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                o22Var.e = i - Integer.MIN_VALUE;
            } else {
                o22Var = new o22(this, continuation);
            }
        } else {
            o22Var = new o22(this, continuation);
        }
        Object obj = o22Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = o22Var.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = this.d;
                o22Var.a = this;
                o22Var.b = mutex;
                o22Var.e = 1;
                if (mutex.lock(null, o22Var) != coroutine_suspended) {
                    t22Var = this;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                t22Var2 = (t22) o22Var.b;
                mutex2 = (Mutex) o22Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    k22VarX = (k22) obj;
                    if (k22VarX == null) {
                        k22VarX = k22.x();
                        Intrinsics.checkNotNullExpressionValue(k22VarX, "getDefaultInstance(...)");
                    }
                    t22Var2.e = k22VarX;
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return new q01(unit);
                } catch (Throwable th) {
                    Mutex mutex3 = mutex2;
                    th = th;
                    mutex = mutex3;
                    mutex.unlock(null);
                    throw th;
                }
            }
            Mutex mutex4 = (Mutex) o22Var.b;
            t22Var = (t22) o22Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex4;
            Flow data = ((DataStore) t22Var.c.get()).getData();
            o22Var.a = mutex;
            o22Var.b = t22Var;
            o22Var.e = 2;
            Object objFirstOrNull = FlowKt.firstOrNull(data, o22Var);
            if (objFirstOrNull != coroutine_suspended) {
                mutex2 = mutex;
                obj = objFirstOrNull;
                t22Var2 = t22Var;
                k22VarX = (k22) obj;
                if (k22VarX == null) {
                    k22VarX = k22.x();
                    Intrinsics.checkNotNullExpressionValue(k22VarX, "getDefaultInstance(...)");
                }
                t22Var2.e = k22VarX;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                return new q01(unit2);
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            th = th2;
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object v(Continuation continuation) {
        l22 l22Var;
        if (continuation instanceof l22) {
            l22Var = (l22) continuation;
            int i = l22Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                l22Var.c = i - Integer.MIN_VALUE;
            } else {
                l22Var = new l22(this, continuation);
            }
        } else {
            l22Var = new l22(this, continuation);
        }
        Object objW = l22Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = l22Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objW);
            l22Var.c = 1;
            objW = w(l22Var);
            if (objW == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objW);
        }
        return Boxing.boxLong(((k22) objW).w());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object w(Continuation continuation) {
        m22 m22Var;
        t22 t22Var;
        Mutex mutex;
        if (continuation instanceof m22) {
            m22Var = (m22) continuation;
            int i = m22Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                m22Var.e = i - Integer.MIN_VALUE;
            } else {
                m22Var = new m22(this, continuation);
            }
        } else {
            m22Var = new m22(this, continuation);
        }
        Object obj = m22Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = m22Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.d;
            m22Var.a = this;
            m22Var.b = mutex2;
            m22Var.e = 1;
            if (mutex2.lock(null, m22Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            t22Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = m22Var.b;
            t22Var = m22Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            k22 k22Var = t22Var.e;
            if (k22Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nativeAdSettings");
                k22Var = null;
            }
            return k22Var;
        } finally {
            mutex.unlock(null);
        }
    }
}
