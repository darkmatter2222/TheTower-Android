package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class c9 extends vz0.a implements uw1 {
    public c9() {
        super(d9.DEFAULT_INSTANCE);
    }

    public final void a(long j) {
        d();
        d9 d9Var = (d9) this.b;
        d9Var.bitField0_ |= 2;
        d9Var.createTimeMs_ = j;
    }

    public final void a(b9 b9Var) {
        d();
        d9 d9Var = (d9) this.b;
        d9Var.getClass();
        d9Var.status_ = b9Var.getNumber();
        d9Var.bitField0_ |= 8;
    }

    public final void a(String str) {
        d();
        ((d9) this.b).b(str);
    }

    public final void b(String str) {
        d();
        ((d9) this.b).c(str);
    }
}
