package com.unity3d.mediation.rewarded;

import android.app.Activity;
import com.ironsource.C3535cb;
import com.ironsource.C3656j6;
import com.ironsource.C3758p0;
import com.ironsource.C3808rb;
import com.ironsource.C3950z7;
import com.ironsource.E0;
import com.ironsource.InterfaceC3839t4;
import com.ironsource.Pb;
import com.ironsource.X0;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class LevelPlayRewardedAd {
    public static final Companion Companion = new Companion(null);
    private final String a;
    private final C3808rb b;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final boolean isPlacementCapped(String placementName) {
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            return C3535cb.p.a(placementName, LevelPlay.AdFormat.REWARDED);
        }
    }

    public static final class Config implements C3535cb.b {
        public static final Companion Companion = new Companion(null);
        private final Double a;

        public static final class Builder {
            private Double a;

            public final Config build() {
                return new Config(this.a);
            }

            public final Builder setBidFloor(double d) {
                this.a = Double.valueOf(d);
                return this;
            }
        }

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final Config empty() {
                return new Config(null, 1, 0 == true ? 1 : 0);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Config() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public Config(Double d) {
            this.a = d;
        }

        public /* synthetic */ Config(Double d, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : d);
        }

        public static /* synthetic */ Config copy$default(Config config, Double d, int i, Object obj) {
            if ((i & 1) != 0) {
                d = config.a;
            }
            return config.copy(d);
        }

        public final Double component1() {
            return this.a;
        }

        public final Config copy(Double d) {
            return new Config(d);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Config) && Intrinsics.areEqual((Object) this.a, (Object) ((Config) obj).a);
        }

        @Override // com.ironsource.C3535cb.b
        public Double getBidFloor() {
            return this.a;
        }

        public int hashCode() {
            Double d = this.a;
            if (d == null) {
                return 0;
            }
            return d.hashCode();
        }

        public String toString() {
            return "Config(bidFloor=" + this.a + ")";
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LevelPlayRewardedAd(String adUnitId) {
        this(adUnitId, Config.Companion.empty());
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
    }

    public LevelPlayRewardedAd(String adUnitId, C3535cb.c payload) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(payload, "payload");
        IronLog.API.info("adUnitId: " + adUnitId + ", config: " + payload.d());
        this.a = adUnitId;
        this.b = new C3808rb(adUnitId, payload.d(), payload.b(), payload.a(), payload.g(), payload.e(), payload.f(), payload.c());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LevelPlayRewardedAd(String adUnitId, Config config) {
        this(adUnitId, new C3535cb.c(new C3758p0(IronSource.a.REWARDED_VIDEO, E0.b.MEDIATION), new C3656j6(), Pb.w.d(), new InterfaceC3839t4.a(), C3950z7.a, config, new X0()));
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(config, "config");
    }

    public static /* synthetic */ LevelPlayReward getReward$default(LevelPlayRewardedAd levelPlayRewardedAd, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return levelPlayRewardedAd.getReward(str);
    }

    @JvmStatic
    public static final boolean isPlacementCapped(String str) {
        return Companion.isPlacementCapped(str);
    }

    public static /* synthetic */ void showAd$default(LevelPlayRewardedAd levelPlayRewardedAd, Activity activity, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        levelPlayRewardedAd.showAd(activity, str);
    }

    public final String getAdId() {
        return this.b.a();
    }

    public final String getAdUnitId() {
        return this.a;
    }

    public final LevelPlayReward getReward() {
        return getReward$default(this, null, 1, null);
    }

    public final LevelPlayReward getReward(String str) {
        return this.b.a(str);
    }

    public final boolean isAdReady() {
        return this.b.b();
    }

    public final void loadAd() {
        this.b.c();
    }

    public final void setImpressionDataListener(LevelPlayImpressionDataListener levelPlayImpressionDataListener) {
        this.b.a(levelPlayImpressionDataListener);
    }

    public final void setListener(LevelPlayRewardedAdListener levelPlayRewardedAdListener) {
        this.b.a(levelPlayRewardedAdListener);
    }

    public final void showAd(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        showAd$default(this, activity, null, 2, null);
    }

    public final void showAd(Activity activity, String str) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.b.a(activity, str);
    }
}
