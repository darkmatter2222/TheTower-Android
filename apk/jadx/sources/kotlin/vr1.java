package kotlin;

import com.google.gson.JsonObject;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class vr1 extends SuspendLambda implements Function1 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ yr1 d;
    public final /* synthetic */ t53 e;
    public final /* synthetic */ JsonObject f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vr1(yr1 yr1Var, t53 t53Var, JsonObject jsonObject, Continuation continuation) {
        super(1, continuation);
        this.d = yr1Var;
        this.e = t53Var;
        this.f = jsonObject;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new vr1(this.d, this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((vr1) create((Continuation) obj)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0074 A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #6 {all -> 0x002c, blocks: (B:14:0x0028, B:25:0x006e, B:27:0x0074), top: B:106:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0089 A[Catch: all -> 0x00b8, TryCatch #3 {all -> 0x00b8, blocks: (B:31:0x0082, B:33:0x0089, B:35:0x008d, B:37:0x0091, B:38:0x0094, B:40:0x0098, B:42:0x009c, B:44:0x00a0, B:45:0x00a1, B:46:0x00a6, B:47:0x00a7, B:48:0x00ae, B:49:0x00af, B:50:0x00b6, B:51:0x00b7), top: B:101:0x0082 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0098 A[Catch: all -> 0x00b8, TryCatch #3 {all -> 0x00b8, blocks: (B:31:0x0082, B:33:0x0089, B:35:0x008d, B:37:0x0091, B:38:0x0094, B:40:0x0098, B:42:0x009c, B:44:0x00a0, B:45:0x00a1, B:46:0x00a6, B:47:0x00a7, B:48:0x00ae, B:49:0x00af, B:50:0x00b6, B:51:0x00b7), top: B:101:0x0082 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x009c A[Catch: all -> 0x00b8, TryCatch #3 {all -> 0x00b8, blocks: (B:31:0x0082, B:33:0x0089, B:35:0x008d, B:37:0x0091, B:38:0x0094, B:40:0x0098, B:42:0x009c, B:44:0x00a0, B:45:0x00a1, B:46:0x00a6, B:47:0x00a7, B:48:0x00ae, B:49:0x00af, B:50:0x00b6, B:51:0x00b7), top: B:101:0x0082 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00a0 A[Catch: all -> 0x00b8, TryCatch #3 {all -> 0x00b8, blocks: (B:31:0x0082, B:33:0x0089, B:35:0x008d, B:37:0x0091, B:38:0x0094, B:40:0x0098, B:42:0x009c, B:44:0x00a0, B:45:0x00a1, B:46:0x00a6, B:47:0x00a7, B:48:0x00ae, B:49:0x00af, B:50:0x00b6, B:51:0x00b7), top: B:101:0x0082 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a1 A[Catch: all -> 0x00b8, TryCatch #3 {all -> 0x00b8, blocks: (B:31:0x0082, B:33:0x0089, B:35:0x008d, B:37:0x0091, B:38:0x0094, B:40:0x0098, B:42:0x009c, B:44:0x00a0, B:45:0x00a1, B:46:0x00a6, B:47:0x00a7, B:48:0x00ae, B:49:0x00af, B:50:0x00b6, B:51:0x00b7), top: B:101:0x0082 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00a7 A[Catch: all -> 0x00b8, TryCatch #3 {all -> 0x00b8, blocks: (B:31:0x0082, B:33:0x0089, B:35:0x008d, B:37:0x0091, B:38:0x0094, B:40:0x0098, B:42:0x009c, B:44:0x00a0, B:45:0x00a1, B:46:0x00a6, B:47:0x00a7, B:48:0x00ae, B:49:0x00af, B:50:0x00b6, B:51:0x00b7), top: B:101:0x0082 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00af A[Catch: all -> 0x00b8, TryCatch #3 {all -> 0x00b8, blocks: (B:31:0x0082, B:33:0x0089, B:35:0x008d, B:37:0x0091, B:38:0x0094, B:40:0x0098, B:42:0x009c, B:44:0x00a0, B:45:0x00a1, B:46:0x00a6, B:47:0x00a7, B:48:0x00ae, B:49:0x00af, B:50:0x00b6, B:51:0x00b7), top: B:101:0x0082 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00b7 A[Catch: all -> 0x00b8, TRY_LEAVE, TryCatch #3 {all -> 0x00b8, blocks: (B:31:0x0082, B:33:0x0089, B:35:0x008d, B:37:0x0091, B:38:0x0094, B:40:0x0098, B:42:0x009c, B:44:0x00a0, B:45:0x00a1, B:46:0x00a6, B:47:0x00a7, B:48:0x00ae, B:49:0x00af, B:50:0x00b6, B:51:0x00b7), top: B:101:0x0082 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00eb A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #4 {all -> 0x0019, blocks: (B:7:0x0014, B:62:0x00e5, B:64:0x00eb), top: B:102:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0101 A[Catch: all -> 0x0130, TryCatch #0 {all -> 0x0130, blocks: (B:70:0x00fa, B:72:0x0101, B:74:0x0105, B:76:0x0109, B:77:0x010c, B:79:0x0110, B:81:0x0114, B:83:0x0118, B:84:0x0119, B:85:0x011e, B:86:0x011f, B:87:0x0126, B:88:0x0127, B:89:0x012e, B:90:0x012f), top: B:96:0x00fa }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0110 A[Catch: all -> 0x0130, TryCatch #0 {all -> 0x0130, blocks: (B:70:0x00fa, B:72:0x0101, B:74:0x0105, B:76:0x0109, B:77:0x010c, B:79:0x0110, B:81:0x0114, B:83:0x0118, B:84:0x0119, B:85:0x011e, B:86:0x011f, B:87:0x0126, B:88:0x0127, B:89:0x012e, B:90:0x012f), top: B:96:0x00fa }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0114 A[Catch: all -> 0x0130, TryCatch #0 {all -> 0x0130, blocks: (B:70:0x00fa, B:72:0x0101, B:74:0x0105, B:76:0x0109, B:77:0x010c, B:79:0x0110, B:81:0x0114, B:83:0x0118, B:84:0x0119, B:85:0x011e, B:86:0x011f, B:87:0x0126, B:88:0x0127, B:89:0x012e, B:90:0x012f), top: B:96:0x00fa }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0118 A[Catch: all -> 0x0130, TryCatch #0 {all -> 0x0130, blocks: (B:70:0x00fa, B:72:0x0101, B:74:0x0105, B:76:0x0109, B:77:0x010c, B:79:0x0110, B:81:0x0114, B:83:0x0118, B:84:0x0119, B:85:0x011e, B:86:0x011f, B:87:0x0126, B:88:0x0127, B:89:0x012e, B:90:0x012f), top: B:96:0x00fa }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0119 A[Catch: all -> 0x0130, TryCatch #0 {all -> 0x0130, blocks: (B:70:0x00fa, B:72:0x0101, B:74:0x0105, B:76:0x0109, B:77:0x010c, B:79:0x0110, B:81:0x0114, B:83:0x0118, B:84:0x0119, B:85:0x011e, B:86:0x011f, B:87:0x0126, B:88:0x0127, B:89:0x012e, B:90:0x012f), top: B:96:0x00fa }] */
    /* JADX WARN: Code duplicated, block: B:86:0x011f A[Catch: all -> 0x0130, TryCatch #0 {all -> 0x0130, blocks: (B:70:0x00fa, B:72:0x0101, B:74:0x0105, B:76:0x0109, B:77:0x010c, B:79:0x0110, B:81:0x0114, B:83:0x0118, B:84:0x0119, B:85:0x011e, B:86:0x011f, B:87:0x0126, B:88:0x0127, B:89:0x012e, B:90:0x012f), top: B:96:0x00fa }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0127 A[Catch: all -> 0x0130, TryCatch #0 {all -> 0x0130, blocks: (B:70:0x00fa, B:72:0x0101, B:74:0x0105, B:76:0x0109, B:77:0x010c, B:79:0x0110, B:81:0x0114, B:83:0x0118, B:84:0x0119, B:85:0x011e, B:86:0x011f, B:87:0x0126, B:88:0x0127, B:89:0x012e, B:90:0x012f), top: B:96:0x00fa }] */
    /* JADX WARN: Code duplicated, block: B:90:0x012f A[Catch: all -> 0x0130, TRY_LEAVE, TryCatch #0 {all -> 0x0130, blocks: (B:70:0x00fa, B:72:0x0101, B:74:0x0105, B:76:0x0109, B:77:0x010c, B:79:0x0110, B:81:0x0114, B:83:0x0118, B:84:0x0119, B:85:0x011e, B:86:0x011f, B:87:0x0126, B:88:0x0127, B:89:0x012e, B:90:0x012f), top: B:96:0x00fa }] */
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
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            g83 g83Var = this.d.a;
            s11 s11Var = s11.CUI_NAME_GMSG;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = this.d.b;
            t53 t53Var = this.e;
            JsonObject jsonObject = this.f;
            if (hs3.b().a == null) {
                tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    uj2 uj2VarE = hs3.a().e();
                    t53Var.getClass();
                    uj2VarE.l = u11.GMSG_NAME_RESULT;
                    this.a = tu2VarA;
                    this.b = tu2VarA;
                    this.c = 1;
                    if (t53Var.a(jsonObject, this) != coroutine_suspended) {
                        rr3Var4 = tu2VarA;
                        rr3Var3 = rr3Var4;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3Var4, null);
                    }
                } catch (Throwable th3) {
                    rr3Var3 = tu2VarA;
                    th2 = th3;
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
                    uj2 uj2VarE2 = hs3.a().e();
                    t53Var.getClass();
                    uj2VarE2.l = u11.GMSG_NAME_RESULT;
                    this.a = rr3VarA;
                    this.b = rr3VarA;
                    this.c = 2;
                    if (t53Var.a(jsonObject, this) != coroutine_suspended) {
                        rr3Var2 = rr3VarA;
                        rr3Var = rr3Var2;
                        obj3 = p005kotlin.Unit.INSTANCE;
                        if (obj3 instanceof i01) {
                            xs3.a((i01) obj3, false);
                        }
                        CloseableKt.closeFinally(rr3Var2, null);
                    }
                } catch (Throwable th4) {
                    rr3Var = rr3VarA;
                    th = th4;
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
        if (i == 1) {
            rr3Var4 = this.b;
            rr3Var3 = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                }
                CloseableKt.closeFinally(rr3Var4, null);
            } catch (Throwable th5) {
                th2 = th5;
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
                } catch (Throwable th6) {
                    try {
                        throw th6;
                    } catch (Throwable th7) {
                        CloseableKt.closeFinally(rr3Var4, th6);
                        throw th7;
                    }
                }
            }
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var2 = this.b;
            rr3Var = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                obj3 = p005kotlin.Unit.INSTANCE;
                if (obj3 instanceof i01) {
                    xs3.a((i01) obj3, false);
                }
                CloseableKt.closeFinally(rr3Var2, null);
            } catch (Throwable th8) {
                th = th8;
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
                } catch (Throwable th9) {
                    try {
                        throw th9;
                    } catch (Throwable th10) {
                        CloseableKt.closeFinally(rr3Var2, th9);
                        throw th10;
                    }
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
