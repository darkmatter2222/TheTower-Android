package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum vt2 implements yh1.a {
    /* JADX INFO: Fake field, exist only in values array */
    VIOLATION_REASON_UNKNOWN(0),
    VIOLATION_REASON_POLLED_IN_CALLBACK(1),
    VIOLATION_REASON_EXCESSIVE_BUFFER(2),
    VIOLATION_REASON_STARTED_OR_STOPPED_IN_FAILED_CALLBACK(3),
    VIOLATION_REASON_EXCESSIVE_AVAILABILITY_CHECKS(4),
    VIOLATION_REASON_RAPID_REINITIALIZATION(5),
    VIOLATION_REASON_HELD_TOO_LONG_AFTER_POLL(6),
    UNRECOGNIZED(-1);

    public final int a;

    vt2(int i2) {
        this.a = i2;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this == UNRECOGNIZED ? yh1.a() : this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(vt2.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=").append(getNumber());
        }
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
