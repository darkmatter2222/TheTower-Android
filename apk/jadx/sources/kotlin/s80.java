package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class s80 implements yh1.b {
    public static final s80 a = new s80();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        t80 t80Var;
        if (i == 0) {
            t80Var = t80.SURFACE_UNSPECIFIED;
        } else if (i == 1) {
            t80Var = t80.BUBBLE_MAINPAGE;
        } else if (i == 2) {
            t80Var = t80.BUBBLE_SUBPAGE;
        } else if (i == 3) {
            t80Var = t80.DOWNLOADS_PAGE;
        } else if (i != 4) {
            t80Var = i != 5 ? null : t80.DOWNLOAD_NOTIFICATION;
        } else {
            t80Var = t80.DOWNLOAD_PROMPT;
        }
        return t80Var != null;
    }
}
