package kotlin;

import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.ArrayDeque;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class k6 {
    public final ex0 a;
    public final tx b;
    public final g83 c;
    public final ConcurrentHashMap d;
    public final ConcurrentHashMap e;

    public k6(ex0 flags, g83 rootTraceCreator, tx clock) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.a = flags;
        this.b = clock;
        this.c = rootTraceCreator;
        this.d = new ConcurrentHashMap();
        this.e = new ConcurrentHashMap();
    }

    public static final ArrayDeque a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ArrayDeque) tmp0.invoke(obj);
    }

    public static final Set b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Set) tmp0.invoke(obj);
    }

    public final void a(bu2 violation, String preloadId, j53 requestType, String str) {
        Intrinsics.checkNotNullParameter(violation, "violation");
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        ex0 ex0Var = this.a;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:preload_validator:enabled", C3510b4.i.W);
        Boolean bool = Boolean.FALSE;
        ir irVar = yr.b;
        if (((Boolean) ex0Var.a("gads:preload_validator:enabled", bool, irVar)).booleanValue()) {
            ex0 ex0Var2 = this.a;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gads:preload_validator_logging:enabled", C3510b4.i.W);
            boolean zBooleanValue = ((Boolean) ex0Var2.a("gads:preload_validator_logging:enabled", bool, irVar)).booleanValue();
            ex0 ex0Var3 = this.a;
            ex0Var3.getClass();
            Intrinsics.checkNotNullParameter("gads:preload_validator_cuj:enabled", C3510b4.i.W);
            boolean zBooleanValue2 = ((Boolean) ex0Var3.a("gads:preload_validator_cuj:enabled", bool, irVar)).booleanValue();
            if ((zBooleanValue || zBooleanValue2) && a(preloadId, violation)) {
                if (zBooleanValue) {
                    String strA = violation.a(preloadId, str);
                    hy3[] hy3VarArr = hy3.a;
                    Splitter splitter = f01.a;
                    f01.c(strA, null);
                }
                if (zBooleanValue2) {
                    g83 g83Var = this.c;
                    s11 s11Var = s11.CUI_NAME_PRELOAD_VALIDATOR;
                    List listEmptyList = CollectionsKt.emptyList();
                    ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                    if (hs3.b().a == null) {
                        tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                        try {
                            rr3 rr3VarA = hs3.a();
                            uj2 uj2VarE = rr3VarA.e();
                            ut2 builder = wt2.v();
                            Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                            Intrinsics.checkNotNullParameter(builder, "builder");
                            vt2 value = violation.b;
                            Intrinsics.checkNotNullParameter(value, "value");
                            builder.a(value);
                            vz0 vz0VarB = builder.b();
                            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                            uj2VarE.S = (wt2) vz0VarB;
                            n03 n03Var = rr3VarA.a.a;
                            n03Var.e = preloadId;
                            n03Var.c = requestType;
                            Object obj = p005kotlin.Unit.INSTANCE;
                            if (obj instanceof i01) {
                                xs3.a((i01) obj, false);
                            }
                            CloseableKt.closeFinally(tu2VarA, null);
                            return;
                        } catch (Throwable th) {
                            try {
                                tu2VarA.b(th);
                                if (th instanceof v24) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                    tu2VarA.a(th);
                                }
                                if (th instanceof TimeoutCancellationException) {
                                    throw new i21(th);
                                }
                                if (th instanceof CancellationException) {
                                    throw new wz0(th);
                                }
                                if (!(th instanceof w01)) {
                                    throw new b01(th);
                                }
                                throw th;
                            } catch (Throwable th2) {
                                try {
                                    throw th2;
                                } catch (Throwable th3) {
                                    CloseableKt.closeFinally(tu2VarA, th2);
                                    throw th3;
                                }
                            }
                        }
                    }
                    rr3 rr3VarA2 = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    try {
                        rr3 rr3VarA3 = hs3.a();
                        uj2 uj2VarE2 = rr3VarA3.e();
                        ut2 builder2 = wt2.v();
                        Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
                        Intrinsics.checkNotNullParameter(builder2, "builder");
                        vt2 value2 = violation.b;
                        Intrinsics.checkNotNullParameter(value2, "value");
                        builder2.a(value2);
                        vz0 vz0VarB2 = builder2.b();
                        Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
                        uj2VarE2.S = (wt2) vz0VarB2;
                        n03 n03Var2 = rr3VarA3.a.a;
                        n03Var2.e = preloadId;
                        n03Var2.c = requestType;
                        Object obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3VarA2, null);
                    } catch (Throwable th4) {
                        try {
                            rr3VarA2.b(th4);
                            if (th4 instanceof v24) {
                                throw th4;
                            }
                            if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                                rr3VarA2.a(th4);
                            }
                            if (th4 instanceof TimeoutCancellationException) {
                                throw new i21(th4);
                            }
                            if (th4 instanceof CancellationException) {
                                throw new wz0(th4);
                            }
                            if (!(th4 instanceof w01)) {
                                throw new b01(th4);
                            }
                            throw th4;
                        } catch (Throwable th5) {
                            try {
                                throw th5;
                            } catch (Throwable th6) {
                                CloseableKt.closeFinally(rr3VarA2, th5);
                                throw th6;
                            }
                        }
                    }
                }
            }
        }
    }

    public final void a(j53 requestType, String preloadId) {
        boolean z;
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        if (this.a.q0()) {
            long jS0 = this.a.s0();
            int iT0 = this.a.t0();
            ConcurrentHashMap concurrentHashMap = this.e;
            final i6 i6Var = i6.a;
            Object objComputeIfAbsent = concurrentHashMap.computeIfAbsent(preloadId, new java.util.function.Function() { // from class: ads_mobile_sdk.k6$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return k6.a(i6Var, obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(objComputeIfAbsent, "computeIfAbsent(...)");
            ArrayDeque arrayDeque = (ArrayDeque) objComputeIfAbsent;
            synchronized (arrayDeque) {
                Duration.Companion companion = Duration.INSTANCE;
                this.b.getClass();
                long duration = DurationKt.toDuration(tx.b(), DurationUnit.MILLISECONDS);
                while (true) {
                    if (arrayDeque.isEmpty() || Duration.m4366compareToLRDsOJo(Duration.m4395minusLRDsOJo(duration, ((Duration) arrayDeque.first()).getRawValue()), jS0) <= 0) {
                        break;
                    } else {
                        arrayDeque.remove(0);
                    }
                }
                arrayDeque.add(Duration.m4365boximpl(duration));
                while (arrayDeque.size() > iT0 + 1) {
                    arrayDeque.remove(0);
                }
                z = arrayDeque.size() > iT0;
            }
            if (z) {
                a(bu2.EXCESSIVE_AVAILABILITY_CHECKS, preloadId, requestType, "> " + iT0 + " checks in " + Duration.m4407toStringimpl(jS0) + " (window: " + Duration.m4407toStringimpl(jS0) + ")");
            }
        }
    }

    public final void a(String preloadId, j53 requestType, Integer num, int i, int i2) {
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        if (this.a.r0()) {
            int i3 = this.a.i();
            if (num != null && num.intValue() > i3) {
                a(bu2.EXCESSIVE_BUFFER, preloadId, requestType, "Buffer size " + num + " exceeds maximum allowed buffer size " + i3 + ".");
                return;
            }
            int iIntValue = i + (num != null ? num.intValue() : this.a.f());
            if (iIntValue > i2) {
                a(bu2.EXCESSIVE_BUFFER, preloadId, requestType, "Total configured buffer size (" + iIntValue + ") across all preloaders exceeds maximum allowed limit (" + i2 + ").");
            }
        }
    }

    public final boolean a(String str, bu2 bu2Var) {
        ConcurrentHashMap concurrentHashMap = this.d;
        final j6 j6Var = j6.a;
        return ((Set) concurrentHashMap.computeIfAbsent(str, new java.util.function.Function() { // from class: ads_mobile_sdk.k6$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return k6.b(j6Var, obj);
            }
        })).add(bu2Var);
    }

    public final void b(j53 j53Var, String str) {
        if (this.a.u0()) {
            vq2 vq2Var = wq2.b;
            uq2 uq2Var = (uq2) wq2.c.get();
            if (uq2Var != null && Intrinsics.areEqual(uq2Var.a, str) && uq2Var.b == j53Var && uq2Var.c == xq2.ON_AD_FAILED_TO_PRELOAD) {
                a(bu2.STARTED_OR_STOPPED_IN_AD_FAILED_CALLBACK, str, j53Var, null);
            }
        }
    }

    public final void c(j53 requestType, String preloadId) {
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        b(requestType, preloadId);
    }
}
