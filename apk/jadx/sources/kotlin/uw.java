package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class uw implements yh1.b {
    public static final uw a = new uw();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        vw vwVar;
        if (i == 0) {
            vwVar = vw.BLOB_TYPE_UNKNOWN;
        } else if (i == 1) {
            vwVar = vw.BLOB_TYPE_DEFAULT;
        } else if (i == 2) {
            vwVar = vw.BLOB_TYPE_JAR;
        } else if (i != 3) {
            vwVar = i != 4 ? null : vw.BLOB_TYPE_BRAIN_SUGGEST;
        } else {
            vwVar = vw.BLOB_TYPE_WEB_SUGGEST;
        }
        return vwVar != null;
    }
}
