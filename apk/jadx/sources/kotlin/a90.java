package kotlin;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class a90 extends vz0 implements uw1 {
    private static final a90 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    private int bitField0_;
    private du body_;
    private du bodydigest_;
    private int bodylength_;
    private z80 firstline_;
    private byte memoizedIsInitialized = 2;
    private yh1.f<w80> headers_ = vz0.k();

    static {
        a90 a90Var = new a90();
        DEFAULT_INSTANCE = a90Var;
        vz0.a((Class<a90>) a90.class, a90Var);
    }

    public a90() {
        du duVar = du.b;
        this.body_ = duVar;
        this.bodydigest_ = duVar;
    }

    public static x80 v() {
        return (x80) DEFAULT_INSTANCE.h();
    }

    @Override // kotlin.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        switch (r70.a[dVar.ordinal()]) {
            case 1:
                return new a90();
            case 2:
                return new x80();
            case 3:
                return vz0.a(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"bitField0_", "firstline_", "headers_", w80.class, "body_", "bodydigest_", "bodylength_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                return vz0.b(a90.class);
            case 6:
                return Byte.valueOf(this.memoizedIsInitialized);
            case 7:
                this.memoizedIsInitialized = (byte) (obj == null ? 0 : 1);
                return null;
            default:
                return null;
        }
    }

    public final void a(w80 w80Var) {
        Objects.requireNonNull(w80Var);
        yh1.f<w80> fVar = this.headers_;
        if (!fVar.b()) {
            this.headers_ = vz0.a(fVar);
        }
        this.headers_.add(w80Var);
    }
}
