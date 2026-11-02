package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class nd3 extends vz0.a implements uw1 {
    public nd3() {
        super(od3.DEFAULT_INSTANCE);
    }

    public final void a(int i) {
        d();
        od3 od3Var = (od3) this.b;
        od3Var.bitField0_ |= 2;
        od3Var.totalInflightAdLimit_ = i;
    }

    public final void a(xp0 xp0Var) {
        d();
        ((od3) this.b).a(xp0Var);
    }

    public final void a(boolean z) {
        d();
        od3 od3Var = (od3) this.b;
        od3Var.bitField0_ |= 8;
        od3Var.isServingGdprApplicable_ = z;
    }

    public final void h() {
        d();
        od3 od3Var = (od3) this.b;
        od3Var.eoidData_ = null;
        od3Var.bitField0_ &= -5;
    }

    public final void i() {
        d();
        od3 od3Var = (od3) this.b;
        od3Var.bitField0_ |= 1;
        od3Var.isInstallReferrerReported_ = true;
    }
}
