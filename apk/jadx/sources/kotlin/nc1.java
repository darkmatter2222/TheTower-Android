package kotlin;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class nc1 {
    public final s11 a;
    public final boolean b;

    public /* synthetic */ nc1(s11 s11Var, int i) {
        this((i & 1) != 0 ? null : s11Var, (i & 2) != 0);
    }

    public nc1(s11 s11Var, boolean z) {
        this.a = s11Var;
        this.b = z;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x006d A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #0 {all -> 0x0042, blocks: (B:18:0x003e, B:30:0x0067, B:32:0x006d), top: B:79:0x003e }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0086 A[Catch: all -> 0x00b5, TryCatch #2 {all -> 0x00b5, blocks: (B:39:0x007f, B:41:0x0086, B:43:0x008a, B:45:0x008e, B:46:0x0091, B:48:0x0095, B:50:0x0099, B:52:0x009d, B:53:0x009e, B:54:0x00a3, B:55:0x00a4, B:56:0x00ab, B:57:0x00ac, B:58:0x00b3, B:59:0x00b4), top: B:82:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0095 A[Catch: all -> 0x00b5, TryCatch #2 {all -> 0x00b5, blocks: (B:39:0x007f, B:41:0x0086, B:43:0x008a, B:45:0x008e, B:46:0x0091, B:48:0x0095, B:50:0x0099, B:52:0x009d, B:53:0x009e, B:54:0x00a3, B:55:0x00a4, B:56:0x00ab, B:57:0x00ac, B:58:0x00b3, B:59:0x00b4), top: B:82:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0099 A[Catch: all -> 0x00b5, TryCatch #2 {all -> 0x00b5, blocks: (B:39:0x007f, B:41:0x0086, B:43:0x008a, B:45:0x008e, B:46:0x0091, B:48:0x0095, B:50:0x0099, B:52:0x009d, B:53:0x009e, B:54:0x00a3, B:55:0x00a4, B:56:0x00ab, B:57:0x00ac, B:58:0x00b3, B:59:0x00b4), top: B:82:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x009d A[Catch: all -> 0x00b5, TryCatch #2 {all -> 0x00b5, blocks: (B:39:0x007f, B:41:0x0086, B:43:0x008a, B:45:0x008e, B:46:0x0091, B:48:0x0095, B:50:0x0099, B:52:0x009d, B:53:0x009e, B:54:0x00a3, B:55:0x00a4, B:56:0x00ab, B:57:0x00ac, B:58:0x00b3, B:59:0x00b4), top: B:82:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x009e A[Catch: all -> 0x00b5, TryCatch #2 {all -> 0x00b5, blocks: (B:39:0x007f, B:41:0x0086, B:43:0x008a, B:45:0x008e, B:46:0x0091, B:48:0x0095, B:50:0x0099, B:52:0x009d, B:53:0x009e, B:54:0x00a3, B:55:0x00a4, B:56:0x00ab, B:57:0x00ac, B:58:0x00b3, B:59:0x00b4), top: B:82:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00a4 A[Catch: all -> 0x00b5, TryCatch #2 {all -> 0x00b5, blocks: (B:39:0x007f, B:41:0x0086, B:43:0x008a, B:45:0x008e, B:46:0x0091, B:48:0x0095, B:50:0x0099, B:52:0x009d, B:53:0x009e, B:54:0x00a3, B:55:0x00a4, B:56:0x00ab, B:57:0x00ac, B:58:0x00b3, B:59:0x00b4), top: B:82:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00ac A[Catch: all -> 0x00b5, TryCatch #2 {all -> 0x00b5, blocks: (B:39:0x007f, B:41:0x0086, B:43:0x008a, B:45:0x008e, B:46:0x0091, B:48:0x0095, B:50:0x0099, B:52:0x009d, B:53:0x009e, B:54:0x00a3, B:55:0x00a4, B:56:0x00ab, B:57:0x00ac, B:58:0x00b3, B:59:0x00b4), top: B:82:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00b4 A[Catch: all -> 0x00b5, TRY_LEAVE, TryCatch #2 {all -> 0x00b5, blocks: (B:39:0x007f, B:41:0x0086, B:43:0x008a, B:45:0x008e, B:46:0x0091, B:48:0x0095, B:50:0x0099, B:52:0x009d, B:53:0x009e, B:54:0x00a3, B:55:0x00a4, B:56:0x00ab, B:57:0x00ac, B:58:0x00b3, B:59:0x00b4), top: B:82:0x007f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:88:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18, types: [ads_mobile_sdk.nc1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [ads_mobile_sdk.mc1, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [ads_mobile_sdk.nc1] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r6v0, types: [ads_mobile_sdk.nc1] */
    public final Object t(Continuation continuation) {
        ?? mc1Var;
        v01 j01Var;
        ?? r0;
        ?? r1;
        rr3 rr3Var;
        rr3 rr3Var2;
        TimeoutCancellationException th;
        if (continuation instanceof mc1) {
            mc1 mc1Var2 = (mc1) continuation;
            int i = mc1Var2.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                mc1Var2.f = i - Integer.MIN_VALUE;
                mc1Var = mc1Var2;
            } else {
                mc1Var = new mc1(this, continuation);
            }
        } else {
            mc1Var = new mc1(this, continuation);
        }
        Object objU = mc1Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = mc1Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objU);
                try {
                    s11 s11Var = this.a;
                    if (s11Var != null) {
                        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                        try {
                            mc1Var.a = this;
                            mc1Var.b = rr3VarA;
                            mc1Var.c = rr3VarA;
                            mc1Var.f = 1;
                            Object objU2 = u(mc1Var);
                            if (objU2 != coroutine_suspended) {
                                rr3Var = rr3VarA;
                                rr3Var2 = rr3Var;
                                objU = objU2;
                                mc1Var = this;
                                j01Var = (v01) objU;
                                if (j01Var instanceof i01) {
                                    xs3.a((i01) j01Var, false);
                                }
                                CloseableKt.closeFinally(rr3Var, null);
                                r0 = mc1Var;
                            }
                        } catch (Throwable th2) {
                            rr3Var = rr3VarA;
                            rr3Var2 = rr3Var;
                            th = th2;
                            mc1Var = this;
                            rr3Var2.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                rr3Var2.a(th);
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
                        mc1Var.a = this;
                        mc1Var.f = 2;
                        objU = u(mc1Var);
                        if (objU != coroutine_suspended) {
                            r1 = this;
                            j01Var = (v01) objU;
                            r0 = r1;
                        }
                    }
                    return coroutine_suspended;
                } catch (Exception e) {
                    e = e;
                    mc1Var = this;
                    j01Var = new j01(e, null, null, 6);
                    r0 = mc1Var;
                }
            } else if (i2 == 1) {
                rr3Var = mc1Var.c;
                rr3Var2 = mc1Var.b;
                mc1Var = mc1Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objU);
                    mc1Var = mc1Var;
                    j01Var = (v01) objU;
                    if (j01Var instanceof i01) {
                        xs3.a((i01) j01Var, false);
                    }
                    CloseableKt.closeFinally(rr3Var, null);
                    r0 = mc1Var;
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        rr3Var2.b(th);
                        if (!(th instanceof v24)) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            rr3Var2.a(th);
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
                            CloseableKt.closeFinally(rr3Var, th4);
                            throw th5;
                        }
                    }
                }
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                nc1 nc1Var = mc1Var.a;
                p005kotlin.ResultKt.throwOnFailure(objU);
                r1 = nc1Var;
                j01Var = (v01) objU;
                r0 = r1;
            }
        } catch (Exception e2) {
            e = e2;
            j01Var = new j01(e, null, null, 6);
            r0 = mc1Var;
            if (r0.b) {
                return j01Var;
            }
            return new q01(p005kotlin.Unit.INSTANCE);
        }
        if (r0.b) {
            return j01Var;
        }
        return new q01(p005kotlin.Unit.INSTANCE);
    }

    public abstract Object u(Continuation continuation);
}
