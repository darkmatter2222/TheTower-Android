package kotlin;

import java.io.Closeable;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class t72 {
    public final g83 a;
    public final iz3 b;
    public final r72 c;

    public t72(g83 rootTraceCreator, iz3 webViewFactory, r72 nativePolicyValidatorOverlayConfigurator) {
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(nativePolicyValidatorOverlayConfigurator, "nativePolicyValidatorOverlayConfigurator");
        this.a = rootTraceCreator;
        this.b = webViewFactory;
        this.c = nativePolicyValidatorOverlayConfigurator;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01c6 A[Catch: all -> 0x0048, TRY_LEAVE, TryCatch #5 {all -> 0x0048, blocks: (B:15:0x0042, B:98:0x01b7, B:99:0x01c2, B:101:0x01c6), top: B:142:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x01dc A[Catch: all -> 0x020b, TryCatch #7 {all -> 0x020b, blocks: (B:107:0x01d5, B:109:0x01dc, B:111:0x01e0, B:113:0x01e4, B:114:0x01e7, B:116:0x01eb, B:118:0x01ef, B:120:0x01f3, B:121:0x01f4, B:122:0x01f9, B:123:0x01fa, B:124:0x0201, B:125:0x0202, B:126:0x0209, B:127:0x020a), top: B:146:0x01d5 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x01e0 A[Catch: all -> 0x020b, TryCatch #7 {all -> 0x020b, blocks: (B:107:0x01d5, B:109:0x01dc, B:111:0x01e0, B:113:0x01e4, B:114:0x01e7, B:116:0x01eb, B:118:0x01ef, B:120:0x01f3, B:121:0x01f4, B:122:0x01f9, B:123:0x01fa, B:124:0x0201, B:125:0x0202, B:126:0x0209, B:127:0x020a), top: B:146:0x01d5 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x01eb A[Catch: all -> 0x020b, TryCatch #7 {all -> 0x020b, blocks: (B:107:0x01d5, B:109:0x01dc, B:111:0x01e0, B:113:0x01e4, B:114:0x01e7, B:116:0x01eb, B:118:0x01ef, B:120:0x01f3, B:121:0x01f4, B:122:0x01f9, B:123:0x01fa, B:124:0x0201, B:125:0x0202, B:126:0x0209, B:127:0x020a), top: B:146:0x01d5 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x01ef A[Catch: all -> 0x020b, TryCatch #7 {all -> 0x020b, blocks: (B:107:0x01d5, B:109:0x01dc, B:111:0x01e0, B:113:0x01e4, B:114:0x01e7, B:116:0x01eb, B:118:0x01ef, B:120:0x01f3, B:121:0x01f4, B:122:0x01f9, B:123:0x01fa, B:124:0x0201, B:125:0x0202, B:126:0x0209, B:127:0x020a), top: B:146:0x01d5 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x01f3 A[Catch: all -> 0x020b, TryCatch #7 {all -> 0x020b, blocks: (B:107:0x01d5, B:109:0x01dc, B:111:0x01e0, B:113:0x01e4, B:114:0x01e7, B:116:0x01eb, B:118:0x01ef, B:120:0x01f3, B:121:0x01f4, B:122:0x01f9, B:123:0x01fa, B:124:0x0201, B:125:0x0202, B:126:0x0209, B:127:0x020a), top: B:146:0x01d5 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x01f4 A[Catch: all -> 0x020b, TryCatch #7 {all -> 0x020b, blocks: (B:107:0x01d5, B:109:0x01dc, B:111:0x01e0, B:113:0x01e4, B:114:0x01e7, B:116:0x01eb, B:118:0x01ef, B:120:0x01f3, B:121:0x01f4, B:122:0x01f9, B:123:0x01fa, B:124:0x0201, B:125:0x0202, B:126:0x0209, B:127:0x020a), top: B:146:0x01d5 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x01fa A[Catch: all -> 0x020b, TryCatch #7 {all -> 0x020b, blocks: (B:107:0x01d5, B:109:0x01dc, B:111:0x01e0, B:113:0x01e4, B:114:0x01e7, B:116:0x01eb, B:118:0x01ef, B:120:0x01f3, B:121:0x01f4, B:122:0x01f9, B:123:0x01fa, B:124:0x0201, B:125:0x0202, B:126:0x0209, B:127:0x020a), top: B:146:0x01d5 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x0202 A[Catch: all -> 0x020b, TryCatch #7 {all -> 0x020b, blocks: (B:107:0x01d5, B:109:0x01dc, B:111:0x01e0, B:113:0x01e4, B:114:0x01e7, B:116:0x01eb, B:118:0x01ef, B:120:0x01f3, B:121:0x01f4, B:122:0x01f9, B:123:0x01fa, B:124:0x0201, B:125:0x0202, B:126:0x0209, B:127:0x020a), top: B:146:0x01d5 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x020a A[Catch: all -> 0x020b, TRY_LEAVE, TryCatch #7 {all -> 0x020b, blocks: (B:107:0x01d5, B:109:0x01dc, B:111:0x01e0, B:113:0x01e4, B:114:0x01e7, B:116:0x01eb, B:118:0x01ef, B:120:0x01f3, B:121:0x01f4, B:122:0x01f9, B:123:0x01fa, B:124:0x0201, B:125:0x0202, B:126:0x0209, B:127:0x020a), top: B:146:0x01d5 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00e3 A[Catch: all -> 0x008e, TryCatch #8 {all -> 0x008e, blocks: (B:32:0x008a, B:43:0x00dd, B:45:0x00e3, B:46:0x00e8), top: B:147:0x008a }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00e8 A[Catch: all -> 0x008e, TRY_LEAVE, TryCatch #8 {all -> 0x008e, blocks: (B:32:0x008a, B:43:0x00dd, B:45:0x00e3, B:46:0x00e8), top: B:147:0x008a }] */
    /* JADX WARN: Code duplicated, block: B:49:0x0108  */
    /* JADX WARN: Code duplicated, block: B:53:0x011b A[Catch: all -> 0x0079, TRY_LEAVE, TryCatch #6 {all -> 0x0079, blocks: (B:27:0x0073, B:50:0x010c, B:51:0x0117, B:53:0x011b), top: B:144:0x0073 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0131 A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:59:0x012a, B:61:0x0131, B:63:0x0135, B:65:0x0139, B:66:0x013c, B:68:0x0140, B:70:0x0144, B:72:0x0148, B:73:0x0149, B:74:0x014e, B:75:0x014f, B:76:0x0156, B:77:0x0157, B:78:0x015e, B:79:0x015f), top: B:134:0x012a }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0135 A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:59:0x012a, B:61:0x0131, B:63:0x0135, B:65:0x0139, B:66:0x013c, B:68:0x0140, B:70:0x0144, B:72:0x0148, B:73:0x0149, B:74:0x014e, B:75:0x014f, B:76:0x0156, B:77:0x0157, B:78:0x015e, B:79:0x015f), top: B:134:0x012a }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0140 A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:59:0x012a, B:61:0x0131, B:63:0x0135, B:65:0x0139, B:66:0x013c, B:68:0x0140, B:70:0x0144, B:72:0x0148, B:73:0x0149, B:74:0x014e, B:75:0x014f, B:76:0x0156, B:77:0x0157, B:78:0x015e, B:79:0x015f), top: B:134:0x012a }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0144 A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:59:0x012a, B:61:0x0131, B:63:0x0135, B:65:0x0139, B:66:0x013c, B:68:0x0140, B:70:0x0144, B:72:0x0148, B:73:0x0149, B:74:0x014e, B:75:0x014f, B:76:0x0156, B:77:0x0157, B:78:0x015e, B:79:0x015f), top: B:134:0x012a }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0148 A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:59:0x012a, B:61:0x0131, B:63:0x0135, B:65:0x0139, B:66:0x013c, B:68:0x0140, B:70:0x0144, B:72:0x0148, B:73:0x0149, B:74:0x014e, B:75:0x014f, B:76:0x0156, B:77:0x0157, B:78:0x015e, B:79:0x015f), top: B:134:0x012a }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0149 A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:59:0x012a, B:61:0x0131, B:63:0x0135, B:65:0x0139, B:66:0x013c, B:68:0x0140, B:70:0x0144, B:72:0x0148, B:73:0x0149, B:74:0x014e, B:75:0x014f, B:76:0x0156, B:77:0x0157, B:78:0x015e, B:79:0x015f), top: B:134:0x012a }] */
    /* JADX WARN: Code duplicated, block: B:75:0x014f A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:59:0x012a, B:61:0x0131, B:63:0x0135, B:65:0x0139, B:66:0x013c, B:68:0x0140, B:70:0x0144, B:72:0x0148, B:73:0x0149, B:74:0x014e, B:75:0x014f, B:76:0x0156, B:77:0x0157, B:78:0x015e, B:79:0x015f), top: B:134:0x012a }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0157 A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:59:0x012a, B:61:0x0131, B:63:0x0135, B:65:0x0139, B:66:0x013c, B:68:0x0140, B:70:0x0144, B:72:0x0148, B:73:0x0149, B:74:0x014e, B:75:0x014f, B:76:0x0156, B:77:0x0157, B:78:0x015e, B:79:0x015f), top: B:134:0x012a }] */
    /* JADX WARN: Code duplicated, block: B:79:0x015f A[Catch: all -> 0x0160, TRY_LEAVE, TryCatch #0 {all -> 0x0160, blocks: (B:59:0x012a, B:61:0x0131, B:63:0x0135, B:65:0x0139, B:66:0x013c, B:68:0x0140, B:70:0x0144, B:72:0x0148, B:73:0x0149, B:74:0x014e, B:75:0x014f, B:76:0x0156, B:77:0x0157, B:78:0x015e, B:79:0x015f), top: B:134:0x012a }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:93:0x0190 A[Catch: all -> 0x0066, TryCatch #3 {all -> 0x0066, blocks: (B:22:0x0061, B:91:0x018a, B:93:0x0190, B:94:0x0195), top: B:139:0x0061 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0195 A[Catch: all -> 0x0066, TRY_LEAVE, TryCatch #3 {all -> 0x0066, blocks: (B:22:0x0061, B:91:0x018a, B:93:0x0190, B:94:0x0195), top: B:139:0x0061 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x01b4  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v14, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v16, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v11, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v14, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v17, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v19, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v9 */
    public static Object a(t72 t72Var, Continuation continuation) {
        s72 s72Var;
        Closeable closeableA;
        ?? r7;
        ?? r8;
        Closeable closeableA2;
        ?? r9;
        ?? r10;
        v01 v01Var;
        r31 r31Var;
        r72 r72Var;
        nr1 nr1VarC;
        r31 r31Var2;
        Closeable closeable;
        ?? r2;
        int i;
        Object q01Var;
        ?? r3;
        v01 v01Var2;
        r31 r31Var3;
        r72 r72Var2;
        nr1 nr1VarC2;
        int i2;
        r31 r31Var4;
        Closeable closeable2;
        ?? r4;
        Object q01Var2;
        ?? r5;
        t72 t72Var2 = t72Var;
        if (continuation instanceof s72) {
            s72Var = (s72) continuation;
            int i3 = s72Var.f;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                s72Var.f = i3 - Integer.MIN_VALUE;
            } else {
                s72Var = new s72(t72Var2, continuation);
            }
        } else {
            s72Var = new s72(t72Var2, continuation);
        }
        Object objA = s72Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = s72Var.f;
        if (i4 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            g83 g83Var = t72Var2.a;
            s11 s11Var = s11.CUI_NAME_NATIVE_POLICY_VALIDATOR_WEBVIEW_CREATE;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                closeableA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    iz3 iz3Var = t72Var2.b;
                    v14 v14Var = new v14(u14.DEFAULT, 0, 0, 14);
                    s72Var.a = t72Var2;
                    s72Var.b = closeableA2;
                    s72Var.c = closeableA2;
                    s72Var.f = 1;
                    objA = iz3Var.a(v14Var, null, true, s72Var);
                    if (objA != coroutine_suspended) {
                        r10 = closeableA2;
                        v01Var = (v01) objA;
                        if (!(v01Var instanceof i01)) {
                            q01Var = (i01) v01Var;
                            closeable = closeableA2;
                            r3 = r10;
                        } else {
                            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                            r31Var = (r31) ((q01) v01Var).b;
                            r72Var = t72Var2.c;
                            nr1VarC = r31Var.c();
                            s72Var.a = r10;
                            s72Var.b = closeableA2;
                            s72Var.c = r31Var;
                            s72Var.f = 2;
                            if (r72Var.a(nr1VarC, s72Var) != coroutine_suspended) {
                                r31Var2 = r31Var;
                                closeable = closeableA2;
                                r2 = r10;
                                i = 4;
                                r31Var2.setVisibility(i);
                                r31Var2.setContentDescription("policy_validator");
                                q01Var = new q01(r31Var2);
                                r3 = r2;
                            }
                        }
                        if (q01Var instanceof i01) {
                            xs3.a((i01) q01Var, false);
                        }
                        CloseableKt.closeFinally(closeable, null);
                        return q01Var;
                    }
                } catch (Throwable th) {
                    th = th;
                    r9 = closeableA2;
                    r9.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        r9.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                }
            } else {
                closeableA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    iz3 iz3Var2 = t72Var2.b;
                    v14 v14Var2 = new v14(u14.DEFAULT, 0, 0, 14);
                    s72Var.a = t72Var2;
                    s72Var.b = closeableA;
                    s72Var.c = closeableA;
                    s72Var.f = 3;
                    objA = iz3Var2.a(v14Var2, null, true, s72Var);
                    if (objA != coroutine_suspended) {
                        r8 = closeableA;
                        v01Var2 = (v01) objA;
                        if (!(v01Var2 instanceof i01)) {
                            q01Var2 = (i01) v01Var2;
                            closeable2 = closeableA;
                            r5 = r8;
                        } else {
                            Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                            r31Var3 = (r31) ((q01) v01Var2).b;
                            r72Var2 = t72Var2.c;
                            nr1VarC2 = r31Var3.c();
                            s72Var.a = r8;
                            s72Var.b = closeableA;
                            s72Var.c = r31Var3;
                            i2 = 4;
                            s72Var.f = 4;
                            if (r72Var2.a(nr1VarC2, s72Var) != coroutine_suspended) {
                                r31Var4 = r31Var3;
                                closeable2 = closeableA;
                                r4 = r8;
                                r31Var4.setVisibility(i2);
                                r31Var4.setContentDescription("policy_validator");
                                q01Var2 = new q01(r31Var4);
                                r5 = r4;
                            }
                        }
                        if (q01Var2 instanceof i01) {
                            xs3.a((i01) q01Var2, false);
                        }
                        CloseableKt.closeFinally(closeable2, null);
                        return q01Var2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    r7 = closeableA;
                    r7.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        r7.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                }
            }
            return coroutine_suspended;
        }
        if (i4 == 1) {
            closeableA2 = (Closeable) s72Var.c;
            r9 = (rr3) s72Var.b;
            t72Var2 = (t72) s72Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objA);
                r10 = r9;
                v01Var = (v01) objA;
                if (!(v01Var instanceof i01)) {
                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    r31Var = (r31) ((q01) v01Var).b;
                    r72Var = t72Var2.c;
                    nr1VarC = r31Var.c();
                    s72Var.a = r10;
                    s72Var.b = closeableA2;
                    s72Var.c = r31Var;
                    s72Var.f = 2;
                    if (r72Var.a(nr1VarC, s72Var) != coroutine_suspended) {
                        r31Var2 = r31Var;
                        closeable = closeableA2;
                        r2 = r10;
                        i = 4;
                        r31Var2.setVisibility(i);
                        r31Var2.setContentDescription("policy_validator");
                        q01Var = new q01(r31Var2);
                        r3 = r2;
                    }
                    return coroutine_suspended;
                }
                q01Var = (i01) v01Var;
                closeable = closeableA2;
                r3 = r10;
                if (q01Var instanceof i01) {
                    xs3.a((i01) q01Var, false);
                }
                CloseableKt.closeFinally(closeable, null);
                return q01Var;
            } catch (Throwable th3) {
                th = th3;
                r9.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    r9.a(th);
                }
                if (th instanceof TimeoutCancellationException) {
                    throw new i21(th);
                }
                if (th instanceof CancellationException) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            }
        }
        if (i4 == 2) {
            r31Var2 = (r31) s72Var.c;
            closeable = s72Var.b;
            r3 = (rr3) s72Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objA);
                i = 4;
                r2 = r3;
                r31Var2.setVisibility(i);
                r31Var2.setContentDescription("policy_validator");
                q01Var = new q01(r31Var2);
                r3 = r2;
                if (q01Var instanceof i01) {
                    xs3.a((i01) q01Var, false);
                }
                CloseableKt.closeFinally(closeable, null);
                return q01Var;
            } catch (Throwable th4) {
                th = th4;
                r9 = r3;
                closeableA2 = closeable;
                try {
                    r9.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        r9.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
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
                        CloseableKt.closeFinally(closeableA2, th5);
                        throw th6;
                    }
                }
            }
        }
        if (i4 != 3) {
            if (i4 != 4) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            r31Var4 = (r31) s72Var.c;
            closeable2 = s72Var.b;
            r5 = (rr3) s72Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objA);
                i2 = 4;
                r4 = r5;
                r31Var4.setVisibility(i2);
                r31Var4.setContentDescription("policy_validator");
                q01Var2 = new q01(r31Var4);
                r5 = r4;
                if (q01Var2 instanceof i01) {
                    xs3.a((i01) q01Var2, false);
                }
                CloseableKt.closeFinally(closeable2, null);
                return q01Var2;
            } catch (Throwable th7) {
                th = th7;
                r7 = r5;
                closeableA = closeable2;
                try {
                    r7.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        r7.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th8) {
                    try {
                        throw th8;
                    } catch (Throwable th9) {
                        CloseableKt.closeFinally(closeableA, th8);
                        throw th9;
                    }
                }
            }
        }
        closeableA = (Closeable) s72Var.c;
        r7 = (rr3) s72Var.b;
        t72Var2 = (t72) s72Var.a;
        try {
            p005kotlin.ResultKt.throwOnFailure(objA);
            r8 = r7;
            v01Var2 = (v01) objA;
            if (!(v01Var2 instanceof i01)) {
                Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                r31Var3 = (r31) ((q01) v01Var2).b;
                r72Var2 = t72Var2.c;
                nr1VarC2 = r31Var3.c();
                s72Var.a = r8;
                s72Var.b = closeableA;
                s72Var.c = r31Var3;
                i2 = 4;
                s72Var.f = 4;
                if (r72Var2.a(nr1VarC2, s72Var) != coroutine_suspended) {
                    r31Var4 = r31Var3;
                    closeable2 = closeableA;
                    r4 = r8;
                    r31Var4.setVisibility(i2);
                    r31Var4.setContentDescription("policy_validator");
                    q01Var2 = new q01(r31Var4);
                    r5 = r4;
                }
                return coroutine_suspended;
            }
            q01Var2 = (i01) v01Var2;
            closeable2 = closeableA;
            r5 = r8;
            if (q01Var2 instanceof i01) {
                xs3.a((i01) q01Var2, false);
            }
            CloseableKt.closeFinally(closeable2, null);
            return q01Var2;
        } catch (Throwable th10) {
            th = th10;
            r7.b(th);
            if (th instanceof v24) {
                throw th;
            }
            if (!(th instanceof TimeoutCancellationException)) {
                r7.a(th);
            }
            if (th instanceof TimeoutCancellationException) {
                throw new i21(th);
            }
            if (th instanceof CancellationException) {
                throw new wz0(th);
            }
            if (th instanceof w01) {
                throw th;
            }
            throw new b01(th);
        }
    }
}
