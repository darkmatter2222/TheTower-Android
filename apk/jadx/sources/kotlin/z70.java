package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class z70 implements yh1.b {
    public static final z70 a = new z70();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        a80 a80Var;
        if (i == 0) {
            a80Var = a80.UNKNOWN;
        } else if (i == 1) {
            a80Var = a80.UNAVAILABLE;
        } else if (i != 2) {
            a80Var = i != 3 ? null : a80.ENTERPRISE_MANAGED;
        } else {
            a80Var = a80.NOT_MANAGED;
        }
        return a80Var != null;
    }
}
