package kotlin;

import androidx.datastore.core.DataStore;
import com.google.common.base.Splitter;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zd3 {
    public final ks1 a;
    public final Mutex b;
    public od3 c;

    public zd3(ks1 dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        this.a = dataStore;
        this.b = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(zd3 zd3Var, Continuation continuation) {
        qd3 qd3Var;
        if (continuation instanceof qd3) {
            qd3Var = (qd3) continuation;
            int i = qd3Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                qd3Var.c = i - Integer.MIN_VALUE;
            } else {
                qd3Var = new qd3(zd3Var, continuation);
            }
        } else {
            qd3Var = new qd3(zd3Var, continuation);
        }
        Object objC = qd3Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = qd3Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objC);
            qd3Var.c = 1;
            zd3Var.getClass();
            objC = c(zd3Var, qd3Var);
            if (objC == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objC);
        }
        od3 od3Var = (od3) objC;
        if (od3Var.A()) {
            return od3Var.w();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(zd3 zd3Var, Function1 function1, Continuation continuation) {
        xd3 xd3Var;
        od3 od3Var;
        zd3 zd3Var2;
        Mutex mutex;
        if (continuation instanceof xd3) {
            xd3Var = (xd3) continuation;
            int i = xd3Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                xd3Var.f = i - Integer.MIN_VALUE;
            } else {
                xd3Var = new xd3(zd3Var, continuation);
            }
        } else {
            xd3Var = new xd3(zd3Var, continuation);
        }
        Object objUpdateData = xd3Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = xd3Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
                DataStore dataStore = (DataStore) zd3Var.a.get();
                yd3 yd3Var = new yd3(function1, null);
                xd3Var.a = zd3Var;
                xd3Var.f = 1;
                objUpdateData = dataStore.updateData(yd3Var, xd3Var);
                if (objUpdateData == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                zd3Var = xd3Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex = xd3Var.c;
                od3Var = xd3Var.b;
                zd3Var2 = xd3Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            }
            try {
                zd3Var2.c = od3Var;
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            } finally {
                mutex.unlock(null);
            }
            od3Var = (od3) objUpdateData;
            Mutex mutex2 = zd3Var.b;
            xd3Var.a = zd3Var;
            xd3Var.b = od3Var;
            xd3Var.c = mutex2;
            xd3Var.f = 2;
            if (mutex2.lock(null, xd3Var) != coroutine_suspended) {
                zd3Var2 = zd3Var;
                mutex = mutex2;
                zd3Var2.c = od3Var;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            }
            return coroutine_suspended;
        } catch (Throwable th) {
            Splitter splitter = f01.a;
            f01.c("Failed to update shared settings: " + th, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object b(zd3 zd3Var, Continuation continuation) {
        rd3 rd3Var;
        if (continuation instanceof rd3) {
            rd3Var = (rd3) continuation;
            int i = rd3Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                rd3Var.c = i - Integer.MIN_VALUE;
            } else {
                rd3Var = new rd3(zd3Var, continuation);
            }
        } else {
            rd3Var = new rd3(zd3Var, continuation);
        }
        Object objC = rd3Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = rd3Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objC);
            rd3Var.c = 1;
            zd3Var.getClass();
            objC = c(zd3Var, rd3Var);
            if (objC == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objC);
        }
        return Boxing.boxBoolean(((od3) objC).y());
    }

    /* JADX WARN: Code duplicated, block: B:30:0x008a  */
    /* JADX WARN: Code duplicated, block: B:34:0x009f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object c(zd3 zd3Var, Continuation continuation) {
        sd3 sd3Var;
        Mutex mutex;
        od3 od3VarV;
        Mutex mutex2;
        zd3 zd3Var2;
        od3 od3Var;
        Mutex mutex3;
        if (continuation instanceof sd3) {
            sd3Var = (sd3) continuation;
            int i = sd3Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                sd3Var.f = i - Integer.MIN_VALUE;
            } else {
                sd3Var = new sd3(zd3Var, continuation);
            }
        } else {
            sd3Var = new sd3(zd3Var, continuation);
        }
        Object objFirstOrNull = sd3Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = sd3Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objFirstOrNull);
                mutex = zd3Var.b;
                sd3Var.a = zd3Var;
                sd3Var.b = mutex;
                sd3Var.f = 1;
                if (mutex.lock(null, sd3Var) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                Mutex mutex4 = (Mutex) sd3Var.b;
                zd3 zd3Var3 = sd3Var.a;
                p005kotlin.ResultKt.throwOnFailure(objFirstOrNull);
                mutex = mutex4;
                zd3Var = zd3Var3;
            } else {
                if (i2 == 2) {
                    zd3Var = sd3Var.a;
                    p005kotlin.ResultKt.throwOnFailure(objFirstOrNull);
                    od3VarV = (od3) objFirstOrNull;
                    if (od3VarV == null) {
                        od3VarV = od3.v();
                    }
                    mutex2 = zd3Var.b;
                    sd3Var.a = zd3Var;
                    sd3Var.b = od3VarV;
                    sd3Var.c = mutex2;
                    sd3Var.f = 3;
                    if (mutex2.lock(null, sd3Var) != coroutine_suspended) {
                        zd3Var2 = zd3Var;
                        od3Var = od3VarV;
                        mutex3 = mutex2;
                    }
                    return coroutine_suspended;
                }
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex3 = sd3Var.c;
                od3Var = (od3) sd3Var.b;
                zd3Var2 = sd3Var.a;
                p005kotlin.ResultKt.throwOnFailure(objFirstOrNull);
            }
            try {
                zd3Var2.c = od3Var;
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                mutex3.unlock(null);
                Intrinsics.checkNotNull(od3Var);
                return od3Var;
            } catch (Throwable th) {
                mutex3.unlock(null);
                throw th;
            }
            od3 od3Var2 = zd3Var.c;
            mutex.unlock(null);
            if (od3Var2 != null) {
                return od3Var2;
            }
            Flow data = ((DataStore) zd3Var.a.get()).getData();
            sd3Var.a = zd3Var;
            sd3Var.b = null;
            sd3Var.f = 2;
            objFirstOrNull = FlowKt.firstOrNull(data, sd3Var);
            if (objFirstOrNull != coroutine_suspended) {
                od3VarV = (od3) objFirstOrNull;
                if (od3VarV == null) {
                    od3VarV = od3.v();
                }
                mutex2 = zd3Var.b;
                sd3Var.a = zd3Var;
                sd3Var.b = od3VarV;
                sd3Var.c = mutex2;
                sd3Var.f = 3;
                if (mutex2.lock(null, sd3Var) != coroutine_suspended) {
                    zd3Var2 = zd3Var;
                    od3Var = od3VarV;
                    mutex3 = mutex2;
                    zd3Var2.c = od3Var;
                    p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                    mutex3.unlock(null);
                    Intrinsics.checkNotNull(od3Var);
                    return od3Var;
                }
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            mutex.unlock(null);
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object d(zd3 zd3Var, Continuation continuation) {
        td3 td3Var;
        if (continuation instanceof td3) {
            td3Var = (td3) continuation;
            int i = td3Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                td3Var.c = i - Integer.MIN_VALUE;
            } else {
                td3Var = new td3(zd3Var, continuation);
            }
        } else {
            td3Var = new td3(zd3Var, continuation);
        }
        Object objC = td3Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = td3Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objC);
            td3Var.c = 1;
            zd3Var.getClass();
            objC = c(zd3Var, td3Var);
            if (objC == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objC);
        }
        return Boxing.boxInt(((od3) objC).z());
    }

    public final Object a(int i, j jVar) {
        Object objA = a(this, new wd3(i), jVar);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }
}
