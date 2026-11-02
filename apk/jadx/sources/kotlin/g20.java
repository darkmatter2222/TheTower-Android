package kotlin;

import android.os.SystemClock;
import java.io.Closeable;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class g20 extends SuspendLambda implements Function1 {
    public Object a;
    public Object b;
    public g30 c;
    public int d;
    public final /* synthetic */ g30 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g20(g30 g30Var, Continuation continuation) {
        super(1, continuation);
        this.e = g30Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new g20(this.e, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new g20(this.e, (Continuation) obj).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0177 A[Catch: all -> 0x018e, TryCatch #8 {all -> 0x018e, blocks: (B:86:0x0158, B:88:0x015f, B:90:0x0163, B:92:0x0167, B:93:0x016a, B:95:0x016e, B:97:0x0172, B:99:0x0176, B:100:0x0177, B:101:0x017c, B:102:0x017d, B:103:0x0184, B:104:0x0185, B:105:0x018c, B:106:0x018d), top: B:127:0x0158 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x017d A[Catch: all -> 0x018e, TryCatch #8 {all -> 0x018e, blocks: (B:86:0x0158, B:88:0x015f, B:90:0x0163, B:92:0x0167, B:93:0x016a, B:95:0x016e, B:97:0x0172, B:99:0x0176, B:100:0x0177, B:101:0x017c, B:102:0x017d, B:103:0x0184, B:104:0x0185, B:105:0x018c, B:106:0x018d), top: B:127:0x0158 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0185 A[Catch: all -> 0x018e, TryCatch #8 {all -> 0x018e, blocks: (B:86:0x0158, B:88:0x015f, B:90:0x0163, B:92:0x0167, B:93:0x016a, B:95:0x016e, B:97:0x0172, B:99:0x0176, B:100:0x0177, B:101:0x017c, B:102:0x017d, B:103:0x0184, B:104:0x0185, B:105:0x018c, B:106:0x018d), top: B:127:0x0158 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x018d A[Catch: all -> 0x018e, TRY_LEAVE, TryCatch #8 {all -> 0x018e, blocks: (B:86:0x0158, B:88:0x015f, B:90:0x0163, B:92:0x0167, B:93:0x016a, B:95:0x016e, B:97:0x0172, B:99:0x0176, B:100:0x0177, B:101:0x017c, B:102:0x017d, B:103:0x0184, B:104:0x0185, B:105:0x018c, B:106:0x018d), top: B:127:0x0158 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0097 A[Catch: all -> 0x0046, TRY_LEAVE, TryCatch #4 {all -> 0x0046, blocks: (B:16:0x0042, B:27:0x0091, B:29:0x0097), top: B:120:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00af A[Catch: all -> 0x00de, TryCatch #7 {all -> 0x00de, blocks: (B:35:0x00a8, B:37:0x00af, B:39:0x00b3, B:41:0x00b7, B:42:0x00ba, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c7, B:50:0x00cc, B:51:0x00cd, B:52:0x00d4, B:53:0x00d5, B:54:0x00dc, B:55:0x00dd), top: B:126:0x00a8 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00be A[Catch: all -> 0x00de, TryCatch #7 {all -> 0x00de, blocks: (B:35:0x00a8, B:37:0x00af, B:39:0x00b3, B:41:0x00b7, B:42:0x00ba, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c7, B:50:0x00cc, B:51:0x00cd, B:52:0x00d4, B:53:0x00d5, B:54:0x00dc, B:55:0x00dd), top: B:126:0x00a8 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00c2 A[Catch: all -> 0x00de, TryCatch #7 {all -> 0x00de, blocks: (B:35:0x00a8, B:37:0x00af, B:39:0x00b3, B:41:0x00b7, B:42:0x00ba, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c7, B:50:0x00cc, B:51:0x00cd, B:52:0x00d4, B:53:0x00d5, B:54:0x00dc, B:55:0x00dd), top: B:126:0x00a8 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00c6 A[Catch: all -> 0x00de, TryCatch #7 {all -> 0x00de, blocks: (B:35:0x00a8, B:37:0x00af, B:39:0x00b3, B:41:0x00b7, B:42:0x00ba, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c7, B:50:0x00cc, B:51:0x00cd, B:52:0x00d4, B:53:0x00d5, B:54:0x00dc, B:55:0x00dd), top: B:126:0x00a8 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c7 A[Catch: all -> 0x00de, TryCatch #7 {all -> 0x00de, blocks: (B:35:0x00a8, B:37:0x00af, B:39:0x00b3, B:41:0x00b7, B:42:0x00ba, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c7, B:50:0x00cc, B:51:0x00cd, B:52:0x00d4, B:53:0x00d5, B:54:0x00dc, B:55:0x00dd), top: B:126:0x00a8 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00cd A[Catch: all -> 0x00de, TryCatch #7 {all -> 0x00de, blocks: (B:35:0x00a8, B:37:0x00af, B:39:0x00b3, B:41:0x00b7, B:42:0x00ba, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c7, B:50:0x00cc, B:51:0x00cd, B:52:0x00d4, B:53:0x00d5, B:54:0x00dc, B:55:0x00dd), top: B:126:0x00a8 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00d5 A[Catch: all -> 0x00de, TryCatch #7 {all -> 0x00de, blocks: (B:35:0x00a8, B:37:0x00af, B:39:0x00b3, B:41:0x00b7, B:42:0x00ba, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c7, B:50:0x00cc, B:51:0x00cd, B:52:0x00d4, B:53:0x00d5, B:54:0x00dc, B:55:0x00dd), top: B:126:0x00a8 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00dd A[Catch: all -> 0x00de, TRY_LEAVE, TryCatch #7 {all -> 0x00de, blocks: (B:35:0x00a8, B:37:0x00af, B:39:0x00b3, B:41:0x00b7, B:42:0x00ba, B:44:0x00be, B:46:0x00c2, B:48:0x00c6, B:49:0x00c7, B:50:0x00cc, B:51:0x00cd, B:52:0x00d4, B:53:0x00d5, B:54:0x00dc, B:55:0x00dd), top: B:126:0x00a8 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0109 A[Catch: all -> 0x0037, TRY_LEAVE, TryCatch #5 {all -> 0x0037, blocks: (B:11:0x0032, B:66:0x0103, B:68:0x0109), top: B:122:0x0032 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x015f A[Catch: all -> 0x018e, TryCatch #8 {all -> 0x018e, blocks: (B:86:0x0158, B:88:0x015f, B:90:0x0163, B:92:0x0167, B:93:0x016a, B:95:0x016e, B:97:0x0172, B:99:0x0176, B:100:0x0177, B:101:0x017c, B:102:0x017d, B:103:0x0184, B:104:0x0185, B:105:0x018c, B:106:0x018d), top: B:127:0x0158 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x016e A[Catch: all -> 0x018e, TryCatch #8 {all -> 0x018e, blocks: (B:86:0x0158, B:88:0x015f, B:90:0x0163, B:92:0x0167, B:93:0x016a, B:95:0x016e, B:97:0x0172, B:99:0x0176, B:100:0x0177, B:101:0x017c, B:102:0x017d, B:103:0x0184, B:104:0x0185, B:105:0x018c, B:106:0x018d), top: B:127:0x0158 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0172 A[Catch: all -> 0x018e, TryCatch #8 {all -> 0x018e, blocks: (B:86:0x0158, B:88:0x015f, B:90:0x0163, B:92:0x0167, B:93:0x016a, B:95:0x016e, B:97:0x0172, B:99:0x0176, B:100:0x0177, B:101:0x017c, B:102:0x017d, B:103:0x0184, B:104:0x0185, B:105:0x018c, B:106:0x018d), top: B:127:0x0158 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x0176 A[Catch: all -> 0x018e, TryCatch #8 {all -> 0x018e, blocks: (B:86:0x0158, B:88:0x015f, B:90:0x0163, B:92:0x0167, B:93:0x016a, B:95:0x016e, B:97:0x0172, B:99:0x0176, B:100:0x0177, B:101:0x017c, B:102:0x017d, B:103:0x0184, B:104:0x0185, B:105:0x018c, B:106:0x018d), top: B:127:0x0158 }] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Closeable closeable;
        rr3 rr3Var;
        Closeable closeable2;
        rr3 rr3Var2;
        rr3 rr3Var3;
        Closeable closeable3;
        v01 v01Var;
        rr3 rr3Var4;
        Closeable closeable4;
        v01 v01Var2;
        Mutex mutex;
        g30 g30Var;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.d;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            g30 g30Var2 = this.e;
            g83 g83Var = g30Var2.o;
            s11 s11Var = s11.CUI_NAME_GET_TRUSTLESS_TOKEN;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    wt3 wt3Var = (wt3) g30Var2.q.get();
                    this.a = tu2VarA;
                    this.b = tu2VarA;
                    this.d = 1;
                    obj = wt3Var.a(this);
                    if (obj != coroutine_suspended) {
                        rr3Var2 = tu2VarA;
                        closeable3 = tu2VarA;
                        v01Var = (v01) obj;
                        if (v01Var instanceof i01) {
                            xs3.a((i01) v01Var, false);
                        }
                        CloseableKt.closeFinally(closeable3, null);
                    }
                } catch (Throwable th) {
                    th = th;
                    closeable2 = tu2VarA;
                    rr3Var3 = tu2VarA;
                    rr3Var3.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3Var3.a(th);
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
                rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    wt3 wt3Var2 = (wt3) g30Var2.q.get();
                    this.a = rr3VarA;
                    this.b = rr3VarA;
                    this.d = 2;
                    obj = wt3Var2.a(this);
                    if (obj != coroutine_suspended) {
                        rr3Var = rr3VarA;
                        closeable4 = rr3VarA;
                        v01Var = (v01) obj;
                        if (v01Var instanceof i01) {
                            xs3.a((i01) v01Var, false);
                        }
                        CloseableKt.closeFinally(closeable4, null);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    closeable = rr3VarA;
                    rr3Var4 = rr3VarA;
                    rr3Var4.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3Var4.a(th);
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
            closeable3 = (Closeable) this.b;
            rr3Var2 = (rr3) this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                closeable3 = closeable3;
                rr3Var2 = rr3Var2;
                v01Var = (v01) obj;
                if (v01Var instanceof i01) {
                    xs3.a((i01) v01Var, false);
                }
                CloseableKt.closeFinally(closeable3, null);
            } catch (Throwable th3) {
                th = th3;
                closeable2 = closeable3;
                rr3Var3 = rr3Var2;
                try {
                    rr3Var3.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var3.a(th);
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
                        CloseableKt.closeFinally(closeable2, th4);
                        throw th5;
                    }
                }
            }
        } else if (i == 2) {
            closeable4 = (Closeable) this.b;
            rr3Var = (rr3) this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                closeable4 = closeable4;
                rr3Var = rr3Var;
                v01Var = (v01) obj;
                if (v01Var instanceof i01) {
                    xs3.a((i01) v01Var, false);
                }
                CloseableKt.closeFinally(closeable4, null);
            } catch (Throwable th6) {
                th = th6;
                closeable = closeable4;
                rr3Var4 = rr3Var;
                try {
                    rr3Var4.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3Var4.a(th);
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
                        CloseableKt.closeFinally(closeable, th7);
                        throw th8;
                    }
                }
            }
        } else {
            if (i != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            g30Var = this.c;
            mutex = (Mutex) this.b;
            v01Var2 = (v01) this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            g30Var.N = (String) ((q01) v01Var2).b;
            Duration.Companion companion = Duration.INSTANCE;
            g30Var.n.getClass();
            g30Var.P = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            return v01Var2;
        } finally {
            mutex.unlock(null);
        }
        v01Var2 = v01Var;
        if (!(v01Var2 instanceof q01)) {
            return v01Var2;
        }
        g30 g30Var3 = this.e;
        mutex = g30Var3.M;
        this.a = v01Var2;
        this.b = mutex;
        this.c = g30Var3;
        this.d = 3;
        if (mutex.lock(null, this) != coroutine_suspended) {
            g30Var = g30Var3;
            g30Var.N = (String) ((q01) v01Var2).b;
            Duration.Companion companion2 = Duration.INSTANCE;
            g30Var.n.getClass();
            g30Var.P = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
            p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
            return v01Var2;
        }
        return coroutine_suspended;
    }
}
