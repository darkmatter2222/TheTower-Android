package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class ga0 implements yh1.b {
    public static final ga0 a = new ga0();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        ha0 ha0Var;
        if (i == 0) {
            ha0Var = ha0.SAFE_OR_OTHER;
        } else if (i == 1) {
            ha0Var = ha0.MALWARE;
        } else if (i == 2) {
            ha0Var = ha0.PHISHING;
        } else if (i != 3) {
            ha0Var = i != 4 ? null : ha0.BILLING;
        } else {
            ha0Var = ha0.UNWANTED;
        }
        return ha0Var != null;
    }
}
