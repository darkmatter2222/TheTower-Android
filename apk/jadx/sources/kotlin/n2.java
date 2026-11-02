package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public abstract class n2 implements j2 {
    public final ks3 a;
    public final BaseRequest b;
    public final j53 c;
    public final long d;
    public final int e;
    public final i2 f;
    public final zy g;
    public final ec3 h;
    public final String i;
    public final eo2 j;
    public final t91 k;

    public /* synthetic */ n2(ks3 ks3Var, BaseRequest baseRequest, j53 j53Var, long j, int i, i2 i2Var, zy zyVar, ec3 ec3Var, String str, eo2 eo2Var) {
        this(ks3Var, baseRequest, j53Var, j, i, i2Var, zyVar, ec3Var, str, eo2Var, new t91());
    }

    public n2(ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String uniqueRenderId, eo2 placementIdWrapper, t91 impressionDataWrapper) {
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(uniqueRenderId, "uniqueRenderId");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        Intrinsics.checkNotNullParameter(impressionDataWrapper, "impressionDataWrapper");
        this.a = traceMetaSet;
        this.b = baseRequest;
        this.c = requestType;
        this.d = j;
        this.e = i;
        this.f = adConfiguration;
        this.g = commonConfiguration;
        this.h = serverTransaction;
        this.i = uniqueRenderId;
        this.j = placementIdWrapper;
        this.k = impressionDataWrapper;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00c5 A[Catch: all -> 0x0096, TRY_LEAVE, TryCatch #1 {all -> 0x0096, blocks: (B:26:0x0093, B:35:0x00c1, B:37:0x00c5, B:34:0x009e), top: B:71:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00dc A[Catch: all -> 0x010b, TryCatch #3 {all -> 0x010b, blocks: (B:43:0x00d5, B:45:0x00dc, B:47:0x00e0, B:49:0x00e4, B:50:0x00e7, B:52:0x00eb, B:54:0x00ef, B:56:0x00f3, B:57:0x00f4, B:58:0x00f9, B:59:0x00fa, B:60:0x0101, B:61:0x0102, B:62:0x0109, B:63:0x010a), top: B:73:0x00d5 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00eb A[Catch: all -> 0x010b, TryCatch #3 {all -> 0x010b, blocks: (B:43:0x00d5, B:45:0x00dc, B:47:0x00e0, B:49:0x00e4, B:50:0x00e7, B:52:0x00eb, B:54:0x00ef, B:56:0x00f3, B:57:0x00f4, B:58:0x00f9, B:59:0x00fa, B:60:0x0101, B:61:0x0102, B:62:0x0109, B:63:0x010a), top: B:73:0x00d5 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00ef A[Catch: all -> 0x010b, TryCatch #3 {all -> 0x010b, blocks: (B:43:0x00d5, B:45:0x00dc, B:47:0x00e0, B:49:0x00e4, B:50:0x00e7, B:52:0x00eb, B:54:0x00ef, B:56:0x00f3, B:57:0x00f4, B:58:0x00f9, B:59:0x00fa, B:60:0x0101, B:61:0x0102, B:62:0x0109, B:63:0x010a), top: B:73:0x00d5 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00f3 A[Catch: all -> 0x010b, TryCatch #3 {all -> 0x010b, blocks: (B:43:0x00d5, B:45:0x00dc, B:47:0x00e0, B:49:0x00e4, B:50:0x00e7, B:52:0x00eb, B:54:0x00ef, B:56:0x00f3, B:57:0x00f4, B:58:0x00f9, B:59:0x00fa, B:60:0x0101, B:61:0x0102, B:62:0x0109, B:63:0x010a), top: B:73:0x00d5 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00f4 A[Catch: all -> 0x010b, TryCatch #3 {all -> 0x010b, blocks: (B:43:0x00d5, B:45:0x00dc, B:47:0x00e0, B:49:0x00e4, B:50:0x00e7, B:52:0x00eb, B:54:0x00ef, B:56:0x00f3, B:57:0x00f4, B:58:0x00f9, B:59:0x00fa, B:60:0x0101, B:61:0x0102, B:62:0x0109, B:63:0x010a), top: B:73:0x00d5 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00fa A[Catch: all -> 0x010b, TryCatch #3 {all -> 0x010b, blocks: (B:43:0x00d5, B:45:0x00dc, B:47:0x00e0, B:49:0x00e4, B:50:0x00e7, B:52:0x00eb, B:54:0x00ef, B:56:0x00f3, B:57:0x00f4, B:58:0x00f9, B:59:0x00fa, B:60:0x0101, B:61:0x0102, B:62:0x0109, B:63:0x010a), top: B:73:0x00d5 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0102 A[Catch: all -> 0x010b, TryCatch #3 {all -> 0x010b, blocks: (B:43:0x00d5, B:45:0x00dc, B:47:0x00e0, B:49:0x00e4, B:50:0x00e7, B:52:0x00eb, B:54:0x00ef, B:56:0x00f3, B:57:0x00f4, B:58:0x00f9, B:59:0x00fa, B:60:0x0101, B:61:0x0102, B:62:0x0109, B:63:0x010a), top: B:73:0x00d5 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x010a A[Catch: all -> 0x010b, TRY_LEAVE, TryCatch #3 {all -> 0x010b, blocks: (B:43:0x00d5, B:45:0x00dc, B:47:0x00e0, B:49:0x00e4, B:50:0x00e7, B:52:0x00eb, B:54:0x00ef, B:56:0x00f3, B:57:0x00f4, B:58:0x00f9, B:59:0x00fa, B:60:0x0101, B:61:0x0102, B:62:0x0109, B:63:0x010a), top: B:73:0x00d5 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v7, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v17, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v23, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    public static /* synthetic */ Object a(n2 n2Var, String str, int i, Continuation continuation) {
        l2 l2Var;
        TimeoutCancellationException th;
        ?? r8;
        ?? A;
        TimeoutCancellationException e;
        ?? r10;
        v01 r01Var;
        if (continuation instanceof l2) {
            l2Var = (l2) continuation;
            int i2 = l2Var.f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                l2Var.f = i2 - Integer.MIN_VALUE;
            } else {
                l2Var = new l2(n2Var, continuation);
            }
        } else {
            l2Var = new l2(n2Var, continuation);
        }
        ?? r11 = l2Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = l2Var.f;
        try {
            if (i3 == 0) {
                p005kotlin.ResultKt.throwOnFailure(r11);
                s11 s11Var = s11.CUI_NAME_ADREQUEST_MEDIATION_ADAPTER;
                WeakHashMap weakHashMap = hs3.a;
                A = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    hs3.a().a(n2Var.a);
                    m33 m33Var = n2Var.a.c;
                    m33Var.a = n2Var.i;
                    m33Var.c = str;
                    m33Var.b = i;
                    i2 i2Var = n2Var.f;
                    m33Var.d = i2Var.f;
                    m33Var.g = i2Var.f();
                    try {
                        long jE = n2Var.f.e();
                        m2 m2Var = new m2(n2Var, null);
                        l2Var.a = n2Var;
                        l2Var.b = A;
                        l2Var.c = A;
                        l2Var.f = 1;
                        Object objM4522withTimeoutKLykuaI = TimeoutKt.m4522withTimeoutKLykuaI(jE, m2Var, l2Var);
                        if (objM4522withTimeoutKLykuaI == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        r10 = objM4522withTimeoutKLykuaI;
                        str = A;
                        A = A;
                        r01Var = (v01) r10;
                        str = str;
                        r11 = A;
                    } catch (TimeoutCancellationException e2) {
                        e = e2;
                        str = A;
                        r01Var = new r01("Timed out while waiting " + Duration.m4407toStringimpl(n2Var.f.e()) + " for rendering.", e);
                        str = str;
                        r11 = A;
                        if (r01Var instanceof i01) {
                            xs3.a((i01) r01Var, false);
                        }
                        CloseableKt.closeFinally(r11, null);
                        return r01Var;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    r8 = A;
                    str = r8;
                    str.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        str.a(th);
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
                if (i3 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                r8 = l2Var.c;
                str = l2Var.b;
                n2 n2Var2 = l2Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(r11);
                    A = r8;
                    n2Var = n2Var2;
                    r10 = r11;
                    str = str;
                    try {
                        r01Var = (v01) r10;
                        str = str;
                        r11 = A;
                    } catch (TimeoutCancellationException e3) {
                        e = e3;
                        r01Var = new r01("Timed out while waiting " + Duration.m4407toStringimpl(n2Var.f.e()) + " for rendering.", e);
                        str = str;
                        r11 = A;
                    }
                } catch (TimeoutCancellationException e4) {
                    A = r8;
                    n2Var = n2Var2;
                    e = e4;
                    r01Var = new r01("Timed out while waiting " + Duration.m4407toStringimpl(n2Var.f.e()) + " for rendering.", e);
                    str = str;
                    r11 = A;
                    if (r01Var instanceof i01) {
                        xs3.a((i01) r01Var, false);
                    }
                    CloseableKt.closeFinally(r11, null);
                    return r01Var;
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        str.b(th);
                        if (!(th instanceof v24)) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            str.a(th);
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
                            CloseableKt.closeFinally(r8, th4);
                            throw th5;
                        }
                    }
                }
            }
            if (r01Var instanceof i01) {
                xs3.a((i01) r01Var, false);
            }
            CloseableKt.closeFinally(r11, null);
            return r01Var;
        } catch (Throwable th6) {
            th = th6;
            r8 = r11;
        }
    }

    public final w1 a(w1 componentBuilder, boolean z) {
        Intrinsics.checkNotNullParameter(componentBuilder, "componentBuilder");
        return (w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) ((w1) componentBuilder.a(this.f)).a(this.g)).a(this.h)).a(this.a.a)).a(this.a.b)).a(this.a.c)).a(this.a.d)).a(this.c)).a(this.b)).a(this.d)).a(z)).a(this.e)).a(this.j)).a(this.k);
    }

    @Override // kotlin.j2
    public final Object a(String str, int i, Continuation continuation) {
        return a(this, str, i, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x008c A[Catch: all -> 0x0041, TRY_LEAVE, TryCatch #1 {all -> 0x0041, blocks: (B:19:0x003d, B:37:0x0082, B:39:0x008c), top: B:89:0x003d }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00a2 A[Catch: all -> 0x00d1, TryCatch #0 {all -> 0x00d1, blocks: (B:44:0x009b, B:46:0x00a2, B:48:0x00a6, B:50:0x00aa, B:51:0x00ad, B:53:0x00b1, B:55:0x00b5, B:57:0x00b9, B:58:0x00ba, B:59:0x00bf, B:60:0x00c0, B:61:0x00c7, B:62:0x00c8, B:63:0x00cf, B:64:0x00d0), top: B:88:0x009b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00b1 A[Catch: all -> 0x00d1, TryCatch #0 {all -> 0x00d1, blocks: (B:44:0x009b, B:46:0x00a2, B:48:0x00a6, B:50:0x00aa, B:51:0x00ad, B:53:0x00b1, B:55:0x00b5, B:57:0x00b9, B:58:0x00ba, B:59:0x00bf, B:60:0x00c0, B:61:0x00c7, B:62:0x00c8, B:63:0x00cf, B:64:0x00d0), top: B:88:0x009b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00b5 A[Catch: all -> 0x00d1, TryCatch #0 {all -> 0x00d1, blocks: (B:44:0x009b, B:46:0x00a2, B:48:0x00a6, B:50:0x00aa, B:51:0x00ad, B:53:0x00b1, B:55:0x00b5, B:57:0x00b9, B:58:0x00ba, B:59:0x00bf, B:60:0x00c0, B:61:0x00c7, B:62:0x00c8, B:63:0x00cf, B:64:0x00d0), top: B:88:0x009b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00b9 A[Catch: all -> 0x00d1, TryCatch #0 {all -> 0x00d1, blocks: (B:44:0x009b, B:46:0x00a2, B:48:0x00a6, B:50:0x00aa, B:51:0x00ad, B:53:0x00b1, B:55:0x00b5, B:57:0x00b9, B:58:0x00ba, B:59:0x00bf, B:60:0x00c0, B:61:0x00c7, B:62:0x00c8, B:63:0x00cf, B:64:0x00d0), top: B:88:0x009b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00ba A[Catch: all -> 0x00d1, TryCatch #0 {all -> 0x00d1, blocks: (B:44:0x009b, B:46:0x00a2, B:48:0x00a6, B:50:0x00aa, B:51:0x00ad, B:53:0x00b1, B:55:0x00b5, B:57:0x00b9, B:58:0x00ba, B:59:0x00bf, B:60:0x00c0, B:61:0x00c7, B:62:0x00c8, B:63:0x00cf, B:64:0x00d0), top: B:88:0x009b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00c0 A[Catch: all -> 0x00d1, TryCatch #0 {all -> 0x00d1, blocks: (B:44:0x009b, B:46:0x00a2, B:48:0x00a6, B:50:0x00aa, B:51:0x00ad, B:53:0x00b1, B:55:0x00b5, B:57:0x00b9, B:58:0x00ba, B:59:0x00bf, B:60:0x00c0, B:61:0x00c7, B:62:0x00c8, B:63:0x00cf, B:64:0x00d0), top: B:88:0x009b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x00c8 A[Catch: all -> 0x00d1, TryCatch #0 {all -> 0x00d1, blocks: (B:44:0x009b, B:46:0x00a2, B:48:0x00a6, B:50:0x00aa, B:51:0x00ad, B:53:0x00b1, B:55:0x00b5, B:57:0x00b9, B:58:0x00ba, B:59:0x00bf, B:60:0x00c0, B:61:0x00c7, B:62:0x00c8, B:63:0x00cf, B:64:0x00d0), top: B:88:0x009b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00d0 A[Catch: all -> 0x00d1, TRY_LEAVE, TryCatch #0 {all -> 0x00d1, blocks: (B:44:0x009b, B:46:0x00a2, B:48:0x00a6, B:50:0x00aa, B:51:0x00ad, B:53:0x00b1, B:55:0x00b5, B:57:0x00b9, B:58:0x00ba, B:59:0x00bf, B:60:0x00c0, B:61:0x00c7, B:62:0x00c8, B:63:0x00cf, B:64:0x00d0), top: B:88:0x009b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00de, code lost:
    
        if (r7 == r1) goto L72;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v24, types: [java.lang.CharSequence, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(p005kotlin.coroutines.Continuation r7) {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.n2.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public abstract Object a(boolean z, Continuation continuation);

    public final i2 c() {
        return this.f;
    }

    public final BaseRequest d() {
        return this.b;
    }

    public final j53 e() {
        return this.c;
    }

    public final ec3 f() {
        return this.h;
    }
}
