package kotlin;

import android.webkit.WebView;
import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ze2 extends es {
    public final kd2 c;
    public final i2 d;
    public final Mutex e;
    public aq1 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ze2(kd2 omid, i2 adConfiguration, ex0 flags, CoroutineContext uiContext) {
        super(flags, uiContext);
        Intrinsics.checkNotNullParameter(omid, "omid");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        this.c = omid;
        this.d = adConfiguration;
        this.e = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0073, code lost:
    
        if (r6.a(r4, r0) == r1) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object a(kotlin.ze2 r6, kotlin.h41 r7, p005kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof kotlin.ue2
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.ue2 r0 = (kotlin.ue2) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.ue2 r0 = new ads_mobile_sdk.ue2
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.d
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r6 = r0.a
            kotlinx.coroutines.sync.Mutex r6 = (kotlinx.coroutines.sync.Mutex) r6
            p005kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L77
        L31:
            r7 = move-exception
            goto L7d
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3b:
            kotlinx.coroutines.sync.Mutex r6 = r0.c
            ads_mobile_sdk.h41 r7 = r0.b
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.ze2 r2 = (kotlin.ze2) r2
            p005kotlin.ResultKt.throwOnFailure(r8)
            r8 = r6
            r6 = r2
            goto L5d
        L49:
            p005kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r6.e
            r0.a = r6
            r0.b = r7
            r0.c = r8
            r0.f = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L5d
            goto L75
        L5d:
            ads_mobile_sdk.aq1 r2 = r6.f     // Catch: java.lang.Throwable -> L7f
            if (r2 != 0) goto L62
            goto L76
        L62:
            ads_mobile_sdk.ve2 r4 = new ads_mobile_sdk.ve2     // Catch: java.lang.Throwable -> L7f
            r4.<init>(r7, r6, r2, r5)     // Catch: java.lang.Throwable -> L7f
            r0.a = r8     // Catch: java.lang.Throwable -> L7f
            r0.b = r5     // Catch: java.lang.Throwable -> L7f
            r0.c = r5     // Catch: java.lang.Throwable -> L7f
            r0.f = r3     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r6 = r6.a(r4, r0)     // Catch: java.lang.Throwable -> L7f
            if (r6 != r1) goto L76
        L75:
            return r1
        L76:
            r6 = r8
        L77:
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r6.unlock(r5)
            return r7
        L7d:
            r8 = r6
            goto L81
        L7f:
            r6 = move-exception
            r7 = r6
        L81:
            r8.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ze2.a(ads_mobile_sdk.ze2, ads_mobile_sdk.h41, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(ze2 ze2Var, r31 r31Var, boolean z, Continuation continuation) throws Throwable {
        xe2 xe2Var;
        Mutex mutex;
        WebView webView;
        Boolean bool;
        Mutex mutex2;
        ze2 ze2Var2;
        if (continuation instanceof xe2) {
            xe2Var = (xe2) continuation;
            int i = xe2Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                xe2Var.g = i - Integer.MIN_VALUE;
            } else {
                xe2Var = new xe2(ze2Var, continuation);
            }
        } else {
            xe2Var = new xe2(ze2Var, continuation);
        }
        Object obj = xe2Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = xe2Var.g;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = ze2Var.e;
                xe2Var.a = ze2Var;
                xe2Var.b = r31Var;
                xe2Var.c = mutex;
                xe2Var.d = z;
                xe2Var.g = 1;
                if (mutex.lock(null, xe2Var) != coroutine_suspended) {
                }
                webView = r31Var;
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ze2Var = (ze2) xe2Var.c;
                mutex2 = (Mutex) xe2Var.b;
                ze2Var2 = xe2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    ze2Var.f = (aq1) obj;
                    Boolean boolBoxBoolean = Boxing.boxBoolean(ze2Var2.f != null);
                    mutex2.unlock(null);
                    return boolBoxBoolean;
                } catch (Throwable th) {
                    th = th;
                    mutex = mutex2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            z = xe2Var.d;
            Mutex mutex3 = (Mutex) xe2Var.c;
            WebView webView2 = (WebView) xe2Var.b;
            ze2 ze2Var3 = xe2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            ze2Var = ze2Var3;
            webView = webView2;
            webView = r31Var;
            if (ze2Var.d.P && (bool = (Boolean) ze2Var.c.f.a("IsActive", fd2.a)) != null && bool.booleanValue() && ze2Var.d.T.c) {
                ex0 ex0Var = ze2Var.a;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:omid_javascript_session_service:enabled", C3510b4.i.W);
                if (((Boolean) ex0Var.a("gads:omid_javascript_session_service:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                    if (ze2Var.f == null) {
                        ye2 ye2Var = new ye2(ze2Var, webView, z, null);
                        xe2Var.a = ze2Var;
                        xe2Var.b = mutex;
                        xe2Var.c = ze2Var;
                        xe2Var.g = 2;
                        Object objA = ze2Var.a(ye2Var, xe2Var);
                        if (objA != coroutine_suspended) {
                            Mutex mutex4 = mutex;
                            obj = objA;
                            mutex2 = mutex4;
                            ze2Var2 = ze2Var;
                            ze2Var.f = (aq1) obj;
                            Boolean boolBoxBoolean2 = Boxing.boxBoolean(ze2Var2.f != null);
                            mutex2.unlock(null);
                            return boolBoxBoolean2;
                        }
                        webView = r31Var;
                        return coroutine_suspended;
                    }
                    Splitter splitter = f01.a;
                    f01.c("Already started javascript session service", null);
                }
            }
            Boolean boolBoxBoolean3 = Boxing.boxBoolean(false);
            mutex.unlock(null);
            return boolBoxBoolean3;
        } catch (Throwable th2) {
            th = th2;
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(ze2 ze2Var, zp1 zp1Var, Continuation continuation) throws Throwable {
        se2 se2Var;
        Mutex mutex;
        Mutex mutex2;
        p005kotlin.Unit unit;
        ze2 ze2Var2;
        if (continuation instanceof se2) {
            se2Var = (se2) continuation;
            int i = se2Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                se2Var.f = i - Integer.MIN_VALUE;
            } else {
                se2Var = new se2(ze2Var, continuation);
            }
        } else {
            se2Var = new se2(ze2Var, continuation);
        }
        Object obj = se2Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = se2Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = ze2Var.e;
                se2Var.a = ze2Var;
                se2Var.b = zp1Var;
                se2Var.c = mutex;
                se2Var.f = 1;
                if (mutex.lock(null, se2Var) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) se2Var.b;
                ze2Var2 = se2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    ze2Var2.f = null;
                    unit = p005kotlin.Unit.INSTANCE;
                    mutex = mutex2;
                    mutex.unlock(null);
                    return unit;
                } catch (Throwable th) {
                    th = th;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = se2Var.c;
            zp1Var = (zp1) se2Var.b;
            ze2 ze2Var3 = se2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            ze2Var = ze2Var3;
            aq1 aq1Var = ze2Var.f;
            if (aq1Var != null) {
                te2 te2Var = new te2(ze2Var, aq1Var, zp1Var, null);
                se2Var.a = ze2Var;
                se2Var.b = mutex;
                se2Var.c = null;
                se2Var.f = 2;
                if (ze2Var.a(te2Var, se2Var) != coroutine_suspended) {
                    ze2Var2 = ze2Var;
                    mutex2 = mutex;
                    ze2Var2.f = null;
                    unit = p005kotlin.Unit.INSTANCE;
                    mutex = mutex2;
                }
                return coroutine_suspended;
            }
            unit = null;
            mutex.unlock(null);
            return unit;
        } catch (Throwable th2) {
            th = th2;
            mutex2 = mutex;
            mutex2.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008c, code lost:
    
        if (r8.a(r7, r1) == r2) goto L29;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [ads_mobile_sdk.ze2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [ads_mobile_sdk.es, ads_mobile_sdk.ze2] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object a(kotlin.ze2 r14, android.view.View r15, kotlin.tx0 r16, java.lang.String r17, p005kotlin.coroutines.Continuation r18) {
        /*
            r0 = r18
            boolean r1 = r0 instanceof kotlin.qe2
            if (r1 == 0) goto L15
            r1 = r0
            ads_mobile_sdk.qe2 r1 = (kotlin.qe2) r1
            int r2 = r1.h
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.h = r2
            goto L1a
        L15:
            ads_mobile_sdk.qe2 r1 = new ads_mobile_sdk.qe2
            r1.<init>(r14, r0)
        L1a:
            java.lang.Object r0 = r1.f
            java.lang.Object r2 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r1.h
            r4 = 2
            r5 = 1
            r6 = 0
            if (r3 == 0) goto L50
            if (r3 == r5) goto L3d
            if (r3 != r4) goto L35
            java.lang.Object r14 = r1.a
            kotlinx.coroutines.sync.Mutex r14 = (kotlinx.coroutines.sync.Mutex) r14
            p005kotlin.ResultKt.throwOnFailure(r0)     // Catch: java.lang.Throwable -> L33
            goto L8f
        L33:
            r0 = move-exception
            goto L95
        L35:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r0)
            throw r14
        L3d:
            kotlinx.coroutines.sync.Mutex r14 = r1.e
            java.lang.String r3 = r1.d
            ads_mobile_sdk.tx0 r5 = r1.c
            android.view.View r7 = r1.b
            java.lang.Object r8 = r1.a
            ads_mobile_sdk.ze2 r8 = (kotlin.ze2) r8
            p005kotlin.ResultKt.throwOnFailure(r0)
            r12 = r3
            r11 = r5
            r10 = r7
            goto L71
        L50:
            p005kotlin.ResultKt.throwOnFailure(r0)
            kotlinx.coroutines.sync.Mutex r0 = r14.e
            r1.a = r14
            r1.b = r15
            r7 = r16
            r1.c = r7
            r8 = r17
            r1.d = r8
            r1.e = r0
            r1.h = r5
            java.lang.Object r5 = r0.lock(r6, r1)
            if (r5 != r2) goto L6c
            goto L8e
        L6c:
            r10 = r15
            r11 = r7
            r12 = r8
            r8 = r14
            r14 = r0
        L71:
            ads_mobile_sdk.aq1 r9 = r8.f     // Catch: java.lang.Throwable -> L33
            if (r9 != 0) goto L76
            goto L8f
        L76:
            ads_mobile_sdk.re2 r7 = new ads_mobile_sdk.re2     // Catch: java.lang.Throwable -> L33
            r13 = 0
            r7.<init>(r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Throwable -> L33
            r1.a = r14     // Catch: java.lang.Throwable -> L33
            r1.b = r6     // Catch: java.lang.Throwable -> L33
            r1.c = r6     // Catch: java.lang.Throwable -> L33
            r1.d = r6     // Catch: java.lang.Throwable -> L33
            r1.e = r6     // Catch: java.lang.Throwable -> L33
            r1.h = r4     // Catch: java.lang.Throwable -> L33
            java.lang.Object r0 = r8.a(r7, r1)     // Catch: java.lang.Throwable -> L33
            if (r0 != r2) goto L8f
        L8e:
            return r2
        L8f:
            kotlin.Unit r0 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L33
            r14.unlock(r6)
            return r0
        L95:
            r14.unlock(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ze2.a(ads_mobile_sdk.ze2, android.view.View, ads_mobile_sdk.tx0, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(ze2 ze2Var, Continuation continuation) {
        we2 we2Var;
        Mutex mutex;
        if (continuation instanceof we2) {
            we2Var = (we2) continuation;
            int i = we2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                we2Var.e = i - Integer.MIN_VALUE;
            } else {
                we2Var = new we2(ze2Var, continuation);
            }
        } else {
            we2Var = new we2(ze2Var, continuation);
        }
        Object obj = we2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = we2Var.e;
        boolean z = true;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = ze2Var.e;
            we2Var.a = ze2Var;
            we2Var.b = mutex;
            we2Var.e = 1;
            if (mutex.lock(null, we2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = we2Var.b;
            ze2 ze2Var2 = we2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            ze2Var = ze2Var2;
        }
        try {
            if (ze2Var.f == null) {
                z = false;
            }
            return Boxing.boxBoolean(z);
        } finally {
            mutex.unlock(null);
        }
    }
}
