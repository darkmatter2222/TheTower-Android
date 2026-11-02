package kotlin;

import androidx.datastore.core.DataStore;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class cb3 {
    public final CoroutineScope a;
    public final ks1 b;
    public final tx c;
    public final Mutex d;
    public Deferred e;

    public cb3(CoroutineScope backgroundScope, ks1 dataStore, tx clock) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = backgroundScope;
        this.b = dataStore;
        this.c = clock;
        this.d = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(cb3 cb3Var, String str, Continuation continuation) {
        ya3 ya3Var;
        ua3 ua3Var;
        cb3 cb3Var2;
        Mutex mutex;
        if (continuation instanceof ya3) {
            ya3Var = (ya3) continuation;
            int i = ya3Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                ya3Var.f = i - Integer.MIN_VALUE;
            } else {
                ya3Var = new ya3(cb3Var, continuation);
            }
        } else {
            ya3Var = new ya3(cb3Var, continuation);
        }
        Object objUpdateData = ya3Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ya3Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
                DataStore dataStore = (DataStore) cb3Var.b.get();
                za3 za3Var = new za3(cb3Var, str, null);
                ya3Var.a = cb3Var;
                ya3Var.f = 1;
                objUpdateData = dataStore.updateData(za3Var, ya3Var);
                if (objUpdateData == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                cb3Var = ya3Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex = ya3Var.c;
                ua3Var = ya3Var.b;
                cb3Var2 = ya3Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            }
            try {
                cb3Var2.e = CompletableDeferredKt.CompletableDeferred(ua3Var);
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            } finally {
                mutex.unlock(null);
            }
            ua3Var = (ua3) objUpdateData;
            Mutex mutex2 = cb3Var.d;
            ya3Var.a = cb3Var;
            ya3Var.b = ua3Var;
            ya3Var.c = mutex2;
            ya3Var.f = 2;
            if (mutex2.lock(null, ya3Var) != coroutine_suspended) {
                cb3Var2 = cb3Var;
                mutex = mutex2;
                cb3Var2.e = CompletableDeferredKt.CompletableDeferred(ua3Var);
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
    public static /* synthetic */ Object a(cb3 cb3Var, Continuation continuation) {
        wa3 wa3Var;
        Mutex mutex;
        if (continuation instanceof wa3) {
            wa3Var = (wa3) continuation;
            int i = wa3Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                wa3Var.e = i - Integer.MIN_VALUE;
            } else {
                wa3Var = new wa3(cb3Var, continuation);
            }
        } else {
            wa3Var = new wa3(cb3Var, continuation);
        }
        Object obj = wa3Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = wa3Var.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = cb3Var.d;
                wa3Var.a = cb3Var;
                wa3Var.b = mutex;
                wa3Var.e = 1;
                if (mutex.lock(null, wa3Var) != coroutine_suspended) {
                }
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
                return obj;
            }
            Mutex mutex2 = wa3Var.b;
            cb3 cb3Var2 = wa3Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            cb3Var = cb3Var2;
            Deferred deferredAsync$default = cb3Var.e;
            if (deferredAsync$default == null) {
                deferredAsync$default = BuildersKt__Builders_commonKt.async$default(cb3Var.a, null, null, new xa3(cb3Var, null), 3, null);
                cb3Var.e = deferredAsync$default;
            }
            mutex.unlock(null);
            wa3Var.a = null;
            wa3Var.b = null;
            wa3Var.e = 2;
            Object objAwait = deferredAsync$default.await(wa3Var);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object b(cb3 cb3Var, String str, Continuation continuation) {
        ab3 ab3Var;
        ua3 ua3Var;
        cb3 cb3Var2;
        Mutex mutex;
        if (continuation instanceof ab3) {
            ab3Var = (ab3) continuation;
            int i = ab3Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                ab3Var.f = i - Integer.MIN_VALUE;
            } else {
                ab3Var = new ab3(cb3Var, continuation);
            }
        } else {
            ab3Var = new ab3(cb3Var, continuation);
        }
        Object objUpdateData = ab3Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ab3Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
                DataStore dataStore = (DataStore) cb3Var.b.get();
                bb3 bb3Var = new bb3(cb3Var, str, null);
                ab3Var.a = cb3Var;
                ab3Var.f = 1;
                objUpdateData = dataStore.updateData(bb3Var, ab3Var);
                if (objUpdateData == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                cb3Var = ab3Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex = ab3Var.c;
                ua3Var = ab3Var.b;
                cb3Var2 = ab3Var.a;
                p005kotlin.ResultKt.throwOnFailure(objUpdateData);
            }
            try {
                cb3Var2.e = CompletableDeferredKt.CompletableDeferred(ua3Var);
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                return p005kotlin.Unit.INSTANCE;
            } finally {
                mutex.unlock(null);
            }
            ua3Var = (ua3) objUpdateData;
            Mutex mutex2 = cb3Var.d;
            ab3Var.a = cb3Var;
            ab3Var.b = ua3Var;
            ab3Var.c = mutex2;
            ab3Var.f = 2;
            if (mutex2.lock(null, ab3Var) != coroutine_suspended) {
                cb3Var2 = cb3Var;
                mutex = mutex2;
                cb3Var2.e = CompletableDeferredKt.CompletableDeferred(ua3Var);
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
