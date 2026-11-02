package kotlin;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ar2 extends vz0 implements uw1 {
    private static final ar2 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    private boolean cacheHit_;
    private int maxBufferSize_;
    private int numPreloadedAds_;
    private boolean preloadInFlight_;
    private String preloadId_ = "";
    private String evictedAdId_ = "";

    static {
        ar2 ar2Var = new ar2();
        DEFAULT_INSTANCE = ar2Var;
        vz0.a((Class<ar2>) ar2.class, ar2Var);
    }

    public static zq2 v() {
        return (zq2) DEFAULT_INSTANCE.h();
    }

    @Override // kotlin.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = yq2.a[dVar.ordinal()];
        if (i == 1) {
            return new ar2();
        }
        if (i == 2) {
            return new zq2();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001Ȉ\u0002\u0004\u0003\u0004\u0004\u0007\u0005Ȉ\u0006\u0007", new Object[]{"preloadId_", "maxBufferSize_", "numPreloadedAds_", "cacheHit_", "evictedAdId_", "preloadInFlight_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ar2.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.evictedAdId_ = str;
    }

    public final void c(String str) {
        Objects.requireNonNull(str);
        this.preloadId_ = str;
    }
}
