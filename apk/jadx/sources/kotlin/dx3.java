package kotlin;

import android.content.Context;
import android.os.Build;
import com.ironsource.C3510b4;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class dx3 implements zw3 {
    public static final /* synthetic */ int k = 0;
    public final Context a;
    public final String b;
    public final jw0 c;
    public CoroutineScope d;
    public CoroutineScope e;
    public g83 f;
    public ex0 g;
    public final Mutex h;
    public final CompletableJob i;
    public String j;

    public dx3(Context context, String afmaVersion, jw0 flagDataStore) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(flagDataStore, "flagDataStore");
        this.a = context;
        this.b = afmaVersion;
        this.c = flagDataStore;
        this.h = MutexKt.Mutex$default(false, 1, null);
        this.i = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00ae A[Catch: all -> 0x015c, TryCatch #3 {all -> 0x015c, blocks: (B:39:0x00aa, B:41:0x00ae, B:43:0x00b2, B:44:0x00b8, B:46:0x00d2, B:48:0x00d6, B:54:0x00e8, B:49:0x00dc, B:51:0x00e0), top: B:84:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00b2 A[Catch: all -> 0x015c, TryCatch #3 {all -> 0x015c, blocks: (B:39:0x00aa, B:41:0x00ae, B:43:0x00b2, B:44:0x00b8, B:46:0x00d2, B:48:0x00d6, B:54:0x00e8, B:49:0x00dc, B:51:0x00e0), top: B:84:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00d2 A[Catch: all -> 0x015c, TryCatch #3 {all -> 0x015c, blocks: (B:39:0x00aa, B:41:0x00ae, B:43:0x00b2, B:44:0x00b8, B:46:0x00d2, B:48:0x00d6, B:54:0x00e8, B:49:0x00dc, B:51:0x00e0), top: B:84:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00d6 A[Catch: all -> 0x015c, TryCatch #3 {all -> 0x015c, blocks: (B:39:0x00aa, B:41:0x00ae, B:43:0x00b2, B:44:0x00b8, B:46:0x00d2, B:48:0x00d6, B:54:0x00e8, B:49:0x00dc, B:51:0x00e0), top: B:84:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00dc A[Catch: all -> 0x015c, TryCatch #3 {all -> 0x015c, blocks: (B:39:0x00aa, B:41:0x00ae, B:43:0x00b2, B:44:0x00b8, B:46:0x00d2, B:48:0x00d6, B:54:0x00e8, B:49:0x00dc, B:51:0x00e0), top: B:84:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00e0 A[Catch: all -> 0x015c, TryCatch #3 {all -> 0x015c, blocks: (B:39:0x00aa, B:41:0x00ae, B:43:0x00b2, B:44:0x00b8, B:46:0x00d2, B:48:0x00d6, B:54:0x00e8, B:49:0x00dc, B:51:0x00e0), top: B:84:0x00aa }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00e7 A[PHI: r0
  0x00e7: PHI (r0v12 kotlinx.coroutines.CoroutineScope) = (r0v10 kotlinx.coroutines.CoroutineScope), (r0v15 kotlinx.coroutines.CoroutineScope) binds: [B:50:0x00de, B:47:0x00d4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:57:0x011e  */
    /* JADX WARN: Code duplicated, block: B:60:0x0132 A[Catch: all -> 0x0156, TryCatch #2 {all -> 0x0156, blocks: (B:58:0x0123, B:60:0x0132, B:61:0x0138), top: B:83:0x0123 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0138 A[Catch: all -> 0x0156, TRY_LEAVE, TryCatch #2 {all -> 0x0156, blocks: (B:58:0x0123, B:60:0x0132, B:61:0x0138), top: B:83:0x0123 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0147  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static Object a(dx3 dx3Var, Continuation continuation) throws Throwable {
        ax3 ax3Var;
        Mutex mutex;
        Mutex mutex2;
        dx3 dx3Var2;
        Mutex mutex3;
        String strA;
        ex0 ex0Var;
        CoroutineScope coroutineScope;
        CoroutineScope coroutineScope2;
        Deferred deferredAsync$default;
        Object objB;
        Mutex mutex4;
        String strV;
        dx3 dx3Var3;
        dx3 dx3Var4 = dx3Var;
        if (continuation instanceof ax3) {
            ax3Var = (ax3) continuation;
            int i = ax3Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                ax3Var.f = i - Integer.MIN_VALUE;
            } else {
                ax3Var = new ax3(dx3Var4, continuation);
            }
        } else {
            ax3Var = new ax3(dx3Var4, continuation);
        }
        Object objAwait = ax3Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ax3Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objAwait);
                mutex = dx3Var4.h;
                ax3Var.a = dx3Var4;
                ax3Var.b = mutex;
                ax3Var.f = 1;
                if (mutex.lock(null, ax3Var) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        dx3Var3 = (dx3) ax3Var.b;
                        mutex3 = (Mutex) ax3Var.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(objAwait);
                            Intrinsics.checkNotNullExpressionValue(objAwait, "await(...)");
                            strA = dx3Var3.a((String) objAwait);
                            mutex2 = mutex3;
                            mutex2.unlock(null);
                            return strA;
                        } catch (Throwable th) {
                            th = th;
                            mutex4 = mutex3;
                            mutex4.unlock(null);
                            throw th;
                        }
                    }
                    deferredAsync$default = ax3Var.c;
                    Mutex mutex5 = (Mutex) ax3Var.b;
                    dx3 dx3Var5 = (dx3) ax3Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(objAwait);
                        mutex4 = mutex5;
                        dx3Var2 = dx3Var5;
                        try {
                            strV = ((vv0) objAwait).v();
                            Intrinsics.checkNotNull(strV);
                            if (strV.length() <= 0) {
                                ax3Var.a = mutex4;
                                ax3Var.b = dx3Var2;
                                ax3Var.c = null;
                                ax3Var.f = 4;
                                objAwait = deferredAsync$default.await(ax3Var);
                                if (objAwait != coroutine_suspended) {
                                    dx3Var3 = dx3Var2;
                                    mutex3 = mutex4;
                                    Intrinsics.checkNotNullExpressionValue(objAwait, "await(...)");
                                    strA = dx3Var3.a((String) objAwait);
                                    mutex2 = mutex3;
                                }
                                return coroutine_suspended;
                            }
                            strA = dx3Var2.a(strV);
                            mutex2 = mutex4;
                            mutex2.unlock(null);
                            return strA;
                        } catch (Throwable th2) {
                            th = th2;
                            mutex4.unlock(null);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        mutex3 = mutex5;
                        mutex4 = mutex3;
                        mutex4.unlock(null);
                        throw th;
                    }
                }
                Mutex mutex6 = (Mutex) ax3Var.b;
                dx3Var2 = (dx3) ax3Var.a;
                p005kotlin.ResultKt.throwOnFailure(objAwait);
                mutex2 = mutex6;
                try {
                    strA = dx3Var2.j;
                    if (strA == null) {
                        ex0Var = dx3Var2.g;
                        if (ex0Var == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("flags");
                            ex0Var = null;
                        }
                        ex0Var.getClass();
                        Intrinsics.checkNotNullParameter("gads:webview_initialization_executor:enabled", C3510b4.i.W);
                        if (((Boolean) ex0Var.a("gads:webview_initialization_executor:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                            coroutineScope = dx3Var2.e;
                            if (coroutineScope == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("webViewInitializationScope");
                                coroutineScope2 = null;
                            } else {
                                coroutineScope2 = coroutineScope;
                            }
                        } else {
                            coroutineScope = dx3Var2.d;
                            if (coroutineScope == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("backgroundScope");
                                coroutineScope2 = null;
                            } else {
                                coroutineScope2 = coroutineScope;
                            }
                        }
                        cx3 block = new cx3(dx3Var2, coroutineScope2, null);
                        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                        Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                        Intrinsics.checkNotNullParameter(context, "context");
                        Intrinsics.checkNotNullParameter(block, "block");
                        deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope2, context, null, new vs3(block, null), 2, null);
                        jw0 jw0Var = dx3Var2.c;
                        ax3Var.a = dx3Var2;
                        ax3Var.b = mutex2;
                        ax3Var.c = deferredAsync$default;
                        ax3Var.f = 3;
                        jw0Var.getClass();
                        objB = jw0.b(jw0Var, ax3Var);
                        if (objB != coroutine_suspended) {
                            mutex4 = mutex2;
                            objAwait = objB;
                            strV = ((vv0) objAwait).v();
                            Intrinsics.checkNotNull(strV);
                            if (strV.length() <= 0) {
                                strA = dx3Var2.a(strV);
                                mutex2 = mutex4;
                            } else {
                                ax3Var.a = mutex4;
                                ax3Var.b = dx3Var2;
                                ax3Var.c = null;
                                ax3Var.f = 4;
                                objAwait = deferredAsync$default.await(ax3Var);
                                if (objAwait != coroutine_suspended) {
                                    dx3Var3 = dx3Var2;
                                    mutex3 = mutex4;
                                    Intrinsics.checkNotNullExpressionValue(objAwait, "await(...)");
                                    strA = dx3Var3.a((String) objAwait);
                                    mutex2 = mutex3;
                                }
                            }
                        }
                        return coroutine_suspended;
                    }
                    mutex2.unlock(null);
                    return strA;
                } catch (Throwable th4) {
                    th = th4;
                    mutex3 = mutex2;
                    mutex4 = mutex3;
                    mutex4.unlock(null);
                    throw th;
                }
            }
            Mutex mutex7 = (Mutex) ax3Var.b;
            dx3 dx3Var6 = (dx3) ax3Var.a;
            p005kotlin.ResultKt.throwOnFailure(objAwait);
            mutex = mutex7;
            dx3Var4 = dx3Var6;
            String str = dx3Var4.j;
            mutex.unlock(null);
            if (str != null) {
                return str;
            }
            mutex2 = dx3Var4.h;
            ax3Var.a = dx3Var4;
            ax3Var.b = mutex2;
            ax3Var.f = 2;
            if (mutex2.lock(null, ax3Var) != coroutine_suspended) {
                dx3Var2 = dx3Var4;
                strA = dx3Var2.j;
                if (strA == null) {
                    ex0Var = dx3Var2.g;
                    if (ex0Var == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("flags");
                        ex0Var = null;
                    }
                    ex0Var.getClass();
                    Intrinsics.checkNotNullParameter("gads:webview_initialization_executor:enabled", C3510b4.i.W);
                    if (((Boolean) ex0Var.a("gads:webview_initialization_executor:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                        coroutineScope = dx3Var2.e;
                        if (coroutineScope == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("webViewInitializationScope");
                            coroutineScope2 = null;
                        } else {
                            coroutineScope2 = coroutineScope;
                        }
                    } else {
                        coroutineScope = dx3Var2.d;
                        if (coroutineScope == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("backgroundScope");
                            coroutineScope2 = null;
                        } else {
                            coroutineScope2 = coroutineScope;
                        }
                    }
                    cx3 block2 = new cx3(dx3Var2, coroutineScope2, null);
                    EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                    Intrinsics.checkNotNullParameter(context2, "context");
                    Intrinsics.checkNotNullParameter(block2, "block");
                    deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope2, context2, null, new vs3(block2, null), 2, null);
                    jw0 jw0Var2 = dx3Var2.c;
                    ax3Var.a = dx3Var2;
                    ax3Var.b = mutex2;
                    ax3Var.c = deferredAsync$default;
                    ax3Var.f = 3;
                    jw0Var2.getClass();
                    objB = jw0.b(jw0Var2, ax3Var);
                    if (objB != coroutine_suspended) {
                        mutex4 = mutex2;
                        objAwait = objB;
                        strV = ((vv0) objAwait).v();
                        Intrinsics.checkNotNull(strV);
                        if (strV.length() <= 0) {
                            strA = dx3Var2.a(strV);
                            mutex2 = mutex4;
                        } else {
                            ax3Var.a = mutex4;
                            ax3Var.b = dx3Var2;
                            ax3Var.c = null;
                            ax3Var.f = 4;
                            objAwait = deferredAsync$default.await(ax3Var);
                            if (objAwait != coroutine_suspended) {
                                dx3Var3 = dx3Var2;
                                mutex3 = mutex4;
                                Intrinsics.checkNotNullExpressionValue(objAwait, "await(...)");
                                strA = dx3Var3.a((String) objAwait);
                                mutex2 = mutex3;
                            }
                        }
                    }
                }
                mutex2.unlock(null);
                return strA;
            }
            return coroutine_suspended;
        } catch (Throwable th5) {
            mutex.unlock(null);
            throw th5;
        }
    }

    @Override // kotlin.zw3
    public final Object a() {
        if (!Mutex.DefaultImpls.tryLock$default(this.h, null, 1, null)) {
            return null;
        }
        try {
            return this.j;
        } finally {
            Mutex.DefaultImpls.unlock$default(this.h, null, 1, null);
        }
    }

    @Override // kotlin.zw3
    public final Object a(ContinuationImpl continuationImpl) {
        return a(this, (Continuation) continuationImpl);
    }

    public final String a(String str) {
        ex0 ex0Var = this.g;
        if (ex0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("flags");
            ex0Var = null;
        }
        if (ex0Var.A0()) {
            str = StringsKt.replace$default(str, "Android 10; K", "Android " + Build.VERSION.RELEASE + "; " + Build.MODEL + " Build/" + Build.ID, false, 4, (Object) null);
        }
        String str2 = str + " (Mobile; " + this.b + ")";
        this.j = str2;
        return str2;
    }

    @Override // kotlin.zw3
    public final Object b(ContinuationImpl continuationImpl) {
        Object objJoin = this.i.join(continuationImpl);
        return objJoin == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objJoin : p005kotlin.Unit.INSTANCE;
    }
}
