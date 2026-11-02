package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class sw implements yh1.b {
    public static final sw a = new sw();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        tw twVar;
        if (i == 1) {
            twVar = tw.BLOB_STATE_AVAILABLE;
        } else if (i == 2) {
            twVar = tw.BLOB_STATE_INACTIVE;
        } else if (i != 3) {
            twVar = i != 4 ? null : tw.BLOB_STATE_FAILED;
        } else {
            twVar = tw.BLOB_STATE_ACTIVE;
        }
        return twVar != null;
    }
}
