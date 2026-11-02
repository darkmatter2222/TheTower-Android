package kotlin;

/* JADX INFO: loaded from: classes.dex */
public final class xa0 implements yh1.b {
    public static final xa0 a = new xa0();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        ya0 ya0Var;
        if (i == 0) {
            ya0Var = ya0.UNDEFINED;
        } else if (i == 1) {
            ya0Var = ya0.BROWSER_INITIATED;
        } else if (i == 2) {
            ya0Var = ya0.RENDERER_INITIATED_WITHOUT_USER_GESTURE;
        } else if (i == 3) {
            ya0Var = ya0.RENDERER_INITIATED_WITH_USER_GESTURE;
        } else if (i != 4) {
            ya0Var = i != 5 ? null : ya0.NOTIFICATION_INITIATED;
        } else {
            ya0Var = ya0.COPY_PASTE_USER_INITIATED;
        }
        return ya0Var != null;
    }
}
