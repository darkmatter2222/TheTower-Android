package kotlin;

import androidx.datastore.core.DataStore;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class r1 {
    public final ks1 a;

    public r1(ks1 dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        this.a = dataStore;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0081 A[Catch: all -> 0x00b0, TryCatch #0 {all -> 0x00b0, blocks: (B:30:0x007a, B:32:0x0081, B:34:0x0085, B:36:0x0089, B:37:0x008c, B:39:0x0090, B:41:0x0094, B:43:0x0098, B:44:0x0099, B:45:0x009e, B:46:0x009f, B:47:0x00a6, B:48:0x00a7, B:49:0x00ae, B:50:0x00af), top: B:56:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0090 A[Catch: all -> 0x00b0, TryCatch #0 {all -> 0x00b0, blocks: (B:30:0x007a, B:32:0x0081, B:34:0x0085, B:36:0x0089, B:37:0x008c, B:39:0x0090, B:41:0x0094, B:43:0x0098, B:44:0x0099, B:45:0x009e, B:46:0x009f, B:47:0x00a6, B:48:0x00a7, B:49:0x00ae, B:50:0x00af), top: B:56:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0094 A[Catch: all -> 0x00b0, TryCatch #0 {all -> 0x00b0, blocks: (B:30:0x007a, B:32:0x0081, B:34:0x0085, B:36:0x0089, B:37:0x008c, B:39:0x0090, B:41:0x0094, B:43:0x0098, B:44:0x0099, B:45:0x009e, B:46:0x009f, B:47:0x00a6, B:48:0x00a7, B:49:0x00ae, B:50:0x00af), top: B:56:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0098 A[Catch: all -> 0x00b0, TryCatch #0 {all -> 0x00b0, blocks: (B:30:0x007a, B:32:0x0081, B:34:0x0085, B:36:0x0089, B:37:0x008c, B:39:0x0090, B:41:0x0094, B:43:0x0098, B:44:0x0099, B:45:0x009e, B:46:0x009f, B:47:0x00a6, B:48:0x00a7, B:49:0x00ae, B:50:0x00af), top: B:56:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0099 A[Catch: all -> 0x00b0, TryCatch #0 {all -> 0x00b0, blocks: (B:30:0x007a, B:32:0x0081, B:34:0x0085, B:36:0x0089, B:37:0x008c, B:39:0x0090, B:41:0x0094, B:43:0x0098, B:44:0x0099, B:45:0x009e, B:46:0x009f, B:47:0x00a6, B:48:0x00a7, B:49:0x00ae, B:50:0x00af), top: B:56:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:46:0x009f A[Catch: all -> 0x00b0, TryCatch #0 {all -> 0x00b0, blocks: (B:30:0x007a, B:32:0x0081, B:34:0x0085, B:36:0x0089, B:37:0x008c, B:39:0x0090, B:41:0x0094, B:43:0x0098, B:44:0x0099, B:45:0x009e, B:46:0x009f, B:47:0x00a6, B:48:0x00a7, B:49:0x00ae, B:50:0x00af), top: B:56:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00a7 A[Catch: all -> 0x00b0, TryCatch #0 {all -> 0x00b0, blocks: (B:30:0x007a, B:32:0x0081, B:34:0x0085, B:36:0x0089, B:37:0x008c, B:39:0x0090, B:41:0x0094, B:43:0x0098, B:44:0x0099, B:45:0x009e, B:46:0x009f, B:47:0x00a6, B:48:0x00a7, B:49:0x00ae, B:50:0x00af), top: B:56:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00af A[Catch: all -> 0x00b0, TRY_LEAVE, TryCatch #0 {all -> 0x00b0, blocks: (B:30:0x007a, B:32:0x0081, B:34:0x0085, B:36:0x0089, B:37:0x008c, B:39:0x0090, B:41:0x0094, B:43:0x0098, B:44:0x0099, B:45:0x009e, B:46:0x009f, B:47:0x00a6, B:48:0x00a7, B:49:0x00ae, B:50:0x00af), top: B:56:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Function1 function1, Continuation continuation) {
        p1 p1Var;
        rr3 rr3Var;
        TimeoutCancellationException th;
        rr3 rr3Var2;
        if (continuation instanceof p1) {
            p1Var = (p1) continuation;
            int i = p1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                p1Var.e = i - Integer.MIN_VALUE;
            } else {
                p1Var = new p1(this, continuation);
            }
        } else {
            p1Var = new p1(this, continuation);
        }
        Object obj = p1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = p1Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_METADATA_WRITE;
            WeakHashMap weakHashMap = hs3.a;
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                DataStore dataStore = (DataStore) this.a.get();
                q1 q1Var = new q1(function1, null);
                p1Var.a = rr3VarA;
                p1Var.b = rr3VarA;
                p1Var.e = 1;
                Object objUpdateData = dataStore.updateData(q1Var, p1Var);
                if (objUpdateData == coroutine_suspended) {
                    return coroutine_suspended;
                }
                rr3Var = rr3VarA;
                obj = objUpdateData;
                rr3Var2 = rr3Var;
            } catch (Throwable th2) {
                rr3Var = rr3VarA;
                th = th2;
                rr3Var2 = rr3Var;
                rr3Var.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3Var.a(th);
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    throw new i21(th);
                }
                if (!(th instanceof CancellationException)) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var2 = p1Var.b;
            rr3Var = p1Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
            } catch (Throwable th3) {
                th = th3;
                try {
                    rr3Var.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        CloseableKt.closeFinally(rr3Var2, th4);
                        throw th5;
                    }
                }
            }
        }
        Object obj2 = (o1) obj;
        if (obj2 instanceof i01) {
            xs3.a((i01) obj2, false);
        }
        CloseableKt.closeFinally(rr3Var2, null);
        return p005kotlin.Unit.INSTANCE;
    }
}
