package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.io.Closeable;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlin.au;
import kotlin.b01;
import kotlin.bu;
import kotlin.ck3;
import kotlin.df3;
import kotlin.dk3;
import kotlin.ej1;
import kotlin.ex0;
import kotlin.gh3;
import kotlin.hs3;
import kotlin.i01;
import kotlin.i21;
import kotlin.j01;
import kotlin.lg3;
import kotlin.oe3;
import kotlin.q01;
import kotlin.q11;
import kotlin.r01;
import kotlin.rr3;
import kotlin.s11;
import kotlin.sh3;
import kotlin.v01;
import kotlin.v24;
import kotlin.w01;
import kotlin.wz0;
import kotlin.xs3;
import kotlin.yj3;
import kotlin.zj3;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.comparisons.ComparisonsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes3.dex */
public final class a {
    public final Set a;
    public final CoroutineScope b;
    public final CoroutineScope c;
    public final ex0 d;
    public final BaseRequest e;
    public final ej1 f;

    public a(Set signalSourceConfigs, CoroutineScope uiScope, CoroutineScope backgroundScope, ex0 flags, BaseRequest baseRequest, ej1 internalAdRequestEventEmitter) {
        Intrinsics.checkNotNullParameter(signalSourceConfigs, "signalSourceConfigs");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        this.a = signalSourceConfigs;
        this.b = uiScope;
        this.c = backgroundScope;
        this.d = flags;
        this.e = baseRequest;
        this.f = internalAdRequestEventEmitter;
    }

