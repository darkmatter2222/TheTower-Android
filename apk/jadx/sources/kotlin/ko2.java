package kotlin;

import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ko2 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ mo2 d;
    public final /* synthetic */ s11 e;
    public final /* synthetic */ boolean f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ko2(mo2 mo2Var, s11 s11Var, boolean z, Continuation continuation) {
        super(2, continuation);
        this.d = mo2Var;
        this.e = s11Var;
        this.f = z;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ko2(this.d, this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ko2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0076 A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #4 {all -> 0x002c, blocks: (B:14:0x0028, B:25:0x0070, B:27:0x0076), top: B:103:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0088 A[Catch: all -> 0x00b7, TryCatch #1 {all -> 0x00b7, blocks: (B:31:0x0081, B:33:0x0088, B:35:0x008c, B:37:0x0090, B:38:0x0093, B:40:0x0097, B:42:0x009b, B:44:0x009f, B:45:0x00a0, B:46:0x00a5, B:47:0x00a6, B:48:0x00ad, B:49:0x00ae, B:50:0x00b5, B:51:0x00b6), top: B:98:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0097 A[Catch: all -> 0x00b7, TryCatch #1 {all -> 0x00b7, blocks: (B:31:0x0081, B:33:0x0088, B:35:0x008c, B:37:0x0090, B:38:0x0093, B:40:0x0097, B:42:0x009b, B:44:0x009f, B:45:0x00a0, B:46:0x00a5, B:47:0x00a6, B:48:0x00ad, B:49:0x00ae, B:50:0x00b5, B:51:0x00b6), top: B:98:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x009b A[Catch: all -> 0x00b7, TryCatch #1 {all -> 0x00b7, blocks: (B:31:0x0081, B:33:0x0088, B:35:0x008c, B:37:0x0090, B:38:0x0093, B:40:0x0097, B:42:0x009b, B:44:0x009f, B:45:0x00a0, B:46:0x00a5, B:47:0x00a6, B:48:0x00ad, B:49:0x00ae, B:50:0x00b5, B:51:0x00b6), top: B:98:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x009f A[Catch: all -> 0x00b7, TryCatch #1 {all -> 0x00b7, blocks: (B:31:0x0081, B:33:0x0088, B:35:0x008c, B:37:0x0090, B:38:0x0093, B:40:0x0097, B:42:0x009b, B:44:0x009f, B:45:0x00a0, B:46:0x00a5, B:47:0x00a6, B:48:0x00ad, B:49:0x00ae, B:50:0x00b5, B:51:0x00b6), top: B:98:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a0 A[Catch: all -> 0x00b7, TryCatch #1 {all -> 0x00b7, blocks: (B:31:0x0081, B:33:0x0088, B:35:0x008c, B:37:0x0090, B:38:0x0093, B:40:0x0097, B:42:0x009b, B:44:0x009f, B:45:0x00a0, B:46:0x00a5, B:47:0x00a6, B:48:0x00ad, B:49:0x00ae, B:50:0x00b5, B:51:0x00b6), top: B:98:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00a6 A[Catch: all -> 0x00b7, TryCatch #1 {all -> 0x00b7, blocks: (B:31:0x0081, B:33:0x0088, B:35:0x008c, B:37:0x0090, B:38:0x0093, B:40:0x0097, B:42:0x009b, B:44:0x009f, B:45:0x00a0, B:46:0x00a5, B:47:0x00a6, B:48:0x00ad, B:49:0x00ae, B:50:0x00b5, B:51:0x00b6), top: B:98:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00ae A[Catch: all -> 0x00b7, TryCatch #1 {all -> 0x00b7, blocks: (B:31:0x0081, B:33:0x0088, B:35:0x008c, B:37:0x0090, B:38:0x0093, B:40:0x0097, B:42:0x009b, B:44:0x009f, B:45:0x00a0, B:46:0x00a5, B:47:0x00a6, B:48:0x00ad, B:49:0x00ae, B:50:0x00b5, B:51:0x00b6), top: B:98:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00b6 A[Catch: all -> 0x00b7, TRY_LEAVE, TryCatch #1 {all -> 0x00b7, blocks: (B:31:0x0081, B:33:0x0088, B:35:0x008c, B:37:0x0090, B:38:0x0093, B:40:0x0097, B:42:0x009b, B:44:0x009f, B:45:0x00a0, B:46:0x00a5, B:47:0x00a6, B:48:0x00ad, B:49:0x00ae, B:50:0x00b5, B:51:0x00b6), top: B:98:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00da A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #3 {all -> 0x0019, blocks: (B:7:0x0014, B:62:0x00d4, B:64:0x00da), top: B:101:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x00ee A[Catch: all -> 0x011d, TryCatch #5 {all -> 0x011d, blocks: (B:70:0x00e7, B:72:0x00ee, B:74:0x00f2, B:76:0x00f6, B:77:0x00f9, B:79:0x00fd, B:81:0x0101, B:83:0x0105, B:84:0x0106, B:85:0x010b, B:86:0x010c, B:87:0x0113, B:88:0x0114, B:89:0x011b, B:90:0x011c), top: B:105:0x00e7 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x00fd A[Catch: all -> 0x011d, TryCatch #5 {all -> 0x011d, blocks: (B:70:0x00e7, B:72:0x00ee, B:74:0x00f2, B:76:0x00f6, B:77:0x00f9, B:79:0x00fd, B:81:0x0101, B:83:0x0105, B:84:0x0106, B:85:0x010b, B:86:0x010c, B:87:0x0113, B:88:0x0114, B:89:0x011b, B:90:0x011c), top: B:105:0x00e7 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0101 A[Catch: all -> 0x011d, TryCatch #5 {all -> 0x011d, blocks: (B:70:0x00e7, B:72:0x00ee, B:74:0x00f2, B:76:0x00f6, B:77:0x00f9, B:79:0x00fd, B:81:0x0101, B:83:0x0105, B:84:0x0106, B:85:0x010b, B:86:0x010c, B:87:0x0113, B:88:0x0114, B:89:0x011b, B:90:0x011c), top: B:105:0x00e7 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0105 A[Catch: all -> 0x011d, TryCatch #5 {all -> 0x011d, blocks: (B:70:0x00e7, B:72:0x00ee, B:74:0x00f2, B:76:0x00f6, B:77:0x00f9, B:79:0x00fd, B:81:0x0101, B:83:0x0105, B:84:0x0106, B:85:0x010b, B:86:0x010c, B:87:0x0113, B:88:0x0114, B:89:0x011b, B:90:0x011c), top: B:105:0x00e7 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0106 A[Catch: all -> 0x011d, TryCatch #5 {all -> 0x011d, blocks: (B:70:0x00e7, B:72:0x00ee, B:74:0x00f2, B:76:0x00f6, B:77:0x00f9, B:79:0x00fd, B:81:0x0101, B:83:0x0105, B:84:0x0106, B:85:0x010b, B:86:0x010c, B:87:0x0113, B:88:0x0114, B:89:0x011b, B:90:0x011c), top: B:105:0x00e7 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x010c A[Catch: all -> 0x011d, TryCatch #5 {all -> 0x011d, blocks: (B:70:0x00e7, B:72:0x00ee, B:74:0x00f2, B:76:0x00f6, B:77:0x00f9, B:79:0x00fd, B:81:0x0101, B:83:0x0105, B:84:0x0106, B:85:0x010b, B:86:0x010c, B:87:0x0113, B:88:0x0114, B:89:0x011b, B:90:0x011c), top: B:105:0x00e7 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0114 A[Catch: all -> 0x011d, TryCatch #5 {all -> 0x011d, blocks: (B:70:0x00e7, B:72:0x00ee, B:74:0x00f2, B:76:0x00f6, B:77:0x00f9, B:79:0x00fd, B:81:0x0101, B:83:0x0105, B:84:0x0106, B:85:0x010b, B:86:0x010c, B:87:0x0113, B:88:0x0114, B:89:0x011b, B:90:0x011c), top: B:105:0x00e7 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x011c A[Catch: all -> 0x011d, TRY_LEAVE, TryCatch #5 {all -> 0x011d, blocks: (B:70:0x00e7, B:72:0x00ee, B:74:0x00f2, B:76:0x00f6, B:77:0x00f9, B:79:0x00fd, B:81:0x0101, B:83:0x0105, B:84:0x0106, B:85:0x010b, B:86:0x010c, B:87:0x0113, B:88:0x0114, B:89:0x011b, B:90:0x011c), top: B:105:0x00e7 }] */
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
            mo2 mo2Var = this.d;
            g83 g83Var = mo2Var.d;
            s11 s11Var = this.e;
            boolean z = this.f;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    this.a = rr3VarA2;
                    this.b = rr3VarA2;
                    this.c = 1;
                    if (mo2.a(mo2Var, z, this) != coroutine_suspended) {
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
                    if (mo2.a(mo2Var, z, this) != coroutine_suspended) {
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
