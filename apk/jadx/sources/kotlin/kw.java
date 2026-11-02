package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class kw implements yh1.b {
    public static final kw a = new kw();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        lw lwVar;
        if (i == 0) {
            lwVar = lw.NONE;
        } else if (i == 1) {
            lwVar = lw.GZIP;
        } else if (i != 2) {
            lwVar = i != 3 ? null : lw.UNKNOWN;
        } else {
            lwVar = lw.BROTLI;
        }
        return lwVar != null;
    }
}
