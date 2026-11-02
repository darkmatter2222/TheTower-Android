package kotlin;

import android.os.SystemClock;
import java.io.Closeable;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class g00 extends SuspendLambda implements Function2 {
    public Object a;
    public Object b;
    public int c;
    public final /* synthetic */ o00 d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g00(o00 o00Var, boolean z, String str, Continuation continuation) {
        super(2, continuation);
        this.d = o00Var;
        this.e = z;
        this.f = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new g00(this.d, this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((g00) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0192 A[Catch: all -> 0x01b2, TryCatch #1 {all -> 0x01b2, blocks: (B:92:0x017c, B:94:0x0183, B:96:0x0187, B:98:0x018b, B:99:0x018e, B:101:0x0192, B:103:0x0196, B:105:0x019a, B:106:0x019b, B:107:0x01a0, B:108:0x01a1, B:109:0x01a8, B:110:0x01a9, B:111:0x01b0, B:112:0x01b1), top: B:123:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:103:0x0196 A[Catch: all -> 0x01b2, TryCatch #1 {all -> 0x01b2, blocks: (B:92:0x017c, B:94:0x0183, B:96:0x0187, B:98:0x018b, B:99:0x018e, B:101:0x0192, B:103:0x0196, B:105:0x019a, B:106:0x019b, B:107:0x01a0, B:108:0x01a1, B:109:0x01a8, B:110:0x01a9, B:111:0x01b0, B:112:0x01b1), top: B:123:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:105:0x019a A[Catch: all -> 0x01b2, TryCatch #1 {all -> 0x01b2, blocks: (B:92:0x017c, B:94:0x0183, B:96:0x0187, B:98:0x018b, B:99:0x018e, B:101:0x0192, B:103:0x0196, B:105:0x019a, B:106:0x019b, B:107:0x01a0, B:108:0x01a1, B:109:0x01a8, B:110:0x01a9, B:111:0x01b0, B:112:0x01b1), top: B:123:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:106:0x019b A[Catch: all -> 0x01b2, TryCatch #1 {all -> 0x01b2, blocks: (B:92:0x017c, B:94:0x0183, B:96:0x0187, B:98:0x018b, B:99:0x018e, B:101:0x0192, B:103:0x0196, B:105:0x019a, B:106:0x019b, B:107:0x01a0, B:108:0x01a1, B:109:0x01a8, B:110:0x01a9, B:111:0x01b0, B:112:0x01b1), top: B:123:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:108:0x01a1 A[Catch: all -> 0x01b2, TryCatch #1 {all -> 0x01b2, blocks: (B:92:0x017c, B:94:0x0183, B:96:0x0187, B:98:0x018b, B:99:0x018e, B:101:0x0192, B:103:0x0196, B:105:0x019a, B:106:0x019b, B:107:0x01a0, B:108:0x01a1, B:109:0x01a8, B:110:0x01a9, B:111:0x01b0, B:112:0x01b1), top: B:123:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:110:0x01a9 A[Catch: all -> 0x01b2, TryCatch #1 {all -> 0x01b2, blocks: (B:92:0x017c, B:94:0x0183, B:96:0x0187, B:98:0x018b, B:99:0x018e, B:101:0x0192, B:103:0x0196, B:105:0x019a, B:106:0x019b, B:107:0x01a0, B:108:0x01a1, B:109:0x01a8, B:110:0x01a9, B:111:0x01b0, B:112:0x01b1), top: B:123:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:112:0x01b1 A[Catch: all -> 0x01b2, TRY_LEAVE, TryCatch #1 {all -> 0x01b2, blocks: (B:92:0x017c, B:94:0x0183, B:96:0x0187, B:98:0x018b, B:99:0x018e, B:101:0x0192, B:103:0x0196, B:105:0x019a, B:106:0x019b, B:107:0x01a0, B:108:0x01a1, B:109:0x01a8, B:110:0x01a9, B:111:0x01b0, B:112:0x01b1), top: B:123:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0087 A[Catch: all -> 0x004a, TRY_LEAVE, TryCatch #8 {all -> 0x004a, blocks: (B:21:0x0046, B:34:0x007f, B:36:0x0087, B:39:0x008f), top: B:136:0x0046 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x008f A[Catch: all -> 0x004a, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x004a, blocks: (B:21:0x0046, B:34:0x007f, B:36:0x0087, B:39:0x008f), top: B:136:0x0046 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00da  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:49:0x00fd A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #9 {all -> 0x003b, blocks: (B:16:0x0036, B:47:0x00ef, B:49:0x00fd), top: B:137:0x0036 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0112 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:54:0x010b, B:56:0x0112, B:58:0x0116, B:60:0x011a, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:67:0x0129, B:68:0x012a, B:69:0x012f, B:70:0x0130, B:71:0x0137, B:72:0x0138, B:73:0x013f, B:74:0x0140), top: B:122:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0121 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:54:0x010b, B:56:0x0112, B:58:0x0116, B:60:0x011a, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:67:0x0129, B:68:0x012a, B:69:0x012f, B:70:0x0130, B:71:0x0137, B:72:0x0138, B:73:0x013f, B:74:0x0140), top: B:122:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0125 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:54:0x010b, B:56:0x0112, B:58:0x0116, B:60:0x011a, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:67:0x0129, B:68:0x012a, B:69:0x012f, B:70:0x0130, B:71:0x0137, B:72:0x0138, B:73:0x013f, B:74:0x0140), top: B:122:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0129 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:54:0x010b, B:56:0x0112, B:58:0x0116, B:60:0x011a, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:67:0x0129, B:68:0x012a, B:69:0x012f, B:70:0x0130, B:71:0x0137, B:72:0x0138, B:73:0x013f, B:74:0x0140), top: B:122:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:68:0x012a A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:54:0x010b, B:56:0x0112, B:58:0x0116, B:60:0x011a, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:67:0x0129, B:68:0x012a, B:69:0x012f, B:70:0x0130, B:71:0x0137, B:72:0x0138, B:73:0x013f, B:74:0x0140), top: B:122:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0130 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:54:0x010b, B:56:0x0112, B:58:0x0116, B:60:0x011a, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:67:0x0129, B:68:0x012a, B:69:0x012f, B:70:0x0130, B:71:0x0137, B:72:0x0138, B:73:0x013f, B:74:0x0140), top: B:122:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0138 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:54:0x010b, B:56:0x0112, B:58:0x0116, B:60:0x011a, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:67:0x0129, B:68:0x012a, B:69:0x012f, B:70:0x0130, B:71:0x0137, B:72:0x0138, B:73:0x013f, B:74:0x0140), top: B:122:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0140 A[Catch: all -> 0x0141, TRY_LEAVE, TryCatch #0 {all -> 0x0141, blocks: (B:54:0x010b, B:56:0x0112, B:58:0x0116, B:60:0x011a, B:61:0x011d, B:63:0x0121, B:65:0x0125, B:67:0x0129, B:68:0x012a, B:69:0x012f, B:70:0x0130, B:71:0x0137, B:72:0x0138, B:73:0x013f, B:74:0x0140), top: B:122:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0148  */
    /* JADX WARN: Code duplicated, block: B:84:0x015d  */
    /* JADX WARN: Code duplicated, block: B:87:0x016e A[Catch: all -> 0x0023, TRY_LEAVE, TryCatch #3 {all -> 0x0023, blocks: (B:9:0x001e, B:85:0x0160, B:87:0x016e), top: B:126:0x001e }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0183 A[Catch: all -> 0x01b2, TryCatch #1 {all -> 0x01b2, blocks: (B:92:0x017c, B:94:0x0183, B:96:0x0187, B:98:0x018b, B:99:0x018e, B:101:0x0192, B:103:0x0196, B:105:0x019a, B:106:0x019b, B:107:0x01a0, B:108:0x01a1, B:109:0x01a8, B:110:0x01a9, B:111:0x01b0, B:112:0x01b1), top: B:123:0x017c }] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Mutex mutex;
        o00 o00Var;
        Mutex mutex2;
        g83 g83Var;
        s11 s11Var;
        List listEmptyList;
        ks3 ks3Var;
        o00 o00Var2;
        boolean z;
        String str;
        rr3 rr3VarA;
        rr3 rr3Var;
        TimeoutCancellationException th;
        Closeable closeable;
        Object objA;
        tu2 tu2VarA;
        rr3 rr3Var2;
        TimeoutCancellationException th2;
        Closeable closeable2;
        Object objA2;
        Object objBoxBoolean;
        Object objBoxBoolean2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        try {
            if (i == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                o00 o00Var3 = this.d;
                Mutex mutex3 = o00Var3.s;
                this.a = mutex3;
                this.b = o00Var3;
                this.c = 1;
                if (mutex3.lock(null, this) != coroutine_suspended) {
                    mutex = mutex3;
                    o00Var = o00Var3;
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        closeable2 = (Closeable) this.b;
                        rr3Var2 = (rr3) this.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj);
                            closeable2 = closeable2;
                            rr3Var2 = rr3Var2;
                            objBoxBoolean = Boxing.boxBoolean(((Boolean) obj).booleanValue());
                            if (objBoxBoolean instanceof i01) {
                                xs3.a((i01) objBoxBoolean, false);
                            }
                            CloseableKt.closeFinally(closeable2, null);
                            return objBoxBoolean;
                        } catch (Throwable th3) {
                            th2 = th3;
                            try {
                                rr3Var2.b(th2);
                                if (!(th2 instanceof v24)) {
                                    throw th2;
                                }
                                if (!(th2 instanceof TimeoutCancellationException)) {
                                    rr3Var2.a(th2);
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
                                    CloseableKt.closeFinally(closeable2, th4);
                                    throw th5;
                                }
                            }
                        }
                    }
                    if (i != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    closeable = (Closeable) this.b;
                    rr3Var = (rr3) this.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        closeable = closeable;
                        rr3Var = rr3Var;
                        objBoxBoolean2 = Boxing.boxBoolean(((Boolean) obj).booleanValue());
                        if (objBoxBoolean2 instanceof i01) {
                            xs3.a((i01) objBoxBoolean2, false);
                        }
                        CloseableKt.closeFinally(closeable, null);
                        return objBoxBoolean2;
                    } catch (Throwable th6) {
                        th = th6;
                        try {
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
                        } catch (Throwable th7) {
                            try {
                                throw th7;
                            } catch (Throwable th8) {
                                CloseableKt.closeFinally(closeable, th7);
                                throw th8;
                            }
                        }
                    }
                }
                o00Var = (o00) this.b;
                mutex2 = (Mutex) this.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    if (!((Boolean) obj).booleanValue()) {
                        Boolean boolBoxBoolean = Boxing.boxBoolean(false);
                        mutex2.unlock(null);
                        return boolBoxBoolean;
                    }
                    Duration.Companion companion = Duration.INSTANCE;
                    o00Var.l.getClass();
                    o00Var.u = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
                    o00Var.t = true;
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    g83Var = this.d.n;
                    s11Var = s11.CUI_NAME_SDKINIT_CLD;
                    listEmptyList = CollectionsKt.emptyList();
                    ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                    o00Var2 = this.d;
                    z = this.e;
                    str = this.f;
                    if (hs3.b().a == null) {
                        tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                        try {
                            this.a = tu2VarA;
                            this.b = tu2VarA;
                            this.c = 3;
                            objA2 = o00.a(o00Var2, z, str, this);
                            if (objA2 != coroutine_suspended) {
                                tu2 tu2Var = tu2VarA;
                                obj = objA2;
                                rr3Var2 = tu2Var;
                                closeable2 = tu2Var;
                                objBoxBoolean = Boxing.boxBoolean(((Boolean) obj).booleanValue());
                                if (objBoxBoolean instanceof i01) {
                                    xs3.a((i01) objBoxBoolean, false);
                                }
                                CloseableKt.closeFinally(closeable2, null);
                                return objBoxBoolean;
                            }
                        } catch (Throwable th9) {
                            rr3Var2 = tu2VarA;
                            th2 = th9;
                            closeable2 = rr3Var2;
                            rr3Var2.b(th2);
                            if (!(th2 instanceof v24)) {
                                throw th2;
                            }
                            if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                                rr3Var2.a(th2);
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
                        rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                        try {
                            this.a = rr3VarA;
                            this.b = rr3VarA;
                            this.c = 4;
                            objA = o00.a(o00Var2, z, str, this);
                            if (objA != coroutine_suspended) {
                                rr3 rr3Var3 = rr3VarA;
                                obj = objA;
                                rr3Var = rr3Var3;
                                closeable = rr3Var3;
                                objBoxBoolean2 = Boxing.boxBoolean(((Boolean) obj).booleanValue());
                                if (objBoxBoolean2 instanceof i01) {
                                    xs3.a((i01) objBoxBoolean2, false);
                                }
                                CloseableKt.closeFinally(closeable, null);
                                return objBoxBoolean2;
                            }
                        } catch (Throwable th10) {
                            rr3Var = rr3VarA;
                            th = th10;
                            closeable = rr3Var;
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
                        }
                    }
                    return coroutine_suspended;
                } catch (Throwable th11) {
                    th = th11;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            o00Var = (o00) this.b;
            mutex = (Mutex) this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            this.a = mutex;
            this.b = o00Var;
            this.c = 2;
            obj = o00.a(o00Var, this);
            if (obj != coroutine_suspended) {
                mutex2 = mutex;
                if (!((Boolean) obj).booleanValue()) {
                    Boolean boolBoxBoolean2 = Boxing.boxBoolean(false);
                    mutex2.unlock(null);
                    return boolBoxBoolean2;
                }
                Duration.Companion companion2 = Duration.INSTANCE;
                o00Var.l.getClass();
                o00Var.u = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
                o00Var.t = true;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                g83Var = this.d.n;
                s11Var = s11.CUI_NAME_SDKINIT_CLD;
                listEmptyList = CollectionsKt.emptyList();
                ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                o00Var2 = this.d;
                z = this.e;
                str = this.f;
                if (hs3.b().a == null) {
                    tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    this.a = tu2VarA;
                    this.b = tu2VarA;
                    this.c = 3;
                    objA2 = o00.a(o00Var2, z, str, this);
                    if (objA2 != coroutine_suspended) {
                        tu2 tu2Var2 = tu2VarA;
                        obj = objA2;
                        rr3Var2 = tu2Var2;
                        closeable2 = tu2Var2;
                        objBoxBoolean = Boxing.boxBoolean(((Boolean) obj).booleanValue());
                        if (objBoxBoolean instanceof i01) {
                            xs3.a((i01) objBoxBoolean, false);
                        }
                        CloseableKt.closeFinally(closeable2, null);
                        return objBoxBoolean;
                    }
                } else {
                    rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    this.a = rr3VarA;
                    this.b = rr3VarA;
                    this.c = 4;
                    objA = o00.a(o00Var2, z, str, this);
                    if (objA != coroutine_suspended) {
                        rr3 rr3Var4 = rr3VarA;
                        obj = objA;
                        rr3Var = rr3Var4;
                        closeable = rr3Var4;
                        objBoxBoolean2 = Boxing.boxBoolean(((Boolean) obj).booleanValue());
                        if (objBoxBoolean2 instanceof i01) {
                            xs3.a((i01) objBoxBoolean2, false);
                        }
                        CloseableKt.closeFinally(closeable, null);
                        return objBoxBoolean2;
                    }
                }
            }
            return coroutine_suspended;
        } catch (Throwable th12) {
            th = th12;
            mutex2 = mutex;
            mutex2.unlock(null);
            throw th;
        }
    }
}
