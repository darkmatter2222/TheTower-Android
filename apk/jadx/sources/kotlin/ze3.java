package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class ze3 extends vz0.a implements uw1 {
    public ze3() {
        super(af3.DEFAULT_INSTANCE);
    }

    public final void a(int i) {
        d();
        ((af3) this.b).retryNumber_ = i;
    }

    public final void a(boolean z) {
        d();
        ((af3) this.b).cacheHit_ = z;
    }

    public final void b(boolean z) {
        d();
        ((af3) this.b).thirdPartyCookiesEnabled_ = z;
    }

    public final void c(boolean z) {
        d();
        ((af3) this.b).wasLastSignalUsed_ = z;
    }
}
