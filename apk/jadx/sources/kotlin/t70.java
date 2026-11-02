package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class t70 implements yh1.d.a {
    @Override // ads_mobile_sdk.yh1.d.a
    public final Object a(int i) {
        c80 c80Var;
        if (i == 0) {
            c80Var = c80.UNSPECIFIED;
        } else if (i == 1) {
            c80Var = c80.TAILORED_WARNING_CT_BASE;
        } else if (i == 2) {
            c80Var = c80.TAILORED_WARNING_CT;
        } else if (i == 3) {
            c80Var = c80.TAILORED_WARNING_CT_ACCOUNT_INFO;
        } else if (i != 4) {
            c80Var = i != 5 ? null : c80.TAILORED_WARNING_SUSPICIOUS;
        } else {
            c80Var = c80.TAILORED_WARNING_SUSPICIOUS_BASE;
        }
        return c80Var == null ? c80.UNSPECIFIED : c80Var;
    }
}
