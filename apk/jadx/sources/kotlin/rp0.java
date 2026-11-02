package kotlin;

import com.google.gson.JsonObject;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class rp0 implements eq1 {
    public final Mutex a = MutexKt.Mutex$default(false, 1, null);
    public boolean b;
    public fl1 c;

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(rp0 rp0Var, Continuation continuation) throws Throwable {
        qp0 qp0Var;
        Mutex mutex;
        Throwable th;
        Mutex mutex2;
        if (continuation instanceof qp0) {
            qp0Var = (qp0) continuation;
            int i = qp0Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                qp0Var.e = i - Integer.MIN_VALUE;
            } else {
                qp0Var = new qp0(rp0Var, continuation);
            }
        } else {
            qp0Var = new qp0(rp0Var, continuation);
        }
        Object obj = qp0Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = qp0Var.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = rp0Var.a;
                qp0Var.a = rp0Var;
                qp0Var.b = mutex;
                qp0Var.e = 1;
                if (mutex.lock(null, qp0Var) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) qp0Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = qp0Var.b;
            rp0 rp0Var2 = (rp0) qp0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            rp0Var = rp0Var2;
            rp0Var.b = true;
            qp0Var.a = mutex;
            qp0Var.b = null;
            qp0Var.e = 2;
            if (rp0Var.b(null, qp0Var) != coroutine_suspended) {
                mutex2 = mutex;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                return unit2;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            Mutex mutex4 = mutex;
            th = th3;
            mutex2 = mutex4;
            mutex2.unlock(null);
            throw th;
        }
    }

    public Object a(fl1 fl1Var, Continuation continuation) {
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [ads_mobile_sdk.rp0] */
    /* JADX WARN: Type inference failed for: r11v0, types: [ads_mobile_sdk.hp0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10, types: [ads_mobile_sdk.fl1] */
    /* JADX WARN: Type inference failed for: r11v2, types: [ads_mobile_sdk.fl1] */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [kotlin.jvm.functions.Function2] */
    public final Object a(hp0 hp0Var, Continuation continuation) throws Throwable {
        mp0 mp0Var;
        ?? r11;
        ?? r2;
        fl1 fl1Var;
        v01 v01Var;
        NonCancellable nonCancellable;
        np0 np0Var;
        if (continuation instanceof mp0) {
            mp0Var = (mp0) continuation;
            int i = mp0Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                mp0Var.e = i - Integer.MIN_VALUE;
            } else {
                mp0Var = new mp0(this, continuation);
            }
        } else {
            mp0Var = new mp0(this, continuation);
        }
        Object objB = mp0Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = mp0Var.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objB);
                mp0Var.a = hp0Var;
                mp0Var.e = 1;
                objB = b(mp0Var);
                if (objB != coroutine_suspended) {
                }
                r11 = hp0Var;
                return coroutine_suspended;
            }
            if (i2 == 1) {
                Function2 function2 = (Function2) mp0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objB);
                r11 = function2;
            } else {
                if (i2 == 2) {
                    fl1 fl1Var2 = mp0Var.b;
                    Function2 function3 = (Function2) mp0Var.a;
                    p005kotlin.ResultKt.throwOnFailure(objB);
                    r2 = function3;
                    fl1Var = fl1Var2;
                    mp0Var.a = fl1Var;
                    mp0Var.b = null;
                    mp0Var.e = 3;
                    objB = r2.invoke(fl1Var, mp0Var);
                    hp0Var = fl1Var;
                    if (objB != coroutine_suspended) {
                    }
                    r11 = hp0Var;
                    return coroutine_suspended;
                }
                if (i2 != 3) {
                    if (i2 == 4) {
                        v01 v01Var2 = (v01) mp0Var.a;
                        p005kotlin.ResultKt.throwOnFailure(objB);
                        return v01Var2;
                    }
                    if (i2 != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Throwable th = (Throwable) mp0Var.a;
                    p005kotlin.ResultKt.throwOnFailure(objB);
                    throw th;
                }
                fl1 fl1Var3 = (fl1) mp0Var.a;
                p005kotlin.ResultKt.throwOnFailure(objB);
                hp0Var = fl1Var3;
            }
            v01Var = (v01) objB;
            nonCancellable = NonCancellable.INSTANCE;
            np0Var = new np0(hp0Var, null);
            mp0Var.a = v01Var;
            mp0Var.e = 4;
            if (BuildersKt.withContext(nonCancellable, np0Var, mp0Var) == coroutine_suspended) {
                return v01Var;
            }
            r11 = hp0Var;
            return coroutine_suspended;
            r11 = hp0Var;
            v01 v01Var3 = (v01) objB;
            if (v01Var3 instanceof i01) {
                return (i01) v01Var3;
            }
            Intrinsics.checkNotNull(v01Var3, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
            fl1 fl1Var4 = (fl1) ((q01) v01Var3).b;
            try {
                mp0Var.a = r11;
                mp0Var.b = fl1Var4;
                mp0Var.e = 2;
                if (fl1Var4.d(mp0Var) != coroutine_suspended) {
                    r2 = r11;
                    fl1Var = fl1Var4;
                    mp0Var.a = fl1Var;
                    mp0Var.b = null;
                    mp0Var.e = 3;
                    objB = r2.invoke(fl1Var, mp0Var);
                    hp0Var = fl1Var;
                    if (objB != coroutine_suspended) {
                        v01Var = (v01) objB;
                        nonCancellable = NonCancellable.INSTANCE;
                        np0Var = new np0(hp0Var, null);
                        mp0Var.a = v01Var;
                        mp0Var.e = 4;
                        if (BuildersKt.withContext(nonCancellable, np0Var, mp0Var) == coroutine_suspended) {
                            return v01Var;
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                hp0Var = fl1Var4;
                NonCancellable nonCancellable2 = NonCancellable.INSTANCE;
                np0 np0Var2 = new np0(hp0Var, null);
                mp0Var.a = th;
                mp0Var.b = null;
                mp0Var.e = 5;
                if (BuildersKt.withContext(nonCancellable2, np0Var2, mp0Var) != coroutine_suspended) {
                    throw th;
                }
            }
            r11 = hp0Var;
            return coroutine_suspended;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a2 A[PHI: r11
  0x00a2: PHI (r11v10 ads_mobile_sdk.fl1) = (r11v9 ads_mobile_sdk.fl1), (r11v17 ads_mobile_sdk.fl1) binds: [B:39:0x009f, B:20:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b1, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r12, r2, r0) == r1) goto L52;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [ads_mobile_sdk.rp0] */
    /* JADX WARN: Type inference failed for: r11v0, types: [ads_mobile_sdk.ip0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v1, types: [ads_mobile_sdk.fl1] */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [kotlin.jvm.functions.Function2] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.ip0 r11, p005kotlin.coroutines.Continuation r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.rp0.a(ads_mobile_sdk.ip0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.eq1
    public final Object a(JsonObject jsonObject, String str, Continuation continuation) throws Throwable {
        Object objA = a(new ip0(jsonObject, str, null), continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.eq1
    public final Object a(String str, String str2, Continuation continuation) {
        UUID uuidRandomUUID = UUID.randomUUID();
        Intrinsics.checkNotNullExpressionValue(uuidRandomUUID, "randomUUID(...)");
        return a(new hp0(str, str2, uuidRandomUUID, null), continuation);
    }

    public abstract Object a(String str, Continuation continuation);

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004f, code lost:
    
        if (r7.c(r0) == r1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005e, code lost:
    
        if (r2.a(r6, r0) == r1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0060, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(kotlin.fl1 r6, p005kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlin.fp0
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.fp0 r0 = (kotlin.fp0) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.fp0 r0 = new ads_mobile_sdk.fp0
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L61
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.fl1 r6 = r0.b
            ads_mobile_sdk.rp0 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L53
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.fl1 r7 = r5.c
            r5.c = r6
            if (r7 == 0) goto L52
            r0.a = r5
            r0.b = r6
            r0.e = r4
            java.lang.Object r7 = r7.c(r0)
            if (r7 != r1) goto L52
            goto L60
        L52:
            r2 = r5
        L53:
            r7 = 0
            r0.a = r7
            r0.b = r7
            r0.e = r3
            java.lang.Object r6 = r2.a(r6, r0)
            if (r6 != r1) goto L61
        L60:
            return r1
        L61:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.rp0.b(ads_mobile_sdk.fl1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00ab A[Catch: all -> 0x00d6, TryCatch #0 {all -> 0x00d6, blocks: (B:21:0x004c, B:44:0x00a5, B:46:0x00ab, B:47:0x00b0), top: B:62:0x004c }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00b0 A[Catch: all -> 0x00d6, TRY_LEAVE, TryCatch #0 {all -> 0x00d6, blocks: (B:21:0x004c, B:44:0x00a5, B:46:0x00ab, B:47:0x00b0), top: B:62:0x004c }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(Continuation continuation) throws Throwable {
        jp0 jp0Var;
        Mutex mutex;
        rp0 rp0Var;
        Mutex mutex2;
        Throwable th;
        Mutex mutex3;
        rp0 rp0Var2;
        r31 r31Var;
        AtomicBoolean atomicBoolean;
        fl1 fl1Var;
        Object m01Var;
        v01 v01Var;
        fl1 fl1Var2;
        if (continuation instanceof jp0) {
            jp0Var = (jp0) continuation;
            int i = jp0Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                jp0Var.e = i - Integer.MIN_VALUE;
            } else {
                jp0Var = new jp0(this, continuation);
            }
        } else {
            jp0Var = new jp0(this, continuation);
        }
        Object obj = jp0Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = jp0Var.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = this.a;
                jp0Var.a = this;
                jp0Var.b = mutex;
                jp0Var.e = 1;
                if (mutex.lock(null, jp0Var) != coroutine_suspended) {
                    rp0Var = this;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    fl1Var = (fl1) jp0Var.b;
                    mutex2 = (Mutex) jp0Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        Mutex mutex4 = mutex2;
                        m01Var = new q01(fl1Var);
                        mutex = mutex4;
                        mutex.unlock(null);
                        return m01Var;
                    } catch (Throwable th2) {
                        th = th2;
                        mutex3 = mutex2;
                        mutex3.unlock(null);
                        throw th;
                    }
                }
                mutex3 = (Mutex) jp0Var.b;
                rp0Var2 = (rp0) jp0Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    v01Var = (v01) obj;
                    if (!(v01Var instanceof i01)) {
                        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                        fl1Var2 = (fl1) ((q01) v01Var).b;
                        jp0Var.a = mutex3;
                        jp0Var.b = fl1Var2;
                        jp0Var.e = 3;
                        if (rp0Var2.b(fl1Var2, jp0Var) != coroutine_suspended) {
                            fl1Var = fl1Var2;
                            mutex2 = mutex3;
                            Mutex mutex5 = mutex2;
                            m01Var = new q01(fl1Var);
                            mutex = mutex5;
                        }
                        return coroutine_suspended;
                    }
                    m01Var = (i01) v01Var;
                    mutex = mutex3;
                    mutex.unlock(null);
                    return m01Var;
                } catch (Throwable th3) {
                    th = th3;
                    mutex3.unlock(null);
                    throw th;
                }
            }
            Mutex mutex6 = (Mutex) jp0Var.b;
            rp0Var = (rp0) jp0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex6;
            fl1 fl1Var3 = rp0Var.c;
            if (rp0Var.b) {
                m01Var = new m01("EngineSingleton is stopped", kk1.INTERNAL_ERROR);
            } else {
                if (fl1Var3 == null || (r31Var = fl1Var3.a) == null || (atomicBoolean = r31Var.k) == null || atomicBoolean.get()) {
                    jp0Var.a = rp0Var;
                    jp0Var.b = mutex;
                    jp0Var.e = 2;
                    Object objA = rp0Var.a((String) null, jp0Var);
                    if (objA != coroutine_suspended) {
                        mutex3 = mutex;
                        obj = objA;
                        rp0Var2 = rp0Var;
                        v01Var = (v01) obj;
                        if (!(v01Var instanceof i01)) {
                            m01Var = (i01) v01Var;
                            mutex = mutex3;
                        } else {
                            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                            fl1Var2 = (fl1) ((q01) v01Var).b;
                            jp0Var.a = mutex3;
                            jp0Var.b = fl1Var2;
                            jp0Var.e = 3;
                            if (rp0Var2.b(fl1Var2, jp0Var) != coroutine_suspended) {
                                fl1Var = fl1Var2;
                                mutex2 = mutex3;
                            }
                        }
                    }
                    return coroutine_suspended;
                }
                mutex2 = mutex;
                fl1Var = fl1Var3;
                Mutex mutex7 = mutex2;
                m01Var = new q01(fl1Var);
                mutex = mutex7;
            }
            mutex.unlock(null);
            return m01Var;
        } catch (Throwable th4) {
            mutex2 = mutex;
            th = th4;
            mutex3 = mutex2;
            mutex3.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(fl1 fl1Var, Continuation continuation) throws Throwable {
        gp0 gp0Var;
        Mutex mutex;
        rp0 rp0Var;
        Throwable th;
        Mutex mutex2;
        if (continuation instanceof gp0) {
            gp0Var = (gp0) continuation;
            int i = gp0Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                gp0Var.f = i - Integer.MIN_VALUE;
            } else {
                gp0Var = new gp0(this, continuation);
            }
        } else {
            gp0Var = new gp0(this, continuation);
        }
        Object obj = gp0Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = gp0Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = this.a;
                gp0Var.a = this;
                gp0Var.b = fl1Var;
                gp0Var.c = mutex;
                gp0Var.f = 1;
                if (mutex.lock(null, gp0Var) != coroutine_suspended) {
                    rp0Var = this;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) gp0Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = gp0Var.c;
            fl1 fl1Var2 = gp0Var.b;
            rp0Var = (rp0) gp0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            fl1Var = fl1Var2;
            gp0Var.a = mutex;
            gp0Var.b = null;
            gp0Var.c = null;
            gp0Var.f = 2;
            if (rp0Var.b(fl1Var, gp0Var) != coroutine_suspended) {
                mutex2 = mutex;
                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                mutex2.unlock(null);
                return unit2;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            Mutex mutex4 = mutex;
            th = th3;
            mutex2 = mutex4;
            mutex2.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(Continuation continuation) {
        kp0 kp0Var;
        rp0 rp0Var;
        Mutex mutex;
        r31 r31Var;
        AtomicBoolean atomicBoolean;
        if (continuation instanceof kp0) {
            kp0Var = (kp0) continuation;
            int i = kp0Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                kp0Var.e = i - Integer.MIN_VALUE;
            } else {
                kp0Var = new kp0(this, continuation);
            }
        } else {
            kp0Var = new kp0(this, continuation);
        }
        Object obj = kp0Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = kp0Var.e;
        boolean z = true;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.a;
            kp0Var.a = this;
            kp0Var.b = mutex2;
            kp0Var.e = 1;
            if (mutex2.lock(null, kp0Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            rp0Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = kp0Var.b;
            rp0Var = kp0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            fl1 fl1Var = rp0Var.c;
            if (fl1Var == null || (r31Var = fl1Var.a) == null || (atomicBoolean = r31Var.k) == null || atomicBoolean.get()) {
                z = false;
            }
            return Boxing.boxBoolean(z);
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(Continuation continuation) throws Throwable {
        lp0 lp0Var;
        if (continuation instanceof lp0) {
            lp0Var = (lp0) continuation;
            int i = lp0Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                lp0Var.c = i - Integer.MIN_VALUE;
            } else {
                lp0Var = new lp0(this, continuation);
            }
        } else {
            lp0Var = new lp0(this, continuation);
        }
        Object objB = lp0Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = lp0Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objB);
            lp0Var.c = 1;
            objB = b(lp0Var);
            if (objB == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objB);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
