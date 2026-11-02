package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class q90 implements yh1.b {
    public static final q90 a = new q90();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        r90 r90Var;
        if (i != 0) {
            r90Var = i != 1 ? null : r90.TYPE_CREATIVE;
        } else {
            r90Var = r90.TYPE_UNKNOWN;
        }
        return r90Var != null;
    }
}
