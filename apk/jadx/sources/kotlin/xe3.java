package kotlin;

import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class xe3 {
    public final CoroutineScope a;
    public final ex0 b;
    public final tx c;
    public final g83 d;
    public final cw2 e;
    public boolean f;
    public final Mutex g;
    public boolean h;
    public final LinkedHashMap i;
    public final LinkedHashMap j;

    public xe3(CoroutineScope backgroundScope, ex0 flags, tx clock, g83 rootTraceCreator, dw2 signalComponentProvider) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(signalComponentProvider, "signalComponentProvider");
        this.a = backgroundScope;
        this.b = flags;
        this.c = clock;
        this.d = rootTraceCreator;
        this.e = signalComponentProvider;
        this.g = MutexKt.Mutex$default(false, 1, null);
        this.i = new LinkedHashMap();
        this.j = new LinkedHashMap();
    }

    /* JADX WARN: Code duplicated, block: B:147:0x028d  */
    /* JADX WARN: Code duplicated, block: B:150:0x0296  */
    /* JADX WARN: Code duplicated, block: B:151:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:153:0x02be  */
    /* JADX WARN: Code duplicated, block: B:157:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:158:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:41:0x0102  */
    /* JADX WARN: Code duplicated, block: B:44:0x0115 A[Catch: all -> 0x0189, TryCatch #7 {all -> 0x0189, blocks: (B:42:0x0107, B:44:0x0115, B:46:0x0119), top: B:211:0x0107, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0129 A[Catch: all -> 0x018f, TryCatch #12 {all -> 0x018f, blocks: (B:50:0x0124, B:52:0x0129, B:54:0x012f, B:56:0x0141, B:58:0x0155, B:60:0x015b, B:62:0x0162, B:76:0x018b, B:77:0x018e, B:42:0x0107, B:44:0x0115, B:46:0x0119), top: B:220:0x0124, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x012e  */
    /* JADX WARN: Code duplicated, block: B:66:0x016f  */
    /* JADX WARN: Code duplicated, block: B:69:0x0177 A[Catch: all -> 0x0096, TRY_LEAVE, TryCatch #14 {, blocks: (B:67:0x0171, B:69:0x0177, B:25:0x0091), top: B:224:0x0091 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Path cross not found for [B:44:0x0115, B:48:0x0122], limit reached: 215 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:157:0x02f6 -> B:35:0x00bb). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(kotlin.xe3 r17, boolean r18, p005kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instruction units count: 864
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.xe3.a(ads_mobile_sdk.xe3, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00d2 A[Catch: all -> 0x0064, TRY_LEAVE, TryCatch #1 {all -> 0x0064, blocks: (B:25:0x0057, B:47:0x00cc, B:48:0x00ce, B:50:0x00d2, B:28:0x0060, B:41:0x00b8), top: B:132:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:99:0x0161 A[Catch: all -> 0x0050, TRY_LEAVE, TryCatch #0 {all -> 0x0050, blocks: (B:15:0x003a, B:96:0x015b, B:97:0x015d, B:99:0x0161, B:20:0x004b, B:90:0x0147), top: B:132:0x002c }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [ads_mobile_sdk.xe3] */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r2v12, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2, types: [ads_mobile_sdk.qe3, kotlin.coroutines.Continuation, kotlin.coroutines.jvm.internal.ContinuationImpl] */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v4 */
    public static Object b(xe3 xe3Var, boolean z, Continuation continuation) {
        ?? qe3Var;
        ?? r2;
        ?? r3;
        ?? r1;
        ?? r4;
        rr3 rr3Var;
        rr3 rr3Var2;
        rr3 rr3Var3;
        rr3 rr3Var4;
        rr3 rr3Var5;
        v01 v01Var;
        rr3 rr3Var6;
        rr3 rr3Var7;
        v01 v01Var2;
        rr3 rr3Var8;
        ?? r5 = z;
        if (continuation instanceof qe3) {
            qe3 qe3Var2 = (qe3) continuation;
            int i = qe3Var2.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                qe3Var2.e = i - Integer.MIN_VALUE;
                qe3Var = qe3Var2;
            } else {
                qe3Var = new qe3(xe3Var, continuation);
            }
        } else {
            qe3Var = new qe3(xe3Var, continuation);
        }
        Object obj = qe3Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = qe3Var.e;
        try {
            try {
                if (i2 != 0) {
                    if (i2 == 1) {
                        rr3 rr3Var9 = qe3Var.b;
                        rr3 rr3Var10 = qe3Var.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        rr3Var5 = rr3Var9;
                        rr3Var4 = rr3Var10;
                        v01Var = (v01) obj;
                        r5 = rr3Var5;
                        qe3Var = rr3Var4;
                        if (v01Var instanceof i01) {
                            xs3.a((i01) v01Var, false);
                        }
                        CloseableKt.closeFinally(r5, null);
                        return v01Var;
                    }
                    if (i2 == 2) {
                        rr3 rr3Var11 = qe3Var.b;
                        rr3 rr3Var12 = qe3Var.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        rr3Var6 = rr3Var11;
                        rr3Var3 = rr3Var12;
                        v01Var = (v01) obj;
                        r5 = rr3Var6;
                        qe3Var = rr3Var3;
                        if (v01Var instanceof i01) {
                            xs3.a((i01) v01Var, false);
                        }
                        CloseableKt.closeFinally(r5, null);
                        return v01Var;
                    }
                    if (i2 == 3) {
                        rr3 rr3Var13 = qe3Var.b;
                        rr3 rr3Var14 = qe3Var.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        rr3Var7 = rr3Var13;
                        rr3Var2 = rr3Var14;
                        v01Var2 = (v01) obj;
                        r5 = rr3Var7;
                        qe3Var = rr3Var2;
                        if (v01Var2 instanceof i01) {
                            xs3.a((i01) v01Var2, false);
                        }
                        CloseableKt.closeFinally(r5, null);
                        return v01Var2;
                    }
                    if (i2 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    rr3 rr3Var15 = qe3Var.b;
                    rr3 rr3Var16 = qe3Var.a;
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    rr3Var8 = rr3Var15;
                    rr3Var = rr3Var16;
                    v01Var2 = (v01) obj;
                    r5 = rr3Var8;
                    qe3Var = rr3Var;
                    if (v01Var2 instanceof i01) {
                        xs3.a((i01) v01Var2, false);
                    }
                    CloseableKt.closeFinally(r5, null);
                    return v01Var2;
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
                g83 g83Var = xe3Var.d;
                s11 s11Var = s11.CUI_NAME_GET_SIGNAL_FROM_CACHE;
                List listEmptyList = CollectionsKt.emptyList();
                ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    try {
                        hs3.a().a.b.d = x11.SCAR_REQUEST_TYPE_PAW;
                        if (xe3Var.f) {
                            qe3Var.a = tu2VarA;
                            qe3Var.b = tu2VarA;
                            qe3Var.e = 1;
                            Object objB = xe3Var.b(r5, qe3Var);
                            if (objB != coroutine_suspended) {
                                tu2 tu2Var = tu2VarA;
                                rr3Var4 = tu2Var;
                                obj = objB;
                                rr3Var5 = tu2Var;
                                v01Var = (v01) obj;
                                r5 = rr3Var5;
                                qe3Var = rr3Var4;
                                if (v01Var instanceof i01) {
                                    xs3.a((i01) v01Var, false);
                                }
                                CloseableKt.closeFinally(r5, null);
                                return v01Var;
                            }
                        } else {
                            qe3Var.a = tu2VarA;
                            qe3Var.b = tu2VarA;
                            qe3Var.e = 2;
                            Object objA = xe3Var.a(r5, qe3Var);
                            if (objA != coroutine_suspended) {
                                tu2 tu2Var2 = tu2VarA;
                                rr3Var3 = tu2Var2;
                                obj = objA;
                                rr3Var6 = tu2Var2;
                                v01Var = (v01) obj;
                                r5 = rr3Var6;
                                qe3Var = rr3Var3;
                                if (v01Var instanceof i01) {
                                    xs3.a((i01) v01Var, false);
                                }
                                CloseableKt.closeFinally(r5, null);
                                return v01Var;
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        r4 = tu2VarA;
                        r2 = tu2VarA;
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
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                CloseableKt.closeFinally(r4, th2);
                                throw th3;
                            }
                        }
                    }
                } else {
                    rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    try {
                        hs3.a().a.b.d = x11.SCAR_REQUEST_TYPE_PAW;
                        if (xe3Var.f) {
                            qe3Var.a = rr3VarA;
                            qe3Var.b = rr3VarA;
                            qe3Var.e = 3;
                            Object objB2 = xe3Var.b(r5, qe3Var);
                            if (objB2 != coroutine_suspended) {
                                rr3 rr3Var17 = rr3VarA;
                                rr3Var2 = rr3Var17;
                                obj = objB2;
                                rr3Var7 = rr3Var17;
                                v01Var2 = (v01) obj;
                                r5 = rr3Var7;
                                qe3Var = rr3Var2;
                                if (v01Var2 instanceof i01) {
                                    xs3.a((i01) v01Var2, false);
                                }
                                CloseableKt.closeFinally(r5, null);
                                return v01Var2;
                            }
                        } else {
                            qe3Var.a = rr3VarA;
                            qe3Var.b = rr3VarA;
                            qe3Var.e = 4;
                            Object objA2 = xe3Var.a(r5, qe3Var);
                            if (objA2 != coroutine_suspended) {
                                rr3 rr3Var18 = rr3VarA;
                                rr3Var = rr3Var18;
                                obj = objA2;
                                rr3Var8 = rr3Var18;
                                v01Var2 = (v01) obj;
                                r5 = rr3Var8;
                                qe3Var = rr3Var;
                                if (v01Var2 instanceof i01) {
                                    xs3.a((i01) v01Var2, false);
                                }
                                CloseableKt.closeFinally(r5, null);
                                return v01Var2;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        r1 = rr3VarA;
                        r3 = rr3VarA;
                        try {
                            r3.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                r3.a(th);
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
                                CloseableKt.closeFinally(r1, th5);
                                throw th6;
                            }
                        }
                    }
                }
                return coroutine_suspended;
            } catch (Throwable th7) {
                th = th7;
                r3 = qe3Var;
                r1 = r5;
            }
        } catch (Throwable th8) {
            th = th8;
            r2 = qe3Var;
            r4 = r5;
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0098 A[Catch: all -> 0x00dd, TryCatch #0 {all -> 0x00dd, blocks: (B:18:0x0053, B:20:0x006c, B:28:0x00a1, B:30:0x00af, B:33:0x00b5, B:34:0x00c7, B:36:0x00cd, B:37:0x00d7, B:22:0x0078, B:25:0x0092, B:27:0x0098), top: B:43:0x0053 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(v01 v01Var, boolean z, Continuation continuation) {
        se3 se3Var;
        Mutex mutex;
        xe3 xe3Var;
        if (continuation instanceof se3) {
            se3Var = (se3) continuation;
            int i = se3Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                se3Var.g = i - Integer.MIN_VALUE;
            } else {
                se3Var = new se3(this, continuation);
            }
        } else {
            se3Var = new se3(this, continuation);
        }
        Object obj = se3Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = se3Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = this.g;
            se3Var.a = this;
            se3Var.b = v01Var;
            se3Var.c = mutex;
            se3Var.d = z;
            se3Var.g = 1;
            if (mutex.lock(null, se3Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            xe3Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z = se3Var.d;
            Mutex mutex2 = se3Var.c;
            v01 v01Var2 = se3Var.b;
            xe3Var = se3Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            v01Var = v01Var2;
        }
        try {
            pe3 pe3Var = (pe3) xe3Var.i.get(Boxing.boxBoolean(z));
            pe3 pe3Var2 = new pe3(xe3Var.c, xe3Var.b, v01Var);
            if (v01Var instanceof q01) {
                xe3Var.i.put(Boxing.boxBoolean(z), pe3Var2);
            } else if (pe3Var != null) {
                Duration.Companion companion = Duration.INSTANCE;
                pe3Var.a.getClass();
                if (Duration.m4366compareToLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), pe3Var.d) >= 0 || (pe3Var.b instanceof i01)) {
                    xe3Var.i.put(Boxing.boxBoolean(z), pe3Var2);
                }
            } else {
                xe3Var.i.put(Boxing.boxBoolean(z), pe3Var2);
            }
            List list = (List) xe3Var.j.get(Boxing.boxBoolean(z));
            if (list == null) {
                return p005kotlin.Unit.INSTANCE;
            }
            xe3Var.j.put(Boxing.boxBoolean(z), new ArrayList());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((CompletableDeferred) it.next()).complete(v01Var);
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) {
        te3 te3Var;
        xe3 xe3Var;
        Mutex mutex;
        if (continuation instanceof te3) {
            te3Var = (te3) continuation;
            int i = te3Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                te3Var.e = i - Integer.MIN_VALUE;
            } else {
                te3Var = new te3(this, continuation);
            }
        } else {
            te3Var = new te3(this, continuation);
        }
        Object obj = te3Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = te3Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.g;
            te3Var.a = this;
            te3Var.b = mutex2;
            te3Var.e = 1;
            if (mutex2.lock(null, te3Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            xe3Var = this;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = te3Var.b;
            xe3Var = te3Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (xe3Var.h) {
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                mutex.unlock(null);
                return unit;
            }
            xe3Var.h = true;
            p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
            mutex.unlock(null);
            boolean zE0 = xe3Var.b.E0();
            xe3Var.f = zE0;
            if (zE0) {
                CoroutineScope coroutineScope = xe3Var.a;
                ue3 block = new ue3(xe3Var, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                CoroutineScope coroutineScope2 = xe3Var.a;
                ve3 block2 = new ve3(xe3Var, null);
                Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block2, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context, null, new ws3(block2, null), 2, null);
            }
            return unit2;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    public final Object a(boolean z, Continuation continuation) {
        return b(this, z, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object a(boolean z, ContinuationImpl continuationImpl) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("accept_3p_cookie", z);
        BannerSignalRequest bannerSignalRequestBuild = ((BannerSignalRequest.Builder) new BannerSignalRequest.Builder("requester_type_6").setGoogleExtrasBundle(bundle)).build();
        eh3 eh3VarA = ((rf3) this.e.get()).a((BaseRequest) bannerSignalRequestBuild).a((SignalRequest) bannerSignalRequestBuild).c().b().a().a();
        eh3VarA.getClass();
        return eh3.a(eh3VarA, continuationImpl);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object b(boolean z, Continuation continuation) throws Throwable {
        re3 re3Var;
        CompletableDeferred completableDeferredCompletableDeferred$default;
        Mutex mutex;
        boolean z2;
        xe3 xe3Var;
        if (continuation instanceof re3) {
            re3Var = (re3) continuation;
            int i = re3Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                re3Var.g = i - Integer.MIN_VALUE;
            } else {
                re3Var = new re3(this, continuation);
            }
        } else {
            re3Var = new re3(this, continuation);
        }
        Object obj = re3Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = re3Var.g;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                mutex = this.g;
                re3Var.a = this;
                re3Var.b = completableDeferredCompletableDeferred$default;
                re3Var.c = mutex;
                z2 = z;
                re3Var.d = z2;
                re3Var.g = 1;
                if (mutex.lock(null, re3Var) != coroutine_suspended) {
                    xe3Var = this;
                }
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
                return obj;
            }
            boolean z3 = re3Var.d;
            mutex = re3Var.c;
            completableDeferredCompletableDeferred$default = re3Var.b;
            xe3Var = re3Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            z2 = z3;
            pe3 pe3Var = (pe3) xe3Var.i.get(Boxing.boxBoolean(z2));
            if (pe3Var != null) {
                Duration.Companion companion = Duration.INSTANCE;
                pe3Var.a.getClass();
                Mutex mutex2 = mutex;
                try {
                    if (Duration.m4366compareToLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), pe3Var.d) < 0) {
                        uj2 uj2VarE = hs3.a().e();
                        ze3 builder = af3.v();
                        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                        Intrinsics.checkNotNullParameter(builder, "builder");
                        builder.b(z2);
                        builder.a(true);
                        vz0 vz0VarB = builder.b();
                        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                        uj2VarE.B = (af3) vz0VarB;
                        pe3Var.c.set(true);
                        v01 v01Var = pe3Var.b;
                        mutex2.unlock(null);
                        return v01Var;
                    }
                    mutex = mutex2;
                } catch (Throwable th) {
                    th = th;
                    mutex = mutex2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            uj2 uj2VarE2 = hs3.a().e();
            ze3 builder2 = af3.v();
            Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder2, "builder");
            builder2.b(z2);
            builder2.a(false);
            vz0 vz0VarB2 = builder2.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
            uj2VarE2.B = (af3) vz0VarB2;
            List arrayList = (List) xe3Var.j.get(Boxing.boxBoolean(z2));
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.add(completableDeferredCompletableDeferred$default);
            xe3Var.j.put(Boxing.boxBoolean(z2), arrayList);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            mutex.unlock(null);
            re3Var.a = null;
            re3Var.b = null;
            re3Var.c = null;
            re3Var.g = 2;
            Object objAwait = completableDeferredCompletableDeferred$default.await(re3Var);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
