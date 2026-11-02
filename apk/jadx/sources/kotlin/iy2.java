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
import p005kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class iy2 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ wy2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iy2(wy2 wy2Var, Continuation continuation) {
        super(2, continuation);
        this.d = wy2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new iy2(this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new iy2(this.d, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0073 A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #6 {all -> 0x002c, blocks: (B:14:0x0028, B:25:0x006d, B:27:0x0073), top: B:106:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0088 A[Catch: all -> 0x00b7, TryCatch #3 {all -> 0x00b7, blocks: (B:32:0x0081, B:34:0x0088, B:36:0x008c, B:38:0x0090, B:39:0x0093, B:41:0x0097, B:43:0x009b, B:45:0x009f, B:46:0x00a0, B:47:0x00a5, B:48:0x00a6, B:49:0x00ad, B:50:0x00ae, B:51:0x00b5, B:52:0x00b6), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0097 A[Catch: all -> 0x00b7, TryCatch #3 {all -> 0x00b7, blocks: (B:32:0x0081, B:34:0x0088, B:36:0x008c, B:38:0x0090, B:39:0x0093, B:41:0x0097, B:43:0x009b, B:45:0x009f, B:46:0x00a0, B:47:0x00a5, B:48:0x00a6, B:49:0x00ad, B:50:0x00ae, B:51:0x00b5, B:52:0x00b6), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x009b A[Catch: all -> 0x00b7, TryCatch #3 {all -> 0x00b7, blocks: (B:32:0x0081, B:34:0x0088, B:36:0x008c, B:38:0x0090, B:39:0x0093, B:41:0x0097, B:43:0x009b, B:45:0x009f, B:46:0x00a0, B:47:0x00a5, B:48:0x00a6, B:49:0x00ad, B:50:0x00ae, B:51:0x00b5, B:52:0x00b6), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x009f A[Catch: all -> 0x00b7, TryCatch #3 {all -> 0x00b7, blocks: (B:32:0x0081, B:34:0x0088, B:36:0x008c, B:38:0x0090, B:39:0x0093, B:41:0x0097, B:43:0x009b, B:45:0x009f, B:46:0x00a0, B:47:0x00a5, B:48:0x00a6, B:49:0x00ad, B:50:0x00ae, B:51:0x00b5, B:52:0x00b6), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00a0 A[Catch: all -> 0x00b7, TryCatch #3 {all -> 0x00b7, blocks: (B:32:0x0081, B:34:0x0088, B:36:0x008c, B:38:0x0090, B:39:0x0093, B:41:0x0097, B:43:0x009b, B:45:0x009f, B:46:0x00a0, B:47:0x00a5, B:48:0x00a6, B:49:0x00ad, B:50:0x00ae, B:51:0x00b5, B:52:0x00b6), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00a6 A[Catch: all -> 0x00b7, TryCatch #3 {all -> 0x00b7, blocks: (B:32:0x0081, B:34:0x0088, B:36:0x008c, B:38:0x0090, B:39:0x0093, B:41:0x0097, B:43:0x009b, B:45:0x009f, B:46:0x00a0, B:47:0x00a5, B:48:0x00a6, B:49:0x00ad, B:50:0x00ae, B:51:0x00b5, B:52:0x00b6), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00ae A[Catch: all -> 0x00b7, TryCatch #3 {all -> 0x00b7, blocks: (B:32:0x0081, B:34:0x0088, B:36:0x008c, B:38:0x0090, B:39:0x0093, B:41:0x0097, B:43:0x009b, B:45:0x009f, B:46:0x00a0, B:47:0x00a5, B:48:0x00a6, B:49:0x00ad, B:50:0x00ae, B:51:0x00b5, B:52:0x00b6), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00b6 A[Catch: all -> 0x00b7, TRY_LEAVE, TryCatch #3 {all -> 0x00b7, blocks: (B:32:0x0081, B:34:0x0088, B:36:0x008c, B:38:0x0090, B:39:0x0093, B:41:0x0097, B:43:0x009b, B:45:0x009f, B:46:0x00a0, B:47:0x00a5, B:48:0x00a6, B:49:0x00ad, B:50:0x00ae, B:51:0x00b5, B:52:0x00b6), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x00dc A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #5 {all -> 0x0019, blocks: (B:7:0x0014, B:63:0x00d6, B:65:0x00dc), top: B:104:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x00f1 A[Catch: all -> 0x0120, TryCatch #0 {all -> 0x0120, blocks: (B:70:0x00ea, B:72:0x00f1, B:74:0x00f5, B:76:0x00f9, B:77:0x00fc, B:79:0x0100, B:81:0x0104, B:83:0x0108, B:84:0x0109, B:85:0x010e, B:86:0x010f, B:87:0x0116, B:88:0x0117, B:89:0x011e, B:90:0x011f), top: B:96:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0100 A[Catch: all -> 0x0120, TryCatch #0 {all -> 0x0120, blocks: (B:70:0x00ea, B:72:0x00f1, B:74:0x00f5, B:76:0x00f9, B:77:0x00fc, B:79:0x0100, B:81:0x0104, B:83:0x0108, B:84:0x0109, B:85:0x010e, B:86:0x010f, B:87:0x0116, B:88:0x0117, B:89:0x011e, B:90:0x011f), top: B:96:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0104 A[Catch: all -> 0x0120, TryCatch #0 {all -> 0x0120, blocks: (B:70:0x00ea, B:72:0x00f1, B:74:0x00f5, B:76:0x00f9, B:77:0x00fc, B:79:0x0100, B:81:0x0104, B:83:0x0108, B:84:0x0109, B:85:0x010e, B:86:0x010f, B:87:0x0116, B:88:0x0117, B:89:0x011e, B:90:0x011f), top: B:96:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0108 A[Catch: all -> 0x0120, TryCatch #0 {all -> 0x0120, blocks: (B:70:0x00ea, B:72:0x00f1, B:74:0x00f5, B:76:0x00f9, B:77:0x00fc, B:79:0x0100, B:81:0x0104, B:83:0x0108, B:84:0x0109, B:85:0x010e, B:86:0x010f, B:87:0x0116, B:88:0x0117, B:89:0x011e, B:90:0x011f), top: B:96:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0109 A[Catch: all -> 0x0120, TryCatch #0 {all -> 0x0120, blocks: (B:70:0x00ea, B:72:0x00f1, B:74:0x00f5, B:76:0x00f9, B:77:0x00fc, B:79:0x0100, B:81:0x0104, B:83:0x0108, B:84:0x0109, B:85:0x010e, B:86:0x010f, B:87:0x0116, B:88:0x0117, B:89:0x011e, B:90:0x011f), top: B:96:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:86:0x010f A[Catch: all -> 0x0120, TryCatch #0 {all -> 0x0120, blocks: (B:70:0x00ea, B:72:0x00f1, B:74:0x00f5, B:76:0x00f9, B:77:0x00fc, B:79:0x0100, B:81:0x0104, B:83:0x0108, B:84:0x0109, B:85:0x010e, B:86:0x010f, B:87:0x0116, B:88:0x0117, B:89:0x011e, B:90:0x011f), top: B:96:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0117 A[Catch: all -> 0x0120, TryCatch #0 {all -> 0x0120, blocks: (B:70:0x00ea, B:72:0x00f1, B:74:0x00f5, B:76:0x00f9, B:77:0x00fc, B:79:0x0100, B:81:0x0104, B:83:0x0108, B:84:0x0109, B:85:0x010e, B:86:0x010f, B:87:0x0116, B:88:0x0117, B:89:0x011e, B:90:0x011f), top: B:96:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:90:0x011f A[Catch: all -> 0x0120, TRY_LEAVE, TryCatch #0 {all -> 0x0120, blocks: (B:70:0x00ea, B:72:0x00f1, B:74:0x00f5, B:76:0x00f9, B:77:0x00fc, B:79:0x0100, B:81:0x0104, B:83:0x0108, B:84:0x0109, B:85:0x010e, B:86:0x010f, B:87:0x0116, B:88:0x0117, B:89:0x011e, B:90:0x011f), top: B:96:0x00ea }] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        rr3 rr3Var;
        TimeoutCancellationException th;
        rr3 rr3Var2;
        rr3 rr3Var3;
        TimeoutCancellationException th2;
        rr3 rr3Var4;
        Object obj2;
        Object obj3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i != 0) {
            if (i == 1) {
                rr3Var4 = this.b;
                rr3Var3 = this.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    obj2 = (p005kotlin.Pair) obj;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3Var4, null);
                    return obj2;
                } catch (Throwable th3) {
                    th2 = th3;
                    try {
                        rr3Var3.b(th2);
                        if (!(th2 instanceof v24)) {
                            throw th2;
                        }
                        if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                            rr3Var3.a(th2);
                        }
                        if (!(th2 instanceof TimeoutCancellationException)) {
                            throw new i21(th2);
                        }
                        if (!(th2 instanceof CancellationException)) {
                            throw new wz0(th2);
                        }
                        if (th2 instanceof w01) {
                            throw th2;
                        }
                        throw new b01(th2);
                    } catch (Throwable th4) {
                        try {
                            throw th4;
                        } catch (Throwable th5) {
                            CloseableKt.closeFinally(rr3Var4, th4);
                            throw th5;
                        }
                    }
                }
            }
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var2 = this.b;
            rr3Var = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                obj3 = (p005kotlin.Pair) obj;
                if (obj3 instanceof i01) {
                    xs3.a((i01) obj3, false);
                }
                CloseableKt.closeFinally(rr3Var2, null);
                return obj3;
            } catch (Throwable th6) {
                th = th6;
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
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        CloseableKt.closeFinally(rr3Var2, th7);
                        throw th8;
                    }
                }
            }
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        wy2 wy2Var = this.d;
        KProperty[] kPropertyArr = wy2.C;
        g83 g83Var = wy2Var.e;
        s11 s11Var = s11.CUI_NAME_ADREQUEST;
        String string = wy2Var.g.toString();
        ps3[] ps3VarArr = ps3.a;
        List listListOf = CollectionsKt.listOf((Object[]) new String[]{string, "BANNER_AD_REFRESH"});
        wy2 wy2Var2 = this.d;
        ks3 ks3Var = wy2Var2.c;
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listListOf, ks3Var);
            try {
                this.a = tu2VarA;
                this.b = tu2VarA;
                this.c = 1;
                Object objA = wy2.a(wy2Var2, (Continuation) this);
                if (objA != coroutine_suspended) {
                    rr3Var4 = tu2VarA;
                    obj = objA;
                    rr3Var3 = rr3Var4;
                    obj2 = (p005kotlin.Pair) obj;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3Var4, null);
                    return obj2;
                }
            } catch (Throwable th9) {
                rr3Var3 = tu2VarA;
                th2 = th9;
                rr3Var4 = rr3Var3;
                rr3Var3.b(th2);
                if (!(th2 instanceof v24)) {
                    throw th2;
                }
                if (!(th2 instanceof TimeoutCancellationException)) {
                    rr3Var3.a(th2);
                }
                if (!(th2 instanceof TimeoutCancellationException)) {
                    throw new i21(th2);
                }
                if (!(th2 instanceof CancellationException)) {
                    throw new wz0(th2);
                }
                if (th2 instanceof w01) {
                    throw th2;
                }
                throw new b01(th2);
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                this.a = rr3VarA;
                this.b = rr3VarA;
                this.c = 2;
                Object objA2 = wy2.a(wy2Var2, (Continuation) this);
                if (objA2 != coroutine_suspended) {
                    rr3Var2 = rr3VarA;
                    obj = objA2;
                    rr3Var = rr3Var2;
                    obj3 = (p005kotlin.Pair) obj;
                    if (obj3 instanceof i01) {
                        xs3.a((i01) obj3, false);
                    }
                    CloseableKt.closeFinally(rr3Var2, null);
                    return obj3;
                }
            } catch (Throwable th10) {
                rr3Var = rr3VarA;
                th = th10;
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
        }
        return coroutine_suspended;
    }
}
