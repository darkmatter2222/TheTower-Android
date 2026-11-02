package com.ironsource;

import com.ironsource.AbstractC3761p3;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Zg<Smash extends AbstractC3761p3<?>> {
    public static final a g = new a(null);
    private final int a;
    private final boolean b;
    private final List<Smash> c;
    private final List<Smash> d;
    private final List<Smash> e;
    private final List<Smash> f;

    public static final class a {

        /* JADX INFO: renamed from: com.ironsource.Zg$a$a, reason: collision with other inner class name */
        public /* synthetic */ class C0102a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[Qg.values().length];
                try {
                    iArr[Qg.DEFAULT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Qg.BIDDER_SENSITIVE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final <Smash extends AbstractC3761p3<?>> Zg<Smash> a(Qg loadingStrategy, int i, boolean z, List<? extends Smash> waterfall) {
            Intrinsics.checkNotNullParameter(loadingStrategy, "loadingStrategy");
            Intrinsics.checkNotNullParameter(waterfall, "waterfall");
            int i2 = C0102a.a[loadingStrategy.ordinal()];
            if (i2 == 1) {
                return new M4(i, z, waterfall);
            }
            if (i2 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            return new C3874v3(i, z, waterfall, false, 8, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Zg(int i, boolean z, List<? extends Smash> waterfall) {
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        this.a = i;
        this.b = z;
        this.c = waterfall;
        this.d = new ArrayList();
        this.e = new ArrayList();
        this.f = new ArrayList();
    }

    private final int a(Smash smash) {
        return smash.i().l();
    }

    private final int b() {
        Integer num;
        List<Smash> list = this.c;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((AbstractC3761p3) obj).y()) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Integer numValueOf = Integer.valueOf(a((AbstractC3761p3) it.next()));
            while (it.hasNext()) {
                Integer numValueOf2 = Integer.valueOf(a((AbstractC3761p3) it.next()));
                if (numValueOf.compareTo(numValueOf2) > 0) {
                    numValueOf = numValueOf2;
                }
            }
            num = numValueOf;
        } else {
            num = null;
        }
        if (num != null) {
            return num.intValue();
        }
        return Integer.MAX_VALUE;
    }

    private final boolean b(Smash smash) {
        return b() < a(smash);
    }

    public final List<Smash> a() {
        return this.f;
    }

    public final List<Smash> c() {
        return this.d;
    }

    public abstract void c(Smash smash);

    public final int d() {
        return this.d.size() + this.e.size() + this.f.size();
    }

    public final void d(Smash smash) {
        Intrinsics.checkNotNullParameter(smash, "smash");
        if (smash.x()) {
            IronLog.INTERNAL.verbose(smash.g().name() + " - smash " + smash.k() + " is failed to load");
            return;
        }
        if (smash.y()) {
            IronLog.INTERNAL.verbose(smash.g().name() + " - Smash " + smash.k() + " is already loaded");
            this.e.add(smash);
            return;
        }
        if (smash.z()) {
            IronLog.INTERNAL.verbose(smash.g().name() + " - Smash " + smash.k() + " still loading");
            this.f.add(smash);
            return;
        }
        if (smash.A().get()) {
            IronLog.INTERNAL.verbose(smash.g().name() + " - Smash " + smash.k() + " marked as loading candidate");
            this.f.add(smash);
            return;
        }
        if (!this.b || !b(smash)) {
            c(smash);
            return;
        }
        IronLog.INTERNAL.verbose(smash.g().name() + " - Smash " + smash.k() + " is not better than already loaded smashes");
    }

    public boolean e() {
        return d() >= this.a;
    }
}
