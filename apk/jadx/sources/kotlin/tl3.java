package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class tl3 implements yh1.b {
    public static final tl3 a = new tl3();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        vl3 vl3Var;
        if (i == 0) {
            vl3Var = vl3.STATUS_UNKNOWN;
        } else if (i != 1) {
            vl3Var = i != 2 ? null : vl3.STATUS_FAIL;
        } else {
            vl3Var = vl3.STATUS_SUCCESS;
        }
        return vl3Var != null;
    }
}
