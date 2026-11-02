package kotlin;

import androidx.datastore.core.DataStore;
import com.google.gson.JsonObject;
import java.util.Map;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jw0 {
    public final ks1 a;
    public final Mutex b;
    public vv0 c;

    public jw0(ks1 dataStore, tx clock) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = dataStore;
        this.b = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(jw0 jw0Var, k30 k30Var, JsonObject jsonObject, boolean z, Continuation continuation) {
        hw0 hw0Var;
        vv0 vv0Var;
        jw0 jw0Var2;
        Mutex mutex;
        if (continuation instanceof hw0) {
            hw0Var = (hw0) continuation;
            int i = hw0Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                hw0Var.f = i - Integer.MIN_VALUE;
            } else {
                hw0Var = new hw0(jw0Var, continuation);
            }
        } else {
            hw0Var = new hw0(jw0Var, continuation);
        }
        Object objUpdateData = hw0Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = hw0Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
                DataStore dataStore = (DataStore) jw0Var.a.get();
                iw0 iw0Var = new iw0(k30Var, jsonObject, null, z);
                hw0Var.a = jw0Var;
                hw0Var.f = 1;
                objUpdateData = dataStore.updateData(iw0Var, hw0Var);
                if (objUpdateData == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                jw0Var = hw0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex = hw0Var.c;
                vv0Var = hw0Var.b;
                jw0Var2 = hw0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            }
            try {
                jw0Var2.c = vv0Var;
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            } finally {
                mutex.unlock(null);
            }
            vv0Var = (vv0) objUpdateData;
            Mutex mutex2 = jw0Var.b;
            hw0Var.a = jw0Var;
            hw0Var.b = vv0Var;
            hw0Var.c = mutex2;
            hw0Var.f = 2;
            if (mutex2.lock(null, hw0Var) != coroutine_suspended) {
                jw0Var2 = jw0Var;
                mutex = mutex2;
                jw0Var2.c = vv0Var;
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(jw0 jw0Var, String str, String str2, Continuation continuation) {
        fw0 fw0Var;
        vv0 vv0Var;
        jw0 jw0Var2;
        Mutex mutex;
        if (continuation instanceof fw0) {
            fw0Var = (fw0) continuation;
            int i = fw0Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                fw0Var.f = i - Integer.MIN_VALUE;
            } else {
                fw0Var = new fw0(jw0Var, continuation);
            }
        } else {
            fw0Var = new fw0(jw0Var, continuation);
        }
        Object objUpdateData = fw0Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = fw0Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
                DataStore dataStore = (DataStore) jw0Var.a.get();
                gw0 gw0Var = new gw0(str2, str, null);
                fw0Var.a = jw0Var;
                fw0Var.f = 1;
                objUpdateData = dataStore.updateData(gw0Var, fw0Var);
                if (objUpdateData == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                jw0Var = fw0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex = fw0Var.c;
                vv0Var = fw0Var.b;
                jw0Var2 = fw0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            }
            try {
                jw0Var2.c = vv0Var;
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            } finally {
                mutex.unlock(null);
            }
            vv0Var = (vv0) objUpdateData;
            Mutex mutex2 = jw0Var.b;
            fw0Var.a = jw0Var;
            fw0Var.b = vv0Var;
            fw0Var.c = mutex2;
            fw0Var.f = 2;
            if (mutex2.lock(null, fw0Var) != coroutine_suspended) {
                jw0Var2 = jw0Var;
                mutex = mutex2;
                jw0Var2.c = vv0Var;
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(jw0 jw0Var, Continuation continuation) {
        yv0 yv0Var;
        if (continuation instanceof yv0) {
            yv0Var = (yv0) continuation;
            int i = yv0Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                yv0Var.c = i - Integer.MIN_VALUE;
            } else {
                yv0Var = new yv0(jw0Var, continuation);
            }
        } else {
            yv0Var = new yv0(jw0Var, continuation);
        }
        Object objA = yv0Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = yv0Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            yv0Var.c = 1;
            objA = jw0Var.a(yv0Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        k30 k30Var = (k30) objA;
        if (!k30Var.C()) {
            return null;
        }
        pb0 builder = qb0.z();
        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder, "builder");
        hj2 value = k30Var.A();
        Intrinsics.checkNotNullExpressionValue(value, "getPatternMatchingFlag(...)");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.a(value);
        yp2 value2 = k30Var.B();
        Intrinsics.checkNotNullExpressionValue(value2, "getPreProcessingFlag(...)");
        Intrinsics.checkNotNullParameter(value2, "value");
        builder.a(value2);
        Map mapH = builder.h();
        Intrinsics.checkNotNullExpressionValue(mapH, "getConcatenatedSignalsMapMap(...)");
        no0 no0Var = new no0(mapH);
        Map map = k30Var.v();
        Intrinsics.checkNotNullExpressionValue(map, "getConcatenatedSignalsMapMap(...)");
        Intrinsics.checkNotNullParameter(no0Var, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        builder.a(map);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (qb0) vz0VarB;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x008a  */
    /* JADX WARN: Code duplicated, block: B:34:0x009f  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a6 A[Catch: all -> 0x00b1, TRY_LEAVE, TryCatch #0 {all -> 0x00b1, blocks: (B:35:0x00a2, B:37:0x00a6), top: B:48:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object b(jw0 jw0Var, Continuation continuation) {
        zv0 zv0Var;
        Mutex mutex;
        vv0 vv0VarX;
        Mutex mutex2;
        jw0 jw0Var2;
        vv0 vv0Var;
        Mutex mutex3;
        vv0 vv0Var2;
        if (continuation instanceof zv0) {
            zv0Var = (zv0) continuation;
            int i = zv0Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                zv0Var.f = i - Integer.MIN_VALUE;
            } else {
                zv0Var = new zv0(jw0Var, continuation);
            }
        } else {
            zv0Var = new zv0(jw0Var, continuation);
        }
        Object objFirstOrNull = zv0Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zv0Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objFirstOrNull);
                mutex = jw0Var.b;
                zv0Var.a = jw0Var;
                zv0Var.b = mutex;
                zv0Var.f = 1;
                if (mutex.lock(null, zv0Var) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                Mutex mutex4 = (Mutex) zv0Var.b;
                jw0 jw0Var3 = zv0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objFirstOrNull);
                mutex = mutex4;
                jw0Var = jw0Var3;
            } else {
                if (i2 == 2) {
                    jw0Var = zv0Var.a;
                    p005kotlin.ResultKt.throwOnFailure(objFirstOrNull);
                    vv0VarX = (vv0) objFirstOrNull;
                    if (vv0VarX == null) {
                        vv0VarX = vv0.x();
                    }
                    mutex2 = jw0Var.b;
                    zv0Var.a = jw0Var;
                    zv0Var.b = vv0VarX;
                    zv0Var.c = mutex2;
                    zv0Var.f = 3;
                    if (mutex2.lock(null, zv0Var) != coroutine_suspended) {
                        jw0Var2 = jw0Var;
                        vv0Var = vv0VarX;
                        mutex3 = mutex2;
                    }
                    return coroutine_suspended;
                }
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex3 = zv0Var.c;
                vv0Var = (vv0) zv0Var.b;
                jw0Var2 = zv0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objFirstOrNull);
            }
            try {
                vv0Var2 = jw0Var2.c;
                if (vv0Var2 == null) {
                    jw0Var2.c = vv0Var;
                } else {
                    vv0Var = vv0Var2;
                }
                mutex3.unlock(null);
                Intrinsics.checkNotNull(vv0Var);
                return vv0Var;
            } catch (Throwable th) {
                mutex3.unlock(null);
                throw th;
            }
            vv0 vv0Var3 = jw0Var.c;
            mutex.unlock(null);
            if (vv0Var3 != null) {
                return vv0Var3;
            }
            Flow data = ((DataStore) jw0Var.a.get()).getData();
            zv0Var.a = jw0Var;
            zv0Var.b = null;
            zv0Var.f = 2;
            objFirstOrNull = FlowKt.firstOrNull(data, zv0Var);
            if (objFirstOrNull != coroutine_suspended) {
                vv0VarX = (vv0) objFirstOrNull;
                if (vv0VarX == null) {
                    vv0VarX = vv0.x();
                }
                mutex2 = jw0Var.b;
                zv0Var.a = jw0Var;
                zv0Var.b = vv0VarX;
                zv0Var.c = mutex2;
                zv0Var.f = 3;
                if (mutex2.lock(null, zv0Var) != coroutine_suspended) {
                    jw0Var2 = jw0Var;
                    vv0Var = vv0VarX;
                    mutex3 = mutex2;
                    vv0Var2 = jw0Var2.c;
                    if (vv0Var2 == null) {
                        jw0Var2.c = vv0Var;
                    } else {
                        vv0Var = vv0Var2;
                    }
                    mutex3.unlock(null);
                    Intrinsics.checkNotNull(vv0Var);
                    return vv0Var;
                }
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            mutex.unlock(null);
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object c(jw0 jw0Var, Continuation continuation) {
        aw0 aw0Var;
        Mutex mutex;
        if (continuation instanceof aw0) {
            aw0Var = (aw0) continuation;
            int i = aw0Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                aw0Var.e = i - Integer.MIN_VALUE;
            } else {
                aw0Var = new aw0(jw0Var, continuation);
            }
        } else {
            aw0Var = new aw0(jw0Var, continuation);
        }
        Object obj = aw0Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = aw0Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = jw0Var.b;
            aw0Var.a = jw0Var;
            aw0Var.b = mutex;
            aw0Var.e = 1;
            if (mutex.lock(null, aw0Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = aw0Var.b;
            jw0 jw0Var2 = aw0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            jw0Var = jw0Var2;
        }
        try {
            vv0 vv0Var = jw0Var.c;
            mutex.unlock(null);
            Map mapB = vv0Var != null ? vv0Var.B() : null;
            return mapB == null ? MapsKt.emptyMap() : mapB;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) {
        xv0 xv0Var;
        if (continuation instanceof xv0) {
            xv0Var = (xv0) continuation;
            int i = xv0Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                xv0Var.c = i - Integer.MIN_VALUE;
            } else {
                xv0Var = new xv0(this, continuation);
            }
        } else {
            xv0Var = new xv0(this, continuation);
        }
        Object objB = xv0Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = xv0Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objB);
            xv0Var.c = 1;
            objB = b(this, xv0Var);
            if (objB == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objB);
        }
        k30 k30VarW = ((vv0) objB).w();
        Intrinsics.checkNotNullExpressionValue(k30VarW, "getConsentState(...)");
        return k30VarW;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(Continuation continuation) {
        cw0 cw0Var;
        jw0 jw0Var;
        jw0 jw0Var2;
        Mutex mutex;
        vv0 vv0Var;
        if (continuation instanceof cw0) {
            cw0Var = (cw0) continuation;
            int i = cw0Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                cw0Var.f = i - Integer.MIN_VALUE;
            } else {
                cw0Var = new cw0(this, continuation);
            }
        } else {
            cw0Var = new cw0(this, continuation);
        }
        Object objUpdateData = cw0Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = cw0Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
                DataStore dataStore = (DataStore) this.a.get();
                dw0 dw0Var = new dw0(null);
                cw0Var.a = this;
                cw0Var.f = 1;
                objUpdateData = dataStore.updateData(dw0Var, cw0Var);
                if (objUpdateData != coroutine_suspended) {
                    jw0Var = this;
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                jw0Var = cw0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex = cw0Var.c;
                vv0Var = cw0Var.b;
                jw0Var2 = cw0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            }
            try {
                jw0Var2.c = vv0Var;
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            } finally {
                mutex.unlock(null);
            }
            vv0 vv0Var2 = (vv0) objUpdateData;
            Mutex mutex2 = jw0Var.b;
            cw0Var.a = jw0Var;
            cw0Var.b = vv0Var2;
            cw0Var.c = mutex2;
            cw0Var.f = 2;
            if (mutex2.lock(null, cw0Var) != coroutine_suspended) {
                jw0Var2 = jw0Var;
                mutex = mutex2;
                vv0Var = vv0Var2;
                jw0Var2.c = vv0Var;
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
