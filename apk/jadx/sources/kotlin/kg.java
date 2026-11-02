package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class kg extends vz0.a implements uw1 {
    public kg() {
        super(lg.DEFAULT_INSTANCE);
    }

    public final kg a(long j) {
        d();
        lg lgVar = (lg) this.b;
        lgVar.bitField0_ |= 1;
        lgVar.source_ = j;
        return this;
    }

    public final kg a(rh rhVar) {
        d();
        lg lgVar = (lg) this.b;
        lgVar.getClass();
        lgVar.isPhysicalInput_ = rhVar.a;
        lgVar.bitField0_ |= 2;
        return this;
    }

    public final kg b(rh rhVar) {
        d();
        lg lgVar = (lg) this.b;
        lgVar.getClass();
        lgVar.verified_ = rhVar.a;
        lgVar.bitField0_ |= 4;
        return this;
    }
}
