package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class eg implements yh1.b {
    public static final eg a = new eg();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        fg fgVar;
        if (i != 0) {
            fgVar = i != 1 ? null : fg.FALLBACK_TIMEOUT;
        } else {
            fgVar = fg.FALLBACK_NONE;
        }
        return fgVar != null;
    }
}
