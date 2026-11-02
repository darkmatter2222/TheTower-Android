package kotlin;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class je2 extends es implements df2 {
    public final CoroutineScope c;
    public final i2 d;
    public final kd2 e;
    public final h41 f;
    public final ze2 g;
    public final Mutex h;
    public k9 i;
    public final List j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public je2(CoroutineContext uiContext, CoroutineScope uiScope, i2 adConfiguration, kd2 omid, h41 webViewContainer, ze2 omidJavaScriptSessionService, ex0 flags) {
        super(flags, uiContext);
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(omid, "omid");
        Intrinsics.checkNotNullParameter(webViewContainer, "webViewContainer");
        Intrinsics.checkNotNullParameter(omidJavaScriptSessionService, "omidJavaScriptSessionService");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.c = uiScope;
        this.d = adConfiguration;
        this.e = omid;
        this.f = webViewContainer;
        this.g = omidJavaScriptSessionService;
        this.h = MutexKt.Mutex$default(false, 1, null);
        this.j = Collections.synchronizedList(new ArrayList());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(je2 je2Var, View view, Continuation continuation) throws Throwable {
        he2 he2Var;
        Mutex mutex;
        Mutex mutex2;
        je2 je2Var2;
        if (continuation instanceof he2) {
            he2Var = (he2) continuation;
            int i = he2Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                he2Var.f = i - Integer.MIN_VALUE;
            } else {
                he2Var = new he2(je2Var, continuation);
            }
        } else {
            he2Var = new he2(je2Var, continuation);
        }
        Object obj = he2Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = he2Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = je2Var.h;
                he2Var.a = je2Var;
                he2Var.b = view;
                he2Var.c = mutex;
                he2Var.f = 1;
                if (mutex.lock(null, he2Var) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = he2Var.c;
                view = he2Var.b;
                je2Var2 = he2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    je2Var2.j.add(view);
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit;
                } catch (Throwable th) {
                    th = th;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = he2Var.c;
            view = he2Var.b;
            je2 je2Var3 = he2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            je2Var = je2Var3;
            k9 k9Var = je2Var.i;
            if (k9Var != null) {
                ie2 ie2Var = new ie2(je2Var, k9Var, view, null);
                he2Var.a = je2Var;
                he2Var.b = view;
                he2Var.c = mutex;
                he2Var.f = 2;
                if (je2Var.a(ie2Var, he2Var) != coroutine_suspended) {
                    je2Var2 = je2Var;
                    mutex2 = mutex;
                    je2Var2.j.add(view);
                }
                return coroutine_suspended;
            }
            mutex2 = mutex;
            p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
            mutex2.unlock(null);
            return unit2;
        } catch (Throwable th2) {
            th = th2;
            mutex2 = mutex;
            mutex2.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(je2 je2Var, ViewGroup viewGroup, tx0 tx0Var, String str, Continuation continuation) {
        vd2 vd2Var;
        View view;
        if (continuation instanceof vd2) {
            vd2Var = (vd2) continuation;
            int i = vd2Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                vd2Var.g = i - Integer.MIN_VALUE;
            } else {
                vd2Var = new vd2(je2Var, continuation);
            }
        } else {
            vd2Var = new vd2(je2Var, continuation);
        }
        Object objA = vd2Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = vd2Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            ze2 ze2Var = je2Var.g;
            vd2Var.a = je2Var;
            vd2Var.b = viewGroup;
            vd2Var.c = tx0Var;
            vd2Var.d = str;
            vd2Var.g = 1;
            ze2Var.getClass();
            objA = ze2.a(ze2Var, vd2Var);
            if (objA != coroutine_suspended) {
            }
            view = viewGroup;
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objA);
            return objA;
        }
        str = vd2Var.d;
        tx0Var = vd2Var.c;
        View view2 = vd2Var.b;
        je2Var = vd2Var.a;
        p005kotlin.ResultKt.throwOnFailure(objA);
        view = view2;
        view = viewGroup;
        je2 je2Var2 = je2Var;
        View view3 = view;
        tx0 tx0Var2 = tx0Var;
        String str2 = str;
        if (!((Boolean) objA).booleanValue()) {
            return p005kotlin.Unit.INSTANCE;
        }
        wd2 wd2Var = new wd2(je2Var2, view3, tx0Var2, str2, null);
        vd2Var.a = null;
        vd2Var.b = null;
        vd2Var.c = null;
        vd2Var.d = null;
        vd2Var.g = 2;
        Object objA2 = je2Var2.a(wd2Var, vd2Var);
        if (objA2 != coroutine_suspended) {
            return objA2;
        }
        view = viewGroup;
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(je2 je2Var, Continuation continuation) throws Throwable {
        zd2 zd2Var;
        Mutex mutex;
        Throwable th;
        Mutex mutex2;
        if (continuation instanceof zd2) {
            zd2Var = (zd2) continuation;
            int i = zd2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                zd2Var.e = i - Integer.MIN_VALUE;
            } else {
                zd2Var = new zd2(je2Var, continuation);
            }
        } else {
            zd2Var = new zd2(je2Var, continuation);
        }
        Object obj = zd2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zd2Var.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = je2Var.h;
                zd2Var.a = je2Var;
                zd2Var.b = mutex;
                zd2Var.e = 1;
                if (mutex.lock(null, zd2Var) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) zd2Var.a;
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
            Mutex mutex3 = zd2Var.b;
            je2 je2Var2 = (je2) zd2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            je2Var = je2Var2;
            CoroutineContext coroutineContext = je2Var.b;
            be2 be2Var = new be2(je2Var, null);
            zd2Var.a = mutex;
            zd2Var.b = null;
            zd2Var.e = 2;
            if (BuildersKt.withContext(coroutineContext, be2Var, zd2Var) != coroutine_suspended) {
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

    /* JADX WARN: Code duplicated, block: B:31:0x007a  */
    /* JADX WARN: Code duplicated, block: B:32:0x007c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object b(je2 je2Var, Continuation continuation) throws Throwable {
        ce2 ce2Var;
        Mutex mutex;
        Mutex mutex2;
        if (continuation instanceof ce2) {
            ce2Var = (ce2) continuation;
            int i = ce2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                ce2Var.e = i - Integer.MIN_VALUE;
            } else {
                ce2Var = new ce2(je2Var, continuation);
            }
        } else {
            ce2Var = new ce2(je2Var, continuation);
        }
        Object obj = ce2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ce2Var.e;
        boolean z = true;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = je2Var.h;
                ce2Var.a = je2Var;
                ce2Var.b = mutex;
                ce2Var.e = 1;
                if (mutex.lock(null, ce2Var) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) ce2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    if (((Boolean) obj).booleanValue()) {
                        mutex = mutex2;
                        mutex2 = mutex;
                    } else {
                        z = false;
                    }
                    Boolean boolBoxBoolean = Boxing.boxBoolean(z);
                    mutex2.unlock(null);
                    return boolBoxBoolean;
                } catch (Throwable th) {
                    mutex = mutex2;
                    th = th;
                    mutex.unlock(null);
                    throw th;
                }
            }
            Mutex mutex3 = ce2Var.b;
            je2 je2Var2 = (je2) ce2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            je2Var = je2Var2;
            if (je2Var.i == null) {
                ze2 ze2Var = je2Var.g;
                ce2Var.a = mutex;
                ce2Var.b = null;
                ce2Var.e = 2;
                ze2Var.getClass();
                Object objA = ze2.a(ze2Var, ce2Var);
                if (objA != coroutine_suspended) {
                    Mutex mutex4 = mutex;
                    obj = objA;
                    mutex2 = mutex4;
                    if (((Boolean) obj).booleanValue()) {
                        mutex = mutex2;
                        mutex2 = mutex;
                    } else {
                        z = false;
                    }
                }
                return coroutine_suspended;
            }
            mutex2 = mutex;
            Boolean boolBoxBoolean2 = Boxing.boxBoolean(z);
            mutex2.unlock(null);
            return boolBoxBoolean2;
        } catch (Throwable th2) {
            th = th2;
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0085, code lost:
    
        if (r8.a(r5, r1) == r2) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object c(kotlin.je2 r8, p005kotlin.coroutines.Continuation r9) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "omidRegisteredViews"
            boolean r1 = r9 instanceof kotlin.de2
            if (r1 == 0) goto L15
            r1 = r9
            ads_mobile_sdk.de2 r1 = (kotlin.de2) r1
            int r2 = r1.e
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.e = r2
            goto L1a
        L15:
            ads_mobile_sdk.de2 r1 = new ads_mobile_sdk.de2
            r1.<init>(r8, r9)
        L1a:
            java.lang.Object r9 = r1.c
            java.lang.Object r2 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r1.e
            r4 = 2
            r5 = 1
            r6 = 0
            if (r3 == 0) goto L49
            if (r3 == r5) goto L3d
            if (r3 != r4) goto L35
            java.lang.Object r8 = r1.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            p005kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L33
            goto L8b
        L33:
            r9 = move-exception
            goto L91
        L35:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3d:
            kotlinx.coroutines.sync.Mutex r8 = r1.b
            java.lang.Object r3 = r1.a
            ads_mobile_sdk.je2 r3 = (kotlin.je2) r3
            p005kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r3
            goto L5b
        L49:
            p005kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r8.h
            r1.a = r8
            r1.b = r9
            r1.e = r5
            java.lang.Object r3 = r9.lock(r6, r1)
            if (r3 != r2) goto L5b
            goto L87
        L5b:
            ads_mobile_sdk.k9 r3 = r8.i     // Catch: java.lang.Throwable -> L88
            if (r3 == 0) goto L8a
            java.util.List r5 = r8.j     // Catch: java.lang.Throwable -> L88
            p005kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)     // Catch: java.lang.Throwable -> L88
            p005kotlin.collections.CollectionsKt.removeLastOrNull(r5)     // Catch: java.lang.Throwable -> L88
            java.util.List r5 = r8.j     // Catch: java.lang.Throwable -> L88
            p005kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)     // Catch: java.lang.Throwable -> L88
            java.lang.Object r0 = p005kotlin.collections.CollectionsKt.lastOrNull(r5)     // Catch: java.lang.Throwable -> L88
            android.view.View r0 = (android.view.View) r0     // Catch: java.lang.Throwable -> L88
            if (r0 != 0) goto L76
            ads_mobile_sdk.h41 r0 = r8.f     // Catch: java.lang.Throwable -> L88
        L76:
            ads_mobile_sdk.ee2 r5 = new ads_mobile_sdk.ee2     // Catch: java.lang.Throwable -> L88
            r5.<init>(r8, r3, r0, r6)     // Catch: java.lang.Throwable -> L88
            r1.a = r9     // Catch: java.lang.Throwable -> L88
            r1.b = r6     // Catch: java.lang.Throwable -> L88
            r1.e = r4     // Catch: java.lang.Throwable -> L88
            java.lang.Object r8 = r8.a(r5, r1)     // Catch: java.lang.Throwable -> L88
            if (r8 != r2) goto L8a
        L87:
            return r2
        L88:
            r8 = move-exception
            goto L94
        L8a:
            r8 = r9
        L8b:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L33
            r8.unlock(r6)
            return r9
        L91:
            r7 = r9
            r9 = r8
            r8 = r7
        L94:
            r9.unlock(r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.je2.c(ads_mobile_sdk.je2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:38:0x009a A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #1 {all -> 0x0035, blocks: (B:14:0x0030, B:45:0x00b5, B:36:0x0092, B:38:0x009a, B:42:0x00a1), top: B:51:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b2, code lost:
    
        if (r9.a(r4, "onSdkImpression", r0) == r1) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object d(kotlin.je2 r8, p005kotlin.coroutines.Continuation r9) throws java.lang.Throwable {
        /*
            boolean r0 = r9 instanceof kotlin.fe2
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.fe2 r0 = (kotlin.fe2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.fe2 r0 = new ads_mobile_sdk.fe2
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L62
            if (r2 == r5) goto L53
            if (r2 == r4) goto L40
            if (r2 != r3) goto L38
            java.lang.Object r8 = r0.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            p005kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L35
            goto Lb5
        L35:
            r9 = move-exception
            goto Lbb
        L38:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L40:
            java.lang.Object r8 = r0.b
            ads_mobile_sdk.r31 r8 = (kotlin.r31) r8
            java.lang.Object r2 = r0.a
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            p005kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L50
            r7 = r9
            r9 = r8
            r8 = r2
            r2 = r7
            goto L92
        L50:
            r8 = move-exception
            goto Lbd
        L53:
            java.lang.Object r8 = r0.b
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.je2 r2 = (kotlin.je2) r2
            p005kotlin.ResultKt.throwOnFailure(r9)
            r7 = r2
            r2 = r8
            r8 = r7
            goto L75
        L62:
            p005kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r8.h
            r0.a = r8
            r0.b = r9
            r0.e = r5
            java.lang.Object r2 = r9.lock(r6, r0)
            if (r2 != r1) goto L74
            goto Lb4
        L74:
            r2 = r9
        L75:
            ads_mobile_sdk.h41 r9 = r8.f     // Catch: java.lang.Throwable -> L50
            ads_mobile_sdk.r31 r9 = r9.a     // Catch: java.lang.Throwable -> L50
            ads_mobile_sdk.k9 r5 = r8.i     // Catch: java.lang.Throwable -> L50
            if (r5 != 0) goto La0
            ads_mobile_sdk.ze2 r8 = r8.g     // Catch: java.lang.Throwable -> L50
            r0.a = r2     // Catch: java.lang.Throwable -> L50
            r0.b = r9     // Catch: java.lang.Throwable -> L50
            r0.e = r4     // Catch: java.lang.Throwable -> L50
            r8.getClass()     // Catch: java.lang.Throwable -> L50
            java.lang.Object r8 = kotlin.ze2.a(r8, r0)     // Catch: java.lang.Throwable -> L50
            if (r8 != r1) goto L8f
            goto Lb4
        L8f:
            r7 = r2
            r2 = r8
            r8 = r7
        L92:
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.Throwable -> L35
            boolean r2 = r2.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r2 != 0) goto La1
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L35
            r8.unlock(r6)
            return r9
        La0:
            r8 = r2
        La1:
            java.lang.String r2 = "onSdkImpression"
            com.google.gson.JsonObject r4 = new com.google.gson.JsonObject     // Catch: java.lang.Throwable -> L35
            r4.<init>()     // Catch: java.lang.Throwable -> L35
            r0.a = r8     // Catch: java.lang.Throwable -> L35
            r0.b = r6     // Catch: java.lang.Throwable -> L35
            r0.e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r9 = r9.a(r4, r2, r0)     // Catch: java.lang.Throwable -> L35
            if (r9 != r1) goto Lb5
        Lb4:
            return r1
        Lb5:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L35
            r8.unlock(r6)
            return r9
        Lbb:
            r2 = r8
            r8 = r9
        Lbd:
            r2.unlock(r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.je2.d(ads_mobile_sdk.je2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0075, code lost:
    
        if (kotlin.ze2.a(r7, r6, r0) == r1) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0085, code lost:
    
        if (r6.a(r7, (p005kotlin.coroutines.Continuation) r0) == r1) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object e(kotlin.je2 r6, p005kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof kotlin.ge2
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.ge2 r0 = (kotlin.ge2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.ge2 r0 = new ads_mobile_sdk.ge2
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L41
            if (r2 == r5) goto L3b
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L88
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L78
        L3b:
            ads_mobile_sdk.je2 r6 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r7)
            goto L5d
        L41:
            p005kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.i2 r7 = r6.d
            boolean r7 = r7.P
            if (r7 != 0) goto L4d
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        L4d:
            ads_mobile_sdk.ze2 r7 = r6.g
            r0.a = r6
            r0.d = r5
            r7.getClass()
            java.lang.Object r7 = kotlin.ze2.a(r7, r0)
            if (r7 != r1) goto L5d
            goto L87
        L5d:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            r2 = 0
            if (r7 == 0) goto L7b
            ads_mobile_sdk.ze2 r7 = r6.g
            ads_mobile_sdk.h41 r6 = r6.f
            r0.a = r2
            r0.d = r4
            r7.getClass()
            java.lang.Object r6 = kotlin.ze2.a(r7, r6, r0)
            if (r6 != r1) goto L78
            goto L87
        L78:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        L7b:
            ads_mobile_sdk.h41 r7 = r6.f
            r0.a = r2
            r0.d = r3
            java.lang.Object r6 = r6.a(r7, r0)
            if (r6 != r1) goto L88
        L87:
            return r1
        L88:
            kotlin.Unit r6 = p005kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.je2.e(ads_mobile_sdk.je2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.df2
    public final Object a(c04 c04Var) {
        return a(this, c04Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0071, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r9, r6, r0) == r1) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [ads_mobile_sdk.h41] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [ads_mobile_sdk.h41] */
    /* JADX WARN: Type inference failed for: r8v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.h41 r8, p005kotlin.coroutines.Continuation r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof kotlin.xd2
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.xd2 r0 = (kotlin.xd2) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.xd2 r0 = new ads_mobile_sdk.xd2
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r8 = r0.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            p005kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L31
            goto L74
        L31:
            r9 = move-exception
            goto L7a
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3b:
            kotlinx.coroutines.sync.Mutex r8 = r0.c
            ads_mobile_sdk.h41 r2 = r0.b
            java.lang.Object r4 = r0.a
            ads_mobile_sdk.je2 r4 = (kotlin.je2) r4
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L5e
        L47:
            p005kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r7.h
            r0.a = r7
            r0.b = r8
            r0.c = r9
            r0.f = r4
            java.lang.Object r2 = r9.lock(r5, r0)
            if (r2 != r1) goto L5b
            goto L73
        L5b:
            r4 = r7
            r2 = r8
            r8 = r9
        L5e:
            kotlin.coroutines.CoroutineContext r9 = r4.b     // Catch: java.lang.Throwable -> L31
            ads_mobile_sdk.yd2 r6 = new ads_mobile_sdk.yd2     // Catch: java.lang.Throwable -> L31
            r6.<init>(r4, r2, r5)     // Catch: java.lang.Throwable -> L31
            r0.a = r8     // Catch: java.lang.Throwable -> L31
            r0.b = r5     // Catch: java.lang.Throwable -> L31
            r0.c = r5     // Catch: java.lang.Throwable -> L31
            r0.f = r3     // Catch: java.lang.Throwable -> L31
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r9, r6, r0)     // Catch: java.lang.Throwable -> L31
            if (r9 != r1) goto L74
        L73:
            return r1
        L74:
            kotlin.Unit r9 = p005kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r8.unlock(r5)
            return r9
        L7a:
            r8.unlock(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.je2.a(ads_mobile_sdk.h41, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.df2
    public final Object a(View view, tx0 tx0Var, String str, Continuation continuation) {
        return a(this, (ViewGroup) view, tx0Var, str, continuation);
    }

    @Override // kotlin.df2
    public final Object a(View view, Continuation continuation) {
        return a(this, view, continuation);
    }

    @Override // kotlin.ai1
    public final Object j(Continuation continuation) {
        return e(this, continuation);
    }

    @Override // kotlin.df2
    public final Object m(Continuation continuation) {
        return b(this, continuation);
    }

    @Override // kotlin.df2
    public final Object n(Continuation continuation) {
        return c(this, continuation);
    }

    @Override // kotlin.ai1
    public final Object r(Continuation continuation) {
        return d(this, continuation);
    }
}
