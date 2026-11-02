package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class zq2 extends vz0.a implements uw1 {
    public zq2() {
        super(ar2.DEFAULT_INSTANCE);
    }

    public final void a(int i) {
        d();
        ((ar2) this.b).maxBufferSize_ = i;
    }

    public final void a(String str) {
        d();
        ((ar2) this.b).b(str);
    }

    public final void a(boolean z) {
        d();
        ((ar2) this.b).cacheHit_ = z;
    }

    public final void b(int i) {
        d();
        ((ar2) this.b).numPreloadedAds_ = i;
    }

    public final void b(String str) {
        d();
        ((ar2) this.b).c(str);
    }

    public final void b(boolean z) {
        d();
        ((ar2) this.b).preloadInFlight_ = z;
    }
}
