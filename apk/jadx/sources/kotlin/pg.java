package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum pg implements yh1.a {
    MARKETPLACE_UNSPECIFIED(0),
    MARKETPLACE_NOT_SET(1),
    MARKETPLACE_UNKNOWN(2),
    MARKETPLACE_ERROR(3),
    MARKETPLACE_API_NOT_AVAILABLE(4),
    MARKETPLACE_APPSTORE(5),
    MARKETPLACE_TESTFLIGHT(6),
    MARKETPLACE_ALTERNATE(7),
    MARKETPLACE_WEB(8),
    MARKETPLACE_OTHER(9);

    public final int a;

    pg(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(pg.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.a);
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
