package kotlin;

import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;

/* JADX INFO: loaded from: classes.dex */
public interface rh3 {
    /* JADX WARN: Code duplicated, block: B:32:0x0087 A[Catch: all -> 0x00b6, TryCatch #0 {all -> 0x00b6, blocks: (B:30:0x0080, B:32:0x0087, B:34:0x008b, B:36:0x008f, B:37:0x0092, B:39:0x0096, B:41:0x009a, B:43:0x009e, B:44:0x009f, B:45:0x00a4, B:46:0x00a5, B:47:0x00ac, B:48:0x00ad, B:49:0x00b4, B:50:0x00b5), top: B:56:0x0080 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0096 A[Catch: all -> 0x00b6, TryCatch #0 {all -> 0x00b6, blocks: (B:30:0x0080, B:32:0x0087, B:34:0x008b, B:36:0x008f, B:37:0x0092, B:39:0x0096, B:41:0x009a, B:43:0x009e, B:44:0x009f, B:45:0x00a4, B:46:0x00a5, B:47:0x00ac, B:48:0x00ad, B:49:0x00b4, B:50:0x00b5), top: B:56:0x0080 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x009a A[Catch: all -> 0x00b6, TryCatch #0 {all -> 0x00b6, blocks: (B:30:0x0080, B:32:0x0087, B:34:0x008b, B:36:0x008f, B:37:0x0092, B:39:0x0096, B:41:0x009a, B:43:0x009e, B:44:0x009f, B:45:0x00a4, B:46:0x00a5, B:47:0x00ac, B:48:0x00ad, B:49:0x00b4, B:50:0x00b5), top: B:56:0x0080 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x009e A[Catch: all -> 0x00b6, TryCatch #0 {all -> 0x00b6, blocks: (B:30:0x0080, B:32:0x0087, B:34:0x008b, B:36:0x008f, B:37:0x0092, B:39:0x0096, B:41:0x009a, B:43:0x009e, B:44:0x009f, B:45:0x00a4, B:46:0x00a5, B:47:0x00ac, B:48:0x00ad, B:49:0x00b4, B:50:0x00b5), top: B:56:0x0080 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x009f A[Catch: all -> 0x00b6, TryCatch #0 {all -> 0x00b6, blocks: (B:30:0x0080, B:32:0x0087, B:34:0x008b, B:36:0x008f, B:37:0x0092, B:39:0x0096, B:41:0x009a, B:43:0x009e, B:44:0x009f, B:45:0x00a4, B:46:0x00a5, B:47:0x00ac, B:48:0x00ad, B:49:0x00b4, B:50:0x00b5), top: B:56:0x0080 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00a5 A[Catch: all -> 0x00b6, TryCatch #0 {all -> 0x00b6, blocks: (B:30:0x0080, B:32:0x0087, B:34:0x008b, B:36:0x008f, B:37:0x0092, B:39:0x0096, B:41:0x009a, B:43:0x009e, B:44:0x009f, B:45:0x00a4, B:46:0x00a5, B:47:0x00ac, B:48:0x00ad, B:49:0x00b4, B:50:0x00b5), top: B:56:0x0080 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00ad A[Catch: all -> 0x00b6, TryCatch #0 {all -> 0x00b6, blocks: (B:30:0x0080, B:32:0x0087, B:34:0x008b, B:36:0x008f, B:37:0x0092, B:39:0x0096, B:41:0x009a, B:43:0x009e, B:44:0x009f, B:45:0x00a4, B:46:0x00a5, B:47:0x00ac, B:48:0x00ad, B:49:0x00b4, B:50:0x00b5), top: B:56:0x0080 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00b5 A[Catch: all -> 0x00b6, TRY_LEAVE, TryCatch #0 {all -> 0x00b6, blocks: (B:30:0x0080, B:32:0x0087, B:34:0x008b, B:36:0x008f, B:37:0x0092, B:39:0x0096, B:41:0x009a, B:43:0x009e, B:44:0x009f, B:45:0x00a4, B:46:0x00a5, B:47:0x00ac, B:48:0x00ad, B:49:0x00b4, B:50:0x00b5), top: B:56:0x0080 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    static /* synthetic */ Object a(rh3 rh3Var, Continuation continuation) {
        qh3 qh3Var;
        rr3 rr3Var;
        TimeoutCancellationException th;
        rr3 rr3Var2;
        if (continuation instanceof qh3) {
            qh3Var = (qh3) continuation;
            int i = qh3Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                qh3Var.e = i - Integer.MIN_VALUE;
            } else {
                qh3Var = new qh3(rh3Var, continuation);
            }
        } else {
            qh3Var = new qh3(rh3Var, continuation);
        }
        Object obj = qh3Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = qh3Var.e;
        q11 q11Var = null;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s11 s11Var = s11.CUI_NAME_SIGNAL;
            WeakHashMap weakHashMap = hs3.a;
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                hs3.a().e().t = new gh3(rh3Var.f(), q11Var, 6);
                qh3Var.a = rr3VarA;
                qh3Var.b = rr3VarA;
                qh3Var.e = 1;
                Object objS = rh3Var.s(qh3Var);
                if (objS == coroutine_suspended) {
                    return coroutine_suspended;
                }
                rr3Var = rr3VarA;
                obj = objS;
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
            rr3Var2 = qh3Var.b;
            rr3Var = qh3Var.a;
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
        v01 v01Var = (v01) obj;
        if (v01Var instanceof i01) {
            xs3.a((i01) v01Var, false);
        }
        CloseableKt.closeFinally(rr3Var2, null);
        return v01Var;
    }

    default Object b(Continuation continuation) {
        return a(this, continuation);
    }

    y11 f();

    Object s(Continuation continuation);
}
