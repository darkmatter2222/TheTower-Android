package kotlin;

import androidx.datastore.core.DataStore;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xb0 {
    public final ks1 a;
    public final Mutex b;
    public qb0 c;

    public xb0(ks1 dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        this.a = dataStore;
        this.b = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(xb0 xb0Var, qb0 qb0Var, Continuation continuation) {
        vb0 vb0Var;
        qb0 qb0Var2;
        xb0 xb0Var2;
        Mutex mutex;
        if (continuation instanceof vb0) {
            vb0Var = (vb0) continuation;
            int i = vb0Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                vb0Var.f = i - Integer.MIN_VALUE;
            } else {
                vb0Var = new vb0(xb0Var, continuation);
            }
        } else {
            vb0Var = new vb0(xb0Var, continuation);
        }
        Object objUpdateData = vb0Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = vb0Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
                DataStore dataStore = (DataStore) xb0Var.a.get();
                wb0 wb0Var = new wb0(qb0Var, null);
                vb0Var.a = xb0Var;
                vb0Var.f = 1;
                objUpdateData = dataStore.updateData(wb0Var, vb0Var);
                if (objUpdateData == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                xb0Var = vb0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex = vb0Var.c;
                qb0Var2 = vb0Var.b;
                xb0Var2 = vb0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            }
            try {
                xb0Var2.c = qb0Var2;
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            } finally {
                mutex.unlock(null);
            }
            qb0Var2 = (qb0) objUpdateData;
            Mutex mutex2 = xb0Var.b;
            vb0Var.a = xb0Var;
            vb0Var.b = qb0Var2;
            vb0Var.c = mutex2;
            vb0Var.f = 2;
            if (mutex2.lock(null, vb0Var) != coroutine_suspended) {
                xb0Var2 = xb0Var;
                mutex = mutex2;
                xb0Var2.c = qb0Var2;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            }
            return coroutine_suspended;
        } catch (Exception exception) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            rr3 rr3VarA = hs3.a();
            rr3VarA.e().m = false;
            rr3VarA.a(exception);
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x008a  */
    /* JADX WARN: Code duplicated, block: B:34:0x009f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(xb0 xb0Var, Continuation continuation) {
        sb0 sb0Var;
        Mutex mutex;
        qb0 qb0VarW;
        Mutex mutex2;
        xb0 xb0Var2;
        qb0 qb0Var;
        Mutex mutex3;
        if (continuation instanceof sb0) {
            sb0Var = (sb0) continuation;
            int i = sb0Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                sb0Var.f = i - Integer.MIN_VALUE;
            } else {
                sb0Var = new sb0(xb0Var, continuation);
            }
        } else {
            sb0Var = new sb0(xb0Var, continuation);
        }
        Object objFirstOrNull = sb0Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = sb0Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objFirstOrNull);
                mutex = xb0Var.b;
                sb0Var.a = xb0Var;
                sb0Var.b = mutex;
                sb0Var.f = 1;
                if (mutex.lock(null, sb0Var) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                Mutex mutex4 = (Mutex) sb0Var.b;
                xb0 xb0Var3 = sb0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objFirstOrNull);
                mutex = mutex4;
                xb0Var = xb0Var3;
            } else {
                if (i2 == 2) {
                    xb0Var = sb0Var.a;
                    p005kotlin.ResultKt.throwOnFailure(objFirstOrNull);
                    qb0VarW = (qb0) objFirstOrNull;
                    if (qb0VarW == null) {
                        qb0VarW = qb0.w();
                    }
                    mutex2 = xb0Var.b;
                    sb0Var.a = xb0Var;
                    sb0Var.b = qb0VarW;
                    sb0Var.c = mutex2;
                    sb0Var.f = 3;
                    if (mutex2.lock(null, sb0Var) != coroutine_suspended) {
                        xb0Var2 = xb0Var;
                        qb0Var = qb0VarW;
                        mutex3 = mutex2;
                    }
                    return coroutine_suspended;
                }
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex3 = sb0Var.c;
                qb0Var = (qb0) sb0Var.b;
                xb0Var2 = sb0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objFirstOrNull);
            }
            try {
                xb0Var2.c = qb0Var;
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                mutex3.unlock(null);
                Intrinsics.checkNotNull(qb0Var);
                return qb0Var;
            } catch (Throwable th) {
                mutex3.unlock(null);
                throw th;
            }
            qb0 qb0Var2 = xb0Var.c;
            mutex.unlock(null);
            if (qb0Var2 != null) {
                return qb0Var2;
            }
            Flow data = ((DataStore) xb0Var.a.get()).getData();
            sb0Var.a = xb0Var;
            sb0Var.b = null;
            sb0Var.f = 2;
            objFirstOrNull = FlowKt.firstOrNull(data, sb0Var);
            if (objFirstOrNull != coroutine_suspended) {
                qb0VarW = (qb0) objFirstOrNull;
                if (qb0VarW == null) {
                    qb0VarW = qb0.w();
                }
                mutex2 = xb0Var.b;
                sb0Var.a = xb0Var;
                sb0Var.b = qb0VarW;
                sb0Var.c = mutex2;
                sb0Var.f = 3;
                if (mutex2.lock(null, sb0Var) != coroutine_suspended) {
                    xb0Var2 = xb0Var;
                    qb0Var = qb0VarW;
                    mutex3 = mutex2;
                    xb0Var2.c = qb0Var;
                    p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                    mutex3.unlock(null);
                    Intrinsics.checkNotNull(qb0Var);
                    return qb0Var;
                }
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            mutex.unlock(null);
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) {
        tb0 tb0Var;
        xb0 xb0Var;
        xb0 xb0Var2;
        Mutex mutex;
        qb0 qb0Var;
        if (continuation instanceof tb0) {
            tb0Var = (tb0) continuation;
            int i = tb0Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                tb0Var.f = i - Integer.MIN_VALUE;
            } else {
                tb0Var = new tb0(this, continuation);
            }
        } else {
            tb0Var = new tb0(this, continuation);
        }
        Object objUpdateData = tb0Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = tb0Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
                DataStore dataStore = (DataStore) this.a.get();
                ub0 ub0Var = new ub0(null);
                tb0Var.a = this;
                tb0Var.f = 1;
                objUpdateData = dataStore.updateData(ub0Var, tb0Var);
                if (objUpdateData != coroutine_suspended) {
                    xb0Var = this;
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                xb0Var = tb0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex = tb0Var.c;
                qb0Var = tb0Var.b;
                xb0Var2 = tb0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            }
            try {
                xb0Var2.c = qb0Var;
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            } finally {
                mutex.unlock(null);
            }
            qb0 qb0Var2 = (qb0) objUpdateData;
            Mutex mutex2 = xb0Var.b;
            tb0Var.a = xb0Var;
            tb0Var.b = qb0Var2;
            tb0Var.c = mutex2;
            tb0Var.f = 2;
            if (mutex2.lock(null, tb0Var) != coroutine_suspended) {
                xb0Var2 = xb0Var;
                mutex = mutex2;
                qb0Var = qb0Var2;
                xb0Var2.c = qb0Var;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            }
            return coroutine_suspended;
        } catch (Exception exception) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            rr3 rr3VarA = hs3.a();
            rr3VarA.e().m = false;
            rr3VarA.a(exception);
        }
    }
}
