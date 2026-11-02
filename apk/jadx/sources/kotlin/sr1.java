package kotlin;

import android.net.Uri;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class sr1 extends SuspendLambda implements Function1 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ yr1 d;
    public final /* synthetic */ r41 e;
    public final /* synthetic */ r31 f;
    public final /* synthetic */ Uri g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sr1(yr1 yr1Var, r41 r41Var, r31 r31Var, Uri uri, Continuation continuation) {
        super(1, continuation);
        this.d = yr1Var;
        this.e = r41Var;
        this.f = r31Var;
        this.g = uri;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new sr1(this.d, this.e, this.f, this.g, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((sr1) create((Continuation) obj)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007b A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #4 {all -> 0x002c, blocks: (B:14:0x0028, B:25:0x0075, B:27:0x007b), top: B:104:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0090 A[Catch: all -> 0x00bf, TryCatch #7 {all -> 0x00bf, blocks: (B:31:0x0089, B:33:0x0090, B:35:0x0094, B:37:0x0098, B:38:0x009b, B:40:0x009f, B:42:0x00a3, B:44:0x00a7, B:45:0x00a8, B:46:0x00ad, B:47:0x00ae, B:48:0x00b5, B:49:0x00b6, B:50:0x00bd, B:51:0x00be), top: B:109:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x009f A[Catch: all -> 0x00bf, TryCatch #7 {all -> 0x00bf, blocks: (B:31:0x0089, B:33:0x0090, B:35:0x0094, B:37:0x0098, B:38:0x009b, B:40:0x009f, B:42:0x00a3, B:44:0x00a7, B:45:0x00a8, B:46:0x00ad, B:47:0x00ae, B:48:0x00b5, B:49:0x00b6, B:50:0x00bd, B:51:0x00be), top: B:109:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00a3 A[Catch: all -> 0x00bf, TryCatch #7 {all -> 0x00bf, blocks: (B:31:0x0089, B:33:0x0090, B:35:0x0094, B:37:0x0098, B:38:0x009b, B:40:0x009f, B:42:0x00a3, B:44:0x00a7, B:45:0x00a8, B:46:0x00ad, B:47:0x00ae, B:48:0x00b5, B:49:0x00b6, B:50:0x00bd, B:51:0x00be), top: B:109:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00a7 A[Catch: all -> 0x00bf, TryCatch #7 {all -> 0x00bf, blocks: (B:31:0x0089, B:33:0x0090, B:35:0x0094, B:37:0x0098, B:38:0x009b, B:40:0x009f, B:42:0x00a3, B:44:0x00a7, B:45:0x00a8, B:46:0x00ad, B:47:0x00ae, B:48:0x00b5, B:49:0x00b6, B:50:0x00bd, B:51:0x00be), top: B:109:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a8 A[Catch: all -> 0x00bf, TryCatch #7 {all -> 0x00bf, blocks: (B:31:0x0089, B:33:0x0090, B:35:0x0094, B:37:0x0098, B:38:0x009b, B:40:0x009f, B:42:0x00a3, B:44:0x00a7, B:45:0x00a8, B:46:0x00ad, B:47:0x00ae, B:48:0x00b5, B:49:0x00b6, B:50:0x00bd, B:51:0x00be), top: B:109:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00ae A[Catch: all -> 0x00bf, TryCatch #7 {all -> 0x00bf, blocks: (B:31:0x0089, B:33:0x0090, B:35:0x0094, B:37:0x0098, B:38:0x009b, B:40:0x009f, B:42:0x00a3, B:44:0x00a7, B:45:0x00a8, B:46:0x00ad, B:47:0x00ae, B:48:0x00b5, B:49:0x00b6, B:50:0x00bd, B:51:0x00be), top: B:109:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00b6 A[Catch: all -> 0x00bf, TryCatch #7 {all -> 0x00bf, blocks: (B:31:0x0089, B:33:0x0090, B:35:0x0094, B:37:0x0098, B:38:0x009b, B:40:0x009f, B:42:0x00a3, B:44:0x00a7, B:45:0x00a8, B:46:0x00ad, B:47:0x00ae, B:48:0x00b5, B:49:0x00b6, B:50:0x00bd, B:51:0x00be), top: B:109:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00be A[Catch: all -> 0x00bf, TRY_LEAVE, TryCatch #7 {all -> 0x00bf, blocks: (B:31:0x0089, B:33:0x0090, B:35:0x0094, B:37:0x0098, B:38:0x009b, B:40:0x009f, B:42:0x00a3, B:44:0x00a7, B:45:0x00a8, B:46:0x00ad, B:47:0x00ae, B:48:0x00b5, B:49:0x00b6, B:50:0x00bd, B:51:0x00be), top: B:109:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00f7 A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #3 {all -> 0x0019, blocks: (B:7:0x0014, B:62:0x00f1, B:64:0x00f7), top: B:102:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x010d A[Catch: all -> 0x013c, TryCatch #5 {all -> 0x013c, blocks: (B:70:0x0106, B:72:0x010d, B:74:0x0111, B:76:0x0115, B:77:0x0118, B:79:0x011c, B:81:0x0120, B:83:0x0124, B:84:0x0125, B:85:0x012a, B:86:0x012b, B:87:0x0132, B:88:0x0133, B:89:0x013a, B:90:0x013b), top: B:106:0x0106 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x011c A[Catch: all -> 0x013c, TryCatch #5 {all -> 0x013c, blocks: (B:70:0x0106, B:72:0x010d, B:74:0x0111, B:76:0x0115, B:77:0x0118, B:79:0x011c, B:81:0x0120, B:83:0x0124, B:84:0x0125, B:85:0x012a, B:86:0x012b, B:87:0x0132, B:88:0x0133, B:89:0x013a, B:90:0x013b), top: B:106:0x0106 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0120 A[Catch: all -> 0x013c, TryCatch #5 {all -> 0x013c, blocks: (B:70:0x0106, B:72:0x010d, B:74:0x0111, B:76:0x0115, B:77:0x0118, B:79:0x011c, B:81:0x0120, B:83:0x0124, B:84:0x0125, B:85:0x012a, B:86:0x012b, B:87:0x0132, B:88:0x0133, B:89:0x013a, B:90:0x013b), top: B:106:0x0106 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0124 A[Catch: all -> 0x013c, TryCatch #5 {all -> 0x013c, blocks: (B:70:0x0106, B:72:0x010d, B:74:0x0111, B:76:0x0115, B:77:0x0118, B:79:0x011c, B:81:0x0120, B:83:0x0124, B:84:0x0125, B:85:0x012a, B:86:0x012b, B:87:0x0132, B:88:0x0133, B:89:0x013a, B:90:0x013b), top: B:106:0x0106 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0125 A[Catch: all -> 0x013c, TryCatch #5 {all -> 0x013c, blocks: (B:70:0x0106, B:72:0x010d, B:74:0x0111, B:76:0x0115, B:77:0x0118, B:79:0x011c, B:81:0x0120, B:83:0x0124, B:84:0x0125, B:85:0x012a, B:86:0x012b, B:87:0x0132, B:88:0x0133, B:89:0x013a, B:90:0x013b), top: B:106:0x0106 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x012b A[Catch: all -> 0x013c, TryCatch #5 {all -> 0x013c, blocks: (B:70:0x0106, B:72:0x010d, B:74:0x0111, B:76:0x0115, B:77:0x0118, B:79:0x011c, B:81:0x0120, B:83:0x0124, B:84:0x0125, B:85:0x012a, B:86:0x012b, B:87:0x0132, B:88:0x0133, B:89:0x013a, B:90:0x013b), top: B:106:0x0106 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0133 A[Catch: all -> 0x013c, TryCatch #5 {all -> 0x013c, blocks: (B:70:0x0106, B:72:0x010d, B:74:0x0111, B:76:0x0115, B:77:0x0118, B:79:0x011c, B:81:0x0120, B:83:0x0124, B:84:0x0125, B:85:0x012a, B:86:0x012b, B:87:0x0132, B:88:0x0133, B:89:0x013a, B:90:0x013b), top: B:106:0x0106 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x013b A[Catch: all -> 0x013c, TRY_LEAVE, TryCatch #5 {all -> 0x013c, blocks: (B:70:0x0106, B:72:0x010d, B:74:0x0111, B:76:0x0115, B:77:0x0118, B:79:0x011c, B:81:0x0120, B:83:0x0124, B:84:0x0125, B:85:0x012a, B:86:0x012b, B:87:0x0132, B:88:0x0133, B:89:0x013a, B:90:0x013b), top: B:106:0x0106 }] */
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
            yr1 yr1Var = this.d;
            ks3 ks3Var = yr1Var.b;
            r41 r41Var = this.e;
            r31 r31Var = this.f;
            Uri uri = this.g;
            if (hs3.b().a == null) {
                tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    hs3.a().e().l = r41Var.g();
                    Map mapD = yr1Var.c.d(uri);
                    this.a = tu2VarA;
                    this.b = tu2VarA;
                    this.c = 1;
                    if (r41Var.a(r31Var, mapD, this) != coroutine_suspended) {
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
                }
            } else {
                rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    hs3.a().e().l = r41Var.g();
                    Map mapD2 = yr1Var.c.d(uri);
                    this.a = rr3VarA;
                    this.b = rr3VarA;
                    this.c = 2;
                    if (r41Var.a(r31Var, mapD2, this) != coroutine_suspended) {
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
