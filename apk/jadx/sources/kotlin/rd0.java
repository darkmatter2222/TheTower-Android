package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class rd0 {
    public final id0 a;
    public dw2 b;
    public dw2 c;
    public dw2 d;
    public dw2 e;
    public dw2 f;

    public rd0(id0 id0Var) {
        this.a = id0Var;
        a();
    }

    public final void a() {
        dw2 nl3Var = new nl3(this.a.s);
        Object obj = do0.c;
        if (!(nl3Var instanceof do0)) {
            nl3Var = new do0(nl3Var);
        }
        this.b = nl3Var;
        dw2 do0Var = lb2.a;
        if (!(do0Var instanceof do0)) {
            do0Var = new do0(do0Var);
        }
        this.c = do0Var;
        id0 id0Var = this.a;
        fa1 fa1Var = new fa1(id0Var.d, id0Var.s);
        dw2 do0Var2 = fa1Var instanceof do0 ? fa1Var : new do0(fa1Var);
        this.d = do0Var2;
        dw2 dw2Var = this.b;
        dw2 dw2Var2 = this.c;
        id0 id0Var2 = this.a;
        dw2 lu2Var = new lu2(dw2Var, dw2Var2, do0Var2, id0Var2.s, id0Var2.k, id0Var2.j);
        if (!(lu2Var instanceof do0)) {
            lu2Var = new do0(lu2Var);
        }
        this.e = lu2Var;
        id0 id0Var3 = this.a;
        dw2 nf3Var = new nf3(id0Var3.m, this.b, this.d, id0Var3.A, id0Var3.s, id0Var3.j, id0Var3.d);
        if (!(nf3Var instanceof do0)) {
            nf3Var = new do0(nf3Var);
        }
        dw2 ku2Var = new ku2(this.e, nf3Var, this.d, this.a.j);
        if (!(ku2Var instanceof do0)) {
            ku2Var = new do0(ku2Var);
        }
        this.f = ku2Var;
    }
}
