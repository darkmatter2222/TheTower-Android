package kotlin;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.ClientRequestBuildingData;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.a;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.google.common.base.Splitter;
import com.google.gson.Gson;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class eh3 {
    public final CoroutineScope a;
    public final CoroutineContext b;
    public final String c;
    public final int d;
    public final SignalRequest e;
    public final g83 f;
    public final ks3 g;
    public final yf3 h;
    public final a i;
    public final jb3 j;
    public final f13 k;
    public final ex0 l;
    public final j43 m;
    public final ur3 n;
    public final Gson o;

    public eh3(CoroutineScope loaderScope, CoroutineContext backgroundContext, String requestId, int i, SignalRequest signalRequest, g83 rootTraceCreator, ks3 traceMetaSet, yf3 signalGenerationMap, a signalsProvider, jb3 javascriptEngine, f13 randomGenerator, ex0 flags, j43 requestBuilder, ur3 traceLogger, Gson gson) {
        Intrinsics.checkNotNullParameter(loaderScope, "loaderScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(signalRequest, "signalRequest");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(signalGenerationMap, "signalGenerationMap");
        Intrinsics.checkNotNullParameter(signalsProvider, "signalsProvider");
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(requestBuilder, "requestBuilder");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(gson, "gson");
        this.a = loaderScope;
        this.b = backgroundContext;
        this.c = requestId;
        this.d = i;
        this.e = signalRequest;
        this.f = rootTraceCreator;
        this.g = traceMetaSet;
        this.h = signalGenerationMap;
        this.i = signalsProvider;
        this.j = javascriptEngine;
        this.k = randomGenerator;
        this.l = flags;
        this.m = requestBuilder;
        this.n = traceLogger;
        this.o = gson;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00bf A[Catch: all -> 0x0050, TRY_LEAVE, TryCatch #12 {all -> 0x0050, blocks: (B:24:0x004c, B:39:0x0081, B:49:0x00bb, B:51:0x00bf, B:45:0x008b, B:48:0x00a6), top: B:133:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:97:0x0161 A[Catch: all -> 0x0037, TRY_LEAVE, TryCatch #14 {all -> 0x0037, blocks: (B:13:0x0032, B:85:0x0123, B:95:0x015d, B:97:0x0161, B:91:0x012d, B:94:0x0148), top: B:133:0x0028 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v2, types: [ads_mobile_sdk.dh3, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r14v0, types: [ads_mobile_sdk.eh3] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v31, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r14v37, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r14v43 */
    /* JADX WARN: Type inference failed for: r14v44 */
    /* JADX WARN: Type inference failed for: r14v45 */
    /* JADX WARN: Type inference failed for: r14v47 */
    /* JADX WARN: Type inference failed for: r14v48 */
    /* JADX WARN: Type inference failed for: r14v49 */
    /* JADX WARN: Type inference failed for: r15v14, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v51 */
    /* JADX WARN: Type inference failed for: r15v52 */
    /* JADX WARN: Type inference failed for: r15v6, types: [ads_mobile_sdk.rr3] */
    public static Object a(eh3 eh3Var, Continuation continuation) {
        ?? dh3Var;
        ?? r0;
        TimeoutCancellationException th;
        ?? r15;
        ?? r1;
        TimeoutCancellationException th2;
        ?? r16;
        rr3 rr3Var;
        Exception exception;
        rr3 rr3Var2;
        TimeoutCancellationException exception2;
        rr3 rr3Var3;
        Exception exception3;
        rr3 rr3Var4;
        TimeoutCancellationException exception4;
        Object j01Var;
        if (continuation instanceof dh3) {
            dh3 dh3Var2 = (dh3) continuation;
            int i = dh3Var2.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                dh3Var2.e = i - Integer.MIN_VALUE;
                dh3Var = dh3Var2;
            } else {
                dh3Var = new dh3(eh3Var, continuation);
            }
        } else {
            dh3Var = new dh3(eh3Var, continuation);
        }
        Object obj = dh3Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = dh3Var.e;
        int i3 = 3;
        TimeoutCancellationException timeoutCancellationException = null;
        try {
            try {
                if (i2 == 0) {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    g83 g83Var = eh3Var.f;
                    s11 s11Var = s11.CUI_NAME_SCAR_SIGNALS;
                    ks3 ks3Var = eh3Var.g;
                    List listEmptyList = CollectionsKt.emptyList();
                    if (hs3.b().a == null) {
                        tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                        try {
                            dh3Var.a = tu2VarA;
                            dh3Var.b = tu2VarA;
                            dh3Var.e = 1;
                            Object objA = eh3Var.a(dh3Var);
                            if (objA != coroutine_suspended) {
                                tu2 tu2Var = tu2VarA;
                                obj = objA;
                                rr3Var4 = tu2Var;
                                rr3Var3 = tu2Var;
                                j01Var = (v01) obj;
                                dh3Var = rr3Var3;
                                eh3Var = rr3Var4;
                                if (j01Var instanceof i01) {
                                    xs3.a((i01) j01Var, false);
                                }
                                CloseableKt.closeFinally(eh3Var, null);
                            }
                        } catch (TimeoutCancellationException e) {
                            rr3Var3 = tu2VarA;
                            exception4 = e;
                            rr3Var4 = rr3Var3;
                            Intrinsics.checkNotNullParameter(exception4, "exception");
                            rr3 rr3VarA = hs3.a();
                            rr3VarA.e().m = false;
                            rr3VarA.a(exception4);
                            j01Var = new r01(timeoutCancellationException, i3);
                            dh3Var = rr3Var3;
                            eh3Var = rr3Var4;
                        } catch (Exception e2) {
                            rr3Var3 = tu2VarA;
                            exception3 = e2;
                            rr3Var4 = rr3Var3;
                            Intrinsics.checkNotNullParameter(exception3, "exception");
                            rr3 rr3VarA2 = hs3.a();
                            rr3VarA2.e().m = false;
                            rr3VarA2.a(exception3);
                            j01Var = new j01(exception3, null, null, 6);
                            dh3Var = rr3Var3;
                            eh3Var = rr3Var4;
                        } catch (Throwable th3) {
                            th2 = th3;
                            r1 = tu2VarA;
                            r16 = tu2VarA;
                            try {
                                r16.b(th2);
                                if (th2 instanceof v24) {
                                    throw th2;
                                }
                                if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                                    r16.a(th2);
                                }
                                if (th2 instanceof TimeoutCancellationException) {
                                    throw new i21(th2);
                                }
                                if (th2 instanceof CancellationException) {
                                    throw new wz0(th2);
                                }
                                if (th2 instanceof w01) {
                                    throw th2;
                                }
                                throw new b01(th2);
                            } catch (Throwable th4) {
                                try {
                                    throw th4;
                                } catch (Throwable th5) {
                                    CloseableKt.closeFinally(r1, th4);
                                    throw th5;
                                }
                            }
                        }
                    } else {
                        rr3 rr3VarA3 = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                        try {
                            dh3Var.a = rr3VarA3;
                            dh3Var.b = rr3VarA3;
                            dh3Var.e = 2;
                            Object objA2 = eh3Var.a(dh3Var);
                            if (objA2 != coroutine_suspended) {
                                rr3 rr3Var5 = rr3VarA3;
                                obj = objA2;
                                rr3Var2 = rr3Var5;
                                rr3Var = rr3Var5;
                                j01Var = (v01) obj;
                                dh3Var = rr3Var;
                                eh3Var = rr3Var2;
                                if (j01Var instanceof i01) {
                                    xs3.a((i01) j01Var, false);
                                }
                                CloseableKt.closeFinally(eh3Var, null);
                            }
                        } catch (TimeoutCancellationException e3) {
                            rr3Var = rr3VarA3;
                            exception2 = e3;
                            rr3Var2 = rr3Var;
                            Intrinsics.checkNotNullParameter(exception2, "exception");
                            rr3 rr3VarA4 = hs3.a();
                            rr3VarA4.e().m = false;
                            rr3VarA4.a(exception2);
                            j01Var = new r01(timeoutCancellationException, i3);
                            dh3Var = rr3Var;
                            eh3Var = rr3Var2;
                        } catch (Exception e4) {
                            rr3Var = rr3VarA3;
                            exception = e4;
                            rr3Var2 = rr3Var;
                            Intrinsics.checkNotNullParameter(exception, "exception");
                            rr3 rr3VarA5 = hs3.a();
                            rr3VarA5.e().m = false;
                            rr3VarA5.a(exception);
                            j01Var = new j01(exception, null, null, 6);
                            dh3Var = rr3Var;
                            eh3Var = rr3Var2;
                        } catch (Throwable th6) {
                            th = th6;
                            r0 = rr3VarA3;
                            r15 = rr3VarA3;
                            try {
                                r15.b(th);
                                if (th instanceof v24) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                    r15.a(th);
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
                            } catch (Throwable th7) {
                                try {
                                    throw th7;
                                } catch (Throwable th8) {
                                    CloseableKt.closeFinally(r0, th7);
                                    throw th8;
                                }
                            }
                        }
                    }
                    return coroutine_suspended;
                }
                if (i2 == 1) {
                    rr3Var4 = dh3Var.b;
                    rr3Var3 = dh3Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        rr3Var3 = rr3Var3;
                        rr3Var4 = rr3Var4;
                        j01Var = (v01) obj;
                        dh3Var = rr3Var3;
                        eh3Var = rr3Var4;
                    } catch (TimeoutCancellationException e5) {
                        exception4 = e5;
                        Intrinsics.checkNotNullParameter(exception4, "exception");
                        rr3 rr3VarA6 = hs3.a();
                        rr3VarA6.e().m = false;
                        rr3VarA6.a(exception4);
                        j01Var = new r01(timeoutCancellationException, i3);
                        dh3Var = rr3Var3;
                        eh3Var = rr3Var4;
                    } catch (Exception e6) {
                        exception3 = e6;
                        Intrinsics.checkNotNullParameter(exception3, "exception");
                        rr3 rr3VarA7 = hs3.a();
                        rr3VarA7.e().m = false;
                        rr3VarA7.a(exception3);
                        j01Var = new j01(exception3, null, null, 6);
                        dh3Var = rr3Var3;
                        eh3Var = rr3Var4;
                    }
                    if (j01Var instanceof i01) {
                        xs3.a((i01) j01Var, false);
                    }
                    CloseableKt.closeFinally(eh3Var, null);
                } else {
                    if (i2 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    rr3Var2 = dh3Var.b;
                    rr3Var = dh3Var.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        rr3Var = rr3Var;
                        rr3Var2 = rr3Var2;
                        j01Var = (v01) obj;
                        dh3Var = rr3Var;
                        eh3Var = rr3Var2;
                    } catch (TimeoutCancellationException e7) {
                        exception2 = e7;
                        Intrinsics.checkNotNullParameter(exception2, "exception");
                        rr3 rr3VarA8 = hs3.a();
                        rr3VarA8.e().m = false;
                        rr3VarA8.a(exception2);
                        j01Var = new r01(timeoutCancellationException, i3);
                        dh3Var = rr3Var;
                        eh3Var = rr3Var2;
                    } catch (Exception e8) {
                        exception = e8;
                        Intrinsics.checkNotNullParameter(exception, "exception");
                        rr3 rr3VarA9 = hs3.a();
                        rr3VarA9.e().m = false;
                        rr3VarA9.a(exception);
                        j01Var = new j01(exception, null, null, 6);
                        dh3Var = rr3Var;
                        eh3Var = rr3Var2;
                    }
                    if (j01Var instanceof i01) {
                        xs3.a((i01) j01Var, false);
                    }
                    CloseableKt.closeFinally(eh3Var, null);
                }
                return j01Var;
            } catch (Throwable th9) {
                ?? r13 = dh3Var;
                r1 = eh3Var;
                th2 = th9;
                r16 = r13;
            }
        } catch (Throwable th10) {
            ?? r14 = dh3Var;
            r0 = eh3Var;
            th = th10;
            r15 = r14;
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:32:0x00de  */
    /* JADX WARN: Code duplicated, block: B:35:0x0123  */
    /* JADX WARN: Code duplicated, block: B:37:0x0127  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(Signals signals, Continuation continuation) {
        qg3 qg3Var;
        Signals signals2;
        eh3 eh3Var;
        Signals signals3;
        v01 v01Var;
        if (continuation instanceof qg3) {
            qg3Var = (qg3) continuation;
            int i = qg3Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                qg3Var.e = i - Integer.MIN_VALUE;
            } else {
                qg3Var = new qg3(this, continuation);
            }
        } else {
            qg3Var = new qg3(this, continuation);
        }
        qg3 qg3Var2 = qg3Var;
        Object objE = qg3Var2.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = qg3Var2.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objE);
            jb3 jb3Var = this.j;
            qg3Var2.a = this;
            signals2 = signals;
            qg3Var2.b = signals2;
            qg3Var2.e = 1;
            objE = ((yq1) jb3Var).e(qg3Var2);
            if (objE != coroutine_suspended) {
                eh3Var = this;
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            signals2 = qg3Var2.b;
            eh3Var = (eh3) qg3Var2.a;
            p005kotlin.ResultKt.throwOnFailure(objE);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            signals3 = (Signals) qg3Var2.a;
            p005kotlin.ResultKt.throwOnFailure(objE);
        }
        v01Var = (v01) objE;
        Splitter splitter = f01.a;
        f01.a(new rg3(v01Var));
        if (v01Var instanceof q01) {
            if (v01Var instanceof i01) {
                signals3.clientRequestBuildingData = new ClientRequestBuildingData(null, null, "CSRB error: " + v01Var, null, null, null, 247);
            }
            return v01Var;
        }
        q01 q01Var = (q01) v01Var;
        String str = ((zt) q01Var.a()).f;
        List list = ((zt) q01Var.a()).a;
        signals3.clientRequestBuildingData = new ClientRequestBuildingData(null, null, list != null ? CollectionsKt.joinToString$default(list, FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, null, 62, null) : null, null, signals3.requestId, str, 87);
        String str2 = ((zt) q01Var.a()).e;
        String str3 = ((zt) q01Var.a()).f;
        f01.a(new sg3(str2));
        f01.a(new tg3(str3));
        return v01Var;
        v01 v01Var2 = (v01) objE;
        if (v01Var2 instanceof i01) {
            i01 i01Var = (i01) v01Var2;
            signals2.clientRequestBuildingData = new ClientRequestBuildingData(null, null, "CSRB error: " + i01Var, null, null, null, 247);
            return i01Var;
        }
        Intrinsics.checkNotNull(v01Var2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        ((q01) v01Var2).getClass();
        j43 j43Var = eh3Var.m;
        yp2 yp2VarO0 = eh3Var.l.o0();
        hj2 hj2VarM0 = eh3Var.l.m0();
        Map mapW = eh3Var.l.w();
        qg3Var2.a = signals2;
        qg3Var2.b = null;
        qg3Var2.e = 2;
        Signals signals4 = signals2;
        objE = j43Var.a(signals4, yp2VarO0, hj2VarM0, mapW, qg3Var2);
        if (objE != coroutine_suspended) {
            signals3 = signals4;
            v01Var = (v01) objE;
            Splitter splitter2 = f01.a;
            f01.a(new rg3(v01Var));
            if (v01Var instanceof q01) {
                if (v01Var instanceof i01) {
                    signals3.clientRequestBuildingData = new ClientRequestBuildingData(null, null, "CSRB error: " + v01Var, null, null, null, 247);
                }
                return v01Var;
            }
            q01 q01Var2 = (q01) v01Var;
            String str4 = ((zt) q01Var2.a()).f;
            List list2 = ((zt) q01Var2.a()).a;
            signals3.clientRequestBuildingData = new ClientRequestBuildingData(null, null, list2 != null ? CollectionsKt.joinToString$default(list2, FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, null, 62, null) : null, null, signals3.requestId, str4, 87);
            String str5 = ((zt) q01Var2.a()).e;
            String str6 = ((zt) q01Var2.a()).f;
            f01.a(new sg3(str5));
            f01.a(new tg3(str6));
            return v01Var;
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:102:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:104:0x0201  */
    /* JADX WARN: Code duplicated, block: B:105:0x0209  */
    /* JADX WARN: Code duplicated, block: B:115:0x025b  */
    /* JADX WARN: Code duplicated, block: B:117:0x025e  */
    /* JADX WARN: Code duplicated, block: B:119:0x026b  */
    /* JADX WARN: Code duplicated, block: B:126:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:129:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:91:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:95:0x01d8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x01da  */
    /* JADX WARN: Code duplicated, block: B:99:0x01e0  */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0231, code lost:
    
        if (r1 == r2) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x02c3, code lost:
    
        if (r3.a(r5, r7, r6, r7, r8) == r2) goto L131;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(p005kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 724
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.eh3.a(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
