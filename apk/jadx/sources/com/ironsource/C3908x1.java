package com.ironsource;

import android.os.Build;
import androidx.core.app.FrameMetricsAggregator;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.comparisons.ComparisonsKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.FunctionReferenceImpl;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.ironsource.x1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3908x1 implements InterfaceC3729n7 {
    private static final e k = new e(null);

    @Deprecated
    public static final long l = -1;

    @Deprecated
    public static final long m = 3600000;

    @Deprecated
    public static final long n = 3600000;

    @Deprecated
    public static final String o = "self";

    @Deprecated
    public static final String p = "unknown";
    private final D7 a;
    private final Function1<C1, Unit> b;
    private final Function1<D1, Unit> c;
    private final InterfaceC3944z1 d;
    private final F1 e;
    private final Function0<Long> f;
    private final Function0<Boolean> g;
    private final Function0<B1> h;
    private final Function1<Runnable, Unit> i;
    private final AtomicBoolean j;

    /* JADX INFO: renamed from: com.ironsource.x1$a */
    /* synthetic */ class a extends FunctionReferenceImpl implements Function1<C1, Unit> {
        a(Object obj) {
            super(1, obj, C3926y1.class, "report", "report(Lcom/ironsource/services/anr/AnrReport;)V", 0);
        }

        public final void a(C1 p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((C3926y1) this.receiver).a(p0);
        }

        @Override // p005kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(C1 c1) {
            a(c1);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.x1$b */
    /* synthetic */ class b extends FunctionReferenceImpl implements Function1<D1, Unit> {
        b(Object obj) {
            super(1, obj, C3926y1.class, "reportScan", "reportScan(Lcom/ironsource/services/anr/AnrScanSummary;)V", 0);
        }

        public final void a(D1 p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((C3926y1) this.receiver).a(p0);
        }

        @Override // p005kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(D1 d1) {
            a(d1);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.x1$c */
    /* synthetic */ class c extends FunctionReferenceImpl implements Function0<Long> {
        public static final c a = new c();

        c() {
            super(0, System.class, "currentTimeMillis", "currentTimeMillis()J", 0);
        }

        @Override // p005kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long invoke() {
            return Long.valueOf(System.currentTimeMillis());
        }
    }

    /* JADX INFO: renamed from: com.ironsource.x1$d */
    /* synthetic */ class d extends FunctionReferenceImpl implements Function0<B1> {
        d(Object obj) {
            super(0, obj, C3902wd.class, "read", "read()Lcom/ironsource/services/anr/AnrProcessIdentity;", 0);
        }

        @Override // p005kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final B1 invoke() {
            return ((C3902wd) this.receiver).b();
        }
    }

    /* JADX INFO: renamed from: com.ironsource.x1$e */
    private static final class e {
        private e() {
        }

        public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.ironsource.x1$f */
    public static final class f<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt.compareValues(Long.valueOf(((A1) t).m()), Long.valueOf(((A1) t2).m()));
        }
    }

    public C3908x1() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3908x1(D7 epService, Function1<? super C1, Unit> reportAnr, Function1<? super D1, Unit> reportScan, InterfaceC3944z1 exitInfoSource, F1 watermarkStore, Function0<Long> currentTimeMillis, Function0<Boolean> isExitInfoSupported, Function0<B1> processIdentity, Function1<? super Runnable, Unit> runInBackground) {
        Intrinsics.checkNotNullParameter(epService, "epService");
        Intrinsics.checkNotNullParameter(reportAnr, "reportAnr");
        Intrinsics.checkNotNullParameter(reportScan, "reportScan");
        Intrinsics.checkNotNullParameter(exitInfoSource, "exitInfoSource");
        Intrinsics.checkNotNullParameter(watermarkStore, "watermarkStore");
        Intrinsics.checkNotNullParameter(currentTimeMillis, "currentTimeMillis");
        Intrinsics.checkNotNullParameter(isExitInfoSupported, "isExitInfoSupported");
        Intrinsics.checkNotNullParameter(processIdentity, "processIdentity");
        Intrinsics.checkNotNullParameter(runInBackground, "runInBackground");
        this.a = epService;
        this.b = reportAnr;
        this.c = reportScan;
        this.d = exitInfoSource;
        this.e = watermarkStore;
        this.f = currentTimeMillis;
        this.g = isExitInfoSupported;
        this.h = processIdentity;
        this.i = runInBackground;
        this.j = new AtomicBoolean(false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C3908x1(D7 d7, Function1 function1, Function1 function2, InterfaceC3944z1 interfaceC3944z1, F1 f1, Function0 function0, Function0 function3, Function0 function4, Function1 function5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        int i2 = 1;
        this((i & 1) != 0 ? Pb.w.d().h() : d7, (i & 2) != 0 ? new a(new C3926y1(null, i2, 0 == true ? 1 : 0)) : function1, (i & 4) != 0 ? new b(new C3926y1(0 == true ? 1 : 0, i2, 0 == true ? 1 : 0)) : function2, (i & 8) != 0 ? C3884vd.a : interfaceC3944z1, (i & 16) != 0 ? C3812rf.a : f1, (i & 32) != 0 ? c.a : function0, (i & 64) != 0 ? new Function0() { // from class: com.ironsource.x1$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(C3908x1.a());
            }
        } : function3, (i & 128) != 0 ? new d(C3902wd.a) : function4, (i & 256) != 0 ? new Function1() { // from class: com.ironsource.x1$$ExternalSyntheticLambda1
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return C3908x1.a((Runnable) obj);
            }
        } : function5);
    }

    private final String a(String str, String str2) {
        if (str.length() == 0) {
            return "unknown";
        }
        if (Intrinsics.areEqual(str, str2)) {
            return o;
        }
        return StringsKt.contains$default((CharSequence) str, AbstractJsonLexerKt.COLON, false, 2, (Object) null) ? StringsKt.substringAfterLast$default(str, AbstractJsonLexerKt.COLON, (String) null, 2, (Object) null) : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(Runnable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        IronSourceThreadManager.postMediationBackgroundTask$default(IronSourceThreadManager.INSTANCE, it, 0L, 2, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3908x1 c3908x1, B1 b1) {
        c3908x1.a(b1.c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a() {
        return Build.VERSION.SDK_INT >= 30;
    }

    private final boolean a(A1 a1, long j, long j2) {
        return j - a1.m() > j2;
    }

    public final void a(String ownProcessName) {
        Intrinsics.checkNotNullParameter(ownProcessName, "ownProcessName");
        long jLongValue = this.f.invoke().longValue();
        long jA = this.e.a();
        if (jA == -1) {
            this.e.a(jLongValue);
            IronLog.INTERNAL.verbose("anr reporter: watermark initialised, skipping backfill");
            return;
        }
        if (jA > jLongValue + 3600000) {
            this.e.a(jLongValue);
            IronLog.INTERNAL.verbose("anr reporter: watermark " + jA + " ahead of " + jLongValue + ", reset");
            return;
        }
        List<A1> listA = this.d.a();
        if (listA.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : listA) {
            if (((A1) obj).m() > jA) {
                arrayList.add(obj);
            }
        }
        List<A1> listSortedWith = CollectionsKt.sortedWith(arrayList, new f());
        if (listSortedWith.isEmpty()) {
            return;
        }
        this.e.a(((A1) CollectionsKt.last(listSortedWith)).m());
        int iQ = this.a.q();
        long jG = ((long) this.a.g()) * 3600000;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (A1 a1 : listSortedWith) {
            if (!a(a1, jLongValue, jG)) {
                StackTraceElement[] stackTraceElementArrInvoke = a1.k().invoke();
                if (a1.n() || stackTraceElementArrInvoke.length != 0) {
                    i2++;
                    if (stackTraceElementArrInvoke.length == 0) {
                        i3++;
                    } else {
                        C3867ue c3867ue = C3867ue.a;
                        long j = jLongValue;
                        int iB = c3867ue.b(stackTraceElementArrInvoke);
                        if (iB == -1) {
                            i4++;
                        } else if (i < iQ) {
                            int i7 = i + 1;
                            this.b.invoke(new C1(c3867ue.a(stackTraceElementArrInvoke, iB), c3867ue.a(stackTraceElementArrInvoke), stackTraceElementArrInvoke.length, iB, c3867ue.a(stackTraceElementArrInvoke[iB]), a1.i(), a1.m(), j - a1.m(), a1.h(), a1.l(), a(a1.j(), ownProcessName), i7));
                            i = i7;
                        }
                        jLongValue = j;
                    }
                }
            } else if (a1.n()) {
                i2++;
                i5++;
            } else {
                i6++;
            }
        }
        if (i2 == 0) {
            return;
        }
        this.c.invoke(new D1(i2, i3, i4, i5, i6, i));
    }

    @Override // com.ironsource.InterfaceC3729n7
    public void start() {
        if (this.a.H() && this.g.invoke().booleanValue()) {
            final B1 b1Invoke = this.h.invoke();
            if (b1Invoke.d()) {
                if (this.j.compareAndSet(false, true)) {
                    this.i.invoke(new Runnable() { // from class: com.ironsource.x1$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            C3908x1.a(this.f$0, b1Invoke);
                        }
                    });
                }
            } else {
                IronLog.INTERNAL.verbose("anr reporter: skipping process " + b1Invoke.c());
            }
        }
    }
}
