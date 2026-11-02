package kotlin;

import com.google.gson.JsonObject;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fl1 implements eq1 {
    public r31 a;
    public final CoroutineScope b;
    public final CoroutineScope c;
    public final g83 d;
    public final ex0 e;
    public final boolean f;
    public final Mutex g;
    public boolean h;
    public int i;

    public fl1(r31 r31Var, CoroutineScope uiScope, CoroutineScope backgroundScope, g83 rootTraceCreator, ex0 flags, boolean z) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = r31Var;
        this.b = uiScope;
        this.c = backgroundScope;
        this.d = rootTraceCreator;
        this.e = flags;
        this.f = z;
        this.g = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0190 A[Catch: all -> 0x01b0, TryCatch #0 {all -> 0x01b0, blocks: (B:93:0x017a, B:95:0x0181, B:97:0x0185, B:99:0x0189, B:100:0x018c, B:102:0x0190, B:104:0x0194, B:106:0x0198, B:107:0x0199, B:108:0x019e, B:109:0x019f, B:110:0x01a6, B:111:0x01a7, B:112:0x01ae, B:113:0x01af), top: B:120:0x017a }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0194 A[Catch: all -> 0x01b0, TryCatch #0 {all -> 0x01b0, blocks: (B:93:0x017a, B:95:0x0181, B:97:0x0185, B:99:0x0189, B:100:0x018c, B:102:0x0190, B:104:0x0194, B:106:0x0198, B:107:0x0199, B:108:0x019e, B:109:0x019f, B:110:0x01a6, B:111:0x01a7, B:112:0x01ae, B:113:0x01af), top: B:120:0x017a }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0198 A[Catch: all -> 0x01b0, TryCatch #0 {all -> 0x01b0, blocks: (B:93:0x017a, B:95:0x0181, B:97:0x0185, B:99:0x0189, B:100:0x018c, B:102:0x0190, B:104:0x0194, B:106:0x0198, B:107:0x0199, B:108:0x019e, B:109:0x019f, B:110:0x01a6, B:111:0x01a7, B:112:0x01ae, B:113:0x01af), top: B:120:0x017a }] */
    /* JADX WARN: Code duplicated, block: B:107:0x0199 A[Catch: all -> 0x01b0, TryCatch #0 {all -> 0x01b0, blocks: (B:93:0x017a, B:95:0x0181, B:97:0x0185, B:99:0x0189, B:100:0x018c, B:102:0x0190, B:104:0x0194, B:106:0x0198, B:107:0x0199, B:108:0x019e, B:109:0x019f, B:110:0x01a6, B:111:0x01a7, B:112:0x01ae, B:113:0x01af), top: B:120:0x017a }] */
    /* JADX WARN: Code duplicated, block: B:109:0x019f A[Catch: all -> 0x01b0, TryCatch #0 {all -> 0x01b0, blocks: (B:93:0x017a, B:95:0x0181, B:97:0x0185, B:99:0x0189, B:100:0x018c, B:102:0x0190, B:104:0x0194, B:106:0x0198, B:107:0x0199, B:108:0x019e, B:109:0x019f, B:110:0x01a6, B:111:0x01a7, B:112:0x01ae, B:113:0x01af), top: B:120:0x017a }] */
    /* JADX WARN: Code duplicated, block: B:111:0x01a7 A[Catch: all -> 0x01b0, TryCatch #0 {all -> 0x01b0, blocks: (B:93:0x017a, B:95:0x0181, B:97:0x0185, B:99:0x0189, B:100:0x018c, B:102:0x0190, B:104:0x0194, B:106:0x0198, B:107:0x0199, B:108:0x019e, B:109:0x019f, B:110:0x01a6, B:111:0x01a7, B:112:0x01ae, B:113:0x01af), top: B:120:0x017a }] */
    /* JADX WARN: Code duplicated, block: B:113:0x01af A[Catch: all -> 0x01b0, TRY_LEAVE, TryCatch #0 {all -> 0x01b0, blocks: (B:93:0x017a, B:95:0x0181, B:97:0x0185, B:99:0x0189, B:100:0x018c, B:102:0x0190, B:104:0x0194, B:106:0x0198, B:107:0x0199, B:108:0x019e, B:109:0x019f, B:110:0x01a6, B:111:0x01a7, B:112:0x01ae, B:113:0x01af), top: B:120:0x017a }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00cf A[Catch: all -> 0x004f, TRY_LEAVE, TryCatch #7 {all -> 0x004f, blocks: (B:20:0x004a, B:33:0x00c2, B:37:0x00c9, B:38:0x00cb, B:40:0x00cf), top: B:132:0x004a }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00e6 A[Catch: all -> 0x0115, TryCatch #2 {all -> 0x0115, blocks: (B:46:0x00df, B:48:0x00e6, B:50:0x00ea, B:52:0x00ee, B:53:0x00f1, B:55:0x00f5, B:57:0x00f9, B:59:0x00fd, B:60:0x00fe, B:61:0x0103, B:62:0x0104, B:63:0x010b, B:64:0x010c, B:65:0x0113, B:66:0x0114), top: B:123:0x00df }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00f5 A[Catch: all -> 0x0115, TryCatch #2 {all -> 0x0115, blocks: (B:46:0x00df, B:48:0x00e6, B:50:0x00ea, B:52:0x00ee, B:53:0x00f1, B:55:0x00f5, B:57:0x00f9, B:59:0x00fd, B:60:0x00fe, B:61:0x0103, B:62:0x0104, B:63:0x010b, B:64:0x010c, B:65:0x0113, B:66:0x0114), top: B:123:0x00df }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00f9 A[Catch: all -> 0x0115, TryCatch #2 {all -> 0x0115, blocks: (B:46:0x00df, B:48:0x00e6, B:50:0x00ea, B:52:0x00ee, B:53:0x00f1, B:55:0x00f5, B:57:0x00f9, B:59:0x00fd, B:60:0x00fe, B:61:0x0103, B:62:0x0104, B:63:0x010b, B:64:0x010c, B:65:0x0113, B:66:0x0114), top: B:123:0x00df }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00fd A[Catch: all -> 0x0115, TryCatch #2 {all -> 0x0115, blocks: (B:46:0x00df, B:48:0x00e6, B:50:0x00ea, B:52:0x00ee, B:53:0x00f1, B:55:0x00f5, B:57:0x00f9, B:59:0x00fd, B:60:0x00fe, B:61:0x0103, B:62:0x0104, B:63:0x010b, B:64:0x010c, B:65:0x0113, B:66:0x0114), top: B:123:0x00df }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00fe A[Catch: all -> 0x0115, TryCatch #2 {all -> 0x0115, blocks: (B:46:0x00df, B:48:0x00e6, B:50:0x00ea, B:52:0x00ee, B:53:0x00f1, B:55:0x00f5, B:57:0x00f9, B:59:0x00fd, B:60:0x00fe, B:61:0x0103, B:62:0x0104, B:63:0x010b, B:64:0x010c, B:65:0x0113, B:66:0x0114), top: B:123:0x00df }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0104 A[Catch: all -> 0x0115, TryCatch #2 {all -> 0x0115, blocks: (B:46:0x00df, B:48:0x00e6, B:50:0x00ea, B:52:0x00ee, B:53:0x00f1, B:55:0x00f5, B:57:0x00f9, B:59:0x00fd, B:60:0x00fe, B:61:0x0103, B:62:0x0104, B:63:0x010b, B:64:0x010c, B:65:0x0113, B:66:0x0114), top: B:123:0x00df }] */
    /* JADX WARN: Code duplicated, block: B:64:0x010c A[Catch: all -> 0x0115, TryCatch #2 {all -> 0x0115, blocks: (B:46:0x00df, B:48:0x00e6, B:50:0x00ea, B:52:0x00ee, B:53:0x00f1, B:55:0x00f5, B:57:0x00f9, B:59:0x00fd, B:60:0x00fe, B:61:0x0103, B:62:0x0104, B:63:0x010b, B:64:0x010c, B:65:0x0113, B:66:0x0114), top: B:123:0x00df }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0114 A[Catch: all -> 0x0115, TRY_LEAVE, TryCatch #2 {all -> 0x0115, blocks: (B:46:0x00df, B:48:0x00e6, B:50:0x00ea, B:52:0x00ee, B:53:0x00f1, B:55:0x00f5, B:57:0x00f9, B:59:0x00fd, B:60:0x00fe, B:61:0x0103, B:62:0x0104, B:63:0x010b, B:64:0x010c, B:65:0x0113, B:66:0x0114), top: B:123:0x00df }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    /* JADX WARN: Code duplicated, block: B:82:0x0161  */
    /* JADX WARN: Code duplicated, block: B:87:0x016a A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #5 {all -> 0x003b, blocks: (B:13:0x0036, B:80:0x015d, B:84:0x0164, B:85:0x0166, B:87:0x016a), top: B:128:0x0036 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x0181 A[Catch: all -> 0x01b0, TryCatch #0 {all -> 0x01b0, blocks: (B:93:0x017a, B:95:0x0181, B:97:0x0185, B:99:0x0189, B:100:0x018c, B:102:0x0190, B:104:0x0194, B:106:0x0198, B:107:0x0199, B:108:0x019e, B:109:0x019f, B:110:0x01a6, B:111:0x01a7, B:112:0x01ae, B:113:0x01af), top: B:120:0x017a }] */
    public static Object a(fl1 fl1Var, String value, String str, UUID uuid, Continuation continuation) {
        yk1 yk1Var;
        rr3 rr3VarA;
        rr3 rr3Var;
        rr3 rr3Var2;
        rr3 rr3VarA2;
        rr3 rr3Var3;
        rr3 rr3Var4;
        Object obj;
        Object obj2;
        if (continuation instanceof yk1) {
            yk1Var = (yk1) continuation;
            int i = yk1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                yk1Var.e = i - Integer.MIN_VALUE;
            } else {
                yk1Var = new yk1(fl1Var, continuation);
            }
        } else {
            yk1Var = new yk1(fl1Var, continuation);
        }
        Object obj3 = yk1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = yk1Var.e;
        if (i2 != 0) {
            if (i2 == 1) {
                rr3Var3 = yk1Var.b;
                rr3Var4 = yk1Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                    obj = (v01) obj3;
                    if (obj == null) {
                        obj = u01.c;
                    }
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(rr3Var3, null);
                    return obj;
                } catch (Throwable th) {
                    th = th;
                    rr3VarA2 = rr3Var4;
                    try {
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
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            CloseableKt.closeFinally(rr3Var3, th2);
                            throw th3;
                        }
                    }
                }
            }
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var = yk1Var.b;
            rr3Var2 = yk1Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj3);
                obj2 = (v01) obj3;
                if (obj2 == null) {
                    obj2 = u01.c;
                }
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                }
                CloseableKt.closeFinally(rr3Var, null);
                return obj2;
            } catch (Throwable th4) {
                th = th4;
                rr3VarA = rr3Var2;
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
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        CloseableKt.closeFinally(rr3Var, th5);
                        throw th6;
                    }
                }
            }
        }
        p005kotlin.ResultKt.throwOnFailure(obj3);
        g83 g83Var = fl1Var.d;
        s11 s11Var = s11.CUI_NAME_WEBVIEW_CALL_JS;
        List listEmptyList = CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                uj2 uj2VarE = hs3.a().e();
                bs1 builder = cs1.v();
                Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                Intrinsics.checkNotNullParameter(builder, "builder");
                Intrinsics.checkNotNullParameter(value, "value");
                builder.a(value);
                vz0 vz0VarB = builder.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                uj2VarE.y = (cs1) vz0VarB;
                r31 r31Var = fl1Var.a;
                if (r31Var != null) {
                    yk1Var.a = rr3VarA2;
                    yk1Var.b = rr3VarA2;
                    yk1Var.e = 1;
                    Object objB = r31Var.b(value, str, uuid, yk1Var);
                    if (objB != coroutine_suspended) {
                        rr3Var3 = rr3VarA2;
                        rr3Var4 = rr3Var3;
                        obj3 = objB;
                        obj = (v01) obj3;
                        if (obj == null) {
                        }
                        if (obj instanceof i01) {
                            xs3.a((i01) obj, false);
                        }
                        CloseableKt.closeFinally(rr3Var3, null);
                        return obj;
                    }
                } else {
                    rr3Var3 = rr3VarA2;
                    rr3Var4 = rr3Var3;
                }
                obj = u01.c;
                if (obj instanceof i01) {
                    xs3.a((i01) obj, false);
                }
                CloseableKt.closeFinally(rr3Var3, null);
                return obj;
            } catch (Throwable th7) {
                th = th7;
                rr3Var3 = rr3VarA2;
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
            }
        }
        rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
        try {
            uj2 uj2VarE2 = hs3.a().e();
            bs1 builder2 = cs1.v();
            Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder2, "builder");
            Intrinsics.checkNotNullParameter(value, "value");
            builder2.a(value);
            vz0 vz0VarB2 = builder2.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
            uj2VarE2.y = (cs1) vz0VarB2;
            r31 r31Var2 = fl1Var.a;
            if (r31Var2 != null) {
                yk1Var.a = rr3VarA;
                yk1Var.b = rr3VarA;
                yk1Var.e = 2;
                Object objB2 = r31Var2.b(value, str, uuid, yk1Var);
                if (objB2 != coroutine_suspended) {
                    rr3Var = rr3VarA;
                    rr3Var2 = rr3Var;
                    obj3 = objB2;
                    obj2 = (v01) obj3;
                    if (obj2 == null) {
                    }
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3Var, null);
                    return obj2;
                }
            } else {
                rr3Var = rr3VarA;
                rr3Var2 = rr3Var;
            }
            obj2 = u01.c;
            if (obj2 instanceof i01) {
                xs3.a((i01) obj2, false);
            }
            CloseableKt.closeFinally(rr3Var, null);
            return obj2;
        } catch (Throwable th8) {
            th = th8;
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
        return coroutine_suspended;
    }

    @Override // kotlin.eq1
    public final Object a(JsonObject jsonObject, String str, Continuation continuation) {
        Object objA;
        r31 r31Var = this.a;
        return (r31Var == null || (objA = r31Var.a(jsonObject, str, continuation)) != IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? p005kotlin.Unit.INSTANCE : objA;
    }

    @Override // kotlin.eq1
    public final Object a(String str, String str2, Continuation continuation) {
        UUID uuidRandomUUID = UUID.randomUUID();
        Intrinsics.checkNotNullExpressionValue(uuidRandomUUID, "randomUUID(...)");
        return a(this, str, str2, uuidRandomUUID, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
    
        if (r6.e(r0) == r1) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(p005kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof kotlin.zk1
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.zk1 r0 = (kotlin.zk1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.zk1 r0 = new ads_mobile_sdk.zk1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L67
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L35:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.fl1 r6 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L50
        L3d:
            p005kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r2 = r7.g
            r0.a = r7
            r0.b = r2
            r0.e = r4
            java.lang.Object r8 = r2.lock(r5, r0)
            if (r8 != r1) goto L4f
            goto L66
        L4f:
            r6 = r7
        L50:
            int r8 = r6.i     // Catch: java.lang.Throwable -> L6a
            int r8 = r8 - r4
            r6.i = r8     // Catch: java.lang.Throwable -> L6a
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6a
            r2.unlock(r5)
            r0.a = r5
            r0.b = r5
            r0.e = r3
            java.lang.Object r8 = r6.e(r0)
            if (r8 != r1) goto L67
        L66:
            return r1
        L67:
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE
            return r8
        L6a:
            r8 = move-exception
            r2.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.fl1.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0061, code lost:
    
        if (r6.e(r0) == r1) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(p005kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof kotlin.al1
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.al1 r0 = (kotlin.al1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.al1 r0 = new ads_mobile_sdk.al1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L64
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L35:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.fl1 r6 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L50
        L3d:
            p005kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r2 = r7.g
            r0.a = r7
            r0.b = r2
            r0.e = r4
            java.lang.Object r8 = r2.lock(r5, r0)
            if (r8 != r1) goto L4f
            goto L63
        L4f:
            r6 = r7
        L50:
            r6.h = r4     // Catch: java.lang.Throwable -> L67
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L67
            r2.unlock(r5)
            r0.a = r5
            r0.b = r5
            r0.e = r3
            java.lang.Object r8 = r6.e(r0)
            if (r8 != r1) goto L64
        L63:
            return r1
        L64:
            kotlin.Unit r8 = p005kotlin.Unit.INSTANCE
            return r8
        L67:
            r8 = move-exception
            r2.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.fl1.c(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(Continuation continuation) {
        bl1 bl1Var;
        fl1 fl1Var;
        Mutex mutex;
        if (continuation instanceof bl1) {
            bl1Var = (bl1) continuation;
            int i = bl1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                bl1Var.e = i - Integer.MIN_VALUE;
            } else {
                bl1Var = new bl1(this, continuation);
            }
        } else {
            bl1Var = new bl1(this, continuation);
        }
        Object obj = bl1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = bl1Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.g;
            bl1Var.a = this;
            bl1Var.b = mutex2;
            bl1Var.e = 1;
            if (mutex2.lock(null, bl1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            fl1Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = bl1Var.b;
            fl1Var = bl1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            fl1Var.i++;
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(Continuation continuation) {
        cl1 cl1Var;
        fl1 fl1Var;
        Mutex mutex;
        if (continuation instanceof cl1) {
            cl1Var = (cl1) continuation;
            int i = cl1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                cl1Var.e = i - Integer.MIN_VALUE;
            } else {
                cl1Var = new cl1(this, continuation);
            }
        } else {
            cl1Var = new cl1(this, continuation);
        }
        Object obj = cl1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = cl1Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.g;
            cl1Var.a = this;
            cl1Var.b = mutex2;
            cl1Var.e = 1;
            if (mutex2.lock(null, cl1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            fl1Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = cl1Var.b;
            fl1Var = cl1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (fl1Var.h && fl1Var.i <= 0) {
                BuildersKt__Builders_commonKt.launch$default(fl1Var.c, null, null, new dl1(fl1Var, null), 3, null);
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }
}
