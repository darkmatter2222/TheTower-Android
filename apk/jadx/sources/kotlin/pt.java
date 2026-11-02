package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class pt implements yh1.b {
    public static final pt a = new pt();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        qt qtVar;
        if (i != 0) {
            qtVar = i != 1 ? null : qt.COLLECTED_BIDDING_SIGNAL;
        } else {
            qtVar = qt.UNKNOWN;
        }
        return qtVar != null;
    }
}
