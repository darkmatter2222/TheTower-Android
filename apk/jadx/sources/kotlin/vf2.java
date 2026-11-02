package kotlin;

import android.view.View;
import com.google.common.base.Splitter;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import com.ironsource.Yf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.functions.Function3;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class vf2 extends es implements df2 {
    public final CoroutineScope c;
    public final JsonObject d;
    public final i2 e;
    public final kd2 f;
    public final s02 g;
    public final s93 h;
    public final Mutex i;
    public Job j;
    public r31 k;
    public k9 l;
    public final boolean m;
    public final List n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vf2(CoroutineContext uiContext, CoroutineScope backgroundScope, JsonObject nativeAdJson, i2 adConfiguration, kd2 omid, s02 nativeAdAssets, ex0 flags, s93 safeBrowsingManager) {
        super(flags, uiContext);
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(nativeAdJson, "nativeAdJson");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(omid, "omid");
        Intrinsics.checkNotNullParameter(nativeAdAssets, "nativeAdAssets");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(safeBrowsingManager, "safeBrowsingManager");
        this.c = backgroundScope;
        this.d = nativeAdJson;
        this.e = adConfiguration;
        this.f = omid;
        this.g = nativeAdAssets;
        this.h = safeBrowsingManager;
        this.i = MutexKt.Mutex$default(false, 1, null);
        dg2 dg2Var = nativeAdAssets.n;
        this.m = (dg2Var != null ? dg2Var.a : null) == cg2.VIDEO;
        this.n = Collections.synchronizedList(new ArrayList());
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00a7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(vf2 vf2Var, Continuation continuation) {
        jf2 jf2Var;
        Object objC;
        if (continuation instanceof jf2) {
            jf2Var = (jf2) continuation;
            int i = jf2Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                jf2Var.d = i - Integer.MIN_VALUE;
            } else {
                jf2Var = new jf2(vf2Var, continuation);
            }
        } else {
            jf2Var = new jf2(vf2Var, continuation);
        }
        Object objC2 = jf2Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = jf2Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objC2);
            s02 s02Var = vf2Var.g;
            if (s02Var.b == q02.CUSTOM_NATIVE) {
                dg2 dg2Var = s02Var.n;
                if ((dg2Var != null ? dg2Var.a : null) == cg2.DISPLAY) {
                    jf2Var.a = vf2Var;
                    jf2Var.d = 1;
                    objC2 = c(vf2Var, jf2Var);
                    if (objC2 != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
            }
            return Boxing.boxBoolean(false);
        }
        if (i2 == 1) {
            vf2Var = jf2Var.a;
            p005kotlin.ResultKt.throwOnFailure(objC2);
        } else {
            if (i2 != 2) {
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(objC2);
                return objC2;
            }
            vf2Var = jf2Var.a;
            p005kotlin.ResultKt.throwOnFailure(objC2);
        }
        jf2Var.a = null;
        jf2Var.d = 3;
        vf2Var.getClass();
        objC = c(vf2Var, jf2Var);
        if (objC != coroutine_suspended) {
            return coroutine_suspended;
        }
        return objC;
        if (!((Boolean) objC2).booleanValue()) {
            dg2 dg2Var2 = vf2Var.g.n;
            String str = dg2Var2 != null ? dg2Var2.d : null;
            if (str == null || str.length() == 0 || Intrinsics.areEqual(str, "Google")) {
                Splitter splitter = f01.a;
                f01.c("Invalid omid partner name: " + str, null);
                return Boxing.boxBoolean(false);
            }
            x91 x91Var = x91.c;
            jf2Var.a = vf2Var;
            jf2Var.d = 2;
            if (vf2Var.a(str, false, x91Var, (Continuation) jf2Var) != coroutine_suspended) {
                jf2Var.a = null;
                jf2Var.d = 3;
                vf2Var.getClass();
                objC = c(vf2Var, jf2Var);
                if (objC != coroutine_suspended) {
                    return objC;
                }
            }
            return coroutine_suspended;
        }
        return Boxing.boxBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d5 A[Catch: all -> 0x0051, PHI: r2 r11
  0x00d5: PHI (r2v11 ??) = (r2v7 ??), (r2v15 ??), (r2v16 ??) binds: [B:48:0x00d3, B:44:0x00ce, B:20:0x0044] A[DONT_GENERATE, DONT_INLINE]
  0x00d5: PHI (r11v9 kotlinx.coroutines.sync.Mutex) = (r11v6 kotlinx.coroutines.sync.Mutex), (r11v19 kotlinx.coroutines.sync.Mutex), (r11v20 kotlinx.coroutines.sync.Mutex) binds: [B:48:0x00d3, B:44:0x00ce, B:20:0x0044] A[DONT_GENERATE, DONT_INLINE], TryCatch #1 {all -> 0x0051, blocks: (B:15:0x0033, B:55:0x00e7, B:20:0x0044, B:49:0x00d5, B:51:0x00d9, B:23:0x004d, B:43:0x00a0), top: B:63:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00d9 A[Catch: all -> 0x0051, TryCatch #1 {all -> 0x0051, blocks: (B:15:0x0033, B:55:0x00e7, B:20:0x0044, B:49:0x00d5, B:51:0x00d9, B:23:0x004d, B:43:0x00a0), top: B:63:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e3, code lost:
    
        if (r12.a(r0) == r1) goto L53;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [ads_mobile_sdk.vf2] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r11v0, types: [ads_mobile_sdk.vf2] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v4, types: [ads_mobile_sdk.es, ads_mobile_sdk.vf2] */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v10, types: [ads_mobile_sdk.es, ads_mobile_sdk.vf2] */
    /* JADX WARN: Type inference failed for: r2v11, types: [ads_mobile_sdk.vf2] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object b(kotlin.vf2 r11, p005kotlin.coroutines.Continuation r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.vf2.b(ads_mobile_sdk.vf2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object c(vf2 vf2Var, Continuation continuation) {
        of2 of2Var;
        Mutex mutex;
        if (continuation instanceof of2) {
            of2Var = (of2) continuation;
            int i = of2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                of2Var.e = i - Integer.MIN_VALUE;
            } else {
                of2Var = new of2(vf2Var, continuation);
            }
        } else {
            of2Var = new of2(vf2Var, continuation);
        }
        Object obj = of2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = of2Var.e;
        boolean z = true;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = vf2Var.i;
            of2Var.a = vf2Var;
            of2Var.b = mutex;
            of2Var.e = 1;
            if (mutex.lock(null, of2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = of2Var.b;
            vf2 vf2Var2 = of2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            vf2Var = vf2Var2;
        }
        try {
            if (vf2Var.l == null && vf2Var.j == null) {
                z = false;
            }
            return Boxing.boxBoolean(z);
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0087, code lost:
    
        if ((r8 != null ? r8.a : null) == kotlin.cg2.DISPLAY) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0096, code lost:
    
        if (r7.a("Google", true, kotlin.x91.e, (p005kotlin.coroutines.Continuation) r0) == r1) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object d(kotlin.vf2 r7, p005kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof kotlin.sf2
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.sf2 r0 = (kotlin.sf2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.sf2 r0 = new ads_mobile_sdk.sf2
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3b
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L99
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            ads_mobile_sdk.vf2 r7 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L6c
        L3b:
            p005kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.kd2 r8 = r7.f
            ads_mobile_sdk.ur3 r8 = r8.f
            ads_mobile_sdk.fd2 r2 = kotlin.fd2.a
            java.lang.String r5 = "IsActive"
            java.lang.Object r8 = r8.a(r5, r2)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            if (r8 == 0) goto L9c
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L9c
            ads_mobile_sdk.ds1 r8 = kotlin.ds1.a
            com.google.gson.JsonObject r8 = r7.d
            java.lang.String r2 = "enable_omid"
            r5 = 0
            boolean r8 = kotlin.ds1.a(r8, r2, r5)
            if (r8 == 0) goto L9c
            r0.a = r7
            r0.d = r4
            java.lang.Object r8 = c(r7, r0)
            if (r8 != r1) goto L6c
            goto L98
        L6c:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L9c
            ads_mobile_sdk.s02 r8 = r7.g
            ads_mobile_sdk.q02 r2 = r8.b
            ads_mobile_sdk.q02 r5 = kotlin.q02.CUSTOM_NATIVE
            r6 = 0
            if (r2 != r5) goto L8a
            ads_mobile_sdk.dg2 r8 = r8.n
            if (r8 == 0) goto L84
            ads_mobile_sdk.cg2 r8 = r8.a
            goto L85
        L84:
            r8 = r6
        L85:
            ads_mobile_sdk.cg2 r2 = kotlin.cg2.DISPLAY
            if (r8 != r2) goto L8a
            goto L9c
        L8a:
            r0.a = r6
            r0.d = r3
            java.lang.String r8 = "Google"
            ads_mobile_sdk.x91 r2 = kotlin.x91.e
            java.lang.Object r7 = r7.a(r8, r4, r2, r0)
            if (r7 != r1) goto L99
        L98:
            return r1
        L99:
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        L9c:
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.vf2.d(ads_mobile_sdk.vf2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.df2
    public final Object a(c04 c04Var) {
        return b(this, c04Var);
    }

    @Override // kotlin.df2
    public final Object a(View view, tx0 tx0Var, String str, Continuation continuation) throws Throwable {
        Object objA = a("addFriendlyObstruction", new ef2(this, view, tx0Var, str, null), continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.df2
    public final Object a(View view, Continuation continuation) {
        Object objA;
        return (!this.m && (objA = a("updateRegisteredAdView", new uf2(this, view, null), continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objA : p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c5 A[Catch: all -> 0x00f6, TRY_LEAVE, TryCatch #2 {all -> 0x00f6, blocks: (B:44:0x00c1, B:46:0x00c5, B:49:0x00cb, B:51:0x00cf, B:54:0x00d5), top: B:80:0x00c1 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00cb A[Catch: all -> 0x00f6, TRY_ENTER, TryCatch #2 {all -> 0x00f6, blocks: (B:44:0x00c1, B:46:0x00c5, B:49:0x00cb, B:51:0x00cf, B:54:0x00d5), top: B:80:0x00c1 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00cf A[Catch: all -> 0x00f6, TRY_LEAVE, TryCatch #2 {all -> 0x00f6, blocks: (B:44:0x00c1, B:46:0x00c5, B:49:0x00cb, B:51:0x00cf, B:54:0x00d5), top: B:80:0x00c1 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00d5 A[Catch: all -> 0x00f6, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x00f6, blocks: (B:44:0x00c1, B:46:0x00c5, B:49:0x00cb, B:51:0x00cf, B:54:0x00d5), top: B:80:0x00c1 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v24, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.StringBuilder] */
    public final Object a(String str, Function3 function3, Continuation continuation) throws Throwable {
        kf2 kf2Var;
        ?? r10;
        vf2 vf2Var;
        String str2;
        Mutex mutex;
        Mutex mutex2;
        vf2 vf2Var2;
        Throwable th;
        r31 r31Var;
        k9 k9Var;
        lf2 lf2Var;
        if (continuation instanceof kf2) {
            kf2Var = (kf2) continuation;
            int i = kf2Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                kf2Var.g = i - Integer.MIN_VALUE;
            } else {
                kf2Var = new kf2(this, continuation);
            }
        } else {
            kf2Var = new kf2(this, continuation);
        }
        Object obj = kf2Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r2 = kf2Var.g;
        try {
            try {
                if (r2 == 0) {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    Mutex mutex3 = this.i;
                    kf2Var.a = this;
                    kf2Var.b = str;
                    kf2Var.c = function3;
                    kf2Var.d = mutex3;
                    kf2Var.g = 1;
                    if (mutex3.lock(null, kf2Var) != coroutine_suspended) {
                        vf2Var = this;
                        str2 = str;
                        mutex = mutex3;
                    }
                    return coroutine_suspended;
                }
                if (r2 != 1) {
                    if (r2 == 2) {
                        Function3 function4 = kf2Var.c;
                        str2 = (String) kf2Var.b;
                        vf2 vf2Var3 = (vf2) kf2Var.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        vf2Var = vf2Var3;
                        function3 = function4;
                        mutex2 = vf2Var.i;
                        kf2Var.a = vf2Var;
                        kf2Var.b = str2;
                        kf2Var.c = function3;
                        kf2Var.d = mutex2;
                        kf2Var.g = 3;
                        if (mutex2.lock(null, kf2Var) != coroutine_suspended) {
                            vf2Var2 = vf2Var;
                            r31Var = vf2Var2.k;
                            if (r31Var == null) {
                                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                mutex2.unlock(null);
                                return unit;
                            }
                            k9Var = vf2Var2.l;
                            if (k9Var == null) {
                                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                                mutex2.unlock(null);
                                return unit2;
                            }
                            lf2Var = new lf2(function3, r31Var, k9Var, null);
                            kf2Var.a = str2;
                            kf2Var.b = mutex2;
                            kf2Var.c = null;
                            kf2Var.d = null;
                            kf2Var.g = 4;
                            if (vf2Var2.a(lf2Var, kf2Var) != coroutine_suspended) {
                                r10 = str2;
                                p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                mutex2.unlock(null);
                                return p005kotlin.Unit.INSTANCE;
                            }
                        }
                        return coroutine_suspended;
                    }
                    if (r2 != 3) {
                        if (r2 != 4) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        mutex2 = (Mutex) kf2Var.b;
                        r10 = (String) kf2Var.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj);
                            r10 = r10;
                            p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                            try {
                                mutex2.unlock(null);
                            } catch (CancellationException unused) {
                                r2 = r10;
                                r10 = r2;
                                Splitter splitter = f01.a;
                                f01.c("Ad session was cancelled in " + r10, null);
                            }
                            return p005kotlin.Unit.INSTANCE;
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                mutex2.unlock(null);
                                throw th;
                            } catch (CancellationException unused2) {
                                Splitter splitter2 = f01.a;
                                f01.c("Ad session was cancelled in " + r10, null);
                                return p005kotlin.Unit.INSTANCE;
                            }
                        }
                    }
                    mutex2 = kf2Var.d;
                    function3 = kf2Var.c;
                    str2 = (String) kf2Var.b;
                    vf2Var2 = (vf2) kf2Var.a;
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    try {
                        r31Var = vf2Var2.k;
                        if (r31Var == null) {
                            p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                            mutex2.unlock(null);
                            return unit5;
                        }
                        k9Var = vf2Var2.l;
                        if (k9Var == null) {
                            p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                            mutex2.unlock(null);
                            return unit6;
                        }
                        lf2Var = new lf2(function3, r31Var, k9Var, null);
                        kf2Var.a = str2;
                        kf2Var.b = mutex2;
                        kf2Var.c = null;
                        kf2Var.d = null;
                        kf2Var.g = 4;
                        if (vf2Var2.a(lf2Var, kf2Var) != coroutine_suspended) {
                            r10 = str2;
                            p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                            mutex2.unlock(null);
                            return p005kotlin.Unit.INSTANCE;
                        }
                        return coroutine_suspended;
                    } catch (Throwable th3) {
                        th = th3;
                        r10 = str2;
                        mutex2.unlock(null);
                        throw th;
                    }
                }
                mutex = kf2Var.d;
                function3 = kf2Var.c;
                str2 = (String) kf2Var.b;
                vf2Var = (vf2) kf2Var.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                Job job = vf2Var.j;
                mutex.unlock(null);
                if (job == null) {
                    return p005kotlin.Unit.INSTANCE;
                }
                kf2Var.a = vf2Var;
                kf2Var.b = str2;
                kf2Var.c = function3;
                kf2Var.d = null;
                kf2Var.g = 2;
                if (job.join(kf2Var) != coroutine_suspended) {
                    mutex2 = vf2Var.i;
                    kf2Var.a = vf2Var;
                    kf2Var.b = str2;
                    kf2Var.c = function3;
                    kf2Var.d = mutex2;
                    kf2Var.g = 3;
                    if (mutex2.lock(null, kf2Var) != coroutine_suspended) {
                        vf2Var2 = vf2Var;
                        r31Var = vf2Var2.k;
                        if (r31Var == null) {
                            p005kotlin.Unit unit8 = p005kotlin.Unit.INSTANCE;
                            mutex2.unlock(null);
                            return unit8;
                        }
                        k9Var = vf2Var2.l;
                        if (k9Var == null) {
                            p005kotlin.Unit unit9 = p005kotlin.Unit.INSTANCE;
                            mutex2.unlock(null);
                            return unit9;
                        }
                        lf2Var = new lf2(function3, r31Var, k9Var, null);
                        kf2Var.a = str2;
                        kf2Var.b = mutex2;
                        kf2Var.c = null;
                        kf2Var.d = null;
                        kf2Var.g = 4;
                        if (vf2Var2.a(lf2Var, kf2Var) != coroutine_suspended) {
                            r10 = str2;
                            p005kotlin.Unit unit10 = p005kotlin.Unit.INSTANCE;
                            mutex2.unlock(null);
                            return p005kotlin.Unit.INSTANCE;
                        }
                    }
                }
                return coroutine_suspended;
            } catch (Throwable th4) {
                mutex.unlock(null);
                throw th4;
            }
        } catch (CancellationException unused3) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Type inference failed for: r0v12, types: [T, ads_mobile_sdk.l40] */
    /* JADX WARN: Type inference failed for: r0v13, types: [T, ads_mobile_sdk.xh2] */
    /* JADX WARN: Type inference failed for: r0v24, types: [T, kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r1v2, types: [T, kotlinx.coroutines.CompletableDeferred] */
    /* JADX WARN: Type inference failed for: r5v7, types: [T, ads_mobile_sdk.l40] */
    /* JADX WARN: Type inference failed for: r5v8, types: [T, ads_mobile_sdk.xh2] */
    public final Object a(String str, boolean z, x91 x91Var, Continuation continuation) throws Throwable {
        ff2 ff2Var;
        Mutex mutex;
        x91 x91Var2;
        String str2;
        vf2 vf2Var;
        boolean z2;
        Object obj;
        if (continuation instanceof ff2) {
            ff2Var = (ff2) continuation;
            int i = ff2Var.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                ff2Var.h = i - Integer.MIN_VALUE;
            } else {
                ff2Var = new ff2(this, continuation);
            }
        } else {
            ff2Var = new ff2(this, continuation);
        }
        Object obj2 = ff2Var.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ff2Var.h;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj2);
            mutex = this.i;
            ff2Var.a = this;
            ff2Var.b = str;
            x91Var2 = x91Var;
            ff2Var.c = x91Var2;
            ff2Var.d = mutex;
            ff2Var.e = z;
            ff2Var.h = 1;
            if (mutex.lock(null, ff2Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            str2 = str;
            vf2Var = this;
            z2 = z;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            boolean z3 = ff2Var.e;
            mutex = ff2Var.d;
            x91Var2 = ff2Var.c;
            String str3 = ff2Var.b;
            vf2 vf2Var2 = ff2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj2);
            vf2Var = vf2Var2;
            z2 = z3;
            str2 = str3;
        }
        x91 x91Var3 = x91Var2;
        try {
            dg2 dg2Var = vf2Var.g.n;
            try {
                if (dg2Var == null) {
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex.unlock(null);
                    return unit;
                }
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
                int iOrdinal = dg2Var.a.ordinal();
                if (iOrdinal == 0) {
                    r31 r31Var = vf2Var.g.j;
                    if (r31Var == null) {
                        Splitter splitter = f01.a;
                        f01.c("No media webview in OmidNativeMonitor", null);
                        p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                        mutex.unlock(null);
                        return unit2;
                    }
                    if (r31Var.d() == null) {
                        Splitter splitter2 = f01.a;
                        f01.c("No video controller in OmidNativeMonitor", null);
                        p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                        mutex.unlock(null);
                        return unit3;
                    }
                    objectRef.element = CompletableDeferredKt.CompletableDeferred(r31Var);
                    vf2Var.k = r31Var;
                    objectRef2.element = l40.e;
                    objectRef3.element = xh2.c;
                } else {
                    if (iOrdinal != 1) {
                        if (iOrdinal != 2) {
                            throw new p005kotlin.NoWhenBranchMatchedException();
                        }
                        Splitter splitter3 = f01.a;
                        f01.c("Unknown media type in OmidNativeMonitor", null);
                        p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                        mutex.unlock(null);
                        return unit4;
                    }
                    ?? r0 = vf2Var.g.o;
                    if (r0 == 0) {
                        Splitter splitter4 = f01.a;
                        f01.c("No omid webview in OmidNativeMonitor", null);
                        p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                        mutex.unlock(null);
                        return unit5;
                    }
                    objectRef.element = r0;
                    objectRef2.element = l40.d;
                    objectRef3.element = xh2.d;
                    ex0 ex0Var = vf2Var.a;
                    ex0Var.getClass();
                    Intrinsics.checkNotNullParameter("gads:native_click_protection:enabled", C3510b4.i.W);
                    if (((Boolean) ex0Var.a("gads:native_click_protection:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                        CoroutineScope coroutineScope = vf2Var.c;
                        gf2 block = new gf2(r0, vf2Var, null);
                        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                        Intrinsics.checkNotNullParameter(context, "context");
                        Intrinsics.checkNotNullParameter(block, "block");
                        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                    }
                }
                CoroutineScope coroutineScope2 = vf2Var.c;
                if2 block2 = new if2(objectRef, vf2Var, str2, objectRef2, x91Var3, objectRef3, z2, null);
                EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                Intrinsics.checkNotNullParameter(context2, "context");
                Intrinsics.checkNotNullParameter(block2, "block");
                vf2Var.j = BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
                p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                mutex.unlock(null);
                return unit6;
            } catch (Throwable th) {
                th = th;
                obj = null;
                mutex.unlock(obj);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            obj = null;
        }
    }

    @Override // kotlin.ai1
    public final Object a(Continuation continuation) throws Throwable {
        Object objB = b(this, continuation);
        return objB == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ai1
    public final Object j(Continuation continuation) {
        return d(this, continuation);
    }

    @Override // kotlin.df2
    public final Object m(Continuation continuation) {
        return c(this, continuation);
    }

    @Override // kotlin.df2
    public final Object n(Continuation continuation) throws Throwable {
        Object objA = a("measurePreviousView", new pf2(this, null), continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ai1
    public final Object o(Continuation continuation) {
        Object objA;
        dg2 dg2Var = this.g.n;
        return ((dg2Var != null ? dg2Var.a : null) == cg2.VIDEO && (objA = a(Yf.f, new qf2(null), continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ai1
    public final Object r(Continuation continuation) throws Throwable {
        Object objA = a("onAdImpression", new rf2(null), continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }
}
