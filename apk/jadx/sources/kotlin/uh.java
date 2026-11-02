package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class uh implements yh1.b {
    public static final uh a = new uh();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        vh vhVar;
        if (i == 0) {
            vhVar = vh.UNKNOWN_PROTO;
        } else if (i == 1) {
            vhVar = vh.AFMA_SIGNALS;
        } else if (i == 2) {
            vhVar = vh.UNITY_SIGNALS;
        } else if (i != 3) {
            vhVar = i != 4 ? null : vh.FALLBACK_SIGNALS;
        } else {
            vhVar = vh.PARTNER_SIGNALS;
        }
        return vhVar != null;
    }
}
