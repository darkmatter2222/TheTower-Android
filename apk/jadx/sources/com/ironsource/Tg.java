package com.ironsource;

import com.ironsource.AbstractC3761p3;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.comparisons.ComparisonsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Tg<Smash extends AbstractC3761p3<?>> {
    private final V a;

    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt.compareValues(Integer.valueOf(((AbstractC3761p3) t).i().l()), Integer.valueOf(((AbstractC3761p3) t2).i().l()));
        }
    }

    public Tg(V managerData) {
        Intrinsics.checkNotNullParameter(managerData, "managerData");
        this.a = managerData;
    }

    public final boolean a(AbstractC3761p3<?> smash, List<? extends Smash> waterfall) {
        Object next;
        Intrinsics.checkNotNullParameter(smash, "smash");
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        Iterator<T> it = b(waterfall).iterator();
        while (it.hasNext()) {
            next = it.next();
            if (!((AbstractC3761p3) next).x()) {
                return Intrinsics.areEqual(next, smash);
            }
        }
        next = null;
        return Intrinsics.areEqual(next, smash);
    }

    public final boolean a(List<? extends Smash> waterfall) {
        int i;
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        if ((waterfall instanceof Collection) && waterfall.isEmpty()) {
            i = 0;
        } else {
            Iterator<T> it = waterfall.iterator();
            i = 0;
            while (it.hasNext()) {
                if (((AbstractC3761p3) it.next()).y() && (i = i + 1) < 0) {
                    CollectionsKt.throwCountOverflow();
                }
            }
        }
        return i >= this.a.i();
    }

    public final List<Smash> b(List<? extends Smash> waterfall) {
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        return CollectionsKt.sortedWith(waterfall, new a());
    }

    public final Smash c(List<? extends Smash> waterfall) {
        Object next;
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        Iterator<T> it = b(waterfall).iterator();
        while (it.hasNext()) {
            next = it.next();
            if (((AbstractC3761p3) next).B()) {
                return (Smash) next;
            }
        }
        next = null;
        return (Smash) next;
    }

    public final Ug<Smash> d(List<? extends Smash> waterfall) {
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        IronLog.INTERNAL.verbose(this.a.b().name() + " waterfall size: " + waterfall.size());
        Zg<Smash> zgA = Zg.g.a(this.a.c() ? Qg.BIDDER_SENSITIVE : Qg.DEFAULT, this.a.i(), this.a.m(), waterfall);
        Iterator<? extends Smash> it = waterfall.iterator();
        while (it.hasNext()) {
            zgA.d(it.next());
            if (zgA.e()) {
                return new Ug<>(zgA);
            }
        }
        return new Ug<>(zgA);
    }
}
