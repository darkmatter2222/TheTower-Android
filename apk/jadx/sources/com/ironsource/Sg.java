package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import java.util.List;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Sg {
    public static final a c = new a(null);
    private final C3758p0 a;
    private final InterfaceC3537cd b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Sg a(T0 adTools, AbstractC3907x0 adUnitData, InterfaceC3537cd outcomeReporter, Mg waterfallInstances, G adInstanceLoadStrategy) {
            Intrinsics.checkNotNullParameter(adTools, "adTools");
            Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
            Intrinsics.checkNotNullParameter(outcomeReporter, "outcomeReporter");
            Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
            Intrinsics.checkNotNullParameter(adInstanceLoadStrategy, "adInstanceLoadStrategy");
            return adUnitData.r() ? new C3940yf(adTools, outcomeReporter, waterfallInstances, adInstanceLoadStrategy) : new N4(adTools, outcomeReporter, waterfallInstances);
        }
    }

    public Sg(C3758p0 adTools, InterfaceC3537cd outcomeReporter) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(outcomeReporter, "outcomeReporter");
        this.a = adTools;
        this.b = outcomeReporter;
    }

    private final void b(A a2, List<? extends A> list) {
        for (A a3 : list) {
            if (a3 == a2) {
                a2.a(true);
                return;
            }
            a3.a(false);
            IronLog.INTERNAL.verbose(C3758p0.a(this.a, a3.q() + " - not ready to show", (String) null, 2, (Object) null));
        }
    }

    public abstract void a();

    public abstract void a(A a2);

    public final void a(A instance, String str, C3845ta publisherDataHolder) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.checkNotNullParameter(publisherDataHolder, "publisherDataHolder");
        this.b.a(instance, str, publisherDataHolder);
    }

    public final void a(A instanceToShow, List<? extends A> orderedInstances) {
        Intrinsics.checkNotNullParameter(instanceToShow, "instanceToShow");
        Intrinsics.checkNotNullParameter(orderedInstances, "orderedInstances");
        b(instanceToShow, orderedInstances);
        c(instanceToShow);
    }

    public abstract void b(A a2);

    public abstract void c(A a2);
}
