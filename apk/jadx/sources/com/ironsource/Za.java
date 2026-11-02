package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Za {
    public static final Za a = new Za();

    public static final class a {
        private final boolean a;
        private final long b;
        private final long c;

        public a(boolean z, long j, long j2) {
            this.a = z;
            this.b = j;
            this.c = j2;
        }

        public static /* synthetic */ a a(a aVar, boolean z, long j, long j2, int i, Object obj) {
            if ((i & 1) != 0) {
                z = aVar.a;
            }
            if ((i & 2) != 0) {
                j = aVar.b;
            }
            if ((i & 4) != 0) {
                j2 = aVar.c;
            }
            return aVar.a(z, j, j2);
        }

        public final a a(boolean z, long j, long j2) {
            return new a(z, j, j2);
        }

        public final boolean a() {
            return this.a;
        }

        public final long b() {
            return this.b;
        }

        public final long c() {
            return this.c;
        }

        public final long d() {
            return this.b;
        }

        public final long e() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b && this.c == aVar.c;
        }

        public final boolean f() {
            return this.a;
        }

        public int hashCode() {
            return (((Boolean.hashCode(this.a) * 31) + Long.hashCode(this.b)) * 31) + Long.hashCode(this.c);
        }

        public String toString() {
            return "BannerStrategyConfig(isAutoRefreshEnabled=" + this.a + ", refreshInterval=" + this.b + ", visibilityCheckerInterval=" + this.c + ")";
        }
    }

    private Za() {
    }

    public static /* synthetic */ Fa a(Za za, C3758p0 c3758p0, C3545d3 c3545d3, a aVar, Ga ga, U2 u2, InterfaceC3839t4 interfaceC3839t4, int i, Object obj) {
        if ((i & 32) != 0) {
            interfaceC3839t4 = new InterfaceC3839t4.a();
        }
        return za.a(c3758p0, c3545d3, aVar, ga, u2, interfaceC3839t4);
    }

    public final Fa a(C3758p0 adTools, C3545d3 bannerContainer, a config, Ga strategyListener, U2 bannerAdUnitFactory, InterfaceC3839t4 timeProvider) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(bannerContainer, "bannerContainer");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(strategyListener, "strategyListener");
        Intrinsics.checkNotNullParameter(bannerAdUnitFactory, "bannerAdUnitFactory");
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        IronLog.INTERNAL.verbose("Creating banner strategy, isAutoRefreshEnabled: " + config.f() + ", refreshInterval: " + config.d());
        if (config.f()) {
            return new Ja(adTools, bannerContainer, config.d(), config.e(), strategyListener, bannerAdUnitFactory, null, timeProvider, Pb.w.d().h().B(), 64, null);
        }
        Ta ta = new Ta(adTools, bannerContainer, bannerAdUnitFactory);
        ta.a(strategyListener);
        return ta;
    }
}
