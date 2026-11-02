package kotlin;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class y90 extends vz0 implements uw1 {
    private static final y90 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    public static final int i = 7;
    public static final int j = 8;
    public static final int k = 9;
    private int adResourceType_;
    private int bitField0_;
    private int id_;
    private int parentId_;
    private a90 request_;
    private e90 response_;
    private byte memoizedIsInitialized = 2;
    private String url_ = "";
    private yh1.c childIds_ = vz0.i();
    private String tagName_ = "";
    private yh1.f<String> matchedBlacklist_ = vz0.k();

    static {
        y90 y90Var = new y90();
        DEFAULT_INSTANCE = y90Var;
        vz0.a((Class<y90>) y90.class, y90Var);
    }

    public static x90 v() {
        return (x90) DEFAULT_INSTANCE.h();
    }

    @Override // kotlin.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        switch (r70.a[dVar.ordinal()]) {
            case 1:
                return new y90();
            case 2:
                return new x90();
            case 3:
                return vz0.a(DEFAULT_INSTANCE, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001ᔄ\u0000\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\b᠌\u0006\t\u001a", new Object[]{"bitField0_", "id_", "url_", "request_", "response_", "parentId_", "childIds_", "tagName_", "adResourceType_", v90.a, "matchedBlacklist_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                return vz0.b(y90.class);
            case 6:
                return Byte.valueOf(this.memoizedIsInitialized);
            case 7:
                this.memoizedIsInitialized = (byte) (obj == null ? 0 : 1);
                return null;
            default:
                return null;
        }
    }

    public final void a(a90 a90Var) {
        Objects.requireNonNull(a90Var);
        this.request_ = a90Var;
        this.bitField0_ |= 4;
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 2;
        this.url_ = str;
    }
}
