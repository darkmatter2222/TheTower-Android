package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum v11 implements yh1.a {
    /* JADX INFO: Fake field, exist only in values array */
    OS_UNKNOWN(0),
    OS_ANDROID(1),
    /* JADX INFO: Fake field, exist only in values array */
    OS_IOS(2),
    UNRECOGNIZED(-1);

    public final int a;

    v11(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this == UNRECOGNIZED ? yh1.a() : this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(v11.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=").append(getNumber());
        }
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
