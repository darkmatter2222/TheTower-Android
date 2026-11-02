package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum ki implements yh1.a {
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(0),
    ON_CREATE(1),
    ON_RESTART(2),
    ON_START(3),
    ON_RESUME(4),
    ON_USER_LEAVE_HINT(5),
    ON_PAUSE(6),
    ON_STOP(7),
    ON_DESTROY(8),
    UNRECOGNIZED(-1);

    public final int a;

    ki(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this == UNRECOGNIZED ? yh1.a() : this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(ki.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=").append(getNumber());
        }
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
