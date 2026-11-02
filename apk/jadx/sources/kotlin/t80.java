package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum t80 implements yh1.a {
    SURFACE_UNSPECIFIED(0),
    BUBBLE_MAINPAGE(1),
    BUBBLE_SUBPAGE(2),
    DOWNLOADS_PAGE(3),
    DOWNLOAD_PROMPT(4),
    DOWNLOAD_NOTIFICATION(5);

    public final int a;

    t80(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(t80.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.a);
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
