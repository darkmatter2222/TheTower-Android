package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class nd0 {
    public final id0 a;
    public final nd0 b = this;
    public dw2 c;
    public dw2 d;

    public nd0(id0 id0Var) {
        this.a = id0Var;
        a();
    }

    public final void a() {
        gm1 gm1Var = fm1.a;
        Object obj = do0.c;
        dw2 do0Var = gm1Var instanceof do0 ? gm1Var : new do0(gm1Var);
        id0 id0Var = this.a;
        dw2 ax1Var = new ax1(id0Var.b, id0Var.d, id0Var.B, do0Var, id0Var.D, id0Var.s, id0Var.j);
        if (!(ax1Var instanceof do0)) {
            ax1Var = new do0(ax1Var);
        }
        this.c = ax1Var;
        dd1 dd1Var = cd1.a;
        dw2 do0Var2 = dd1Var instanceof do0 ? dd1Var : new do0(dd1Var);
        md0 md0Var = new md0(this);
        id0 id0Var2 = this.a;
        dw2 mr0Var = new mr0(id0Var2.d, this.c, id0Var2.B, id0Var2.A, do0Var2, md0Var, id0Var2.j);
        if (!(mr0Var instanceof do0)) {
            mr0Var = new do0(mr0Var);
        }
        this.d = mr0Var;
    }
}
