package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum tw implements yh1.a {
    BLOB_STATE_AVAILABLE(1),
    BLOB_STATE_INACTIVE(2),
    BLOB_STATE_ACTIVE(3),
    BLOB_STATE_FAILED(4);

    public final int a;

    tw(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(tw.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.a);
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
