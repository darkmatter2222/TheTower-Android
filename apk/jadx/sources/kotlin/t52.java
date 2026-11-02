package kotlin;

import com.ironsource.C3510b4;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class t52 {
    public final CoroutineScope a;
    public final CoroutineScope b;
    public final ex0 c;
    public final iz3 d;
    public final g83 e;
    public final cw2 f;
    public final nk3 g;

    public t52(CoroutineScope uiScope, CoroutineScope backgroundScope, ex0 flags, iz3 webViewFactory, g83 rootTraceCreator, dw2 singletonEngineProvider, nk3 singletonNativeJavascriptEngineConfigurator) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(singletonEngineProvider, "singletonEngineProvider");
        Intrinsics.checkNotNullParameter(singletonNativeJavascriptEngineConfigurator, "singletonNativeJavascriptEngineConfigurator");
        this.a = uiScope;
        this.b = backgroundScope;
        this.c = flags;
        this.d = webViewFactory;
        this.e = rootTraceCreator;
        this.f = singletonEngineProvider;
        this.g = singletonNativeJavascriptEngineConfigurator;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00be A[Catch: all -> 0x0067, TRY_LEAVE, TryCatch #2 {all -> 0x0067, blocks: (B:26:0x0063, B:48:0x00b8, B:50:0x00be, B:53:0x00ca), top: B:100:0x0063 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00ca A[Catch: all -> 0x0067, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0067, blocks: (B:26:0x0063, B:48:0x00b8, B:50:0x00be, B:53:0x00ca), top: B:100:0x0063 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:60:0x011d  */
    /* JADX WARN: Code duplicated, block: B:63:0x0127 A[Catch: all -> 0x0041, TryCatch #0 {all -> 0x0041, blocks: (B:14:0x003b, B:61:0x0121, B:63:0x0127, B:64:0x0141), top: B:97:0x003b }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0141 A[Catch: all -> 0x0041, TRY_LEAVE, TryCatch #0 {all -> 0x0041, blocks: (B:14:0x003b, B:61:0x0121, B:63:0x0127, B:64:0x0141), top: B:97:0x003b }] */
    /* JADX WARN: Code duplicated, block: B:72:0x016b A[Catch: all -> 0x019a, TryCatch #4 {all -> 0x019a, blocks: (B:70:0x0164, B:72:0x016b, B:74:0x016f, B:76:0x0173, B:77:0x0176, B:79:0x017a, B:81:0x017e, B:83:0x0182, B:84:0x0183, B:85:0x0188, B:86:0x0189, B:87:0x0190, B:88:0x0191, B:89:0x0198, B:90:0x0199), top: B:103:0x0164 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x016f A[Catch: all -> 0x019a, TryCatch #4 {all -> 0x019a, blocks: (B:70:0x0164, B:72:0x016b, B:74:0x016f, B:76:0x0173, B:77:0x0176, B:79:0x017a, B:81:0x017e, B:83:0x0182, B:84:0x0183, B:85:0x0188, B:86:0x0189, B:87:0x0190, B:88:0x0191, B:89:0x0198, B:90:0x0199), top: B:103:0x0164 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x017a A[Catch: all -> 0x019a, TryCatch #4 {all -> 0x019a, blocks: (B:70:0x0164, B:72:0x016b, B:74:0x016f, B:76:0x0173, B:77:0x0176, B:79:0x017a, B:81:0x017e, B:83:0x0182, B:84:0x0183, B:85:0x0188, B:86:0x0189, B:87:0x0190, B:88:0x0191, B:89:0x0198, B:90:0x0199), top: B:103:0x0164 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:81:0x017e A[Catch: all -> 0x019a, TryCatch #4 {all -> 0x019a, blocks: (B:70:0x0164, B:72:0x016b, B:74:0x016f, B:76:0x0173, B:77:0x0176, B:79:0x017a, B:81:0x017e, B:83:0x0182, B:84:0x0183, B:85:0x0188, B:86:0x0189, B:87:0x0190, B:88:0x0191, B:89:0x0198, B:90:0x0199), top: B:103:0x0164 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0182 A[Catch: all -> 0x019a, TryCatch #4 {all -> 0x019a, blocks: (B:70:0x0164, B:72:0x016b, B:74:0x016f, B:76:0x0173, B:77:0x0176, B:79:0x017a, B:81:0x017e, B:83:0x0182, B:84:0x0183, B:85:0x0188, B:86:0x0189, B:87:0x0190, B:88:0x0191, B:89:0x0198, B:90:0x0199), top: B:103:0x0164 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0183 A[Catch: all -> 0x019a, TryCatch #4 {all -> 0x019a, blocks: (B:70:0x0164, B:72:0x016b, B:74:0x016f, B:76:0x0173, B:77:0x0176, B:79:0x017a, B:81:0x017e, B:83:0x0182, B:84:0x0183, B:85:0x0188, B:86:0x0189, B:87:0x0190, B:88:0x0191, B:89:0x0198, B:90:0x0199), top: B:103:0x0164 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0189 A[Catch: all -> 0x019a, TryCatch #4 {all -> 0x019a, blocks: (B:70:0x0164, B:72:0x016b, B:74:0x016f, B:76:0x0173, B:77:0x0176, B:79:0x017a, B:81:0x017e, B:83:0x0182, B:84:0x0183, B:85:0x0188, B:86:0x0189, B:87:0x0190, B:88:0x0191, B:89:0x0198, B:90:0x0199), top: B:103:0x0164 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0191 A[Catch: all -> 0x019a, TryCatch #4 {all -> 0x019a, blocks: (B:70:0x0164, B:72:0x016b, B:74:0x016f, B:76:0x0173, B:77:0x0176, B:79:0x017a, B:81:0x017e, B:83:0x0182, B:84:0x0183, B:85:0x0188, B:86:0x0189, B:87:0x0190, B:88:0x0191, B:89:0x0198, B:90:0x0199), top: B:103:0x0164 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0199 A[Catch: all -> 0x019a, TRY_LEAVE, TryCatch #4 {all -> 0x019a, blocks: (B:70:0x0164, B:72:0x016b, B:74:0x016f, B:76:0x0173, B:77:0x0176, B:79:0x017a, B:81:0x017e, B:83:0x0182, B:84:0x0183, B:85:0x0188, B:86:0x0189, B:87:0x0190, B:88:0x0191, B:89:0x0198, B:90:0x0199), top: B:103:0x0164 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v3, types: [ads_mobile_sdk.rr3, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v7, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [ads_mobile_sdk.rr3] */
    public static Object a(t52 t52Var, i2 i2Var, Continuation continuation) {
        r52 r52Var;
        vc1 vc1Var;
        ?? A;
        ?? r5;
        ?? r6;
        ?? r1;
        v01 v01Var;
        r31 r31Var;
        nk3 nk3Var;
        nr1 nr1VarC;
        t52 t52Var2;
        r31 r31Var2;
        ?? r7;
        ?? r4;
        t52 t52Var3;
        ?? r2;
        r31 r31Var3;
        Object q01Var;
        t52 t52Var4 = t52Var;
        if (continuation instanceof r52) {
            r52Var = (r52) continuation;
            int i = r52Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                r52Var.g = i - Integer.MIN_VALUE;
            } else {
                r52Var = new r52(t52Var4, continuation);
            }
        } else {
            r52Var = new r52(t52Var4, continuation);
        }
        Object objA = r52Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = r52Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            vc1 vc1Var2 = i2Var.J;
            String str = vc1Var2 != null ? vc1Var2.e : null;
            if ((str != null && !StringsKt.isBlank(str)) || ((vc1Var = i2Var.J) != null && vc1Var.f)) {
                return new q01(t52Var4.f.get());
            }
            s11 s11Var = s11.CUI_NAME_LOAD_NATIVE_JS_ENGINE;
            WeakHashMap weakHashMap = hs3.a;
            A = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                iz3 iz3Var = t52Var4.d;
                v14 v14Var = new v14(u14.DEFAULT, 0, 0, 14);
                r52Var.a = t52Var4;
                r52Var.b = A;
                r52Var.c = A;
                r52Var.g = 1;
                objA = iz3Var.a(v14Var, null, false, r52Var);
                if (objA != coroutine_suspended) {
                    r6 = A;
                    r1 = A;
                    v01Var = (v01) objA;
                    if (v01Var instanceof i01) {
                        i01 i01Var = (i01) v01Var;
                        xs3.a(i01Var, false);
                        xs3.a(i01Var, false);
                        CloseableKt.closeFinally(r1, null);
                        return i01Var;
                    }
                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    r31Var = (r31) ((q01) v01Var).b;
                    r31Var.setWillNotDraw(true);
                    nk3Var = t52Var4.g;
                    nr1VarC = r31Var.c();
                    r52Var.a = t52Var4;
                    r52Var.b = r6;
                    r52Var.c = r1;
                    r52Var.d = r31Var;
                    r52Var.g = 2;
                    if (nk3Var.a(nr1VarC, r52Var) != coroutine_suspended) {
                        t52Var2 = t52Var4;
                        r31Var2 = r31Var;
                        A = r1;
                        r7 = r6;
                        ex0 ex0Var = t52Var2.c;
                        ex0Var.getClass();
                        Intrinsics.checkNotNullParameter("gads:native:engine_url_with_protocol", C3510b4.i.W);
                        Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", "defaultValue");
                        String str2 = (String) ex0Var.a("gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", yr.o);
                        r52Var.a = t52Var2;
                        r52Var.b = r7;
                        r52Var.c = A;
                        r52Var.d = r31Var2;
                        r52Var.g = 3;
                        objA = r31Var2.c(str2, r52Var);
                        if (objA != coroutine_suspended) {
                            t52Var3 = t52Var2;
                            r2 = A;
                            r31Var3 = r31Var2;
                            q01Var = (v01) objA;
                            if (q01Var instanceof i01) {
                                BuildersKt__Builders_commonKt.launch$default(t52Var3.a, NonCancellable.INSTANCE, null, new s52(r31Var3, null), 2, null);
                                xs3.a((i01) q01Var, false);
                            } else {
                                q01Var = new q01(new qo0(new fl1(r31Var3, t52Var3.a, t52Var3.b, t52Var3.e, t52Var3.c, false)));
                            }
                            CloseableKt.closeFinally(r2, null);
                            return q01Var;
                        }
                    }
                }
                return coroutine_suspended;
            } catch (Throwable th) {
                th = th;
                r5 = A;
                r5.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    r5.a(th);
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
        if (i2 == 1) {
            A = r52Var.c;
            r5 = r52Var.b;
            t52Var4 = r52Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objA);
                r1 = A;
                r6 = r5;
                v01Var = (v01) objA;
                if (v01Var instanceof i01) {
                    i01 i01Var2 = (i01) v01Var;
                    xs3.a(i01Var2, false);
                    xs3.a(i01Var2, false);
                    CloseableKt.closeFinally(r1, null);
                    return i01Var2;
                }
                Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                r31Var = (r31) ((q01) v01Var).b;
                r31Var.setWillNotDraw(true);
                nk3Var = t52Var4.g;
                nr1VarC = r31Var.c();
                r52Var.a = t52Var4;
                r52Var.b = r6;
                r52Var.c = r1;
                r52Var.d = r31Var;
                r52Var.g = 2;
                if (nk3Var.a(nr1VarC, r52Var) != coroutine_suspended) {
                    t52Var2 = t52Var4;
                    r31Var2 = r31Var;
                    A = r1;
                    r7 = r6;
                    ex0 ex0Var2 = t52Var2.c;
                    ex0Var2.getClass();
                    Intrinsics.checkNotNullParameter("gads:native:engine_url_with_protocol", C3510b4.i.W);
                    Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", "defaultValue");
                    String str3 = (String) ex0Var2.a("gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", yr.o);
                    r52Var.a = t52Var2;
                    r52Var.b = r7;
                    r52Var.c = A;
                    r52Var.d = r31Var2;
                    r52Var.g = 3;
                    objA = r31Var2.c(str3, r52Var);
                    if (objA != coroutine_suspended) {
                        t52Var3 = t52Var2;
                        r2 = A;
                        r31Var3 = r31Var2;
                        q01Var = (v01) objA;
                        if (q01Var instanceof i01) {
                            BuildersKt__Builders_commonKt.launch$default(t52Var3.a, NonCancellable.INSTANCE, null, new s52(r31Var3, null), 2, null);
                            xs3.a((i01) q01Var, false);
                        } else {
                            q01Var = new q01(new qo0(new fl1(r31Var3, t52Var3.a, t52Var3.b, t52Var3.e, t52Var3.c, false)));
                        }
                        CloseableKt.closeFinally(r2, null);
                        return q01Var;
                    }
                }
                return coroutine_suspended;
            } catch (Throwable th2) {
                th = th2;
                r5.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    r5.a(th);
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
        if (i2 == 2) {
            r31Var2 = r52Var.d;
            A = r52Var.c;
            r7 = r52Var.b;
            t52Var2 = r52Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objA);
                A = A;
                r7 = r7;
                ex0 ex0Var3 = t52Var2.c;
                ex0Var3.getClass();
                Intrinsics.checkNotNullParameter("gads:native:engine_url_with_protocol", C3510b4.i.W);
                Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", "defaultValue");
                String str4 = (String) ex0Var3.a("gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html", yr.o);
                r52Var.a = t52Var2;
                r52Var.b = r7;
                r52Var.c = A;
                r52Var.d = r31Var2;
                r52Var.g = 3;
                objA = r31Var2.c(str4, r52Var);
                if (objA != coroutine_suspended) {
                    t52Var3 = t52Var2;
                    r2 = A;
                }
                return coroutine_suspended;
            } catch (Throwable th3) {
                th = th3;
                r4 = r7;
                r5 = r4;
                r5.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    r5.a(th);
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
        if (i2 != 3) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        r31Var2 = r52Var.d;
        A = r52Var.c;
        r4 = r52Var.b;
        t52Var3 = r52Var.a;
        try {
            p005kotlin.ResultKt.throwOnFailure(objA);
            r2 = A;
        } catch (Throwable th4) {
            th = th4;
            r5 = r4;
            try {
                r5.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    r5.a(th);
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
                    CloseableKt.closeFinally(A, th5);
                    throw th6;
                }
            }
        }
        r31Var3 = r31Var2;
        q01Var = (v01) objA;
        if (q01Var instanceof i01) {
            BuildersKt__Builders_commonKt.launch$default(t52Var3.a, NonCancellable.INSTANCE, null, new s52(r31Var3, null), 2, null);
            xs3.a((i01) q01Var, false);
        } else {
            q01Var = new q01(new qo0(new fl1(r31Var3, t52Var3.a, t52Var3.b, t52Var3.e, t52Var3.c, false)));
        }
        CloseableKt.closeFinally(r2, null);
        return q01Var;
    }
}
