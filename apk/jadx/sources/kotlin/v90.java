package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class v90 implements yh1.b {
    public static final v90 a = new v90();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        w90 w90Var;
        if (i == 0) {
            w90Var = w90.AD_RESOURCE_UNKNOWN;
        } else if (i == 1) {
            w90Var = w90.AD_RESOURCE_CREATIVE;
        } else if (i != 2) {
            w90Var = i != 3 ? null : w90.AD_RESOURCE_AUTO_CLICK_DESTINATION;
        } else {
            w90Var = w90.AD_RESOURCE_POST_CLICK;
        }
        return w90Var != null;
    }
}
