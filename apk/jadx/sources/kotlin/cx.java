package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class cx implements yh1.b {
    public static final cx a = new cx();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        dx dxVar;
        if (i == 0) {
            dxVar = dx.BLOB_INCREMENT_NOOP;
        } else if (i != 1) {
            dxVar = i != 2 ? null : dx.BLOB_INCREMENT_FILEBYFILE;
        } else {
            dxVar = dx.BLOB_INCREMENT_BSDIFF;
        }
        return dxVar != null;
    }
}
