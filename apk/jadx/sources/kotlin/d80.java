package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class d80 implements yh1.b {
    public static final d80 a = new d80();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        e80 e80Var;
        if (i == 0) {
            e80Var = e80.UNKNOWN_USER_POPULATION;
        } else if (i == 1) {
            e80Var = e80.SAFE_BROWSING;
        } else if (i != 2) {
            e80Var = i != 3 ? null : e80.ENHANCED_PROTECTION;
        } else {
            e80Var = e80.EXTENDED_REPORTING;
        }
        return e80Var != null;
    }
}