    /* JADX WARN: Code duplicated, block: B:114:0x022c A[Catch: Exception -> 0x0084, TRY_LEAVE, TryCatch #6 {Exception -> 0x0084, blocks: (B:31:0x007f, B:78:0x01b6, B:80:0x01ba, B:84:0x01e9, B:112:0x0228, B:113:0x022b, B:114:0x022c, B:70:0x0187, B:87:0x01ee, B:89:0x01f5, B:91:0x01f9, B:93:0x01fd, B:94:0x0200, B:96:0x0204, B:98:0x0208, B:100:0x020c, B:101:0x020d, B:102:0x0212, B:103:0x0213, B:104:0x021a, B:105:0x021b, B:106:0x0222, B:107:0x0223, B:110:0x0226, B:81:0x01c6, B:83:0x01e4), top: B:163:0x002e, inners: #1, #2, #7 }] */
    /* JADX WARN: Code duplicated, block: B:210:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x0194 A[Catch: Exception -> 0x031d, TRY_LEAVE, TryCatch #0 {Exception -> 0x031d, blocks: (B:72:0x018e, B:74:0x0194), top: B:158:0x018e }] */
    /* JADX WARN: Code duplicated, block: B:77:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:80:0x01ba A[Catch: Exception -> 0x0084, TRY_LEAVE, TryCatch #6 {Exception -> 0x0084, blocks: (B:31:0x007f, B:78:0x01b6, B:80:0x01ba, B:84:0x01e9, B:112:0x0228, B:113:0x022b, B:114:0x022c, B:70:0x0187, B:87:0x01ee, B:89:0x01f5, B:91:0x01f9, B:93:0x01fd, B:94:0x0200, B:96:0x0204, B:98:0x0208, B:100:0x020c, B:101:0x020d, B:102:0x0212, B:103:0x0213, B:104:0x021a, B:105:0x021b, B:106:0x0222, B:107:0x0223, B:110:0x0226, B:81:0x01c6, B:83:0x01e4), top: B:163:0x002e, inners: #1, #2, #7 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x01e4 A[Catch: all -> 0x01ed, TRY_LEAVE, TryCatch #7 {all -> 0x01ed, blocks: (B:81:0x01c6, B:83:0x01e4), top: B:164:0x01c6, outer: #6 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x01b2 -> B:78:0x01b6). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(com.google.android.libraries.ads.mobile.sdk.internal.signals.a r21, p005kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instruction units count: 808
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.libraries.ads.mobile.sdk.internal.signals.a.a(com.google.android.libraries.ads.mobile.sdk.internal.signals.a, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:38:0x009f  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d5 A[Catch: all -> 0x0104, TryCatch #1 {all -> 0x0104, blocks: (B:57:0x00ce, B:59:0x00d5, B:61:0x00d9, B:63:0x00dd, B:64:0x00e0, B:66:0x00e4, B:68:0x00e8, B:70:0x00ec, B:71:0x00ed, B:72:0x00f2, B:73:0x00f3, B:74:0x00fa, B:75:0x00fb, B:76:0x0102, B:77:0x0103), top: B:85:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00d9 A[Catch: all -> 0x0104, TryCatch #1 {all -> 0x0104, blocks: (B:57:0x00ce, B:59:0x00d5, B:61:0x00d9, B:63:0x00dd, B:64:0x00e0, B:66:0x00e4, B:68:0x00e8, B:70:0x00ec, B:71:0x00ed, B:72:0x00f2, B:73:0x00f3, B:74:0x00fa, B:75:0x00fb, B:76:0x0102, B:77:0x0103), top: B:85:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00e4 A[Catch: all -> 0x0104, TryCatch #1 {all -> 0x0104, blocks: (B:57:0x00ce, B:59:0x00d5, B:61:0x00d9, B:63:0x00dd, B:64:0x00e0, B:66:0x00e4, B:68:0x00e8, B:70:0x00ec, B:71:0x00ed, B:72:0x00f2, B:73:0x00f3, B:74:0x00fa, B:75:0x00fb, B:76:0x0102, B:77:0x0103), top: B:85:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:68:0x00e8 A[Catch: all -> 0x0104, TryCatch #1 {all -> 0x0104, blocks: (B:57:0x00ce, B:59:0x00d5, B:61:0x00d9, B:63:0x00dd, B:64:0x00e0, B:66:0x00e4, B:68:0x00e8, B:70:0x00ec, B:71:0x00ed, B:72:0x00f2, B:73:0x00f3, B:74:0x00fa, B:75:0x00fb, B:76:0x0102, B:77:0x0103), top: B:85:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:70:0x00ec A[Catch: all -> 0x0104, TryCatch #1 {all -> 0x0104, blocks: (B:57:0x00ce, B:59:0x00d5, B:61:0x00d9, B:63:0x00dd, B:64:0x00e0, B:66:0x00e4, B:68:0x00e8, B:70:0x00ec, B:71:0x00ed, B:72:0x00f2, B:73:0x00f3, B:74:0x00fa, B:75:0x00fb, B:76:0x0102, B:77:0x0103), top: B:85:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:71:0x00ed A[Catch: all -> 0x0104, TryCatch #1 {all -> 0x0104, blocks: (B:57:0x00ce, B:59:0x00d5, B:61:0x00d9, B:63:0x00dd, B:64:0x00e0, B:66:0x00e4, B:68:0x00e8, B:70:0x00ec, B:71:0x00ed, B:72:0x00f2, B:73:0x00f3, B:74:0x00fa, B:75:0x00fb, B:76:0x0102, B:77:0x0103), top: B:85:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f3 A[Catch: all -> 0x0104, TryCatch #1 {all -> 0x0104, blocks: (B:57:0x00ce, B:59:0x00d5, B:61:0x00d9, B:63:0x00dd, B:64:0x00e0, B:66:0x00e4, B:68:0x00e8, B:70:0x00ec, B:71:0x00ed, B:72:0x00f2, B:73:0x00f3, B:74:0x00fa, B:75:0x00fb, B:76:0x0102, B:77:0x0103), top: B:85:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:75:0x00fb A[Catch: all -> 0x0104, TryCatch #1 {all -> 0x0104, blocks: (B:57:0x00ce, B:59:0x00d5, B:61:0x00d9, B:63:0x00dd, B:64:0x00e0, B:66:0x00e4, B:68:0x00e8, B:70:0x00ec, B:71:0x00ed, B:72:0x00f2, B:73:0x00f3, B:74:0x00fa, B:75:0x00fb, B:76:0x0102, B:77:0x0103), top: B:85:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0103 A[Catch: all -> 0x0104, TRY_LEAVE, TryCatch #1 {all -> 0x0104, blocks: (B:57:0x00ce, B:59:0x00d5, B:61:0x00d9, B:63:0x00dd, B:64:0x00e0, B:66:0x00e4, B:68:0x00e8, B:70:0x00ec, B:71:0x00ed, B:72:0x00f2, B:73:0x00f3, B:74:0x00fa, B:75:0x00fb, B:76:0x0102, B:77:0x0103), top: B:85:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2, types: [ads_mobile_sdk.yj3, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r0v21, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v12, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v18, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v5 */
    public static /* synthetic */ Object b(a aVar, Continuation continuation) {
        ?? yj3Var;
        TimeoutCancellationException th;
        ?? r2;
        ?? r9;
        ?? r0;
        ?? r1;
        ?? r6;
        v01 v01Var;
        ej1 ej1Var;
        v01 r01Var;
        if (continuation instanceof yj3) {
            yj3 yj3Var2 = (yj3) continuation;
            int i = yj3Var2.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                yj3Var2.f = i - Integer.MIN_VALUE;
                yj3Var = yj3Var2;
            } else {
                yj3Var = new yj3(aVar, continuation);
            }
        } else {
            yj3Var = new yj3(aVar, continuation);
        }
        Object obj = yj3Var.d;
        ?? coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = yj3Var.f;
        try {
            if (i2 != 0) {
                if (i2 == 1) {
                    r9 = (Closeable) yj3Var.c;
                    r2 = (rr3) yj3Var.b;
                    a aVar2 = (a) yj3Var.a;
                    try {
                        ResultKt.throwOnFailure(obj);
                        r6 = r9;
                        aVar = aVar2;
                        r2 = r2;
                        try {
                            try {
                                v01Var = (v01) obj;
                                ej1Var = aVar.f;
                                yj3Var.a = r2;
                                try {
                                    yj3Var.b = r6;
                                    yj3Var.c = v01Var;
                                    yj3Var.f = 2;
                                    if (ej1Var.j() != coroutine_suspended) {
                                        r01Var = v01Var;
                                        yj3Var = r2;
                                        coroutine_suspended = r6;
                                    }
                                    return coroutine_suspended;
                                } catch (Throwable th2) {
                                    th = th2;
                                    r9 = r6;
                                    try {
                                        r2.b(th);
                                        if (th instanceof v24) {
                                            throw th;
                                        }
                                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                            r2.a(th);
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
                                    } catch (Throwable th3) {
                                        try {
                                            throw th3;
                                        } catch (Throwable th4) {
                                            CloseableKt.closeFinally(r9, th3);
                                            throw th4;
                                        }
                                    }
                                }
                            } catch (Throwable th5) {
                                th = th5;
                            }
                        } catch (TimeoutCancellationException e) {
                            e = e;
                            r0 = r2;
                            r1 = r6;
                            r01Var = new r01(e, 1);
                            yj3Var = r0;
                            coroutine_suspended = r1;
                        }
                    } catch (TimeoutCancellationException e2) {
                        r1 = r9;
                        e = e2;
                        r0 = r2;
                    } catch (Throwable th6) {
                        th = th6;
                        r2.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            r2.a(th);
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
                    if (i2 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    r01Var = (v01) yj3Var.c;
                    r1 = yj3Var.b;
                    r0 = (rr3) yj3Var.a;
                    try {
                        ResultKt.throwOnFailure(obj);
                        yj3Var = r0;
                        coroutine_suspended = r1;
                    } catch (TimeoutCancellationException e3) {
                        e = e3;
                        r01Var = new r01(e, 1);
                        yj3Var = r0;
                        coroutine_suspended = r1;
                    }
                }
                r01Var = new r01(e, 1);
                yj3Var = r0;
                coroutine_suspended = r1;
            } else {
                ResultKt.throwOnFailure(obj);
                rr3 rr3VarA = hs3.a(s11.CUI_NAME_ADREQUEST_SIGNALS, CollectionsKt.emptyList(), true);
                try {
                    long jH0 = aVar.d.H0();
                    zj3 zj3Var = new zj3(aVar, null);
                    yj3Var.a = aVar;
                    yj3Var.b = rr3VarA;
                    yj3Var.c = rr3VarA;
                    yj3Var.f = 1;
                    Object objM4522withTimeoutKLykuaI = TimeoutKt.m4522withTimeoutKLykuaI(jH0, zj3Var, yj3Var);
                    if (objM4522withTimeoutKLykuaI != coroutine_suspended) {
                        rr3 rr3Var = rr3VarA;
                        obj = objM4522withTimeoutKLykuaI;
                        r2 = rr3Var;
                        r6 = rr3Var;
                        v01Var = (v01) obj;
                        ej1Var = aVar.f;
                        yj3Var.a = r2;
                        yj3Var.b = r6;
                        yj3Var.c = v01Var;
                        yj3Var.f = 2;
                        if (ej1Var.j() != coroutine_suspended) {
                            r01Var = v01Var;
                            yj3Var = r2;
                            coroutine_suspended = r6;
                        }
                    }
                    return coroutine_suspended;
                } catch (TimeoutCancellationException e4) {
                    e = e4;
                    r0 = rr3VarA;
                    r1 = r0;
                } catch (Throwable th7) {
                    r2 = rr3VarA;
                    th = th7;
                    r9 = r2;
                    r2.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        r2.a(th);
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
            if (r01Var instanceof i01) {
                xs3.a((i01) r01Var, false);
            }
            CloseableKt.closeFinally(coroutine_suspended, null);
            return r01Var;
        } catch (Throwable th8) {
            th = th8;
            r2 = yj3Var;
            r9 = coroutine_suspended;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(sh3 sh3Var, Signals signals, Continuation continuation) {
        ck3 ck3Var;
        v01 j01Var;
        if (continuation instanceof ck3) {
            ck3Var = (ck3) continuation;
            int i = ck3Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                ck3Var.e = i - Integer.MIN_VALUE;
            } else {
                ck3Var = new ck3(this, continuation);
            }
        } else {
            ck3Var = new ck3(this, continuation);
        }
        Object objM4522withTimeoutKLykuaI = ck3Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ck3Var.e;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objM4522withTimeoutKLykuaI);
                long jC = (au.a() != bu.INTEGRATION_TEST || Duration.m4366compareToLRDsOJo(this.d.K0(), Duration.INSTANCE.m4458getZEROUwyO8pc()) <= 0) ? sh3Var.c() : ((Duration) ComparisonsKt.maxOf(Duration.m4365boximpl(sh3Var.c()), Duration.m4365boximpl(this.d.K0()))).getRawValue();
                dk3 dk3Var = new dk3(sh3Var, null);
                ck3Var.a = sh3Var;
                ck3Var.b = signals;
                ck3Var.e = 1;
                objM4522withTimeoutKLykuaI = TimeoutKt.m4522withTimeoutKLykuaI(jC, dk3Var, ck3Var);
                if (objM4522withTimeoutKLykuaI == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                signals = ck3Var.b;
                sh3Var = ck3Var.a;
                ResultKt.throwOnFailure(objM4522withTimeoutKLykuaI);
            }
            j01Var = (v01) objM4522withTimeoutKLykuaI;
        } catch (Exception e) {
            j01Var = new j01(e, null, null, 6);
        }
        if (j01Var instanceof q01) {
            s11 s11Var = s11.CUI_NAME_SIGNAL_UPDATE_SIGNALS;
            WeakHashMap weakHashMap = hs3.a;
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                hs3.a().e().t = new gh3(sh3Var.b().f(), (q11) null, 6);
                ((oe3) ((q01) j01Var).a()).a(signals);
                Object obj = Unit.INSTANCE;
                if (obj instanceof i01) {
                    xs3.a((i01) obj, false);
                }
                CloseableKt.closeFinally(rr3VarA, null);
            } catch (Throwable th) {
                try {
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
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(rr3VarA, th2);
                        throw th3;
                    }
                }
            }
        } else if ((j01Var instanceof i01) && sh3Var.a() == lg3.REQUIRED) {
            throw new df3("Required signal with id " + sh3Var.b().f().name() + " failed: " + j01Var);
        }
        return Unit.INSTANCE;
    }

    public final Object a(ContinuationImpl continuationImpl) {
        return b(this, continuationImpl);
    }
}
