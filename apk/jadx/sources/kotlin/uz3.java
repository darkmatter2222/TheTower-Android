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
public final class uz3 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ yz3 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uz3(yz3 yz3Var, Continuation continuation) {
        super(2, continuation);
        this.d = yz3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new uz3(this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new uz3(this.d, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0074 A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #7 {all -> 0x002c, blocks: (B:14:0x0028, B:26:0x006e, B:28:0x0074), top: B:112:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0086 A[Catch: all -> 0x00b5, TryCatch #2 {all -> 0x00b5, blocks: (B:33:0x007f, B:35:0x0086, B:37:0x008a, B:39:0x008e, B:40:0x0091, B:42:0x0095, B:44:0x0099, B:46:0x009d, B:47:0x009e, B:48:0x00a3, B:49:0x00a4, B:50:0x00ab, B:51:0x00ac, B:52:0x00b3, B:53:0x00b4), top: B:104:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0095 A[Catch: all -> 0x00b5, TryCatch #2 {all -> 0x00b5, blocks: (B:33:0x007f, B:35:0x0086, B:37:0x008a, B:39:0x008e, B:40:0x0091, B:42:0x0095, B:44:0x0099, B:46:0x009d, B:47:0x009e, B:48:0x00a3, B:49:0x00a4, B:50:0x00ab, B:51:0x00ac, B:52:0x00b3, B:53:0x00b4), top: B:104:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0099 A[Catch: all -> 0x00b5, TryCatch #2 {all -> 0x00b5, blocks: (B:33:0x007f, B:35:0x0086, B:37:0x008a, B:39:0x008e, B:40:0x0091, B:42:0x0095, B:44:0x0099, B:46:0x009d, B:47:0x009e, B:48:0x00a3, B:49:0x00a4, B:50:0x00ab, B:51:0x00ac, B:52:0x00b3, B:53:0x00b4), top: B:104:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x009d A[Catch: all -> 0x00b5, TryCatch #2 {all -> 0x00b5, blocks: (B:33:0x007f, B:35:0x0086, B:37:0x008a, B:39:0x008e, B:40:0x0091, B:42:0x0095, B:44:0x0099, B:46:0x009d, B:47:0x009e, B:48:0x00a3, B:49:0x00a4, B:50:0x00ab, B:51:0x00ac, B:52:0x00b3, B:53:0x00b4), top: B:104:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x009e A[Catch: all -> 0x00b5, TryCatch #2 {all -> 0x00b5, blocks: (B:33:0x007f, B:35:0x0086, B:37:0x008a, B:39:0x008e, B:40:0x0091, B:42:0x0095, B:44:0x0099, B:46:0x009d, B:47:0x009e, B:48:0x00a3, B:49:0x00a4, B:50:0x00ab, B:51:0x00ac, B:52:0x00b3, B:53:0x00b4), top: B:104:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00a4 A[Catch: all -> 0x00b5, TryCatch #2 {all -> 0x00b5, blocks: (B:33:0x007f, B:35:0x0086, B:37:0x008a, B:39:0x008e, B:40:0x0091, B:42:0x0095, B:44:0x0099, B:46:0x009d, B:47:0x009e, B:48:0x00a3, B:49:0x00a4, B:50:0x00ab, B:51:0x00ac, B:52:0x00b3, B:53:0x00b4), top: B:104:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00ac A[Catch: all -> 0x00b5, TryCatch #2 {all -> 0x00b5, blocks: (B:33:0x007f, B:35:0x0086, B:37:0x008a, B:39:0x008e, B:40:0x0091, B:42:0x0095, B:44:0x0099, B:46:0x009d, B:47:0x009e, B:48:0x00a3, B:49:0x00a4, B:50:0x00ab, B:51:0x00ac, B:52:0x00b3, B:53:0x00b4), top: B:104:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00b4 A[Catch: all -> 0x00b5, TRY_LEAVE, TryCatch #2 {all -> 0x00b5, blocks: (B:33:0x007f, B:35:0x0086, B:37:0x008a, B:39:0x008e, B:40:0x0091, B:42:0x0095, B:44:0x0099, B:46:0x009d, B:47:0x009e, B:48:0x00a3, B:49:0x00a4, B:50:0x00ab, B:51:0x00ac, B:52:0x00b3, B:53:0x00b4), top: B:104:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00d8 A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #5 {all -> 0x0019, blocks: (B:7:0x0014, B:64:0x00d2, B:66:0x00d8), top: B:108:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x00f3 A[Catch: all -> 0x0122, TryCatch #0 {all -> 0x0122, blocks: (B:72:0x00ec, B:74:0x00f3, B:76:0x00f7, B:78:0x00fb, B:79:0x00fe, B:81:0x0102, B:83:0x0106, B:85:0x010a, B:86:0x010b, B:87:0x0110, B:88:0x0111, B:89:0x0118, B:90:0x0119, B:91:0x0120, B:92:0x0121), top: B:101:0x00ec, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0102 A[Catch: all -> 0x0122, TryCatch #0 {all -> 0x0122, blocks: (B:72:0x00ec, B:74:0x00f3, B:76:0x00f7, B:78:0x00fb, B:79:0x00fe, B:81:0x0102, B:83:0x0106, B:85:0x010a, B:86:0x010b, B:87:0x0110, B:88:0x0111, B:89:0x0118, B:90:0x0119, B:91:0x0120, B:92:0x0121), top: B:101:0x00ec, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0106 A[Catch: all -> 0x0122, TryCatch #0 {all -> 0x0122, blocks: (B:72:0x00ec, B:74:0x00f3, B:76:0x00f7, B:78:0x00fb, B:79:0x00fe, B:81:0x0102, B:83:0x0106, B:85:0x010a, B:86:0x010b, B:87:0x0110, B:88:0x0111, B:89:0x0118, B:90:0x0119, B:91:0x0120, B:92:0x0121), top: B:101:0x00ec, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x010a A[Catch: all -> 0x0122, TryCatch #0 {all -> 0x0122, blocks: (B:72:0x00ec, B:74:0x00f3, B:76:0x00f7, B:78:0x00fb, B:79:0x00fe, B:81:0x0102, B:83:0x0106, B:85:0x010a, B:86:0x010b, B:87:0x0110, B:88:0x0111, B:89:0x0118, B:90:0x0119, B:91:0x0120, B:92:0x0121), top: B:101:0x00ec, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x010b A[Catch: all -> 0x0122, TryCatch #0 {all -> 0x0122, blocks: (B:72:0x00ec, B:74:0x00f3, B:76:0x00f7, B:78:0x00fb, B:79:0x00fe, B:81:0x0102, B:83:0x0106, B:85:0x010a, B:86:0x010b, B:87:0x0110, B:88:0x0111, B:89:0x0118, B:90:0x0119, B:91:0x0120, B:92:0x0121), top: B:101:0x00ec, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0111 A[Catch: all -> 0x0122, TryCatch #0 {all -> 0x0122, blocks: (B:72:0x00ec, B:74:0x00f3, B:76:0x00f7, B:78:0x00fb, B:79:0x00fe, B:81:0x0102, B:83:0x0106, B:85:0x010a, B:86:0x010b, B:87:0x0110, B:88:0x0111, B:89:0x0118, B:90:0x0119, B:91:0x0120, B:92:0x0121), top: B:101:0x00ec, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0119 A[Catch: all -> 0x0122, TryCatch #0 {all -> 0x0122, blocks: (B:72:0x00ec, B:74:0x00f3, B:76:0x00f7, B:78:0x00fb, B:79:0x00fe, B:81:0x0102, B:83:0x0106, B:85:0x010a, B:86:0x010b, B:87:0x0110, B:88:0x0111, B:89:0x0118, B:90:0x0119, B:91:0x0120, B:92:0x0121), top: B:101:0x00ec, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0121 A[Catch: all -> 0x0122, TRY_LEAVE, TryCatch #0 {all -> 0x0122, blocks: (B:72:0x00ec, B:74:0x00f3, B:76:0x00f7, B:78:0x00fb, B:79:0x00fe, B:81:0x0102, B:83:0x0106, B:85:0x010a, B:86:0x010b, B:87:0x0110, B:88:0x0111, B:89:0x0118, B:90:0x0119, B:91:0x0120, B:92:0x0121), top: B:101:0x00ec, outer: #4 }] */
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
        try {
            if (i == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                yz3 yz3Var = this.d;
                g83 g83Var = yz3Var.h;
                s11 s11Var = s11.CUI_NAME_STARTUP_WEBVIEW;
                List listEmptyList = CollectionsKt.emptyList();
                ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    try {
                        this.a = rr3VarA2;
                        this.b = rr3VarA2;
                        this.c = 1;
                        if (yz3.a(yz3Var, this) != coroutine_suspended) {
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
                        if (yz3.a(yz3Var, this) != coroutine_suspended) {
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
            this.d.k.complete();
            return p005kotlin.Unit.INSTANCE;
        } catch (Throwable th9) {
            this.d.k.complete();
            throw th9;
        }
    }
}
