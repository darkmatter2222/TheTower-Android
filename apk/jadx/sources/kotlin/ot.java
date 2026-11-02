package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class ot implements yh1.d.a {
    @Override // ads_mobile_sdk.yh1.d.a
    public final Object a(int i) {
        qt qtVar;
        if (i != 0) {
            qtVar = i != 1 ? null : qt.COLLECTED_BIDDING_SIGNAL;
        } else {
            qtVar = qt.UNKNOWN;
        }
        return qtVar == null ? qt.UNKNOWN : qtVar;
    }
}
