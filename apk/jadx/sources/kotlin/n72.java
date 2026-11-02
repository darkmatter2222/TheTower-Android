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
public final class n72 {
    public final g83 a;
    public final iz3 b;
    public final d72 c;
    public r31 d;

    public n72(g83 rootTraceCreator, iz3 webViewFactory, d72 nativeOnePointFiveClickOverlayConfigurator) {
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(nativeOnePointFiveClickOverlayConfigurator, "nativeOnePointFiveClickOverlayConfigurator");
        this.a = rootTraceCreator;
        this.b = webViewFactory;
        this.c = nativeOnePointFiveClickOverlayConfigurator;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01b8 A[Catch: all -> 0x005b, TRY_LEAVE, TryCatch #6 {all -> 0x005b, blocks: (B:101:0x01b4, B:103:0x01b8, B:22:0x0056, B:92:0x0178, B:94:0x017e, B:95:0x0181), top: B:148:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x01ce A[Catch: all -> 0x01fd, TryCatch #8 {all -> 0x01fd, blocks: (B:109:0x01c7, B:111:0x01ce, B:113:0x01d2, B:115:0x01d6, B:116:0x01d9, B:118:0x01dd, B:120:0x01e1, B:122:0x01e5, B:123:0x01e6, B:124:0x01eb, B:125:0x01ec, B:126:0x01f3, B:127:0x01f4, B:128:0x01fb, B:129:0x01fc), top: B:152:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x01d2 A[Catch: all -> 0x01fd, TryCatch #8 {all -> 0x01fd, blocks: (B:109:0x01c7, B:111:0x01ce, B:113:0x01d2, B:115:0x01d6, B:116:0x01d9, B:118:0x01dd, B:120:0x01e1, B:122:0x01e5, B:123:0x01e6, B:124:0x01eb, B:125:0x01ec, B:126:0x01f3, B:127:0x01f4, B:128:0x01fb, B:129:0x01fc), top: B:152:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x01dd A[Catch: all -> 0x01fd, TryCatch #8 {all -> 0x01fd, blocks: (B:109:0x01c7, B:111:0x01ce, B:113:0x01d2, B:115:0x01d6, B:116:0x01d9, B:118:0x01dd, B:120:0x01e1, B:122:0x01e5, B:123:0x01e6, B:124:0x01eb, B:125:0x01ec, B:126:0x01f3, B:127:0x01f4, B:128:0x01fb, B:129:0x01fc), top: B:152:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x01e1 A[Catch: all -> 0x01fd, TryCatch #8 {all -> 0x01fd, blocks: (B:109:0x01c7, B:111:0x01ce, B:113:0x01d2, B:115:0x01d6, B:116:0x01d9, B:118:0x01dd, B:120:0x01e1, B:122:0x01e5, B:123:0x01e6, B:124:0x01eb, B:125:0x01ec, B:126:0x01f3, B:127:0x01f4, B:128:0x01fb, B:129:0x01fc), top: B:152:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x01e5 A[Catch: all -> 0x01fd, TryCatch #8 {all -> 0x01fd, blocks: (B:109:0x01c7, B:111:0x01ce, B:113:0x01d2, B:115:0x01d6, B:116:0x01d9, B:118:0x01dd, B:120:0x01e1, B:122:0x01e5, B:123:0x01e6, B:124:0x01eb, B:125:0x01ec, B:126:0x01f3, B:127:0x01f4, B:128:0x01fb, B:129:0x01fc), top: B:152:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x01e6 A[Catch: all -> 0x01fd, TryCatch #8 {all -> 0x01fd, blocks: (B:109:0x01c7, B:111:0x01ce, B:113:0x01d2, B:115:0x01d6, B:116:0x01d9, B:118:0x01dd, B:120:0x01e1, B:122:0x01e5, B:123:0x01e6, B:124:0x01eb, B:125:0x01ec, B:126:0x01f3, B:127:0x01f4, B:128:0x01fb, B:129:0x01fc), top: B:152:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x01ec A[Catch: all -> 0x01fd, TryCatch #8 {all -> 0x01fd, blocks: (B:109:0x01c7, B:111:0x01ce, B:113:0x01d2, B:115:0x01d6, B:116:0x01d9, B:118:0x01dd, B:120:0x01e1, B:122:0x01e5, B:123:0x01e6, B:124:0x01eb, B:125:0x01ec, B:126:0x01f3, B:127:0x01f4, B:128:0x01fb, B:129:0x01fc), top: B:152:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x01f4 A[Catch: all -> 0x01fd, TryCatch #8 {all -> 0x01fd, blocks: (B:109:0x01c7, B:111:0x01ce, B:113:0x01d2, B:115:0x01d6, B:116:0x01d9, B:118:0x01dd, B:120:0x01e1, B:122:0x01e5, B:123:0x01e6, B:124:0x01eb, B:125:0x01ec, B:126:0x01f3, B:127:0x01f4, B:128:0x01fb, B:129:0x01fc), top: B:152:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x01fc A[Catch: all -> 0x01fd, TRY_LEAVE, TryCatch #8 {all -> 0x01fd, blocks: (B:109:0x01c7, B:111:0x01ce, B:113:0x01d2, B:115:0x01d6, B:116:0x01d9, B:118:0x01dd, B:120:0x01e1, B:122:0x01e5, B:123:0x01e6, B:124:0x01eb, B:125:0x01ec, B:126:0x01f3, B:127:0x01f4, B:128:0x01fb, B:129:0x01fc), top: B:152:0x01c7 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00cf A[Catch: all -> 0x007a, TryCatch #5 {all -> 0x007a, blocks: (B:52:0x0105, B:54:0x0109, B:32:0x0076, B:43:0x00c9, B:45:0x00cf, B:46:0x00d2), top: B:146:0x0076 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00d2 A[Catch: all -> 0x007a, TRY_LEAVE, TryCatch #5 {all -> 0x007a, blocks: (B:52:0x0105, B:54:0x0109, B:32:0x0076, B:43:0x00c9, B:45:0x00cf, B:46:0x00d2), top: B:146:0x0076 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:54:0x0109 A[Catch: all -> 0x007a, TRY_LEAVE, TryCatch #5 {all -> 0x007a, blocks: (B:52:0x0105, B:54:0x0109, B:32:0x0076, B:43:0x00c9, B:45:0x00cf, B:46:0x00d2), top: B:146:0x0076 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x011f A[Catch: all -> 0x014e, TryCatch #9 {all -> 0x014e, blocks: (B:60:0x0118, B:62:0x011f, B:64:0x0123, B:66:0x0127, B:67:0x012a, B:69:0x012e, B:71:0x0132, B:73:0x0136, B:74:0x0137, B:75:0x013c, B:76:0x013d, B:77:0x0144, B:78:0x0145, B:79:0x014c, B:80:0x014d), top: B:153:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0123 A[Catch: all -> 0x014e, TryCatch #9 {all -> 0x014e, blocks: (B:60:0x0118, B:62:0x011f, B:64:0x0123, B:66:0x0127, B:67:0x012a, B:69:0x012e, B:71:0x0132, B:73:0x0136, B:74:0x0137, B:75:0x013c, B:76:0x013d, B:77:0x0144, B:78:0x0145, B:79:0x014c, B:80:0x014d), top: B:153:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x012e A[Catch: all -> 0x014e, TryCatch #9 {all -> 0x014e, blocks: (B:60:0x0118, B:62:0x011f, B:64:0x0123, B:66:0x0127, B:67:0x012a, B:69:0x012e, B:71:0x0132, B:73:0x0136, B:74:0x0137, B:75:0x013c, B:76:0x013d, B:77:0x0144, B:78:0x0145, B:79:0x014c, B:80:0x014d), top: B:153:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0132 A[Catch: all -> 0x014e, TryCatch #9 {all -> 0x014e, blocks: (B:60:0x0118, B:62:0x011f, B:64:0x0123, B:66:0x0127, B:67:0x012a, B:69:0x012e, B:71:0x0132, B:73:0x0136, B:74:0x0137, B:75:0x013c, B:76:0x013d, B:77:0x0144, B:78:0x0145, B:79:0x014c, B:80:0x014d), top: B:153:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0136 A[Catch: all -> 0x014e, TryCatch #9 {all -> 0x014e, blocks: (B:60:0x0118, B:62:0x011f, B:64:0x0123, B:66:0x0127, B:67:0x012a, B:69:0x012e, B:71:0x0132, B:73:0x0136, B:74:0x0137, B:75:0x013c, B:76:0x013d, B:77:0x0144, B:78:0x0145, B:79:0x014c, B:80:0x014d), top: B:153:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0137 A[Catch: all -> 0x014e, TryCatch #9 {all -> 0x014e, blocks: (B:60:0x0118, B:62:0x011f, B:64:0x0123, B:66:0x0127, B:67:0x012a, B:69:0x012e, B:71:0x0132, B:73:0x0136, B:74:0x0137, B:75:0x013c, B:76:0x013d, B:77:0x0144, B:78:0x0145, B:79:0x014c, B:80:0x014d), top: B:153:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x013d A[Catch: all -> 0x014e, TryCatch #9 {all -> 0x014e, blocks: (B:60:0x0118, B:62:0x011f, B:64:0x0123, B:66:0x0127, B:67:0x012a, B:69:0x012e, B:71:0x0132, B:73:0x0136, B:74:0x0137, B:75:0x013c, B:76:0x013d, B:77:0x0144, B:78:0x0145, B:79:0x014c, B:80:0x014d), top: B:153:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0145 A[Catch: all -> 0x014e, TryCatch #9 {all -> 0x014e, blocks: (B:60:0x0118, B:62:0x011f, B:64:0x0123, B:66:0x0127, B:67:0x012a, B:69:0x012e, B:71:0x0132, B:73:0x0136, B:74:0x0137, B:75:0x013c, B:76:0x013d, B:77:0x0144, B:78:0x0145, B:79:0x014c, B:80:0x014d), top: B:153:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:80:0x014d A[Catch: all -> 0x014e, TRY_LEAVE, TryCatch #9 {all -> 0x014e, blocks: (B:60:0x0118, B:62:0x011f, B:64:0x0123, B:66:0x0127, B:67:0x012a, B:69:0x012e, B:71:0x0132, B:73:0x0136, B:74:0x0137, B:75:0x013c, B:76:0x013d, B:77:0x0144, B:78:0x0145, B:79:0x014c, B:80:0x014d), top: B:153:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x017e A[Catch: all -> 0x005b, TryCatch #6 {all -> 0x005b, blocks: (B:101:0x01b4, B:103:0x01b8, B:22:0x0056, B:92:0x0178, B:94:0x017e, B:95:0x0181), top: B:148:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x0181 A[Catch: all -> 0x005b, TRY_LEAVE, TryCatch #6 {all -> 0x005b, blocks: (B:101:0x01b4, B:103:0x01b8, B:22:0x0056, B:92:0x0178, B:94:0x017e, B:95:0x0181), top: B:148:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x01a2  */
    public static Object a(n72 n72Var, Continuation continuation) {
        l72 l72Var;
        rr3 rr3VarA;
        Closeable closeable;
        rr3 rr3Var;
        rr3 rr3VarA2;
        Closeable closeable2;
        rr3 rr3Var2;
        Closeable closeable3;
        v01 v01Var;
        r31 r31Var;
        d72 d72Var;
        nr1 nr1VarC;
        n72 n72Var2;
        r31 r31Var2;
        Object q01Var;
        rr3 rr3Var3;
        Closeable closeable4;
        Closeable closeable5;
        v01 v01Var2;
        r31 r31Var3;
        d72 d72Var2;
        nr1 nr1VarC2;
        n72 n72Var3;
        r31 r31Var4;
        Object q01Var2;
        rr3 rr3Var4;
        Closeable closeable6;
        n72 n72Var4 = n72Var;
        if (continuation instanceof l72) {
            l72Var = (l72) continuation;
            int i = l72Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                l72Var.g = i - Integer.MIN_VALUE;
            } else {
                l72Var = new l72(n72Var4, continuation);
            }
        } else {
            l72Var = new l72(n72Var4, continuation);
        }
        Object objA = l72Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = l72Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            g83 g83Var = n72Var4.a;
            s11 s11Var = s11.CUI_NAME_NATIVE_1_5_CLICK_WEBVIEW_CREATE;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    iz3 iz3Var = n72Var4.b;
                    v14 v14Var = new v14(u14.DEFAULT, 0, 0, 14);
                    l72Var.a = n72Var4;
                    l72Var.b = rr3VarA2;
                    l72Var.c = rr3VarA2;
                    l72Var.g = 1;
                    objA = iz3Var.a(v14Var, null, true, l72Var);
                    if (objA != coroutine_suspended) {
                        rr3Var2 = rr3VarA2;
                        closeable3 = rr3VarA2;
                        v01Var = (v01) objA;
                        if (!(v01Var instanceof i01)) {
                            q01Var = (i01) v01Var;
                            closeable4 = closeable3;
                            rr3Var3 = rr3Var2;
                        } else {
                            Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                            r31Var = (r31) ((q01) v01Var).b;
                            d72Var = n72Var4.c;
                            nr1VarC = r31Var.c();
                            l72Var.a = n72Var4;
                            l72Var.b = rr3Var2;
                            l72Var.c = closeable3;
                            l72Var.d = r31Var;
                            l72Var.g = 2;
                            if (d72Var.a(nr1VarC, l72Var) != coroutine_suspended) {
                                n72Var2 = n72Var4;
                                r31Var2 = r31Var;
                                closeable2 = closeable3;
                                rr3VarA2 = rr3Var2;
                                r31Var2.setVisibility(8);
                                n72Var2.d = r31Var2;
                                q01Var = new q01(r31Var2);
                                rr3Var3 = rr3VarA2;
                                closeable4 = closeable2;
                            }
                        }
                        if (q01Var instanceof i01) {
                            xs3.a((i01) q01Var, false);
                        }
                        CloseableKt.closeFinally(closeable4, null);
                        return q01Var;
                    }
                } catch (Throwable th) {
                    th = th;
                    closeable2 = rr3VarA2;
                    rr3VarA2.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA2.a(th);
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
                rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    iz3 iz3Var2 = n72Var4.b;
                    v14 v14Var2 = new v14(u14.DEFAULT, 0, 0, 14);
                    l72Var.a = n72Var4;
                    l72Var.b = rr3VarA;
                    l72Var.c = rr3VarA;
                    l72Var.g = 3;
                    objA = iz3Var2.a(v14Var2, null, true, l72Var);
                    if (objA != coroutine_suspended) {
                        rr3Var = rr3VarA;
                        closeable5 = rr3VarA;
                        v01Var2 = (v01) objA;
                        if (!(v01Var2 instanceof i01)) {
                            q01Var2 = (i01) v01Var2;
                            closeable6 = closeable5;
                            rr3Var4 = rr3Var;
                        } else {
                            Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                            r31Var3 = (r31) ((q01) v01Var2).b;
                            d72Var2 = n72Var4.c;
                            nr1VarC2 = r31Var3.c();
                            l72Var.a = n72Var4;
                            l72Var.b = rr3Var;
                            l72Var.c = closeable5;
                            l72Var.d = r31Var3;
                            l72Var.g = 4;
                            if (d72Var2.a(nr1VarC2, l72Var) != coroutine_suspended) {
                                n72Var3 = n72Var4;
                                r31Var4 = r31Var3;
                                closeable = closeable5;
                                rr3VarA = rr3Var;
                                r31Var4.setVisibility(8);
                                n72Var3.d = r31Var4;
                                q01Var2 = new q01(r31Var4);
                                rr3Var4 = rr3VarA;
                                closeable6 = closeable;
                            }
                        }
                        if (q01Var2 instanceof i01) {
                            xs3.a((i01) q01Var2, false);
                        }
                        CloseableKt.closeFinally(closeable6, null);
                        return q01Var2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    closeable = rr3VarA;
                    rr3VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA.a(th);
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
        if (i2 == 1) {
            closeable4 = l72Var.c;
            rr3Var3 = l72Var.b;
            n72Var4 = l72Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objA);
                closeable3 = closeable4;
                rr3Var2 = rr3Var3;
                v01Var = (v01) objA;
                if (!(v01Var instanceof i01)) {
                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    r31Var = (r31) ((q01) v01Var).b;
                    d72Var = n72Var4.c;
                    nr1VarC = r31Var.c();
                    l72Var.a = n72Var4;
                    l72Var.b = rr3Var2;
                    l72Var.c = closeable3;
                    l72Var.d = r31Var;
                    l72Var.g = 2;
                    if (d72Var.a(nr1VarC, l72Var) != coroutine_suspended) {
                        n72Var2 = n72Var4;
                        r31Var2 = r31Var;
                        closeable2 = closeable3;
                        rr3VarA2 = rr3Var2;
                        r31Var2.setVisibility(8);
                        n72Var2.d = r31Var2;
                        q01Var = new q01(r31Var2);
                        rr3Var3 = rr3VarA2;
                        closeable4 = closeable2;
                    }
                    return coroutine_suspended;
                }
                q01Var = (i01) v01Var;
                closeable4 = closeable3;
                rr3Var3 = rr3Var2;
                if (q01Var instanceof i01) {
                    xs3.a((i01) q01Var, false);
                }
                CloseableKt.closeFinally(closeable4, null);
                return q01Var;
            } catch (Throwable th3) {
                th = th3;
                closeable2 = closeable4;
                rr3VarA2 = rr3Var3;
                rr3VarA2.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    rr3VarA2.a(th);
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
        if (i2 == 2) {
            r31Var2 = l72Var.d;
            closeable2 = l72Var.c;
            rr3VarA2 = l72Var.b;
            n72Var2 = l72Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objA);
                closeable2 = closeable2;
                rr3VarA2 = rr3VarA2;
                r31Var2.setVisibility(8);
                n72Var2.d = r31Var2;
                q01Var = new q01(r31Var2);
                rr3Var3 = rr3VarA2;
                closeable4 = closeable2;
                if (q01Var instanceof i01) {
                    xs3.a((i01) q01Var, false);
                }
                CloseableKt.closeFinally(closeable4, null);
                return q01Var;
            } catch (Throwable th4) {
                th = th4;
                try {
                    rr3VarA2.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA2.a(th);
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
                        CloseableKt.closeFinally(closeable2, th5);
                        throw th6;
                    }
                }
            }
        }
        if (i2 != 3) {
            if (i2 != 4) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            r31Var4 = l72Var.d;
            closeable = l72Var.c;
            rr3VarA = l72Var.b;
            n72Var3 = l72Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objA);
                closeable = closeable;
                rr3VarA = rr3VarA;
                r31Var4.setVisibility(8);
                n72Var3.d = r31Var4;
                q01Var2 = new q01(r31Var4);
                rr3Var4 = rr3VarA;
                closeable6 = closeable;
                if (q01Var2 instanceof i01) {
                    xs3.a((i01) q01Var2, false);
                }
                CloseableKt.closeFinally(closeable6, null);
                return q01Var2;
            } catch (Throwable th7) {
                th = th7;
                try {
                    rr3VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA.a(th);
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
                        CloseableKt.closeFinally(closeable, th8);
                        throw th9;
                    }
                }
            }
        }
        closeable6 = l72Var.c;
        rr3Var4 = l72Var.b;
        n72Var4 = l72Var.a;
        try {
            p005kotlin.ResultKt.throwOnFailure(objA);
            closeable5 = closeable6;
            rr3Var = rr3Var4;
            v01Var2 = (v01) objA;
            if (!(v01Var2 instanceof i01)) {
                Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                r31Var3 = (r31) ((q01) v01Var2).b;
                d72Var2 = n72Var4.c;
                nr1VarC2 = r31Var3.c();
                l72Var.a = n72Var4;
                l72Var.b = rr3Var;
                l72Var.c = closeable5;
                l72Var.d = r31Var3;
                l72Var.g = 4;
                if (d72Var2.a(nr1VarC2, l72Var) != coroutine_suspended) {
                    n72Var3 = n72Var4;
                    r31Var4 = r31Var3;
                    closeable = closeable5;
                    rr3VarA = rr3Var;
                    r31Var4.setVisibility(8);
                    n72Var3.d = r31Var4;
                    q01Var2 = new q01(r31Var4);
                    rr3Var4 = rr3VarA;
                    closeable6 = closeable;
                }
                return coroutine_suspended;
            }
            q01Var2 = (i01) v01Var2;
            closeable6 = closeable5;
            rr3Var4 = rr3Var;
            if (q01Var2 instanceof i01) {
                xs3.a((i01) q01Var2, false);
            }
            CloseableKt.closeFinally(closeable6, null);
            return q01Var2;
        } catch (Throwable th10) {
            th = th10;
            closeable = closeable6;
            rr3VarA = rr3Var4;
            rr3VarA.b(th);
            if (th instanceof v24) {
                throw th;
            }
            if (!(th instanceof TimeoutCancellationException)) {
                rr3VarA.a(th);
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object b(n72 n72Var, Continuation continuation) {
        m72 m72Var;
        if (continuation instanceof m72) {
            m72Var = (m72) continuation;
            int i = m72Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                m72Var.d = i - Integer.MIN_VALUE;
            } else {
                m72Var = new m72(n72Var, continuation);
            }
        } else {
            m72Var = new m72(n72Var, continuation);
        }
        Object obj = m72Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = m72Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            r31 r31Var = n72Var.d;
            if (r31Var != null) {
                m72Var.a = n72Var;
                m72Var.d = 1;
                if (r31Var.a(m72Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            n72Var = m72Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        n72Var.d = null;
        return p005kotlin.Unit.INSTANCE;
    }
}
