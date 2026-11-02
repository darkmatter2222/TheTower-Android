package kotlin;

import android.content.Context;
import android.os.Looper;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import com.google.common.base.Splitter;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class r31 extends WebView {
    public final ConcurrentLinkedQueue A;
    public final CoroutineContext a;
    public final CoroutineScope b;
    public final CoroutineScope c;
    public final mb0 d;
    public final ur3 e;
    public final rb f;
    public final dz3 g;
    public final w61 h;
    public final ex0 i;
    public final qn j;
    public final AtomicBoolean k;
    public final AtomicBoolean l;
    public final AtomicBoolean m;
    public final AtomicBoolean n;
    public final AtomicBoolean o;
    public ay0 p;
    public volatile g33 q;
    public q41 r;
    public v14 s;
    public int t;
    public tu1 u;
    public final ir3 v;
    public ir3 w;
    public final DisplayMetrics x;
    public nr1 y;
    public g41 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r31(CoroutineContext uiContext, CoroutineScope uiScope, CoroutineScope backgroundScope, mb0 mb0Var, ur3 traceLogger, rb adSpamClient, Context context, String userAgent, v14 size, dz3 webViewCompatWrapper, w61 htmlUtil, ex0 flags, qn appState) throws InterruptedException {
        super(context);
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(webViewCompatWrapper, "webViewCompatWrapper");
        Intrinsics.checkNotNullParameter(htmlUtil, "htmlUtil");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(appState, "appState");
        this.a = uiContext;
        this.b = uiScope;
        this.c = backgroundScope;
        this.d = mb0Var;
        this.e = traceLogger;
        this.f = adSpamClient;
        this.g = webViewCompatWrapper;
        this.h = htmlUtil;
        this.i = flags;
        this.j = appState;
        this.k = new AtomicBoolean(false);
        this.l = new AtomicBoolean(false);
        this.m = new AtomicBoolean(false);
        this.n = new AtomicBoolean(false);
        this.o = new AtomicBoolean(false);
        this.s = size;
        this.t = -1;
        this.v = (ir3) BuildersKt__BuildersKt.runBlocking$default(null, new q31(this, null), 1, null);
        this.x = zn0.a(context);
        this.A = new ConcurrentLinkedQueue();
        BuildersKt__BuildersKt.runBlocking$default(null, new v21(this, null), 1, null);
        WebSettings settings = getSettings();
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccess(false);
        settings.setMixedContentMode(2);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setTextZoom(100);
        settings.setSupportMultipleWindows(true);
        settings.setSupportZoom(true);
        settings.setDatabaseEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setUserAgentString(userAgent);
        if (flags.u()) {
            clearCache(true);
        }
        setWillNotDraw(false);
        setLayerType(0, null);
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        setBackgroundColor(0);
        if (flags.F()) {
            setSoundEffectsEnabled(false);
        }
    }

    public static /* synthetic */ Object a(r31 r31Var, String str, String str2, boolean z, Continuation continuation, int i) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return r31Var.a(str, str2, "text/html", "UTF-8", z, continuation);
    }

    public final int a() {
        int i;
        synchronized (this) {
            i = this.t;
        }
        return i;
    }

    public final Object a(JsonObject jsonObject, String str, Continuation continuation) {
        String str2 = "(window.AFMA_ReceiveMessage || function() {})('" + str + "', " + jsonObject + ");";
        Splitter splitter = f01.a;
        f01.b("Dispatching AFMA event: " + str2, null);
        Object objB = b(str2, continuation);
        return objB == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : p005kotlin.Unit.INSTANCE;
    }

    public final Object a(String str, cg1 cg1Var) {
        Object objB = b("window.inspectorInfo(" + str + ");", cg1Var);
        return objB == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : p005kotlin.Unit.INSTANCE;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 5441. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final java.lang.Object a(java.lang.String r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, boolean r22, p005kotlin.coroutines.Continuation r23) {
        /*
            Method dump skipped, instruction units count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.r31.a(java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0102  */
    /* JADX WARN: Code duplicated, block: B:58:0x0110  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(String str, String str2, UUID uuid, Continuation continuation) {
        w21 w21Var;
        UUID uuid2;
        CompletableDeferred completableDeferred;
        String str3;
        String str4;
        r31 r31Var;
        r31 r31Var2;
        r31 r31Var3;
        if (continuation instanceof w21) {
            w21Var = (w21) continuation;
            int i = w21Var.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                w21Var.h = i - Integer.MIN_VALUE;
            } else {
                w21Var = new w21(this, continuation);
            }
        } else {
            w21Var = new w21(this, continuation);
        }
        Object objAwait = w21Var.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = w21Var.h;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objAwait);
            if (this.k.get()) {
                return u01.c;
            }
            CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            nr1 nr1VarC = c();
            String string = uuid.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            w21Var.a = this;
            w21Var.b = str;
            w21Var.c = str2;
            uuid2 = uuid;
            w21Var.d = uuid2;
            w21Var.e = completableDeferredCompletableDeferred$default;
            w21Var.h = 1;
            Object objA = nr1VarC.a(string, completableDeferredCompletableDeferred$default, w21Var);
            if (objA != coroutine_suspended) {
                completableDeferred = completableDeferredCompletableDeferred$default;
                objAwait = objA;
                str3 = str2;
                str4 = str;
                r31Var = this;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                r31Var2 = w21Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(objAwait);
                    return new q01(objAwait);
                } catch (Exception e) {
                    e = e;
                    r31Var3 = r31Var2;
                    if (!(e instanceof CancellationException)) {
                        BuildersKt__Builders_commonKt.launch$default(r31Var3.b, null, null, new y21(r31Var3, null), 3, null);
                    }
                    return new j01(e, null, null, 6);
                }
            }
            completableDeferred = (CompletableDeferred) w21Var.b;
            r31Var3 = w21Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objAwait);
                w21Var.a = r31Var3;
                w21Var.b = null;
                w21Var.h = 3;
                objAwait = completableDeferred.await(w21Var);
                if (objAwait != coroutine_suspended) {
                    r31Var2 = r31Var3;
                    return new q01(objAwait);
                }
                return coroutine_suspended;
            } catch (Exception e2) {
                e = e2;
                if (!(e instanceof CancellationException)) {
                    BuildersKt__Builders_commonKt.launch$default(r31Var3.b, null, null, new y21(r31Var3, null), 3, null);
                }
                return new j01(e, null, null, 6);
            }
        }
        completableDeferred = w21Var.e;
        UUID uuid3 = w21Var.d;
        String str5 = w21Var.c;
        String str6 = (String) w21Var.b;
        r31 r31Var4 = w21Var.a;
        p005kotlin.ResultKt.throwOnFailure(objAwait);
        str4 = str6;
        r31Var = r31Var4;
        uuid2 = uuid3;
        str3 = str5;
        if (!((Boolean) objAwait).booleanValue()) {
            return new m01("Unable to register result listener. Did you forget to register the result GMSG handler?", kk1.INTERNAL_ERROR);
        }
        eb3 eb3Var = r31Var.i.s;
        eb3Var.getClass();
        Intrinsics.checkNotNullParameter("gads:use_javascript_interface_for_result:enabled", C3510b4.i.W);
        String str7 = ((Boolean) eb3Var.a("gads:use_javascript_interface_for_result:enabled", Boolean.TRUE, yr.b)).booleanValue() ? "1" : "0";
        try {
            CoroutineContext coroutineContext = r31Var.a;
            x21 x21Var = new x21(r31Var, str4, uuid2, str3, str7, null);
            w21Var.a = r31Var;
            w21Var.b = completableDeferred;
            w21Var.c = null;
            w21Var.d = null;
            w21Var.e = null;
            w21Var.h = 2;
            if (BuildersKt.withContext(coroutineContext, x21Var, w21Var) != coroutine_suspended) {
                r31Var3 = r31Var;
                w21Var.a = r31Var3;
                w21Var.b = null;
                w21Var.h = 3;
                objAwait = completableDeferred.await(w21Var);
                if (objAwait != coroutine_suspended) {
                    r31Var2 = r31Var3;
                    return new q01(objAwait);
                }
            }
            return coroutine_suspended;
        } catch (Exception e3) {
            e = e3;
            r31Var2 = r31Var;
            r31Var3 = r31Var2;
            if (!(e instanceof CancellationException)) {
                BuildersKt__Builders_commonKt.launch$default(r31Var3.b, null, null, new y21(r31Var3, null), 3, null);
            }
            return new j01(e, null, null, 6);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00b4 A[PHI: r12
  0x00b4: PHI (r12v7 ads_mobile_sdk.r31) = (r12v6 ads_mobile_sdk.r31), (r12v13 ads_mobile_sdk.r31) binds: [B:31:0x00b1, B:17:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:35:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cb, code lost:
    
        if (r6 == r1) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r12, p005kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.r31.a(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) {
        a31 a31Var;
        r31 r31Var;
        if (continuation instanceof a31) {
            a31Var = (a31) continuation;
            int i = a31Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                a31Var.d = i - Integer.MIN_VALUE;
            } else {
                a31Var = new a31(this, continuation);
            }
        } else {
            a31Var = new a31(this, continuation);
        }
        Object obj = a31Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = a31Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if (this.k.getAndSet(true)) {
                return p005kotlin.Unit.INSTANCE;
            }
            if (!this.m.getAndSet(true)) {
                rs1 rs1Var = (rs1) this.j.a;
                rs1Var.c = rs1Var.b.decrementAndGet();
            }
            try {
                CoroutineContext coroutineContext = this.a;
                b31 b31Var = new b31(this, null);
                a31Var.a = this;
                a31Var.d = 1;
                if (BuildersKt.withContext(coroutineContext, b31Var, a31Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } catch (Throwable th) {
                th = th;
                r31Var = this;
                ((as3) r31Var.e).a("GmaWebView.destroySafe", th);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            r31Var = a31Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
            } catch (Throwable th2) {
                th = th2;
                ((as3) r31Var.e).a("GmaWebView.destroySafe", th);
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }

    public final void a(int i) {
        synchronized (this) {
            this.t = i;
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    public final void a(int i, boolean z) {
        ViewParent parent = getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
        xs3.a(this.b, new n31(this, null));
        xs3.a(this.c, new o31(this, null));
        String str = "WebView render process gone. Crashed? " + z + " Priority? " + i;
        ((as3) this.e).a(str, (Throwable) new Exception(str));
    }

    public final void a(v14 value) {
        Intrinsics.checkNotNullParameter(value, "value");
        synchronized (this) {
            this.s = value;
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
        requestLayout();
    }

    public final g41 b() {
        g41 g41Var = this.z;
        if (g41Var != null) {
            return g41Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("gmaWebViewClient");
        return null;
    }

    public final Object b(JsonObject jsonObject, String str, Continuation continuation) {
        Object objB = b(str + "(" + jsonObject + ");", continuation);
        return objB == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(String str, String str2, UUID uuid, Continuation continuation) {
        z21 z21Var;
        if (continuation instanceof z21) {
            z21Var = (z21) continuation;
            int i = z21Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                z21Var.d = i - Integer.MIN_VALUE;
            } else {
                z21Var = new z21(this, continuation);
            }
        } else {
            z21Var = new z21(this, continuation);
        }
        Object objA = z21Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = z21Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            z21Var.a = str;
            z21Var.d = 1;
            objA = a(str, str2, uuid, z21Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = z21Var.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        v01 v01Var = (v01) objA;
        if (v01Var instanceof i01) {
            return (i01) v01Var;
        }
        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        JsonObject jsonObject = (JsonObject) ((q01) v01Var).a();
        return jsonObject == null ? new m01("Null response from " + str) : new q01(jsonObject);
    }

    public final Object b(String str, Continuation continuation) {
        if (this.k.get()) {
            return p005kotlin.Unit.INSTANCE;
        }
        if (Looper.getMainLooper().isCurrentThread()) {
            evaluateJavascript(str, null);
            return p005kotlin.Unit.INSTANCE;
        }
        Object objWithContext = BuildersKt.withContext(this.a, new e31(this, str, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : p005kotlin.Unit.INSTANCE;
    }

    public final nr1 c() {
        nr1 nr1Var = this.y;
        if (nr1Var != null) {
            return nr1Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("jsContext");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x011f  */
    /* JADX WARN: Code duplicated, block: B:59:0x0126 A[Catch: all -> 0x013d, TRY_LEAVE, TryCatch #10 {all -> 0x013d, blocks: (B:57:0x0122, B:59:0x0126, B:91:0x019b, B:93:0x019f, B:79:0x016d, B:81:0x0171), top: B:131:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:81:0x0171 A[Catch: all -> 0x013d, TRY_LEAVE, TryCatch #10 {all -> 0x013d, blocks: (B:57:0x0122, B:59:0x0126, B:91:0x019b, B:93:0x019f, B:79:0x016d, B:81:0x0171), top: B:131:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0191 A[Catch: all -> 0x0068, TRY_LEAVE, TryCatch #4 {all -> 0x0068, blocks: (B:18:0x0049, B:97:0x01b9, B:22:0x0063, B:86:0x018c, B:88:0x0191), top: B:131:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:93:0x019f A[Catch: all -> 0x013d, TRY_LEAVE, TryCatch #10 {all -> 0x013d, blocks: (B:57:0x0122, B:59:0x0126, B:91:0x019b, B:93:0x019f, B:79:0x016d, B:81:0x0171), top: B:131:0x002b }] */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0139, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r5, r6, r2) == r3) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0186, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r0, r5, r2) == r3) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01b4, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r6, r7, r2) == r3) goto L95;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10, types: [ads_mobile_sdk.r31] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v18, types: [ads_mobile_sdk.r31] */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v2, types: [ads_mobile_sdk.r31] */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v8, types: [ads_mobile_sdk.r31] */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r13v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v22 */
    /* JADX WARN: Type inference failed for: r13v23 */
    /* JADX WARN: Type inference failed for: r13v24 */
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r13v26 */
    /* JADX WARN: Type inference failed for: r13v27 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v2, types: [ads_mobile_sdk.k31, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v7, types: [ads_mobile_sdk.k31, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v18, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v24, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v9, types: [ads_mobile_sdk.rr3, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v2, types: [int] */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(java.lang.String r22, p005kotlin.coroutines.Continuation r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.r31.c(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final q41 d() {
        q41 q41Var;
        synchronized (this) {
            q41Var = this.r;
        }
        return q41Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(String str, Continuation continuation) {
        p31 p31Var;
        mb0 mb0Var;
        if (continuation instanceof p31) {
            p31Var = (p31) continuation;
            int i = p31Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                p31Var.c = i - Integer.MIN_VALUE;
            } else {
                p31Var = new p31(this, continuation);
            }
        } else {
            p31Var = new p31(this, continuation);
        }
        p31 p31Var2 = p31Var;
        Object obj = p31Var2.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = p31Var2.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ir3 ir3Var = this.v;
            if (ir3Var == null || (mb0Var = this.d) == null) {
                return null;
            }
            p31Var2.c = 1;
            String str2 = ir3Var.a;
            Duration.Companion companion = Duration.INSTANCE;
            mb0Var.c.getClass();
            Object objA = mb0Var.a(str, str2, DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), p31Var2);
            if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objA = p005kotlin.Unit.INSTANCE;
            }
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // android.webkit.WebView
    public final void destroy() {
        if (!this.m.getAndSet(true)) {
            rs1 rs1Var = (rs1) this.j.a;
            rs1Var.c = rs1Var.b.decrementAndGet();
        }
        this.k.set(true);
        mb0 mb0Var = this.d;
        if (mb0Var != null) {
            CoroutineScope coroutineScope = mb0Var.a;
            hb0 block = new hb0(mb0Var, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        super.destroy();
    }

    public final v14 e() {
        v14 v14Var;
        synchronized (this) {
            v14Var = this.s;
        }
        return v14Var;
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        u14 u14Var;
        if (this.k.get()) {
            setMeasuredDimension(0, 0);
            return;
        }
        v14 v14VarE = e();
        if (isInEditMode() || v14VarE.a() || this.o.get() || (u14Var = v14VarE.a) == u14.FULLSCREEN) {
            super.onMeasure(i, i2);
            return;
        }
        if (u14Var == u14.VIDEO_RECT) {
            q41 q41VarD = d();
            float fA = q41VarD != null ? q41VarD.a() : 0.0f;
            if (fA <= 0.0f) {
                super.onMeasure(i, i2);
                return;
            }
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            int i3 = (int) (size2 * fA);
            int i4 = (int) (size / fA);
            if (size2 == 0 && i4 != 0) {
                i3 = size;
                size2 = i4;
            } else if (size != 0 || i3 == 0) {
                i3 = size;
                size = i3;
                i4 = size2;
                size2 = i4;
            } else {
                i4 = size2;
                size = i3;
            }
            setMeasuredDimension(Math.min(size, i3), Math.min(size2, i4));
            return;
        }
        if (v14VarE.d) {
            xs3.a(this.c, new l31(this, null));
            int iA = a();
            setMeasuredDimension(View.MeasureSpec.getSize(i), iA == -1 ? View.MeasureSpec.getSize(i2) : (int) (iA * this.x.density));
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size3 = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size4 = View.MeasureSpec.getSize(i2);
        int i5 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size3 : Integer.MAX_VALUE;
        int i6 = (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) ? size4 : Integer.MAX_VALUE;
        int i7 = v14VarE.b;
        if (i7 > i5 || v14VarE.c > i6) {
            float f = this.x.density;
            String str = "Not enough space to show the full ad. Need " + ((int) (i7 / f)) + "x" + ((int) (v14VarE.c / f)) + " dp, but only have " + ((int) (size3 / f)) + "x" + ((int) (size4 / f)) + " dp.";
            f01.c(str, null);
            if (!this.n.getAndSet(true)) {
                xs3.a(this.c, new m31(this, str, null));
            }
        }
        if (getVisibility() != 8) {
            setVisibility(0);
        }
        setMeasuredDimension(v14VarE.b, v14VarE.c);
    }

    @Override // android.webkit.WebView
    public final void onPause() {
        super.onPause();
        this.g.getClass();
        Intrinsics.checkNotNullParameter(this, "webView");
        try {
            if (WebViewFeature.isFeatureSupported("MUTE_AUDIO")) {
                WebViewCompat.setAudioMuted(this, true);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.webkit.WebView
    public final void onResume() {
        super.onResume();
        this.g.getClass();
        Intrinsics.checkNotNullParameter(this, "webView");
        try {
            if (WebViewFeature.isFeatureSupported("MUTE_AUDIO")) {
                WebViewCompat.setAudioMuted(this, false);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent inputEvent) {
        p005kotlin.Unit unit;
        Intrinsics.checkNotNullParameter(inputEvent, "event");
        tu1 tu1Var = this.u;
        if (tu1Var != null) {
            tu1Var.a(inputEvent);
            unit = p005kotlin.Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            rb rbVar = this.f;
            rbVar.getClass();
            Intrinsics.checkNotNullParameter(inputEvent, "inputEvent");
            rbVar.g().a(inputEvent);
        }
        if (this.k.get()) {
            return false;
        }
        return super.onTouchEvent(inputEvent);
    }
}
