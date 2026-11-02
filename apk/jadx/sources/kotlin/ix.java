package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class ix implements yh1.b {
    public static final ix a = new ix();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        jx jxVar;
        if (i != 0) {
            jxVar = i != 1 ? null : jx.DOWNLOADED;
        } else {
            jxVar = jx.DOWNLOADABLE;
        }
        return jxVar != null;
    }
}
