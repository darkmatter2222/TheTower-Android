package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class ai extends vz0.a implements uw1 {
    public ai() {
        super(bi.DEFAULT_INSTANCE);
    }

    public final ai a(du duVar) {
        d();
        ((bi) this.b).a(duVar);
        return this;
    }

    public final ai a(ph phVar) {
        d();
        bi biVar = (bi) this.b;
        biVar.getClass();
        biVar.encryptionMethod_ = phVar.a;
        biVar.bitField0_ |= 4;
        return this;
    }

    public final void b(du duVar) {
        d();
        ((bi) this.b).b(duVar);
    }

    public final ai h() {
        d();
        bi biVar = (bi) this.b;
        biVar.getClass();
        biVar.protoName_ = 4;
        biVar.bitField0_ |= 2;
        return this;
    }
}
