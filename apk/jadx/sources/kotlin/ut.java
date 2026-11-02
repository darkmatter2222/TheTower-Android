package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class ut extends vz0.a implements uw1 {
    public ut() {
        super(vt.DEFAULT_INSTANCE);
    }

    public final void a(long j) {
        d();
        vt vtVar = (vt) this.b;
        vtVar.bitField0_ |= 1;
        vtVar.major_ = j;
    }

    public final void b(long j) {
        d();
        vt vtVar = (vt) this.b;
        vtVar.bitField0_ |= 4;
        vtVar.micro_ = j;
    }

    public final void c(long j) {
        d();
        vt vtVar = (vt) this.b;
        vtVar.bitField0_ |= 2;
        vtVar.minor_ = j;
    }
}
