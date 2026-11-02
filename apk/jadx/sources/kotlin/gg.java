package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class gg implements yh1.b {
    public static final gg a = new gg();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        hg hgVar;
        if (i == 0) {
            hgVar = hg.FUNCTION_UNSPECIFIED;
        } else if (i == 1) {
            hgVar = hg.FUNCTION_METHOD_EXCHANGEIMPLEMENTATIONS;
        } else if (i == 2) {
            hgVar = hg.FUNCTION_METHOD_SETIMPLEMENTATIONS;
        } else if (i != 3) {
            hgVar = i != 4 ? null : hg.FUNCTION_CLASS_REPLACEMETHOD;
        } else {
            hgVar = hg.FUNCTION_CLASS_ADDMETHOD;
        }
        return hgVar != null;
    }
}
