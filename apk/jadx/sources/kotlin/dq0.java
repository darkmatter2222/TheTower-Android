package kotlin;

import com.ironsource.C3510b4;
import java.util.UUID;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class dq0 {
    public final zd3 a;
    public final tx b;
    public final ex0 c;
    public final f13 d;
    public final Mutex e;

    public dq0(zd3 sharedSettingsDataStore, tx clock, ex0 flags, f13 randomGenerator) {
        Intrinsics.checkNotNullParameter(sharedSettingsDataStore, "sharedSettingsDataStore");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        this.a = sharedSettingsDataStore;
        this.b = clock;
        this.c = flags;
        this.d = randomGenerator;
        this.e = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00b6 A[Catch: all -> 0x0116, TryCatch #0 {all -> 0x0116, blocks: (B:21:0x0053, B:38:0x00b2, B:40:0x00b6, B:44:0x00c8, B:47:0x0109), top: B:60:0x0053 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:46:0x0108  */
    /* JADX WARN: Code duplicated, block: B:47:0x0109 A[Catch: all -> 0x0116, TRY_LEAVE, TryCatch #0 {all -> 0x0116, blocks: (B:21:0x0053, B:38:0x00b2, B:40:0x00b6, B:44:0x00c8, B:47:0x0109), top: B:60:0x0053 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x010e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static Object a(dq0 dq0Var, String str, long j, Continuation continuation) {
        cq0 cq0Var;
        long j2;
        Mutex mutex;
        String str2;
        Throwable th;
        Mutex mutex2;
        dq0 dq0Var2;
        Mutex mutex3;
        String value;
        long j3;
        xp0 xp0Var;
        xp0 xp0Var2;
        Object objA;
        xp0 xp0Var3;
        String strW;
        if (continuation instanceof cq0) {
            cq0Var = (cq0) continuation;
            int i = cq0Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                cq0Var.g = i - Integer.MIN_VALUE;
            } else {
                cq0Var = new cq0(dq0Var, continuation);
            }
        } else {
            cq0Var = new cq0(dq0Var, continuation);
        }
        Object obj = cq0Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = cq0Var.g;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                Mutex mutex4 = dq0Var.e;
                cq0Var.a = dq0Var;
                cq0Var.b = str;
                cq0Var.c = mutex4;
                j2 = j;
                cq0Var.d = j2;
                cq0Var.g = 1;
                if (mutex4.lock(null, cq0Var) != coroutine_suspended) {
                    mutex = mutex4;
                    str2 = str;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 == 2) {
                    j3 = cq0Var.d;
                    mutex3 = cq0Var.c;
                    value = (String) cq0Var.b;
                    dq0Var2 = (dq0) cq0Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        xp0Var = (xp0) obj;
                        if (xp0Var != null) {
                            strW = xp0Var.w();
                            Intrinsics.checkNotNullExpressionValue(strW, "getEoid(...)");
                            if (strW.length() == 0) {
                                mutex = mutex3;
                            }
                            mutex.unlock(null);
                            return xp0Var;
                        }
                        wp0 builder = xp0.y();
                        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                        Intrinsics.checkNotNullParameter(builder, "builder");
                        Intrinsics.checkNotNullParameter(value, "value");
                        builder.a(value);
                        builder.a(j3);
                        vz0 vz0VarB = builder.b();
                        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                        xp0Var2 = (xp0) vz0VarB;
                        zd3 zd3Var = dq0Var2.a;
                        cq0Var.a = mutex3;
                        cq0Var.b = xp0Var2;
                        cq0Var.c = null;
                        cq0Var.g = 3;
                        zd3Var.getClass();
                        objA = zd3.a(zd3Var, new ud3(xp0Var2), cq0Var);
                        if (objA == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                            objA = p005kotlin.Unit.INSTANCE;
                        }
                        if (objA != coroutine_suspended) {
                            mutex2 = mutex3;
                            xp0Var3 = xp0Var2;
                        }
                        return coroutine_suspended;
                    } catch (Throwable th2) {
                        th = th2;
                        mutex2 = mutex3;
                        th = th;
                        mutex2.unlock(null);
                        throw th;
                    }
                }
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                xp0Var3 = (xp0) cq0Var.b;
                mutex2 = (Mutex) cq0Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    mutex2.unlock(null);
                    throw th;
                }
                xp0Var = xp0Var3;
                mutex = mutex2;
                mutex.unlock(null);
                return xp0Var;
            }
            j2 = cq0Var.d;
            Mutex mutex5 = cq0Var.c;
            String str3 = (String) cq0Var.b;
            dq0 dq0Var3 = (dq0) cq0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            str2 = str3;
            mutex = mutex5;
            dq0Var = dq0Var3;
            if (str2.length() != 0 && j2 > 0) {
                zd3 zd3Var2 = dq0Var.a;
                cq0Var.a = dq0Var;
                cq0Var.b = str2;
                cq0Var.c = mutex;
                cq0Var.d = j2;
                cq0Var.g = 2;
                zd3Var2.getClass();
                Object objA2 = zd3.a(zd3Var2, cq0Var);
                if (objA2 != coroutine_suspended) {
                    long j4 = j2;
                    dq0Var2 = dq0Var;
                    mutex3 = mutex;
                    value = str2;
                    obj = objA2;
                    j3 = j4;
                    xp0Var = (xp0) obj;
                    if (xp0Var != null) {
                        strW = xp0Var.w();
                        Intrinsics.checkNotNullExpressionValue(strW, "getEoid(...)");
                        if (strW.length() == 0) {
                            mutex = mutex3;
                        }
                    }
                    wp0 builder2 = xp0.y();
                    Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
                    Intrinsics.checkNotNullParameter(builder2, "builder");
                    Intrinsics.checkNotNullParameter(value, "value");
                    builder2.a(value);
                    builder2.a(j3);
                    vz0 vz0VarB2 = builder2.b();
                    Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
                    xp0Var2 = (xp0) vz0VarB2;
                    zd3 zd3Var3 = dq0Var2.a;
                    cq0Var.a = mutex3;
                    cq0Var.b = xp0Var2;
                    cq0Var.c = null;
                    cq0Var.g = 3;
                    zd3Var3.getClass();
                    objA = zd3.a(zd3Var3, new ud3(xp0Var2), cq0Var);
                    if (objA == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        objA = p005kotlin.Unit.INSTANCE;
                    }
                    if (objA != coroutine_suspended) {
                        mutex2 = mutex3;
                        xp0Var3 = xp0Var2;
                        xp0Var = xp0Var3;
                        mutex = mutex2;
                    }
                }
                return coroutine_suspended;
            }
            xp0Var = null;
            mutex.unlock(null);
            return xp0Var;
        } catch (Throwable th4) {
            th = th4;
            mutex2 = mutex;
            mutex2.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(dq0 dq0Var, Continuation continuation) throws Throwable {
        yp0 yp0Var;
        Mutex mutex;
        Throwable th;
        Mutex mutex2;
        if (continuation instanceof yp0) {
            yp0Var = (yp0) continuation;
            int i = yp0Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                yp0Var.e = i - Integer.MIN_VALUE;
            } else {
                yp0Var = new yp0(dq0Var, continuation);
            }
        } else {
            yp0Var = new yp0(dq0Var, continuation);
        }
        Object obj = yp0Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = yp0Var.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = dq0Var.e;
                yp0Var.a = dq0Var;
                yp0Var.b = mutex;
                yp0Var.e = 1;
                if (mutex.lock(null, yp0Var) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) yp0Var.a;
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
            Mutex mutex3 = yp0Var.b;
            dq0 dq0Var2 = (dq0) yp0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            dq0Var = dq0Var2;
            zd3 zd3Var = dq0Var.a;
            yp0Var.a = mutex;
            yp0Var.b = null;
            yp0Var.e = 2;
            zd3Var.getClass();
            Object objA = zd3.a(zd3Var, pd3.a, yp0Var);
            if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objA = p005kotlin.Unit.INSTANCE;
            }
            if (objA != coroutine_suspended) {
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

    /* JADX WARN: Code duplicated, block: B:33:0x0082 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:14:0x0030, B:38:0x00a7, B:19:0x0043, B:31:0x007e, B:33:0x0082, B:35:0x0091), top: B:45:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0091 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:14:0x0030, B:38:0x00a7, B:19:0x0043, B:31:0x007e, B:33:0x0082, B:35:0x0091), top: B:45:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a4, code lost:
    
        if (r2.a(r4, r0) == r1) goto L37;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [ads_mobile_sdk.dq0] */
    /* JADX WARN: Type inference failed for: r8v0, types: [ads_mobile_sdk.dq0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v3, types: [ads_mobile_sdk.dq0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v8, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object b(kotlin.dq0 r8, p005kotlin.coroutines.Continuation r9) throws java.lang.Throwable {
        /*
            boolean r0 = r9 instanceof kotlin.aq0
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.aq0 r0 = (kotlin.aq0) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.aq0 r0 = new ads_mobile_sdk.aq0
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L56
            if (r2 == r5) goto L4a
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r8 = r0.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            p005kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L47
            goto La7
        L35:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3d:
            kotlinx.coroutines.sync.Mutex r8 = r0.b
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.dq0 r2 = (kotlin.dq0) r2
            p005kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L47
            goto L7e
        L47:
            r9 = move-exception
            goto Lb1
        L4a:
            kotlinx.coroutines.sync.Mutex r8 = r0.b
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.dq0 r2 = (kotlin.dq0) r2
            p005kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r2
            goto L68
        L56:
            p005kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r8.e
            r0.a = r8
            r0.b = r9
            r0.e = r5
            java.lang.Object r2 = r9.lock(r6, r0)
            if (r2 != r1) goto L68
            goto La6
        L68:
            ads_mobile_sdk.zd3 r2 = r8.a     // Catch: java.lang.Throwable -> Lad
            r0.a = r8     // Catch: java.lang.Throwable -> Lad
            r0.b = r9     // Catch: java.lang.Throwable -> Lad
            r0.e = r4     // Catch: java.lang.Throwable -> Lad
            r2.getClass()     // Catch: java.lang.Throwable -> Lad
            java.lang.Object r2 = kotlin.zd3.a(r2, r0)     // Catch: java.lang.Throwable -> Lad
            if (r2 != r1) goto L7a
            goto La6
        L7a:
            r7 = r2
            r2 = r8
            r8 = r9
            r9 = r7
        L7e:
            ads_mobile_sdk.xp0 r9 = (kotlin.xp0) r9     // Catch: java.lang.Throwable -> L47
            if (r9 == 0) goto L91
            java.lang.String r9 = r9.w()     // Catch: java.lang.Throwable -> L47
            java.lang.String r4 = "getEoid(...)"
            p005kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r4)     // Catch: java.lang.Throwable -> L47
            int r9 = r9.length()     // Catch: java.lang.Throwable -> L47
            if (r9 != 0) goto La7
        L91:
            ads_mobile_sdk.tx r9 = r2.b     // Catch: java.lang.Throwable -> L47
            r9.getClass()     // Catch: java.lang.Throwable -> L47
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L47
            r0.a = r8     // Catch: java.lang.Throwable -> L47
            r0.b = r6     // Catch: java.lang.Throwable -> L47
            r0.e = r3     // Catch: java.lang.Throwable -> L47
            java.lang.Object r9 = r2.a(r4, r0)     // Catch: java.lang.Throwable -> L47
            if (r9 != r1) goto La7
        La6:
            return r1
        La7:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L47
            r8.unlock(r6)
            return r9
        Lad:
            r8 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
        Lb1:
            r8.unlock(r6)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.dq0.b(ads_mobile_sdk.dq0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0096 A[Catch: all -> 0x004f, TryCatch #2 {all -> 0x004f, blocks: (B:21:0x004b, B:33:0x0089, B:35:0x0096, B:37:0x00a5, B:40:0x00d9), top: B:57:0x004b }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00a5 A[Catch: all -> 0x004f, TryCatch #2 {all -> 0x004f, blocks: (B:21:0x004b, B:33:0x0089, B:35:0x0096, B:37:0x00a5, B:40:0x00d9), top: B:57:0x004b }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d9 A[Catch: all -> 0x004f, TRY_LEAVE, TryCatch #2 {all -> 0x004f, blocks: (B:21:0x004b, B:33:0x0089, B:35:0x0096, B:37:0x00a5, B:40:0x00d9), top: B:57:0x004b }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:46:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static Object c(dq0 dq0Var, Continuation continuation) {
        bq0 bq0Var;
        Mutex mutex;
        Mutex mutex2;
        Mutex mutex3;
        xp0 xp0Var;
        long jCurrentTimeMillis;
        String strW;
        long jX;
        ex0 ex0Var;
        long duration;
        dq0 dq0Var2 = dq0Var;
        if (continuation instanceof bq0) {
            bq0Var = (bq0) continuation;
            int i = bq0Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                bq0Var.e = i - Integer.MIN_VALUE;
            } else {
                bq0Var = new bq0(dq0Var2, continuation);
            }
        } else {
            bq0Var = new bq0(dq0Var2, continuation);
        }
        Object objA = bq0Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = bq0Var.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objA);
                mutex = dq0Var2.e;
                bq0Var.a = dq0Var2;
                bq0Var.b = mutex;
                bq0Var.e = 1;
                if (mutex.lock(null, bq0Var) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mutex2 = (Mutex) bq0Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(objA);
                        xp0Var = (xp0) objA;
                        mutex3 = mutex2;
                        mutex3.unlock(null);
                        return xp0Var;
                    } catch (Throwable th) {
                        th = th;
                        mutex2.unlock(null);
                        throw th;
                    }
                }
                mutex3 = bq0Var.b;
                dq0Var2 = (dq0) bq0Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objA);
                    xp0Var = (xp0) objA;
                    dq0Var2.b.getClass();
                    jCurrentTimeMillis = System.currentTimeMillis();
                    if (xp0Var != null) {
                        strW = xp0Var.w();
                        Intrinsics.checkNotNullExpressionValue(strW, "getEoid(...)");
                        if (strW.length() > 0) {
                            jX = xp0Var.x();
                            ex0Var = dq0Var2.c;
                            ex0Var.getClass();
                            Duration.Companion companion = Duration.INSTANCE;
                            duration = DurationKt.toDuration(180, DurationUnit.DAYS);
                            Intrinsics.checkNotNullParameter("gads:eoid:default_ttl", C3510b4.i.W);
                            if (jCurrentTimeMillis <= jX + Duration.m4378getInWholeMillisecondsimpl(((Duration) ex0Var.a("gads:eoid:default_ttl", Duration.m4365boximpl(duration), yr.l)).getRawValue())) {
                                bq0Var.a = mutex3;
                                bq0Var.b = null;
                                bq0Var.e = 3;
                                objA = dq0Var2.a(jCurrentTimeMillis, bq0Var);
                                if (objA != coroutine_suspended) {
                                    mutex2 = mutex3;
                                    xp0Var = (xp0) objA;
                                    mutex3 = mutex2;
                                }
                                return coroutine_suspended;
                            }
                        } else {
                            xp0Var = null;
                        }
                    } else {
                        xp0Var = null;
                    }
                    mutex3.unlock(null);
                    return xp0Var;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2 = mutex3;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            Mutex mutex4 = bq0Var.b;
            dq0 dq0Var3 = (dq0) bq0Var.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
            mutex = mutex4;
            dq0Var2 = dq0Var3;
            zd3 zd3Var = dq0Var2.a;
            bq0Var.a = dq0Var2;
            bq0Var.b = mutex;
            bq0Var.e = 2;
            zd3Var.getClass();
            Object objA2 = zd3.a(zd3Var, bq0Var);
            if (objA2 != coroutine_suspended) {
                mutex3 = mutex;
                objA = objA2;
                xp0Var = (xp0) objA;
                dq0Var2.b.getClass();
                jCurrentTimeMillis = System.currentTimeMillis();
                if (xp0Var != null) {
                    strW = xp0Var.w();
                    Intrinsics.checkNotNullExpressionValue(strW, "getEoid(...)");
                    if (strW.length() > 0) {
                        jX = xp0Var.x();
                        ex0Var = dq0Var2.c;
                        ex0Var.getClass();
                        Duration.Companion companion2 = Duration.INSTANCE;
                        duration = DurationKt.toDuration(180, DurationUnit.DAYS);
                        Intrinsics.checkNotNullParameter("gads:eoid:default_ttl", C3510b4.i.W);
                        if (jCurrentTimeMillis <= jX + Duration.m4378getInWholeMillisecondsimpl(((Duration) ex0Var.a("gads:eoid:default_ttl", Duration.m4365boximpl(duration), yr.l)).getRawValue())) {
                            bq0Var.a = mutex3;
                            bq0Var.b = null;
                            bq0Var.e = 3;
                            objA = dq0Var2.a(jCurrentTimeMillis, bq0Var);
                            if (objA != coroutine_suspended) {
                                mutex2 = mutex3;
                                xp0Var = (xp0) objA;
                                mutex3 = mutex2;
                            }
                        }
                    } else {
                        xp0Var = null;
                    }
                } else {
                    xp0Var = null;
                }
                mutex3.unlock(null);
                return xp0Var;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            th = th3;
            mutex2 = mutex;
            mutex2.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(long j, Continuation continuation) {
        zp0 zp0Var;
        if (continuation instanceof zp0) {
            zp0Var = (zp0) continuation;
            int i = zp0Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                zp0Var.d = i - Integer.MIN_VALUE;
            } else {
                zp0Var = new zp0(this, continuation);
            }
        } else {
            zp0Var = new zp0(this, continuation);
        }
        Object obj = zp0Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zp0Var.d;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            xp0 xp0Var = zp0Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            return xp0Var;
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        wp0 builder = xp0.y();
        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.d.getClass();
        String value = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(value, "toString(...)");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.a(value);
        builder.a(j);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        xp0 xp0Var2 = (xp0) vz0VarB;
        zd3 zd3Var = this.a;
        zp0Var.a = xp0Var2;
        zp0Var.d = 1;
        zd3Var.getClass();
        Object objA = zd3.a(zd3Var, new ud3(xp0Var2), zp0Var);
        if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            objA = p005kotlin.Unit.INSTANCE;
        }
        return objA == coroutine_suspended ? coroutine_suspended : xp0Var2;
    }
}
