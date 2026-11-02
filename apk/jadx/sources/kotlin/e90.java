package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class e90 extends vz0 implements uw1 {
    private static final e90 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    private int bitField0_;
    private du body_;
    private du bodydigest_;
    private int bodylength_;
    private d90 firstline_;
    private du remoteIp_;
    private byte memoizedIsInitialized = 2;
    private yh1.f<w80> headers_ = vz0.k();

    static {
        e90 e90Var = new e90();
        DEFAULT_INSTANCE = e90Var;
        vz0.a((Class<e90>) e90.class, e90Var);
    }

    public e90() {
        du duVar = du.b;
        this.body_ = duVar;
        this.bodydigest_ = duVar;
        this.remoteIp_ = duVar;
    }

    @Override // kotlin.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        switch (r70.a[dVar.ordinal()]) {
            case 1:
                return new e90();
            case 2:
                return new b90();
            case 3:
                return vz0.a(DEFAULT_INSTANCE, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"bitField0_", "firstline_", "headers_", w80.class, "body_", "bodydigest_", "bodylength_", "remoteIp_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                return vz0.b(e90.class);
            case 6:
                return Byte.valueOf(this.memoizedIsInitialized);
            case 7:
                this.memoizedIsInitialized = (byte) (obj == null ? 0 : 1);
                return null;
            default:
                return null;
        }
    }
}
