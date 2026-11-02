package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum jh1 implements yh1.a {
    UNKNOWN(0),
    OK(1),
    SERVICE_UNAVAILABLE(2),
    FEATURE_NOT_SUPPORTED(3),
    DEVELOPER_ERROR(4),
    PERMISSION_ERROR(5),
    SERVICE_DISCONNECTED(6),
    UNRECOGNIZED(-1);

    public final int a;

    jh1(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this == UNRECOGNIZED ? yh1.a() : this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(jh1.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=").append(getNumber());
        }
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
