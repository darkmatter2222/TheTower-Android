package kotlin;

import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class hd2 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ kd2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hd2(kd2 kd2Var, Continuation continuation) {
        super(2, continuation);
        this.d = kd2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new hd2(this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new hd2(this.d, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0074 A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #5 {all -> 0x002c, blocks: (B:14:0x0028, B:25:0x006e, B:27:0x0074), top: B:104:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0086 A[Catch: all -> 0x00b5, TryCatch #1 {all -> 0x00b5, blocks: (B:31:0x007f, B:33:0x0086, B:35:0x008a, B:37:0x008e, B:38:0x0091, B:40:0x0095, B:42:0x0099, B:44:0x009d, B:45:0x009e, B:46:0x00a3, B:47:0x00a4, B:48:0x00ab, B:49:0x00ac, B:50:0x00b3, B:51:0x00b4), top: B:98:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0095 A[Catch: all -> 0x00b5, TryCatch #1 {all -> 0x00b5, blocks: (B:31:0x007f, B:33:0x0086, B:35:0x008a, B:37:0x008e, B:38:0x0091, B:40:0x0095, B:42:0x0099, B:44:0x009d, B:45:0x009e, B:46:0x00a3, B:47:0x00a4, B:48:0x00ab, B:49:0x00ac, B:50:0x00b3, B:51:0x00b4), top: B:98:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0099 A[Catch: all -> 0x00b5, TryCatch #1 {all -> 0x00b5, blocks: (B:31:0x007f, B:33:0x0086, B:35:0x008a, B:37:0x008e, B:38:0x0091, B:40:0x0095, B:42:0x0099, B:44:0x009d, B:45:0x009e, B:46:0x00a3, B:47:0x00a4, B:48:0x00ab, B:49:0x00ac, B:50:0x00b3, B:51:0x00b4), top: B:98:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:44:0x009d A[Catch: all -> 0x00b5, TryCatch #1 {all -> 0x00b5, blocks: (B:31:0x007f, B:33:0x0086, B:35:0x008a, B:37:0x008e, B:38:0x0091, B:40:0x0095, B:42:0x0099, B:44:0x009d, B:45:0x009e, B:46:0x00a3, B:47:0x00a4, B:48:0x00ab, B:49:0x00ac, B:50:0x00b3, B:51:0x00b4), top: B:98:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:45:0x009e A[Catch: all -> 0x00b5, TryCatch #1 {all -> 0x00b5, blocks: (B:31:0x007f, B:33:0x0086, B:35:0x008a, B:37:0x008e, B:38:0x0091, B:40:0x0095, B:42:0x0099, B:44:0x009d, B:45:0x009e, B:46:0x00a3, B:47:0x00a4, B:48:0x00ab, B:49:0x00ac, B:50:0x00b3, B:51:0x00b4), top: B:98:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00a4 A[Catch: all -> 0x00b5, TryCatch #1 {all -> 0x00b5, blocks: (B:31:0x007f, B:33:0x0086, B:35:0x008a, B:37:0x008e, B:38:0x0091, B:40:0x0095, B:42:0x0099, B:44:0x009d, B:45:0x009e, B:46:0x00a3, B:47:0x00a4, B:48:0x00ab, B:49:0x00ac, B:50:0x00b3, B:51:0x00b4), top: B:98:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00ac A[Catch: all -> 0x00b5, TryCatch #1 {all -> 0x00b5, blocks: (B:31:0x007f, B:33:0x0086, B:35:0x008a, B:37:0x008e, B:38:0x0091, B:40:0x0095, B:42:0x0099, B:44:0x009d, B:45:0x009e, B:46:0x00a3, B:47:0x00a4, B:48:0x00ab, B:49:0x00ac, B:50:0x00b3, B:51:0x00b4), top: B:98:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00b4 A[Catch: all -> 0x00b5, TRY_LEAVE, TryCatch #1 {all -> 0x00b5, blocks: (B:31:0x007f, B:33:0x0086, B:35:0x008a, B:37:0x008e, B:38:0x0091, B:40:0x0095, B:42:0x0099, B:44:0x009d, B:45:0x009e, B:46:0x00a3, B:47:0x00a4, B:48:0x00ab, B:49:0x00ac, B:50:0x00b3, B:51:0x00b4), top: B:98:0x007f }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00d8 A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #3 {all -> 0x0019, blocks: (B:7:0x0014, B:62:0x00d2, B:64:0x00d8), top: B:101:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x00ec A[Catch: all -> 0x011b, TryCatch #4 {all -> 0x011b, blocks: (B:70:0x00e5, B:72:0x00ec, B:74:0x00f0, B:76:0x00f4, B:77:0x00f7, B:79:0x00fb, B:81:0x00ff, B:83:0x0103, B:84:0x0104, B:85:0x0109, B:86:0x010a, B:87:0x0111, B:88:0x0112, B:89:0x0119, B:90:0x011a), top: B:103:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x00fb A[Catch: all -> 0x011b, TryCatch #4 {all -> 0x011b, blocks: (B:70:0x00e5, B:72:0x00ec, B:74:0x00f0, B:76:0x00f4, B:77:0x00f7, B:79:0x00fb, B:81:0x00ff, B:83:0x0103, B:84:0x0104, B:85:0x0109, B:86:0x010a, B:87:0x0111, B:88:0x0112, B:89:0x0119, B:90:0x011a), top: B:103:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x00ff A[Catch: all -> 0x011b, TryCatch #4 {all -> 0x011b, blocks: (B:70:0x00e5, B:72:0x00ec, B:74:0x00f0, B:76:0x00f4, B:77:0x00f7, B:79:0x00fb, B:81:0x00ff, B:83:0x0103, B:84:0x0104, B:85:0x0109, B:86:0x010a, B:87:0x0111, B:88:0x0112, B:89:0x0119, B:90:0x011a), top: B:103:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0103 A[Catch: all -> 0x011b, TryCatch #4 {all -> 0x011b, blocks: (B:70:0x00e5, B:72:0x00ec, B:74:0x00f0, B:76:0x00f4, B:77:0x00f7, B:79:0x00fb, B:81:0x00ff, B:83:0x0103, B:84:0x0104, B:85:0x0109, B:86:0x010a, B:87:0x0111, B:88:0x0112, B:89:0x0119, B:90:0x011a), top: B:103:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0104 A[Catch: all -> 0x011b, TryCatch #4 {all -> 0x011b, blocks: (B:70:0x00e5, B:72:0x00ec, B:74:0x00f0, B:76:0x00f4, B:77:0x00f7, B:79:0x00fb, B:81:0x00ff, B:83:0x0103, B:84:0x0104, B:85:0x0109, B:86:0x010a, B:87:0x0111, B:88:0x0112, B:89:0x0119, B:90:0x011a), top: B:103:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x010a A[Catch: all -> 0x011b, TryCatch #4 {all -> 0x011b, blocks: (B:70:0x00e5, B:72:0x00ec, B:74:0x00f0, B:76:0x00f4, B:77:0x00f7, B:79:0x00fb, B:81:0x00ff, B:83:0x0103, B:84:0x0104, B:85:0x0109, B:86:0x010a, B:87:0x0111, B:88:0x0112, B:89:0x0119, B:90:0x011a), top: B:103:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0112 A[Catch: all -> 0x011b, TryCatch #4 {all -> 0x011b, blocks: (B:70:0x00e5, B:72:0x00ec, B:74:0x00f0, B:76:0x00f4, B:77:0x00f7, B:79:0x00fb, B:81:0x00ff, B:83:0x0103, B:84:0x0104, B:85:0x0109, B:86:0x010a, B:87:0x0111, B:88:0x0112, B:89:0x0119, B:90:0x011a), top: B:103:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x011a A[Catch: all -> 0x011b, TRY_LEAVE, TryCatch #4 {all -> 0x011b, blocks: (B:70:0x00e5, B:72:0x00ec, B:74:0x00f0, B:76:0x00f4, B:77:0x00f7, B:79:0x00fb, B:81:0x00ff, B:83:0x0103, B:84:0x0104, B:85:0x0109, B:86:0x010a, B:87:0x0111, B:88:0x0112, B:89:0x0119, B:90:0x011a), top: B:103:0x00e5 }] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        rr3 rr3VarA;
        rr3 rr3Var;
        rr3 rr3VarA2;
        rr3 rr3Var2;
        Object obj2;
        Object obj3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            kd2 kd2Var = this.d;
            g83 g83Var = kd2Var.g;
            s11 s11Var = s11.CUI_NAME_SDKINIT_INIT_OMID;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    this.a = rr3VarA2;
                    this.b = rr3VarA2;
                    this.c = 1;
                    if (kd2.a(kd2Var, this) != coroutine_suspended) {
                        rr3Var2 = rr3VarA2;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3Var2, null);
                    }
                } catch (Throwable th) {
                    th = th;
                    rr3Var2 = rr3VarA2;
                    rr3VarA2.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA2.a(th);
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
                rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    this.a = rr3VarA;
                    this.b = rr3VarA;
                    this.c = 2;
                    if (kd2.a(kd2Var, this) != coroutine_suspended) {
                        rr3Var = rr3VarA;
                        obj3 = p005kotlin.Unit.INSTANCE;
                        if (obj3 instanceof i01) {
                            xs3.a((i01) obj3, false);
                        }
                        CloseableKt.closeFinally(rr3Var, null);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    rr3Var = rr3VarA;
                    rr3VarA.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA.a(th);
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
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            rr3Var2 = this.b;
            rr3VarA2 = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                }
                CloseableKt.closeFinally(rr3Var2, null);
            } catch (Throwable th3) {
                th = th3;
                try {
                    rr3VarA2.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA2.a(th);
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
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var = this.b;
            rr3VarA = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                obj3 = p005kotlin.Unit.INSTANCE;
                if (obj3 instanceof i01) {
                    xs3.a((i01) obj3, false);
                }
                CloseableKt.closeFinally(rr3Var, null);
            } catch (Throwable th6) {
                th = th6;
                try {
                    rr3VarA.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA.a(th);
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
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        CloseableKt.closeFinally(rr3Var, th7);
                        throw th8;
                    }
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
