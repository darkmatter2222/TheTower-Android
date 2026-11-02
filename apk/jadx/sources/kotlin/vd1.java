package kotlin;

import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public enum vd1 implements yh1.a {
    NONE(0),
    SHAKE(1),
    FLICK(2),
    UNRECOGNIZED(-1);

    public final int a;

    vd1(int i) {
        this.a = i;
    }

    @Override // ads_mobile_sdk.yh1.a
    public final int getNumber() {
        return this == UNRECOGNIZED ? yh1.a() : this.a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sf.a(vd1.class, sb, '@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=").append(getNumber());
        }
        return sb.append(" name=").append(name()).append(Typography.greater).toString();
    }
}
