package kotlin;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class is1 extends vz0 implements uw1 {
    private static final is1 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private du hmacKey_;
    private int hmacSignatureLength_;
    private byte memoizedIsInitialized = 2;
    private du symmetricKey_;
    private int type_;

    static {
        is1 is1Var = new is1();
        DEFAULT_INSTANCE = is1Var;
        vz0.a((Class<is1>) is1.class, is1Var);
    }

    public is1() {
        du duVar = du.b;
        this.symmetricKey_ = duVar;
        this.hmacKey_ = duVar;
    }

    public static hs1 v() {
        return (hs1) DEFAULT_INSTANCE.h();
    }

    @Override // kotlin.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        switch (es1.a[dVar.ordinal()]) {
            case 1:
                return new is1();
            case 2:
                return new hs1();
            case 3:
                return vz0.a(DEFAULT_INSTANCE, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0003\u0001ᴌ\u0000\u0002ᔊ\u0001\u0003ᔊ\u0002\u0004င\u0003", new Object[]{"bitField0_", "type_", fs1.a, "symmetricKey_", "hmacKey_", "hmacSignatureLength_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                return vz0.b(is1.class);
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
        this.bitField0_ |= 4;
        this.hmacKey_ = duVar;
    }

    public final void b(du duVar) {
        Objects.requireNonNull(duVar);
        this.bitField0_ |= 2;
        this.symmetricKey_ = duVar;
    }
}
