package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum vw implements yh1.a {
    BLOB_TYPE_UNKNOWN(0),
    BLOB_TYPE_DEFAULT(1),
    BLOB_TYPE_JAR(2),
    BLOB_TYPE_WEB_SUGGEST(3),
    BLOB_TYPE_BRAIN_SUGGEST(4);

    public final int a;

    vw(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(vw.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.a);
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
