package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class m90 implements yh1.b {
    public static final m90 a = new m90();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        n90 n90Var;
        if (i == 0) {
            n90Var = n90.UNSPECIFIED;
        } else if (i == 1) {
            n90Var = n90.PHISHY_CLICK_EVENT;
        } else if (i != 2) {
            n90Var = i != 3 ? null : n90.PHISHY_PASTE_EVENT;
        } else {
            n90Var = n90.PHISHY_KEY_EVENT;
        }
        return n90Var != null;
    }
}
