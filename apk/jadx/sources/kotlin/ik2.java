package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum ik2 implements yh1.a {
    /* JADX INFO: Fake field, exist only in values array */
    FILL_DISABLED_REASON_UNKNOWN(0),
    FILL_DISABLED_REASON_NO_CAPACITY(1),
    FILL_DISABLED_REASON_CONSENT_NOT_ALLOWED(2),
    FILL_DISABLED_REASON_WEB_PROPERTY_DISABLED(3),
    FILL_DISABLED_REASON_CELLULAR_NETWORK(4),
    UNRECOGNIZED(-1);

    public final int a;

    ik2(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this == UNRECOGNIZED ? yh1.a() : this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(ik2.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=").append(getNumber());
        }
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
