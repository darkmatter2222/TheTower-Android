package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum jk2 implements yh1.a {
    /* JADX INFO: Fake field, exist only in values array */
    CLEAR_REASON_UNKNOWN(0),
    CLEAR_REASON_CONSENT_DENIED(1),
    CLEAR_REASON_CONSENT_ALLOWLIST_CHANGED(2),
    CLEAR_REASON_CONSENT_HASH_CHANGED(3),
    CLEAR_REASON_PACKAGE_NAME_CHANGE(4),
    CLEAR_REASON_VERSION_CODE_CHANGE(5),
    CLEAR_REASON_DEVICE_MODEL_CHANGE(6),
    CLEAR_REASON_API_VERSION_CHANGE(7),
    UNRECOGNIZED(-1);

    public final int a;

    jk2(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this == UNRECOGNIZED ? yh1.a() : this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(jk2.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=").append(getNumber());
        }
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
