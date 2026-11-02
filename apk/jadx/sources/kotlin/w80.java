package kotlin;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class w80 extends vz0 implements uw1 {
    private static final w80 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private byte memoizedIsInitialized = 2;
    private du name_;
    private du value_;

    static {
        w80 w80Var = new w80();
        DEFAULT_INSTANCE = w80Var;
        vz0.a((Class<w80>) w80.class, w80Var);
    }

    public w80() {
        du duVar = du.b;
        this.name_ = duVar;
        this.value_ = duVar;
    }

    public static v80 v() {
        return (v80) DEFAULT_INSTANCE.h();
    }

    @Override // kotlin.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        switch (r70.a[dVar.ordinal()]) {
            case 1:
                return new w80();
            case 2:
                return new v80();
            case 3:
                return vz0.a(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ᔊ\u0000\u0002ည\u0001", new Object[]{"bitField0_", "name_", "value_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                return vz0.b(w80.class);
            case 6:
                return Byte.valueOf(this.memoizedIsInitialized);
            case 7:
                this.memoizedIsInitialized = (byte) (obj == null ? 0 : 1);
                return null;
            default:
                return null;
        }
    }

    public final void a(du duVar) {
        Objects.requireNonNull(duVar);
        this.bitField0_ |= 1;
        this.name_ = duVar;
    }

    public final void b(du duVar) {
        Objects.requireNonNull(duVar);
        this.bitField0_ |= 2;
        this.value_ = duVar;
    }
}
