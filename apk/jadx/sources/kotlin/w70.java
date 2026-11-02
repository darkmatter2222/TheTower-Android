package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class w70 implements yh1.b {
    public static final w70 a = new w70();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        x70 x70Var;
        if (i != 0) {
            x70Var = i != 1 ? null : x70.CLIENT_GENERATION;
        } else {
            x70Var = x70.SOURCE_UNSPECIFIED;
        }
        return x70Var != null;
    }
}
